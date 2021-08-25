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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity conversions is
	Port(	clk:		in	STD_LOGIC;
         	num_ready:	in STD_LOGIC; -- asserts a number has entered the chat
         	neg_ready: 	in STD_LOGIC; -- asserts that a negative sign has been added to the chat
         	op_ready: in STD_LOGIC; -- asserts that an operation has been added to the chat
         	equals_ready: in STD_LOGIC; 
         	
         	data_in: 	in std_logic_vector(3 downto 0); -- BCD incoming data (either a number or an operation)
         	load_en: 	in STD_LOGIC; -- allows you to send the BCD num to the display when loaded
         	clr:	in STD_LOGIC; -- a clr signal
			
         	data_out:	out	std_logic_vector(7 downto 0); -- still BCD when it comes out
         	isOp: out STD_LOGIC; -- tells the claculator that the outcoming data is an operation
			isNum: out STD_LOGIC; -- tells the claculator that the outcoming data is an operation
			isEquals: out STD_LOGIC; -- tells the claculator that the outcoming data is an operation
			isClear: out STD_LOGIC); -- tells the claculator that the outcoming data is an operation
end conversions;

architecture behavioral of conversions is
    -- different states of the converter
	type state_type is (waiting, dig1, load_num, wait_for_op, is_equals, shift_and_load_dig2, op, negative, wait_second_num);
	signal curr_state: state_type := waiting;
	signal next_state: state_type;

    -- temporary registers for synchronization, and holding the BCD nums + op
	signal data_temp: STD_LOGIC_VECTOR(3 downto 0) := (others => '0'); -- in BCD
	signal num_reg: STD_LOGIC_VECTOR(7 downto 0) := (others => '0'); -- in BCD
	signal op_reg: STD_LOGIC_VECTOR(3 downto 0) := (others => '0'); -- in BCD

    -- synchronized register to go to the output
	signal synch_data_in:  STD_LOGIC_VECTOR(7 downto 0) := (others => '0'); -- in BCD
	
	-- controller signals
	signal load_en_dig1: STD_LOGIC := '0';
	signal load_en_dig2: STD_LOGIC := '0';
	signal load_en_op: STD_LOGIC := '0';
	
	signal send_num: STD_LOGIC := '0';
	signal send_op: STD_LOGIC := '0';

begin
 
-- Use a register to synchronize the incoming data onto a singal register
synchronize: 
process(clk, data_in, data_temp)
begin
    -- synchronize the incoming data
    if rising_edge(clk) then
        data_temp <= data_in;
        synch_data_in <= data_temp;
    end if;
end process synchronize;

-- Load the register based on the signal
loading_data: process(load_en_dig1, load_en_dig2, load_en_op, synch_data_in)
begin 
    -- if loading the first digit, load into number register
    if load_en_dig1 = '1' then 
        num_reg <= synch_data_in;
    -- multiply the MSB by 10 and add the LSB
    elsif load_en_dig2 = '1' then  
          -- concatenate the numbers together
         num_reg <= std_logic_vector(resize(10*signed((num_reg)) + signed((synch_data_in)), 8)); -- + std_logic_vector((synch_data_in));
     -- otherwise, load the op reg
     elsif load_en_op = '1' then 
        op_reg <= synch_data_in;   
    end if;
end process loading_data;

-- a process to update data_out; whether it should be the number register or the equals register
send_data: process(send_num, send_op, num_reg, op_reg)
begin
    -- send a number
    if send_num = '1' then 
        data_out <= num_reg;
    -- send an operation
    elsif send_op = '1' then
        data_out <= op_reg;
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
	data_out <= (others => '0');

    -- Update next state
    next_state <= curr_state;
    
    -- Cases
    case curr_state is
      
        -- Check if either a number or negative sign has been inputted
        when waiting =>
      	    data_out <= (others => '0');
            
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
              elsif num_ready = '1' then 
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
            
            -- if clr, go back to waiting
              if clr = '1' then
                    next_state <= waiting;
              -- otherwise, wait for an operations
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
        
        when op =>
            load_en_op <= '1';
            
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

