----------------------------------------------------------------------------------
-- Course:	Engs 31 21X
-- Design Name: 	calculator.vhd
-- Module Name:		calculator
-- Project Name:	E31 Final Project
-- Target Devices:	Basys3 Board/Artix-7 FPGA
-- Description:		ASM Calculator Main Controller + Datapath
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

entity calculator is
	port(
		clk:		in	std_logic;						-- clk in (10 Mhz)
		bcd_in:		in	std_logic_vector(3 downto 0);	-- received BCD in
		-- which input type is it?
		is_num:		in	std_logic;
		is_neg:		in	std_logic;
		is_op:		in	std_logic;
		is_equals:	in	std_logic;
		is_clr:		in	std_logic;

		rx_tick:	in	std_logic;	-- indicating a new command came in
		-- 4 bcd digits routed out, displays according to state
		bcd_out:	out	std_logic_vector(15 downto 0));
end calculator;

architecture behavioral of calculator is
	-- datapath conversion component declarations
	component BCD_to_bin port(
		BCD_dig_1:  in  STD_LOGIC_VECTOR(3 downto 0);
		BCD_dig_2:  in  STD_LOGIC_VECTOR(3 downto 0);
		signed_bin: out STD_LOGIC_VECTOR(7 downto 0)
	);
	end component;
	component bin_to_BCD port(
		clk:		in std_logic; -- clock needed for block memory
		signed_num:	in STD_LOGIC_VECTOR (14 downto 0);
		BCD_out:	out STD_LOGIC_VECTOR (15 downto 0)
	);
	end component;

	-- datapath conversion signals
	-- async temporary output of BCD to bin conversion
	signal signed_num1, signed_num2:	std_logic_vector(7 downto 0) := x"00";
	-- async signal for signed result of whatever operation was there
	signal signed_res:	signed(14 downto 0);
	-- async temporary output of bin to BCD conversion of result
	signal conv_temp_res:	std_logic_vector(15 downto 0) := x"0000";

	-- clocked data registers num1, num2, the operation, and result
	signal num1, num2:	std_logic_vector(7 downto 0) := x"00";
	signal op:			std_logic_vector(3 downto 0);
	signal result:		std_logic_vector(15 downto 0) := x"0000";

	-- all controller signals below
	-- state declaration
	type state_type is (idle, num1_load, num1_wait, op_load, num2_idle, num2_load,
		num2_wait, equal, full, continue);
	signal curr_state, next_state: state_type := idle;

	-- control signal for selecting which display to choose
	signal disp:	std_logic_vector(0 to 1) := "00";
	
	-- control signals for loading 1, 2, eq, op
	signal load1, load2, loadeq, loadop:	std_logic := '0';

	-- control signal for the source of loading 1 (0 is bcd_in, 1 is eq)
	signal sel1:	std_logic := '0';
	
	-- control signal for clearing only num2
	signal clr2:	std_logic := '0';

	-- control signal for clearing registers
	signal clr:		std_logic := '0';
begin
	-- datapath processes listed first. 
	
	-- datapath clocked/synchronous registers
	datapath_regs: process(clk)
	begin
		if rising_edge(clk) then
			-- handle each load signal separately
			if load1 = '1' then
				if sel1 = '1' then -- take whatever was in result
					if result(15 downto 12) = x"c" then
						num1 <= result(15 downto 12) & result(3 downto 0);
					else
						num1 <= result(7 downto 0);
					end if;
				else -- left shift by 4 and append bcd_in
					num1 <= num1(3 downto 0) & bcd_in;
				end if;
			end if;

			if load2 = '1' then
				num2 <= num2(3 downto 0) & bcd_in;
			end if;

			if loadop = '1' then
				op <= bcd_in;
			end if;

			if loadeq = '1' then
				result <= conv_temp_res;
			end if;

			-- clr2 here for priority
			if clr2 = '1' then
				num2 <= x"00";
			end if;
	
			-- having clr here at end guarantees priority
			if clr = '1' then
				num1 <= x"00";
				num2 <= x"00";
				op <= x"0";
				result <= x"0000";
			end if;

			-- handle which number to route to display output
			case disp is
				when "00" =>
					bcd_out <= x"00" & num1;
				when "01" =>
					bcd_out <= x"00" & num2;
				when "10" =>
					bcd_out <= result;
				when "11" =>
					bcd_out <= x"ffff";
				when others =>
					bcd_out <= x"0000";
			end case;
		end if;
	end process; -- end of synchronous datapath

	-- asynchronous datapath elements listed next, including conversion entities
	num1_to_signed: BCD_to_bin port map(
		BCD_dig_1	=>	num1(3 downto 0),
		BCD_dig_2	=>	num1(7 downto 4),
		signed_bin	=>	signed_num1
	);
	num2_to_signed: BCD_to_bin port map(
		BCD_dig_1	=>	num2(3 downto 0),
		BCD_dig_2	=>	num2(7 downto 4),
		signed_bin	=>	signed_num2
	);
	
	-- the actual computation of the result
	compute_res: process(signed_num1, signed_num2, op)
	begin
		case op is
			when x"a" =>
				signed_res <= resize(resize(signed(signed_num1), 15) * resize(signed(signed_num2), 15), 15);
			when x"b" =>
				signed_res <= resize(signed(signed_num1), 15) + resize(signed(signed_num2), 15);
			when x"c" =>
				signed_res <= resize(signed(signed_num1), 15) - resize(signed(signed_num2), 15);
			when others =>
				signed_res <= signed("00000000000" & op); -- error code "0x0fff"
		end case;
	end process;

	-- taking result back to BCD from signed_res
	res_to_BCD: bin_to_BCD port map(
		clk			=>	clk, -- clock needed for block memory
		signed_num	=>	std_logic_vector(signed_res),
		BCD_out		=>	conv_temp_res
	);

	-- all controller processes listed below
	FSM_update: process(clk) -- simply move to next state
	begin
		if rising_edge(clk) then
			curr_state <= next_state;
		end if;
	end process;

	-- the state machine logic to handle state logic and output assertion
	FSM_comb: process(curr_state, rx_tick, is_num, is_neg, is_op, is_equals, is_clr, signed_res)
	begin
		-- defaults
		disp <= "00";
		load1 <= '0';
		load2 <= '0';
		loadop <= '0';
		loadeq <= '0';
		sel1 <= '0';
		clr2 <= '0';
		clr <= '0';
		next_state <= curr_state;

		case curr_state is
			when idle =>
				clr <= '1';
				if rx_tick = '1' then
					if is_num = '1' or is_neg = '1' then
						next_state <= num1_load;
					end if;
				end if;
			
			when num1_load =>
				load1 <= '1';
				next_state <= num1_wait;
			
			when num1_wait =>
				if rx_tick = '1' then
					if is_num = '1' then
						next_state <= num1_load;
					elsif is_op = '1' then
						next_state <= op_load;
					end if;
				end if;

			when op_load =>
				loadop <= '1';
				next_state <= num2_idle;
				
			when num2_idle =>
				disp <= "00";
				if rx_tick = '1' then
					if is_num = '1' or is_neg = '1' then
						next_state <= num2_load;
					end if;
				end if;

			when num2_load =>
				load2 <= '1';
				disp <= "01";
				next_state <= num2_wait;
			
			when num2_wait =>
				disp <= "01";
				if rx_tick = '1' then
					if is_num = '1' then
						next_state <= num2_load;
					elsif is_equals = '1' then
						next_state <= equal;
					end if;
				end if;
			
			when equal =>
				loadeq <= '1';
				disp <= "10";
				if rx_tick = '1' then
					if is_op = '1' then
						next_state <= continue;
					end if;
					-- signed_res out of bounds has priority
					if is_op = '1' and (signed_res > 99 or signed_res < -9) then
						next_state <= full;
					end if;
				end if;
			
			when full =>
				disp <= "11";
				-- no way to exit this state unless clr is hit
			when continue =>
				disp <= "00";
				sel1 <= '1';
				load1 <= '1';
				loadop <= '1';
				clr2 <= '1';
				next_state <= num2_idle;
		end case;

		-- clear has priority above all
		if is_clr = '1' then
			next_state <= idle;
		end if;
	end process;
end behavioral;