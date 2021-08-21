----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Katherine Lasonde
-- 
-- Create Date: 08/20/2021 09:58:46 AM
-- Design Name: 
-- Module Name: calculations - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity calculations is
    PORT( clk: in STD_LOGIC;
    
    incoming_data_signal: in STD_LOGIC;
    incoming_data_data: in STD_LOGIC_VECTOR(7 downto 0);
    
    num_symb: in STD_LOGIC;
    operation_symb: in STD_LOGIC;
    equals_symb: in STD_LOGIC;
    clr_sig: in STD_LOGIC);   
end calculations;

architecture Behavioral of calculations is

    -- Datapath registers
    signal num1_reg: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal num2_reg: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal operation_reg: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal equals_reg_output: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    -- Control signals
    signal num1_reg_en : STD_LOGIC := '0';
    signal num2_reg_en : STD_LOGIC := '0';
    signal operation_reg_en : STD_LOGIC := '0';
    signal equals_output_reg_en : STD_LOGIC := '0';
    signal overflow_en : STD_LOGIC := '0';
    signal display_en : STD_LOGIC := '0';
    
    signal num1_reg_clr : STD_LOGIC := '0';
    signal num2_reg_clr : STD_LOGIC := '0';
    signal operation_reg_clr : STD_LOGIC := '0';
    signal equals_output_reg_clr : STD_LOGIC := '0';
    signal overflow_clr : STD_LOGIC := '0';

    -- state machine types
    type state_type is (waitingToStart, clr, storeNumOne, storeNumTwo, storeOperation, equals, waitingForNums, waitingForOperations);
    
    signal curr_state: state_type := waitingToStart;
    signal next_state: state_type;
begin

data_registers: process(clk, num1_reg, num2_reg, operation_reg, equals_reg_output, num1_reg_en, num2_reg_en, operation_reg_en, equals_output_reg_en, overflow_en, display_en, num1_reg_clr, num2_reg_clr, operation_reg_clr, equals_output_reg_clr, overflow_clr)
begin
    if rising_edge(clk) then
        -- check if the resgisters are enabled/need to be loaded
        
        -- first register
        if(num1_reg_en = '1') then 
            num1_reg <= incoming_data_data;
        elsif (num1_reg_clr = '1') then 
            num1_reg <= (others => '0');
        end if;
        
        -- Opertion register
         if(operation_reg_en= '1') then
            num2_reg <= incoming_data_data;
        elsif (operation_reg_clr = '1') then 
            num2_reg <= (others => '0');
        end if;
        
        -- Second Register
        if(num2_reg_en= '1') then
            operation_reg <= incoming_data_data;
        elsif (num2_reg_clr = '1') then 
            operation_reg <= (others => '0');
        end if;

        -- CALCULATIONS :))))
        if (equals_output_reg_clr = '1') then
        
        case operation_reg is
        
            -- Binary for + sign
            when "00101011" =>
                equals_reg_output <= STD_LOGIC_VECTOR(signed(num1_reg) + signed(num2_reg));
            
            -- Binary for the - sign
            when "00101101" =>
                equals_reg_output <= STD_LOGIC_VECTOR(signed(num1_reg) + signed(num2_reg));
    
            -- Binary for the * sign
            when "00101010" =>
                equals_reg_output <= STD_LOGIC_VECTOR(signed(num1_reg) * signed(num2_reg));
            
            -- All other cases
            when others =>
                equals_reg_output <= equals_reg_output;
            
        end case;
        
        end if;
        
    end if;
end process data_registers;


FSM_update: process(clk)
begin
    if rising_edge(clk) then
        curr_state <= next_state;
    end if;
end process FSM_update;

FSM_CombLog: process(curr_state)
begin
    -- Default signals
    
    -- Control signals
    num1_reg_en <= '0';
    num2_reg_en <= '0';
    operation_reg_en <= '0';
    equals_output_reg_en <= '0';    
    overflow_en <= '0';
    display_en <= '0';
    
    num1_reg_clr <= '0';
    num2_reg_clr <= '0';
    operation_reg_clr <= '0';
    equals_output_reg_clr <= '0';
    overflow_clr <= '0';
    
    -- Update next state
    next_state <= curr_state;
    
    case curr_state is
        when clr =>
            num1_reg_clr <= '1';
            num2_reg_clr <= '1';
            operation_reg_clr <= '1';
            equals_output_reg_clr <= '1';
            overflow_clr <= '1';
            
            next_state <= waitingToStart;
        
        
        when waitingToStart =>
            --num1_reg_en <= '1';
            
            if (incoming_data_signal = '1') then
                next_state <= storeNumOne;
            end if;
        
        when storeNumOne  =>
            num1_reg_en <= '1';
            
            if (incoming_data_signal = '1' and num_symb = '1') then
                next_state <= storeOperation;
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;
            
         when storeOperation  =>
            operation_reg_en <= '1';
            
            if (incoming_data_signal = '1' and operation_symb = '1') then
                next_state <= storeNumTwo;
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;
        

        when storeNumTwo  =>
            num2_reg_en <= '1';
            
            if (incoming_data_signal = '1' and num_symb = '1') then
                next_state <= waitingForOperations;
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;
            
        when waitingForOperations  =>
            num1_reg_en <= '1';
            
            if (incoming_data_signal = '1' and equals_symb = '1') then
                next_state <= equals;
            elsif (incoming_data_signal = '1' and operation_symb = '1') then
                next_state <= storeNumTwo;
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;
        
      
        when equals  =>
            equals_output_reg_en <= '1';
            
            if (incoming_data_signal = '1' and operation_symb = '1') then
                next_state <= storeNumTwo;
            elsif (incoming_data_signal = '1' and clr_sig = '1') then
                next_state <= clr;
            end if;
        
        
    
    end case;

end process FSM_CombLog;
end Behavioral;
