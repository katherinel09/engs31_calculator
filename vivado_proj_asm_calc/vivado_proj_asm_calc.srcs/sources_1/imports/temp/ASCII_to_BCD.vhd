----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/20/2021 01:24:53 PM
-- Design Name: 
-- Module Name: ASCII_to_BCD - Behavioral
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

entity ASCII_to_BCD is
    port (
        num_ASCII:  in  STD_LOGIC_VECTOR(2 downto 0);
        num_BCD:    out STD_LOGIC_VECTOR(7 downto 0));
end entity;

architecture any of ASCII_to_BCD is
begin
    process (num_ASCII) is
    begin
        case num_ASCII is
            when "30" => num_BCD <= "00000000"; -- 0
            when "31" => num_BCD <= "00000001"; -- 1
            when "32" => num_BCD <= "00000010"; -- 2
            when "33" => num_BCD <= "00000011"; -- 3
            when "34" => num_BCD <= "00000100"; -- 4
            when "35" => num_BCD <= "00000101"; -- 5
            when "36" => num_BCD <= "00000110"; -- 6
            when "37" => num_BCD <= "00000111"; -- 7
            when "38" => num_BCD <= "00001000"; -- 8
            when "39" => num_BCD <= "00001001"; -- 9
            when "&#x2b" => num_BCD <= "010"; -- +
            when "&#x2212" => num_BCD <= "011"; -- -
            when "&#xd7" => num_BCD <= "011"; -- *
            when "&#x3d" => num_BCD <= "010"; -- =   
        end case;
     end process;
end any;
