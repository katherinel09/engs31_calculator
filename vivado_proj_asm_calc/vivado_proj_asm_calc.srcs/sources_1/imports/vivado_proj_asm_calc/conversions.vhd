----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Katherine Lasonde
-- 
-- Create Date: 08/20/2021 09:58:46 AM
-- Design Name: Calculator
-- Module Name: Conversions - Behavioral
-- Project Name: ENGS 31 Final Project
-- Target Devices: Basys 3 Board
-- Tool Versions: 
-- Description: Takes in a number, negative, sign, or operation, and sends to the arithmatic block.
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:

library IEEE;
use IEEE.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity conversions is
	Port(	clk:			in	std_logic;
		 	num_ready:		in	std_logic; -- asserts a number has entered the chat
		 	neg_ready:		in	std_logic; -- asserts that a negative sign has been added to the chat
		 	op_ready: 		in	std_logic; -- asserts that an operation has been added to the chat
		 	equals_ready:	in	std_logic;
		 	
		 	data_in: 		in std_logic_vector(3 downto 0); -- BCD incoming data (either a number or an operation)
		 	load_en: 		in std_logic; -- allows you to send the BCD num to the display when loaded
		 	clr:			in std_logic; -- a clr signal
			
			data_out:		out	std_logic_vector(7 downto 0); -- still BCD when it comes out
		 	isOp:			out	std_logic; -- tells the claculator that the outcoming data is an operation
			isNum:			out	std_logic; -- tells the claculator that the outcoming data is an operation
			isEquals:		out	std_logic; -- tells the claculator that the outcoming data is an operation
			isClear:		out	std_logic); -- tells the claculator that the outcoming data is an operation
end conversions;

architecture behavioral of conversions is
	-- different states of the converter
	type state_type is (waiting, dig1, load_num, wait_for_op, is_equals, shift_and_load_dig2, op, negative, wait_second_num);
	signal curr_state: state_type := waiting;
	signal next_state: state_type;

	-- holding bcd numbers, temporary output, and op register
	-- hold the first bcd_digit that came in, whether it be neg or a num
	signal bcd_1:	std_logic_vector(3 downto 0) := (others => '0');
	-- num_reg async signal to temporarily hold the numerical output of conversion
	signal num_reg:	std_logic_vector(7 downto 0) := (others => '0'); -- in binary
	-- num_out synchronized reg to be loaded with num_reg when finished
	signal num_out:	std_logic_vector(7 downto 0) := (others => '0');
	-- hold the operation, whatever it was
	signal op_reg:	std_logic_vector(3 downto 0) := (others => '0'); -- in BCD

	-- synchronized double-flop register for safety (one BCD)
	signal data_temp: std_logic_vector(3 downto 0) := (others => '0');
	signal synch_data_in:  std_logic_vector(3 downto 0) := (others => '0');
	
	-- controller signals
	signal load_en_dig1: std_logic := '0';
	signal load_en_dig2: std_logic := '0';
	signal load_en_op: std_logic := '0';
	
	signal send_num: std_logic := '0';
	signal send_op: std_logic := '0';

	-- 2 BCD digits to 8 bit signed binary
	component BCD_to_bin port(
		-- input is 2 BCD digits (1 is LSB, 2 is MSB or '-')
		BCD_dig_1:  in  STD_LOGIC_VECTOR(3 downto 0);
		BCD_dig_2:  in  STD_LOGIC_VECTOR(3 downto 0);
		signed_bin: out STD_LOGIC_VECTOR(7 downto 0));
	end component;

begin
	-- the BCD_to_bin converter
	num_maker: BCD_to_bin port map(
		BCD_dig_1	=>	synch_data_in,
		BCD_dig_2	=>	bcd_1,
		signed_bin	=>	num_reg
	);

	-- Use a double-flop register to synchronize the incoming data
	synchronize:
	process(clk, data_in, data_temp)
	begin
		-- synchronize the incoming data with a double-flop
		if rising_edge(clk) then
			data_temp <= data_in;
			synch_data_in <= data_temp; -- this is the one to work with
		end if;
	end process synchronize;

	-- Load each data register based on a load signal
	loading_data: process(load_en_dig1, load_en_dig2, load_en_op, synch_data_in, num_reg)
	begin 
		-- if loading the first digit, load into first bcd reg
		if load_en_dig1 = '1' then
			bcd_1 <= synch_data_in;
		elsif load_en_dig2 = '1' then
			-- load the output of the conversion module into our output
			num_out <= num_reg; -- now signed binary
		-- otherwise, load the op reg
		elsif load_en_op = '1' then 
			op_reg <= synch_data_in;   
		end if;
	end process loading_data;

	-- a process to update data_out; whether it should be the number register or the equals register
	send_data: process(send_num, send_op, num_reg, op_reg)
	begin
		if send_num = '1' then		-- send our number out
			data_out <= num_out;
		elsif send_op = '1' then	-- send operation to output
			data_out <= "0000" & op_reg;
		end if;
	end process send_data;

	-- FSM update
	FSM_update: process(clk)
	begin
		if rising_edge(clk) then
				curr_state <= next_state;
		end if;
	end process FSM_update;

	FSM_CL: process(curr_state, synch_data_in, load_en_dig1)
	begin
		-- Defaults
		isOp <= '0';
		isNum <= '0';
		isEquals <= '0';
		isClear <= '0';

		-- Update next state
		next_state <= curr_state;

		-- State Machine Logic
		case curr_state is
			-- Check if either a number or negative sign has been inputted
			-- in this state, we assume "clr" was hit by user
			-- no way to enter this state except clr
			when waiting =>
				isClear <= '1';

				-- check whether a number or a negative sign
				if num_ready = '1' then
					next_state <= dig1;
				elsif neg_ready = '1' then 
					next_state <= negative;
				end if;
			
			-- if a negative symbol was passed
			when negative =>
				-- load the digit and wait for a second
				load_en_dig1 <= '1';
				
				-- if clr, go back to the waiting state
				if clr = '1' then
					next_state <= waiting;
				-- if a second number is available, shift and concatenate
				elsif num_ready = '1' then
					next_state <= shift_and_load_dig2;
				end if;
				
			-- if a number (positive) has been inputted
			when dig1 =>
				-- load the digit and wait for a second if inputted
				load_en_dig1 <= '1'; 
				
				-- if clr, go back to waiting
				if clr = '1' then
					next_state <= waiting;
				-- if a second number is available, shift and concatenate	  
				elsif num_ready = '1' then -- note: this will always happen. is this intended?
					next_state <= shift_and_load_dig2;
				-- if the user wants to send this number to the calculator, go to the load state
				elsif load_en = '1' then
						-- check if one or two numbers has been added
					next_state <= load_num;
				end if;
			
			-- the state when concatenating a second digit to a first
			when shift_and_load_dig2 =>
				load_en_dig2 <= '1';
				
				-- if clr, go back to waiting
				if clr = '1' then
					next_state <= waiting;
				-- if the user wants to load, then go to the load state
				elsif load_en = '1' then
					next_state <= load_num;
				-- if the user wants to overwrite a digit, then let them shift and load again
				elsif num_ready = '1' then
					next_state <= shift_and_load_dig2;
				end if;
				
			when load_num =>
				-- send num to receiver
				send_num <= '1';
				isNum <= '1';
				
				-- if clr, go back to waiting
				if clr = '1' then
					next_state <= waiting;
				-- otherwise, wait for an operation
				else
					next_state <= wait_for_op;
				end if;
						
			when wait_for_op =>
				-- if clr, go back to waiting
				if clr = '1' then
					next_state <= waiting;
				-- if an op inputted then go to the next state
				elsif op_ready = '1' then
					next_state <= op;
				elsif equals_ready = '1' then
					next_state <= is_equals;
				end if; 
			
			when is_equals =>
				isEquals <= '1';

				if clr = '1' then
					next_state <= waiting;
				else
					next_state <= wait_second_num;
				end if;

			when op =>
				load_en_op <= '1';
				isOp <= '1';
				
				-- if clear, clear, otherwise, wait for another number or operation
				if clr = '1' then
					next_state <= waiting;
				else
					next_state <= wait_second_num;
				end if;
			
			-- go back to the beginning of the code   
			when wait_second_num =>
				send_op <= '1';
				
				-- if clr, go back to waiting
				if clr = '1' then
						next_state <= waiting;
				-- write a new number
				elsif num_ready = '1' then 
					next_state <= dig1;
				-- write a new neg sign
				elsif neg_ready = '1' then 
					next_state <= negative;
				end if;
		end case;
	end process FSM_CL;
end Behavioral;
