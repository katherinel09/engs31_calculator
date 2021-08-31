----------------------------------------------------------------------------------
-- Course:	Engs 31 21X
-- Design Name: 	asm_calc_shell.vhd
-- Module Name:		asm_calc_shell
-- Project Name:	E31 Final Project
-- Target Devices:	Basys3 Board/Artix-7 FPGA
-- Description:		Top-level file for our ASM Calculator
--
-- Revisions: 
-- Revision 0.01 - File Created
--		Revised (EWH) 7.19.2014 for Nexys3 board and updated lab flow
-- Revision 1.0 - Wendell and Kat
--		Revised (Wendell) 8.24.2021 for top level file consistency
-- Revision 1.1 - Wendell
--		Revised to include calculator main module on 8.25.2021
--		Demo'd to Prof. Hansen and Ben Dobbins on 8.25.2021
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

entity asm_calc_shell is
	port(
		clk_100MHz:	in	std_logic;						-- clk in (100 Mhz)
		ser_in:		in	std_logic;						-- Serial in
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
	
	-- signals for ASCII to BCD output
	signal uart_bcd:			std_logic_vector(3 downto 0);
	signal num_ready_sig:		std_logic; -- asserts a number has entered the chat
	signal neg_ready_sig:		std_logic; -- asserts that a negative sign has been added to the chat
	signal op_ready_sig:		std_logic; -- asserts that an operation has been added to the chat
	signal equals_ready_sig:	std_logic;
	signal clr_sig:				std_logic;
	
	-- calculator output signal to go to 7seg display
	signal calc_out:		std_logic_vector(15 downto 0);

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
		num_ASCII:	in	std_logic_VECTOR(7 downto 0);
		num_BCD:	out	std_logic_VECTOR(3 downto 0);
		num_ready:	out std_logic; -- asserts a number has entered the chat
        neg_ready: 	out std_logic; -- asserts that a negative sign has been added to the chat
        op_ready:	out std_logic; -- asserts that an operation has been added to the chat
        equals_ready: out std_logic;
		clr:		out std_logic);
	end component;
	
	component calculator port(
		clk:		in	std_logic;						-- clk in (10 Mhz)
		bcd_in:		in	std_logic_vector(3 downto 0);	-- received BCD in
		-- which input type is it?
		is_num:		in	std_logic;
		is_neg:		in	std_logic;
		is_op:		in	std_logic;
		is_equals:	in	std_logic;
		is_clr:		in	std_logic;

		rx_tick:	in	std_logic;	-- indicating a new command came in
		-- 4 bcd digits routed out, displays according to state
		bcd_out:	out	std_logic_vector(15 downto 0));
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
-- Any processes would go here (none right now)

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
		num_BCD		=>	uart_bcd,
		num_ready	=>	num_ready_sig,
		neg_ready	=>	neg_ready_sig,
		op_ready	=>	op_ready_sig,
		equals_ready=>	equals_ready_sig,
		clr			=>	clr_sig);
		
	main_calculator: calculator port map(
		clk		=>	clk_10MHz,
		bcd_in	=>	uart_bcd,
		
		is_num	=>	num_ready_sig,
		is_neg	=>	neg_ready_sig,
		is_op	=>	op_ready_sig,
		is_equals	=>	equals_ready_sig,
		is_clr	=>	clr_sig,

		rx_tick	=>	rx_done_tick,
		bcd_out	=>	calc_out
	);

	display: mux7seg port map(
		clk_iport 		=>	clk_10MHz,		-- 10MHz clock over 2^15 = 305Hz switching
		y3_iport 		=>	calc_out(15 downto 12),
		y2_iport 		=>	calc_out(11 downto 8),
		y1_iport 		=>	calc_out(7 downto 4),
		y0_iport 		=>	calc_out(3 downto 0),
		dp_set_iport	=>	"0000",
		seg_oport 		=>	seg_oport,
		dp_oport 		=>	dp_oport,
		an_oport 		=>	an_oport);
--------------------------------------------------------------------------------
end Structural;
