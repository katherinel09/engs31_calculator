----------------------------------------------------------------------------------
-- Engineer: Katherine Lasonde
-- 
-- Create Date: 08/14/2021 03:42:47 PM
-- Module Name: SerialRx - Behavioral
-- Project Name: asm_calc
-- Target Devices: Artix-7 FPGA (Basys3)
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
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

entity SerialRx is
    Port (
        clk: in STD_LOGIC;			-- receiver is clocked with 10 MHz clock
		RsRx: in STD_LOGIC;
		--rx_shift: out STD_LOGIC;		-- testing port
		rx_data: out STD_LOGIC_VECTOR(7 downto 0);
		rx_done_tick: out STD_LOGIC );
end SerialRx;

architecture Behavioral of SerialRx is
    -- baud rate counter: 12 bits can handle 4800 baud at 10 MHz clock
	signal br_cnt:	unsigned(11 downto 0) := x"000";
	signal br_tick:	std_logic;
	
	-- counter signals for both counters
	-- baud counter (1)
	constant CLOCK_FREQUENCY : integer := 10000000;		
	constant BAUD_RATE : integer := 115200;
	constant N : integer := CLOCK_FREQUENCY / BAUD_RATE;
	signal counter_one_count: unsigned(12 downto 0) := (others => '0'); -- N/2 clock edges before the first shift and N clock edges between shifts
	signal counter_one_timeout: std_logic := '0';
	signal first_shift_completed: std_logic := '0';
	signal bit_clr: std_logic := '0';
	signal en_counter1: std_logic := '0';

	-- counter 2; withhelp from the ch 8.2 model
	constant NUM_BITS:         integer := 10;
	signal bit_count:          unsigned(3 downto 0) := "0000"; -- 4 bits in order to count up to 9
	signal ten_bit_timeout:    std_logic := '0';
	signal baud_clr: std_logic := '0';
	signal en_counter2: std_logic := '0';
	
	-- Signals for the registers (parallel loading and shifting)
	signal clr, shift_en, load_en: std_logic := '0';
	signal shift_clr: std_logic := '0';
	
	-- Data signals for synchronization 
	signal rsrx_sync_reg: STD_LOGIC := '0';
	signal data_loaded: STD_LOGIC := '0';
	
	-- Signal registers
	signal data_shifted_register: STD_LOGIC_VECTOR(9 downto 0); -- 10 bits for shifting
	signal data_loaded_register: STD_LOGIC_VECTOR(7 downto 0); -- 8 bits for loading
	
	-- Controller FSM
	type state_type is (idle, first_shift, later_shifts, load, done);	
	signal curr_state, next_state: state_type;
begin

-- a counter to count N/2 clock edges before the first shift and N clock edges between shifts
counterOne:
process(clk, counter_one_count)
begin
	if rising_edge(clk) then
	   if baud_clr = '1' then
            counter_one_count <= (others => '0'); 
       elsif en_counter1 = '1' then
            counter_one_count <= counter_one_count + 1;
       end if;
	end if;
	
	   -- Asynchronous TC comparator
   -- have the timeout be asynchronous in order to decrease the amount of latency / lag
   if counter_one_count = N - 1 then 
        counter_one_timeout <= '1';
   else
        counter_one_timeout <= '0';
   end if;
end process counterOne;

-- a counter to count ten bits shifted into the register
counterTwo:
process(clk, bit_count)
begin
    -- Synchronous count update
    if rising_edge(clk) then 
        if bit_clr = '1' then
            bit_count <= (others => '0');
        elsif en_counter1 = '1' then
            bit_count <= bit_count + 1;
        end if;
   end if;
   
   -- Asynchronous TC comparator
   -- have the timeout be asynchronous in order to decrease the amount of latency / lag
   if bit_count = NUM_BITS - 1 then
        ten_bit_timeout <= '1';
   else
        ten_bit_timeout <= '0';
   end if;
end process counterTwo;

-- Synchronize the incoming data
synchronize:
process(clk, RsRx, rsrx_sync_reg)
begin
    if rising_edge(clk) then
        rsrx_sync_reg <= RsRx;
        data_loaded <= rsrx_sync_reg;
    end if;
end process synchronize;

-- Shifting ; has clr input to reset, shift input to enable ; input is through bit 9 (msb)
ShiftRegister10: process (clk)
begin
	if rising_edge( clk ) then
	    -- clear the register when the signal is asserted
		if (clr = '1') then
			data_shifted_register <= (others => '0');
	    -- otherwise, if shift_en is asserted		
		elsif shift_en = '1' then
		    -- shift the counter right :)
			data_shifted_register <= data_loaded & data_shifted_register(9 downto 1);
		end if;
	end if;
end process ShiftRegister10;

-- Copy bits 8 down to 1 of the shift register when enabled by a control signal
LoadRegister8: process(clk, data_shifted_register, data_loaded_register)
begin
	if rising_edge(clk) then
		if (load_en = '1') then
		  -- load the data into the load register from the shift register
		  data_loaded_register <= data_shifted_register(8 downto 1);									
		end if;														
	end if;
	
	-- rx_data will remain stable while the next byte is being received
	rx_data <= data_loaded_register;
end process LoadRegister8;

-- Update the current state to the next state on the rising clock edge
CalcControllerUpdate:
process (clk)
begin
    if rising_edge(clk) then
        curr_state <= next_state;
    end if;
end process CalcControllerUpdate;

--  Combinational logic for the calculator
CalcControllerComb:
process (curr_state, counter_one_timeout, ten_bit_timeout, data_loaded)
begin
	-- defaults
	next_state <= curr_state;
	shift_en <= '0';  
	load_en <= '0'; 
	clr <= '0';
	
	bit_clr <= '0';
    baud_clr <= '0';
	shift_clr <= '0';
	rx_done_tick <= '0';
	
	en_counter1 <= '0';
	en_counter2 <= '0';
		

	-- next state and output logic
	case curr_state is
	    -- wait for the data to come in, to drop from a 1 to a 0, signifying the beginning of a packet
		when idle => 
		  bit_clr <= '1';
		  baud_clr <= '1';
		  shift_clr <= '1';
		
		  -- when the start bit is detected aka when the line drops low
		  if data_loaded = '0' 
			then next_state <= first_shift;
		  end if;

        -- sync up with baud rate
		when first_shift =>
		    --bit_clr <= '1';
		    en_counter1 <= '1';
		
			if counter_one_timeout = '1'
				then next_state <= later_shifts;
			end if;
			
	   -- shift for the appropriate amount of time
	   when later_shifts => 
	        baud_clr <= '1';
	        en_counter1 <= '1';
		    en_counter2 <= '1';
		    shift_en <= '1';
		    
			if ten_bit_timeout = '1' then
			     next_state <= load;
			else
			     next_state <= first_shift;
			end if;
		
		-- load the register
		when load =>
		    
		    load_en <= '1';	    
			next_state <= done;
			
	    -- go back to idling after loading
		when done => 
		    -- assert rx_done_tick pulse for one clock cycle to signal that the byte is avaialable
		    rx_done_tick <= '1';		-- raise the done flag
			-- then return to the initial state and wait for the next start bit
			next_state <= idle;

	end case;
end process CalcControllerComb;

convert_data_for_multiplexer: process (data_loaded)
begin
end process convert_data_for_multiplexer;

end Behavioral;
