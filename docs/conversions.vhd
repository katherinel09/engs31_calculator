----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/20/2021 01:14:51 PM
-- Design Name: 
-- Module Name: conversions - Behavioral
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

entity prep_for_calculating is
     Port( clk: in STD_LOGIC;
     
     data_out: out STD_LOGIC;
     out_isOperation: out STD_LOGIC;
     out_isNumber: out STD_LOGIC;
     out_isEquals: out STD_LOGIC;
     out_isClr: out STD_LOGIC );
end conversions;

architecture Behavioral of conversions is

    type state_type is (waiting, num, concatenate, op, output);
    
    signal curr_state: state_type := waiting;
    signal next_state: state_type;

begin


FSM_update: process(clk)
begin
    if rising_edge(clk) then
        curr_state <= next_state;
    end if;
end process FSM_update;


end Behavioral;
