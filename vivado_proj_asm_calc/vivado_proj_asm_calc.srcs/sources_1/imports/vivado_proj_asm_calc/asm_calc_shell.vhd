----------------------------------------------------------------------------------
-- Course:	Engs 31 21X
-- Design Name: 	asm_calc_shell.vhd
-- Module Name:		asm_calc_shell
-- Project Name:	E31 Final Project
-- Target Devices:	Basys3 Board/Artix-7 FPGA
-- Description:		Top-level file for our ASM Calculator
--
-- Revision: 
-- Revision 0.01 - File Created
--		Revised (EWH) 7.19.2014 for Nexys3 board and updated lab flow
-- Revision 1.0 - Wendell and Kat
--		Revised (Wendell) 8.24.2014 for top level file consistency
-- Additional Comments:
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

library UNISIM;					-- needed for the BUFG component
use UNISIM.Vcomponents.ALL;

entity asm_calc_shell is
	port(
		clk_100MHz:	in	STD_LOGIC;						-- clk in (100 Mhz)
		ser_in:		in	STD_LOGIC;						-- Serial in
		-- seven seg output ports
		seg_oport:	out	std_logic_vector(0 to 6);		--segment control
		dp_oport:	out	std_logic;						--decimal point control
		an_oport:	out	std_logic_vector(3 downto 0));	--digit control
end asm_calc_shell;

architecture Structural of asm_calc_shell is
	-- Signals for the 100 MHz to 10 MHz clock divider
	signal clk_10MHz: std_logic;				-- 10 MHz clock signal

	-- Signals for Serial Receiver Output --
	signal rx_data : std_logic_vector(7 downto 0);
	signal rx_done_tick : std_logic;
	
	-- signal for ASCII to BCD output
	signal uart_bcd:	std_logic_vector(3 downto 0);

-- component declarations
	component system_clock_generator is
		generic(
			CLOCK_DIVIDER_RATIO : integer); -- odd numbers induce rounding error
		port(
			ext_clk_iport		:	in	std_logic;
			system_clk_oport	:	out	std_logic;
			fwd_clk_oport		:	out	std_logic);
	end component;

	component SerialRx port(
		Clk:			in	std_logic;
		RsRx:			in	std_logic;
		rx_data:		out	std_logic_vector(7 downto 0);
		rx_done_tick:	out	std_logic);
	end component;

	component ASCII_to_BCD port(
		num_ASCII:	in	STD_LOGIC_VECTOR(7 downto 0);
		num_BCD:	out	STD_LOGIC_VECTOR(3 downto 0));
	end component;

	component mux7seg port(
		clk_iport:		in	std_logic;						-- runs on a fast (1 MHz or so) clock
		y3_iport:		in	std_logic_vector(3 downto 0);	-- digits
		y2_iport:		in	std_logic_vector(3 downto 0);	-- digits
		y1_iport:		in	std_logic_vector(3 downto 0);	-- digits
		y0_iport:		in	std_logic_vector(3 downto 0);	-- digits
		dp_set_iport:	in	std_logic_vector(3 downto 0);	-- decimal points
		-- what's routed to the actual 7 seg display
		seg_oport:		out std_logic_vector(0 to 6);			-- segments (a...g)
		dp_oport:		out std_logic;							-- decimal point
		an_oport:		out std_logic_vector (3 downto 0));	-- anodes
	end component;
--------------------------------------------------------------------------------
begin
--------------------------------------------------------------------------------
-- Any processes would go here

-- Begin component wiring
--------------------------------------------------------------------------------
	clocking: system_clock_generator 
		generic map(
			CLOCK_DIVIDER_RATIO	=>	10) -- for 10 MHz
		port map(
			ext_clk_iport		=>	clk_100MHz,
			system_clk_oport	=>	clk_10MHz,
			fwd_clk_oport		=>	open);

	serial_receiver: SerialRx port map(
		clk				=>	clk_10MHz, 	-- receiver is set up to take a 10 MHz clock
		RsRx			=>	ser_in,
		rx_data			=>	rx_data,
		rx_done_tick	=>	rx_done_tick);
	
	ascii_conversion: ASCII_to_BCD port map(
		num_ASCII	=>	rx_data,
		num_BCD		=>	uart_bcd);

	display: mux7seg port map(
		clk_iport 		=>	clk_10MHz,		-- 10MHz clock over 2^15 = 305Hz switching
		y3_iport 		=>	uart_bcd,
		y2_iport 		=>	x"0",
		y1_iport 		=>	x"0",
		y0_iport 		=>	x"0",
		dp_set_iport	=>	"0000",
		seg_oport 		=>	seg_oport,
		dp_oport 		=>	dp_oport,
		an_oport 		=>	an_oport);
--------------------------------------------------------------------------------
end Structural;
