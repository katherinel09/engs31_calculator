----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Katherine Lasonde & Wendell Wu
-- 
-- Create Date: 08/14/2021 03:42:47 PM
-- Design Name: 
-- Module Name: SerialRx - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Calculator is
    Port (
 clk: in STD_LOGIC;			-- receiver is clocked with 10 MHz clock
		RsRx: in STD_LOGIC;
		rx_shift: out STD_LOGIC;		-- testing port
		rx_data: out STD_LOGIC_VECTOR(7 downto 0);
		rx_done_tick: out STD_LOGIC );
end Calculator;

architecture Behavioral of Calculator is
	constant CLOCK_FREQUENCY : integer := 10000000;		
	constant BAUD_RATE : integer := 115200;
	constant BAUD_COUNT : integer := CLOCK_FREQUENCY / BAUD_RATE;

    -- baud rate counter: 12 bits can handle 4800 baud at 10 MHz clock
	signal br_cnt:		unsigned(11 downto 0) := x"000";																	
	signal br_tick:	std_logic;
	
	-- Parallel-to-serial register
	-- 10 bits: 1 start bit, 8 data bits, 1 stop bit, no parity
	signal rx_reg:		std_logic_vector(9 downto 0) := "1111111111";		
	signal rx_ctr:		unsigned(3 downto 0);		-- count the bits that have been sent
	signal rx_load, rx_shift_temp : std_logic;			-- register control bits
	signal rx_empty :	std_logic;					-- register status bit
	
	-- Data signals for synchronization 
	signal rsrx_sync_reg: STD_LOGIC := '0';
	signal data_loaded: STD_LOGIC := '0';

	
	
	-- Controller FSM
	type state_type is (sidle, ssync, sload, sshift, sdone, swait);	
	signal curr_state, next_state: state_type;
begin

BaudRateClock:
process(Clk)
begin
	if rising_edge(Clk) then
		if br_cnt = BAUD_COUNT-1 then
			br_cnt <= x"000";
			br_tick <= '1';     -- emit tick every BAUD_COUNT clock cycles
		else
			br_cnt <= br_cnt+1;
			br_tick <= '0';
		end if;
	end if;
end process BaudRateClock;

-- Synchronize the incoming data
synchronize: 
process(clk, RsRx, rsrx_sync_reg)
begin
    if rising_edge(clk) then
        rsrx_sync_reg <= RsRx;
        data_loaded <= rsrx_sync_reg;
    end if;
end process synchronize;


DataRegister:
process( Clk )
begin
	if rising_edge( Clk ) then
		if (rx_load = '1') then
			rx_reg <= '1' & data_loaded & '0';				-- load with stop & data & start
		elsif br_tick = '1' then						-- the register is always shifting
			rx_reg <= '1' & rx_reg(9 downto 1);			-- shift right, pull in 1s														
		end if;														
	end if;
end process DataRegister;
rx <= rx_reg(0);										-- serial output port <= lsb

ShiftCounter:
process ( Clk )
begin
	if rising_edge( Clk ) then
		if (rx_load = '1') then			-- load counter with 10 when register is loaded
			rx_ctr <= x"A";		
		elsif br_tick = '1' then		-- count shifts (br_ticks) down to 0
			if (rx_shift = '1') then
				if rx_ctr > 0 then
					rx_ctr <= rx_ctr - 1;
				end if;
			end if;
		end if;
	end if;
end process ShiftCounter;
rx_empty <= '1' when rx_ctr = x"0" else '0';

RxControllerComb:
process ( tx_start, tx_empty, br_tick, curr_state )
begin
	-- defaults
	next_state <= curr_state;
	rx_load <= '0';  rx_shift <= '0'; rx_done_tick <= '0';

	-- next state and output logic
	case curr_state is
		when sidle => 
			if rx_start = '1' 					-- wait for start signal
				then next_state <= ssync;
			end if;

		when ssync =>							-- sync up with baud rate
			if br_tick = '1'
				then next_state <= sload;
			end if;
			
		when sload =>	rx_load <= '1';			-- load the data register
			next_state <= sshift;
			
		when sshift => rx_shift <= '1';			-- shift the bits out
			if rx_empty = '1' 					-- wait for shift counter
				then next_state <= sdone;
			end if;
			
		when sdone => rx_done_tick <= '1';		-- raise the done flag
			next_state <= swait;
			
		when swait => 							-- wait for start signal to drop
			if rx_start = '0' 
				then next_state <= sidle;
			end if;
	end case;
end process RxControllerComb;

end Behavioral;
