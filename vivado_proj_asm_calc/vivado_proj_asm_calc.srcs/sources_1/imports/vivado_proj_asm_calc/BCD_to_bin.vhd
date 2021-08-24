----------------------------------------------------------------------------------
-- Company: ENGS 31 ASM Calculator
-- Engineer: Wendell Wu
-- 
-- Create Date: 08/20/2021 01:24:53 PM
-- Module Name: ASCII_to_BCD
-- Description: Converts 2 BCD digits (up to 10's place or negative sign)
-- to a signed 8 bit binary number.
-- 
-- Revision: Initial Writeout -- casting and specs figured out
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity BCD_to_bin is
    port (
        -- input is 2 BCD digits (1 is LSB, 2 is MSB or '-')
        BCD_dig_1:  in  STD_LOGIC_VECTOR(3 downto 0);
        BCD_dig_2:  in  STD_LOGIC_VECTOR(3 downto 0);
        signed_bin: out STD_LOGIC_VECTOR(7 downto 0));
end entity;

architecture conversion of BCD_to_bin is
    signal temp_dig_1: signed(7 downto 0);
    signal temp_dig_2: signed(7 downto 0);
begin
    -- process to do resizing for temporary variables
    resizing: process (BCD_dig_1, BCD_dig_2) is
    begin
        temp_dig_1 <= signed(std_logic_vector(resize(unsigned(BCD_dig_1), 8)));
        -- if it's negative, let temp_dig_2 = -1
        if BCD_dig_2 = "1100" then
            temp_dig_2 <= to_signed(-1, 8);
        else -- otherwise it's a 10's place number, multiply by 10
            temp_dig_2 <= signed(std_logic_vector(resize(unsigned(BCD_dig_2), 8)))*10;
        end if;
    end process;
    
    -- process to calculate final binary num from temp vars
    form_bin_num: process(temp_dig_1, temp_dig_2) is
    begin
        -- if it was a negative, just multiply temp_dig_1 by -1
        if temp_dig_2 = -1 then
            signed_bin <= std_logic_vector(temp_dig_1 * temp_dig_2);
        else -- otherwise it was a 10's place so just add it together
            signed_bin <= std_logic_vector(temp_dig_1 + temp_dig_2);
        end if;
    end process;
end conversion;