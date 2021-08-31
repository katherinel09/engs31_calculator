----------------------------------------------------------------------------------
-- Company: ENGS 31 ASM Calculator
-- Engineer: Wendell Wu

-- This module will first put a 15-bit two's complement number
-- into sign and magnitude form (1 bit sign, 14 bits magnitude),
-- then utilize a block memory to convert the magnitude to
-- BCD, then finally utilize the sign bit to determine whether
-- a negative sign should be put in place of the MSB on the BCD number.
-- 
-- Create Date: 08/23/2021 03:03:56 AM
-- Module Name: bin_to_BCD - Behavioral
-- 
-- Revision:
-- Revision 0.01 - File Created and written out
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bin_to_BCD is
    -- take in the 15 bit signed two's comp number from output and convert to BCD
    Port ( clk: in std_logic; -- clock needed for block memory
           signed_num : in STD_LOGIC_VECTOR (14 downto 0);
           BCD_out : out STD_LOGIC_VECTOR (15 downto 0));
end bin_to_BCD;

architecture Behavioral of bin_to_BCD is
    signal sign_bit: std_logic;
    signal magnitude: std_logic_vector(13 downto 0);
    signal mag_BCD: std_logic_vector(15 downto 0);
    signal sign_BCD: std_logic_vector(15 downto 0);
    
    -- block memory component declaration
    COMPONENT blk_mem_gen_0
        PORT (
        clka : IN STD_LOGIC;
        ena  : IN STD_LOGIC;
        addra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
    end component;

begin
    -- assign the sign bit accordingly
    sign_bit <= signed_num(14);
    -- just the magnitude part, truncated down to 14 bits for use in addressing
    magnitude <= std_logic_vector(resize(abs(signed(signed_num)), 14));
    
    -- block memory initialization declaration
    magnitude_to_bcd : blk_mem_gen_0
        PORT MAP (
        ena => '1', -- enable always high
        clka => clk,
        addra => magnitude,
        douta => mag_BCD);

   -- once we have the conversion from the block ROM, put a negative sign if needed
   create_neg_sign: process(sign_bit, mag_BCD) is
   begin
       if sign_bit = '1' then
           sign_BCD(15 downto 12) <= "1100";
       else
           sign_BCD(15 downto 12) <= mag_BCD(15 downto 12);
       end if;
       
       sign_BCD(11 downto 0) <= mag_BCD(11 downto 0);
   end process;

   -- finally, assign our temp output to real output
   BCD_out <= sign_BCD;
end Behavioral;
