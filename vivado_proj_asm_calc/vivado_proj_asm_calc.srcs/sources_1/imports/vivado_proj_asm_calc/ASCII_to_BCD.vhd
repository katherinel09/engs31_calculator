----------------------------------------------------------------------------------
-- Company: E31 ASM Calculator
-- Engineer: Wendell Wu, Katherine Lasonde
-- 
-- Create Date: 08/20/2021 01:24:53 PM
-- Module Name: ASCII_to_BCD - Behavioral
-- Description: A "lookup table" which takes
--	  an 8-bit wide ASCII code and spits out
--	  the appropriate 4-bit BCD digit or
--	  coded command for the controller.
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
		num_ASCII:  	in  STD_LOGIC_VECTOR(7 downto 0);
		num_BCD:		out STD_LOGIC_VECTOR(3 downto 0);
		num_ready:		out STD_LOGIC; -- asserts a number has entered the chat
		neg_ready: 		out STD_LOGIC; -- asserts that a negative sign has been added to the chat
		op_ready:		out STD_LOGIC; -- asserts that an operation has been added to the chat
		equals_ready:	out	STD_LOGIC; -- asserted when equals is pressed
		clr:			out	std_logic);-- asserted high when "c" is pressed
end entity;

architecture lookup of ASCII_to_BCD is
begin

	-- the "lookup table"
	process (num_ASCII) is
	begin
		-- defaults
		num_ready <= '1';
		neg_ready <= '0';
		op_ready <= '0';
		equals_ready <= '0';
		clr <= '0';
		case num_ASCII is
			-- when we start with 0x3, the BCD is the last 4 bits if not "="
			when "00110000" => 	num_BCD <= num_ASCII(3 downto 0); -- '0'
			when "00110001" => 	num_BCD <= num_ASCII(3 downto 0); -- '1'
			when "00110010" => 	num_BCD <= num_ASCII(3 downto 0); -- '2'
			when "00110011" => 	num_BCD <= num_ASCII(3 downto 0); -- '3'
			when "00110100" => 	num_BCD <= num_ASCII(3 downto 0); -- '4'
			when "00110101" => 	num_BCD <= num_ASCII(3 downto 0); -- '5'
			when "00110110" => 	num_BCD <= num_ASCII(3 downto 0); -- '6'
			when "00110111" => 	num_BCD <= num_ASCII(3 downto 0); -- '7'
			when "00111000" => 	num_BCD <= num_ASCII(3 downto 0); -- '8'
			when "00111001" => 	num_BCD <= num_ASCII(3 downto 0); -- '9'   
			-- * is 0x2A, + is 0x2B, - is 0x2D, = is 0x3D
			when "00101010" => 
				num_BCD <= x"a"; -- '*' is 0xA
				num_ready <= '0';
				op_ready <= '1';
						
			when "00101011" => 
				num_BCD <= x"b"; -- '+' is 0xB
				num_ready <= '0';
				op_ready <= '1';
						
			when "00101101" => 
				num_BCD <= "1100"; -- '-' is 0xC
				num_ready <= '0';
				neg_ready <= '1';
				op_ready <= '1';
						
			when "00111101" => 
				num_BCD <= "1110"; -- '=' is 0xE
				num_ready <= '0';
				equals_ready <= '1';
						
			-- when 0x63 ('c'), the operation is clear (0xF)
			when "01100011" => 
				num_BCD <= "1111"; -- clear 0xF
				num_ready <= '0';
				clr <= '1';
						
			-- last case for unknown chars is just ignore it (0xD)
			when others => 
				num_BCD <= "1101"; -- 0xD for unknown
				num_ready <= '0';
				neg_ready <= '0';
				op_ready <= '0';
				equals_ready <= '0';
						
		end case;
	end process;
end lookup;
