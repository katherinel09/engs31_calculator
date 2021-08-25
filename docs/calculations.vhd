----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Katherine Lasonde
-- 
-- Create Date: 08/20/2021 09:58:46 AM
-- Design Name: Calculator
-- Module Name: calculations - Behavioral
-- Project Name: ENGS 31 Final Project
-- Target Devices: Basys 3 Board
-- Tool Versions: 
-- Description: Takes in a number, an operation, and then another number and combines the two 
-- numbers utilizing the operation into a new number (sum).
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
use IEEE.NUMERIC_STD.ALL;

entity calculations is
    PORT( 
        
    clk: in STD_LOGIC;
    
    -- Incoming data signals, assume they are coming in binary
    incoming_data_signal: in STD_LOGIC;
    incoming_data_data: in STD_LOGIC_VECTOR(7 downto 0);
    
    -- tells the FSM what the state of the data is
    num_symb: in STD_LOGIC;
    operation_symb: in STD_LOGIC;
    equals_symb: in STD_LOGIC;
    clr_sig: in STD_LOGIC;
    
    -- output as binary code
    outgoing_data_signal: out STD_LOGIC;
    outgoing_data_data: out STD_LOGIC_VECTOR(15 downto 0));   
  
end calculations;

architecture Behavioral of calculations is

    -- Datapath registers
    signal num1_reg: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal num2_reg: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal operation_reg: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal equals_reg_output: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    
    -- Control signals
    signal num1_reg_en : STD_LOGIC := '0';
    signal num2_reg_en : STD_LOGIC := '0';
    signal operation_reg_en : STD_LOGIC := '0';
    signal equals_output_reg_en : STD_LOGIC := '0';
	signal overflow_en: STD_LOGIC := '0'; -- if greater than 9999 = 0b10011100001111 (15 bits) or less than -999 (1b1111100111) (11 bits)
    
    -- Clear signals
    signal num1_reg_clr : STD_LOGIC := '0';
    signal num2_reg_clr : STD_LOGIC := '0';
    signal operation_reg_clr : STD_LOGIC := '0';
    signal equals_output_reg_clr : STD_LOGIC := '0';
    signal overflow_clr : STD_LOGIC := '0';

  	-- display signal
  	signal display_en: STD_LOGIC_VECTOR(1 downto 0); -- 00 => clear, 01 => display reg 1, 10 => display reg 2, 11 => overflow

    -- state machine types
    type state_type is (waitingToStart, clr, storeNumOne, analyzingStoreNumOne, storeNumTwo, analyzingStoreNumTwo, storeOperation, equals, waitingForNums, waitingForOperations);
    signal curr_state: state_type := waitingToStart;
    signal next_state: state_type;
begin

data_registers: process(clk, num1_reg, num2_reg, operation_reg, equals_reg_output, num1_reg_en, num2_reg_en, operation_reg_en, equals_output_reg_en, overflow_en, display_en, num1_reg_clr, num2_reg_clr, operation_reg_clr, equals_output_reg_clr, overflow_clr)
begin
    if rising_edge(clk) then
        -- check if the resgisters are enabled/need to be loaded
        
        -- First register: fill if data to fill, otherwise clr
        if(num1_reg_en = '1') then 
            num1_reg <= incoming_data_data;
        elsif (num1_reg_clr = '1') then 
            num1_reg <= (others => '0');
        end if;
        
        -- Opertion register: fill if data to fill, otherwise clr
         if(operation_reg_en= '1') then
            num2_reg <= incoming_data_data;
        elsif (operation_reg_clr = '1') then 
            num2_reg <= (others => '0');
        end if;
        
        -- Second Register: fill if data to fill, otherwise clr
        if(num2_reg_en= '1') then
            operation_reg <= incoming_data_data;
        elsif (num2_reg_clr = '1') then 
            operation_reg <= (others => '0');
        end if;

        -- when there are two filled reg and an op, do the math!
        if (equals_output_reg_clr = '1') then
        case operation_reg is
            -- Binary for + sign
            when "00101011" =>
                equals_reg_output <= STD_LOGIC_VECTOR(signed(num1_reg) + signed(num2_reg));   
            -- Binary for the - sign
            when "00101101" =>
                equals_reg_output <= STD_LOGIC_VECTOR(signed(num1_reg) - signed(num2_reg));
            -- Binary for the * sign
            when "00101010" =>
                equals_reg_output <= STD_LOGIC_VECTOR(signed(num1_reg) * signed(num2_reg));
            -- All other cases
            when others =>
                equals_reg_output <= equals_reg_output;
            
        end case;
        end if;
        
    end if;

    -- Asynchronous
     num1_reg <= equals_reg_output;

    -- check for overflow
  	if unsigned(equals_reg_output) > "010011100001111" then
      num1_reg <= "1111111111111111"; --- FFFF
      
  	elsif signed(equals_reg_output) < "11111100111" then
      num1_reg <= "1111111111111111"; --- FFFF
    end if;
          
          

end process data_registers;

-- FSM update
FSM_update: process(clk)
begin
    if rising_edge(clk) then
        curr_state <= next_state;
    end if;
end process FSM_update;

-- FSM combinational logic
FSM_CombLog: process(curr_state)
begin
    -- Default signals
    
    -- Control signals
    num1_reg_en <= '0';
    num2_reg_en <= '0';
    operation_reg_en <= '0';
    equals_output_reg_en <= '0';    
    overflow_en <= '0';
    display_en <= "00";
    
    num1_reg_clr <= '0';
    num2_reg_clr <= '0';
    operation_reg_clr <= '0';
    equals_output_reg_clr <= '0';
    overflow_clr <= '0';
    
    -- Update next state
    next_state <= curr_state;
    
    case curr_state is
        -- Clear everything, then go back to the waiting state
        when clr =>
            num1_reg_clr <= '1';
            num2_reg_clr <= '1';
            operation_reg_clr <= '1';
            equals_output_reg_clr <= '1';
            overflow_clr <= '1';
			display_en <= "00";
            
            next_state <= waitingToStart;
        
        -- wait for a number to be inputted
        -- if clr or isOperation are raised high, nothing happens
        when waitingToStart =>
            
            -- if data comes in and is a number
            if (incoming_data_signal = '1' and num_symb = '1') then
                next_state <= storeNumOne;
            end if;
        
        -- store the first number in the register
        -- assume it already the full number (ex: 62) in binary
        when storeNumOne  =>
            -- store the number in the register
            num1_reg_en <= '1';
          	display_en <= "01";
            
            -- if another number symbol is inputted, re-save register 1
            if (incoming_data_signal = '1' and num_symb = '1') then
                next_state <= storeNumOne;
            -- if an operation is coming, go to the operation state
            elsif (incoming_data_signal = '1' and operation_symb = '1') then
                next_state <= storeOperation;
            -- if clear is high, clear everything
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;
            
        -- wait for another number
        when storeOperation  =>
            -- store the operation/know what to do
            operation_reg_en <= '1';
			display_en <= "01";

            -- do not do anything if more operations are typed
            -- just stay in this state
            if (incoming_data_signal = '1' and operation_symb = '1') then
                next_state <= storeOperation;
            -- if another number comes in, store the next number
            elsif (incoming_data_signal = '1' and num_symb = '1') then
                next_state <= storeNumTwo;
            -- if clear is high, clear everything
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;
        
        -- store the second number
        when storeNumTwo  =>
            num2_reg_en <= '1';
			display_en <= "10";
            
            -- if the equals sign is hit, go to the equals state
            if (incoming_data_signal = '1' and equals_symb = '1') then
                next_state <= equals;
            -- otherwise is another number is typed, in, state in this state and reload 
            elsif (incoming_data_signal = '1' and num_symb = '1') then
                next_state <= storeNumTwo;
            -- if clear is high, clear everything
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;

        -- in the equals state, load the equals output reg
        when equals  =>
            equals_output_reg_en <= '1';
			display_en <= "10";

            
            -- if another operation is typed, load the equals reg and go back to next state
            if (incoming_data_signal = '1' and operation_symb = '1') then
                next_state <= waitingForOperations;            
            -- if clear is high, clear everything
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;
            
        -- wait for another number to come in 
        when waitingForOperations  =>
            -- load the op register
            operation_reg_en <= '1';

            -- clear contents from second register since the equals reg was 
            -- loaded into reg 1
            num2_reg_clr <= '1';
			display_en <= "01";

            -- if another num symbol is hit, store it
            if (incoming_data_signal = '1' and num_symb = '1') then
                next_state <= storeNumTwo;
            -- if clear is high, clear everything
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;
    end case;

end process FSM_CombLog;

to7seg: process(display_en)
begin
      if display_en = "00" then
        	outgoing_data_data <= (others => '0');
        	
        -- when first num and op is received => display num1
        elsif display_en = "01" then
                outgoing_data_data <= num1_reg;
        
		-- when second num and op is received display num2 reg
        elsif display_en = "10" then
                outgoing_data_data <= num2_reg;
        
        else
          	     outgoing_data_data <= num1_reg; -- should contain FFFF in this register
        
      end if;
end process to7seg;
end Behavioral;