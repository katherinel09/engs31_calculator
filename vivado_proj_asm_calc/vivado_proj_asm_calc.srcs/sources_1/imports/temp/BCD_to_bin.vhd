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

entity BCD_to_bin is
    port (
        num_BCD: in STD_LOGIC_VECTOR(7 downto 0);
        num_bin: out STD_LOGIC_VECTOR(7 downto 0));
end entity;

architecture any of BCD_to_bin is
begin
    process (num_BCD) is
    begin
        case num_BCD is
            when "00000000" => num_bin <= "0110000"; -- 0
            when "00000001" => num_bin <= "0110001"; -- 1
            when "00000010" => num_bin <= "0110010"; -- 2
            when "00000011" => num_bin <= "0110011"; -- 3
            when "00000001" => num_bin <= "0110011"; -- 4
            when "00000101" => num_bin <= "0110100"; -- 5
            when "00000110" => num_bin <= "0110101"; -- 6
            when "00000111" => num_bin <= "0110111"; -- 7
            when "00001000" => num_bin <= "0111000"; -- 8
            when "00001001" => num_bin <= "0111001"; -- 9
        end case;
    end process;
end any;