-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "09/22/2020 11:36:42"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab1 IS
    PORT (
	clk : IN std_logic;
	data : IN std_logic_vector(9 DOWNTO 0);
	sck : OUT std_logic;
	mosi : OUT std_logic;
	ss : OUT std_logic
	);
END lab1;

-- Design Ports Information
-- sck	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sck : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_ss : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divider|Add0~6_combout\ : std_logic;
SIGNAL \divider|Add0~8_combout\ : std_logic;
SIGNAL \spi|bit_number[7]~27_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~6_combout\ : std_logic;
SIGNAL \divider|counter~0_combout\ : std_logic;
SIGNAL \divider|counter~1_combout\ : std_logic;
SIGNAL \divider|counter~2_combout\ : std_logic;
SIGNAL \pulse_gen|Equal1~0_combout\ : std_logic;
SIGNAL \pulse_gen|counter~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sck~output_o\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \ss~output_o\ : std_logic;
SIGNAL \pulse_gen|Add0~1\ : std_logic;
SIGNAL \pulse_gen|Add0~2_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~3\ : std_logic;
SIGNAL \pulse_gen|Add0~4_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~10_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~8_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~14_combout\ : std_logic;
SIGNAL \pulse_gen|Equal1~1_combout\ : std_logic;
SIGNAL \pulse_gen|Equal1~2_combout\ : std_logic;
SIGNAL \pulse_gen|counter~0_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~5\ : std_logic;
SIGNAL \pulse_gen|Add0~7\ : std_logic;
SIGNAL \pulse_gen|Add0~9\ : std_logic;
SIGNAL \pulse_gen|Add0~11\ : std_logic;
SIGNAL \pulse_gen|Add0~12_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~13\ : std_logic;
SIGNAL \pulse_gen|Add0~15\ : std_logic;
SIGNAL \pulse_gen|Add0~16_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~17\ : std_logic;
SIGNAL \pulse_gen|Add0~18_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~0_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~0_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~1_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~2_combout\ : std_logic;
SIGNAL \pulse_gen|start~q\ : std_logic;
SIGNAL \spi|bit_number[0]~10_combout\ : std_logic;
SIGNAL \spi|bit_number[8]~20_combout\ : std_logic;
SIGNAL \spi|bit_number[1]~13\ : std_logic;
SIGNAL \spi|bit_number[2]~15\ : std_logic;
SIGNAL \spi|bit_number[3]~16_combout\ : std_logic;
SIGNAL \spi|bit_number[3]~17\ : std_logic;
SIGNAL \spi|bit_number[4]~18_combout\ : std_logic;
SIGNAL \spi|bit_number[4]~19\ : std_logic;
SIGNAL \spi|bit_number[5]~23_combout\ : std_logic;
SIGNAL \spi|bit_number[5]~24\ : std_logic;
SIGNAL \spi|bit_number[6]~25_combout\ : std_logic;
SIGNAL \spi|bit_number[6]~26\ : std_logic;
SIGNAL \spi|bit_number[7]~28\ : std_logic;
SIGNAL \spi|bit_number[8]~29_combout\ : std_logic;
SIGNAL \spi|bit_number[2]~14_combout\ : std_logic;
SIGNAL \spi|LessThan0~2_combout\ : std_logic;
SIGNAL \spi|Equal0~0_combout\ : std_logic;
SIGNAL \spi|LessThan0~3_combout\ : std_logic;
SIGNAL \spi|Equal1~0_combout\ : std_logic;
SIGNAL \spi|bit_number[8]~22_combout\ : std_logic;
SIGNAL \spi|bit_number[8]~30\ : std_logic;
SIGNAL \spi|bit_number[9]~31_combout\ : std_logic;
SIGNAL \spi|Equal0~1_combout\ : std_logic;
SIGNAL \spi|Equal0~2_combout\ : std_logic;
SIGNAL \spi|bit_number[8]~21_combout\ : std_logic;
SIGNAL \spi|bit_number[0]~11\ : std_logic;
SIGNAL \spi|bit_number[1]~12_combout\ : std_logic;
SIGNAL \spi|Equal0~3_combout\ : std_logic;
SIGNAL \spi|start~0_combout\ : std_logic;
SIGNAL \spi|start~q\ : std_logic;
SIGNAL \spi|clk_sync~0_combout\ : std_logic;
SIGNAL \spi|clk_sync~q\ : std_logic;
SIGNAL \divider|Add0~0_combout\ : std_logic;
SIGNAL \divider|Add0~1\ : std_logic;
SIGNAL \divider|Add0~2_combout\ : std_logic;
SIGNAL \divider|Add0~3\ : std_logic;
SIGNAL \divider|Add0~4_combout\ : std_logic;
SIGNAL \divider|Equal0~0_combout\ : std_logic;
SIGNAL \divider|counter~3_combout\ : std_logic;
SIGNAL \divider|Add0~5\ : std_logic;
SIGNAL \divider|Add0~7\ : std_logic;
SIGNAL \divider|Add0~9\ : std_logic;
SIGNAL \divider|Add0~11\ : std_logic;
SIGNAL \divider|Add0~12_combout\ : std_logic;
SIGNAL \divider|Add0~10_combout\ : std_logic;
SIGNAL \divider|Add0~13\ : std_logic;
SIGNAL \divider|Add0~14_combout\ : std_logic;
SIGNAL \divider|Equal0~1_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~0_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~feeder_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~q\ : std_logic;
SIGNAL \spi|sck~combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \spi|inner_data~10_combout\ : std_logic;
SIGNAL \spi|inner_data~11_combout\ : std_logic;
SIGNAL \spi|inner_data~9_combout\ : std_logic;
SIGNAL \spi|inner_data[9]~1_combout\ : std_logic;
SIGNAL \spi|inner_data~8_combout\ : std_logic;
SIGNAL \spi|inner_data~7_combout\ : std_logic;
SIGNAL \spi|inner_data~6_combout\ : std_logic;
SIGNAL \spi|inner_data~5_combout\ : std_logic;
SIGNAL \spi|inner_data~4_combout\ : std_logic;
SIGNAL \spi|inner_data~3_combout\ : std_logic;
SIGNAL \spi|inner_data~2_combout\ : std_logic;
SIGNAL \spi|inner_data~0_combout\ : std_logic;
SIGNAL \spi|mosi~combout\ : std_logic;
SIGNAL \divider|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pulse_gen|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \spi|inner_data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \spi|bit_number\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \divider|ALT_INV_out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \spi|ALT_INV_start~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data <= data;
sck <= ww_sck;
mosi <= ww_mosi;
ss <= ww_ss;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divider|out_clk_inner~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divider|out_clk_inner~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\divider|ALT_INV_out_clk_inner~clkctrl_outclk\ <= NOT \divider|out_clk_inner~clkctrl_outclk\;
\spi|ALT_INV_start~q\ <= NOT \spi|start~q\;

-- Location: LCCOMB_X33_Y12_N10
\divider|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~6_combout\ = (\divider|counter\(3) & (!\divider|Add0~5\)) # (!\divider|counter\(3) & ((\divider|Add0~5\) # (GND)))
-- \divider|Add0~7\ = CARRY((!\divider|Add0~5\) # (!\divider|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(3),
	datad => VCC,
	cin => \divider|Add0~5\,
	combout => \divider|Add0~6_combout\,
	cout => \divider|Add0~7\);

-- Location: LCCOMB_X33_Y12_N12
\divider|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~8_combout\ = (\divider|counter\(4) & (\divider|Add0~7\ $ (GND))) # (!\divider|counter\(4) & (!\divider|Add0~7\ & VCC))
-- \divider|Add0~9\ = CARRY((\divider|counter\(4) & !\divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(4),
	datad => VCC,
	cin => \divider|Add0~7\,
	combout => \divider|Add0~8_combout\,
	cout => \divider|Add0~9\);

-- Location: FF_X2_Y9_N23
\spi|bit_number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[7]~27_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(7));

-- Location: LCCOMB_X2_Y9_N22
\spi|bit_number[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[7]~27_combout\ = (\spi|bit_number\(7) & (!\spi|bit_number[6]~26\)) # (!\spi|bit_number\(7) & ((\spi|bit_number[6]~26\) # (GND)))
-- \spi|bit_number[7]~28\ = CARRY((!\spi|bit_number[6]~26\) # (!\spi|bit_number\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(7),
	datad => VCC,
	cin => \spi|bit_number[6]~26\,
	combout => \spi|bit_number[7]~27_combout\,
	cout => \spi|bit_number[7]~28\);

-- Location: LCCOMB_X1_Y10_N16
\pulse_gen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~6_combout\ = (\pulse_gen|counter\(3) & (!\pulse_gen|Add0~5\)) # (!\pulse_gen|counter\(3) & ((\pulse_gen|Add0~5\) # (GND)))
-- \pulse_gen|Add0~7\ = CARRY((!\pulse_gen|Add0~5\) # (!\pulse_gen|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(3),
	datad => VCC,
	cin => \pulse_gen|Add0~5\,
	combout => \pulse_gen|Add0~6_combout\,
	cout => \pulse_gen|Add0~7\);

-- Location: FF_X33_Y12_N31
\divider|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(0));

-- Location: FF_X33_Y12_N23
\divider|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(3));

-- Location: FF_X33_Y12_N7
\divider|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(1));

-- Location: FF_X33_Y12_N15
\divider|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(5));

-- Location: FF_X33_Y12_N17
\divider|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(6));

-- Location: LCCOMB_X33_Y12_N30
\divider|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|counter~0_combout\ = (\divider|Add0~0_combout\ & ((!\divider|Equal0~1_combout\) # (!\divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Equal0~0_combout\,
	datac => \divider|Add0~0_combout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|counter~0_combout\);

-- Location: LCCOMB_X33_Y12_N0
\divider|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|counter~1_combout\ = ((\divider|Add0~10_combout\) # (!\divider|Equal0~0_combout\)) # (!\divider|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~8_combout\,
	datab => \divider|Add0~10_combout\,
	datac => \divider|Equal0~0_combout\,
	combout => \divider|counter~1_combout\);

-- Location: LCCOMB_X33_Y12_N22
\divider|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|counter~2_combout\ = (\divider|Add0~6_combout\ & ((\divider|Add0~12_combout\) # ((\divider|Add0~14_combout\) # (\divider|counter~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~6_combout\,
	datab => \divider|Add0~12_combout\,
	datac => \divider|Add0~14_combout\,
	datad => \divider|counter~1_combout\,
	combout => \divider|counter~2_combout\);

-- Location: FF_X1_Y10_N31
\pulse_gen|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \pulse_gen|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(3));

-- Location: FF_X1_Y10_N1
\pulse_gen|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	asdata => \pulse_gen|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(4));

-- Location: LCCOMB_X1_Y10_N4
\pulse_gen|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal1~0_combout\ = (!\pulse_gen|Add0~0_combout\ & (\pulse_gen|Add0~4_combout\ & (!\pulse_gen|Add0~2_combout\ & \pulse_gen|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Add0~0_combout\,
	datab => \pulse_gen|Add0~4_combout\,
	datac => \pulse_gen|Add0~2_combout\,
	datad => \pulse_gen|Add0~6_combout\,
	combout => \pulse_gen|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
\pulse_gen|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|counter~1_combout\ = (\pulse_gen|Add0~6_combout\ & !\pulse_gen|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|Add0~6_combout\,
	datad => \pulse_gen|Equal1~2_combout\,
	combout => \pulse_gen|counter~1_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: CLKCTRL_G8
\divider|out_clk_inner~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divider|out_clk_inner~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divider|out_clk_inner~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y6_N16
\sck~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|sck~combout\,
	devoe => ww_devoe,
	o => \sck~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\mosi~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|mosi~combout\,
	devoe => ww_devoe,
	o => \mosi~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\ss~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi|ALT_INV_start~q\,
	devoe => ww_devoe,
	o => \ss~output_o\);

-- Location: LCCOMB_X1_Y10_N10
\pulse_gen|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~0_combout\ = \pulse_gen|counter\(0) $ (VCC)
-- \pulse_gen|Add0~1\ = CARRY(\pulse_gen|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(0),
	datad => VCC,
	combout => \pulse_gen|Add0~0_combout\,
	cout => \pulse_gen|Add0~1\);

-- Location: LCCOMB_X1_Y10_N12
\pulse_gen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~2_combout\ = (\pulse_gen|counter\(1) & (!\pulse_gen|Add0~1\)) # (!\pulse_gen|counter\(1) & ((\pulse_gen|Add0~1\) # (GND)))
-- \pulse_gen|Add0~3\ = CARRY((!\pulse_gen|Add0~1\) # (!\pulse_gen|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(1),
	datad => VCC,
	cin => \pulse_gen|Add0~1\,
	combout => \pulse_gen|Add0~2_combout\,
	cout => \pulse_gen|Add0~3\);

-- Location: FF_X1_Y10_N5
\pulse_gen|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	asdata => \pulse_gen|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(1));

-- Location: LCCOMB_X1_Y10_N14
\pulse_gen|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~4_combout\ = (\pulse_gen|counter\(2) & (\pulse_gen|Add0~3\ $ (GND))) # (!\pulse_gen|counter\(2) & (!\pulse_gen|Add0~3\ & VCC))
-- \pulse_gen|Add0~5\ = CARRY((\pulse_gen|counter\(2) & !\pulse_gen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(2),
	datad => VCC,
	cin => \pulse_gen|Add0~3\,
	combout => \pulse_gen|Add0~4_combout\,
	cout => \pulse_gen|Add0~5\);

-- Location: LCCOMB_X1_Y10_N20
\pulse_gen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~10_combout\ = (\pulse_gen|counter\(5) & (!\pulse_gen|Add0~9\)) # (!\pulse_gen|counter\(5) & ((\pulse_gen|Add0~9\) # (GND)))
-- \pulse_gen|Add0~11\ = CARRY((!\pulse_gen|Add0~9\) # (!\pulse_gen|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(5),
	datad => VCC,
	cin => \pulse_gen|Add0~9\,
	combout => \pulse_gen|Add0~10_combout\,
	cout => \pulse_gen|Add0~11\);

-- Location: LCCOMB_X1_Y10_N18
\pulse_gen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~8_combout\ = (\pulse_gen|counter\(4) & (\pulse_gen|Add0~7\ $ (GND))) # (!\pulse_gen|counter\(4) & (!\pulse_gen|Add0~7\ & VCC))
-- \pulse_gen|Add0~9\ = CARRY((\pulse_gen|counter\(4) & !\pulse_gen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(4),
	datad => VCC,
	cin => \pulse_gen|Add0~7\,
	combout => \pulse_gen|Add0~8_combout\,
	cout => \pulse_gen|Add0~9\);

-- Location: LCCOMB_X1_Y10_N24
\pulse_gen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~14_combout\ = (\pulse_gen|counter\(7) & (!\pulse_gen|Add0~13\)) # (!\pulse_gen|counter\(7) & ((\pulse_gen|Add0~13\) # (GND)))
-- \pulse_gen|Add0~15\ = CARRY((!\pulse_gen|Add0~13\) # (!\pulse_gen|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(7),
	datad => VCC,
	cin => \pulse_gen|Add0~13\,
	combout => \pulse_gen|Add0~14_combout\,
	cout => \pulse_gen|Add0~15\);

-- Location: LCCOMB_X1_Y10_N0
\pulse_gen|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal1~1_combout\ = (!\pulse_gen|Add0~12_combout\ & (!\pulse_gen|Add0~10_combout\ & (!\pulse_gen|Add0~8_combout\ & !\pulse_gen|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Add0~12_combout\,
	datab => \pulse_gen|Add0~10_combout\,
	datac => \pulse_gen|Add0~8_combout\,
	datad => \pulse_gen|Add0~14_combout\,
	combout => \pulse_gen|Equal1~1_combout\);

-- Location: LCCOMB_X1_Y10_N2
\pulse_gen|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal1~2_combout\ = (\pulse_gen|Equal1~0_combout\ & (!\pulse_gen|Add0~18_combout\ & (!\pulse_gen|Add0~16_combout\ & \pulse_gen|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Equal1~0_combout\,
	datab => \pulse_gen|Add0~18_combout\,
	datac => \pulse_gen|Add0~16_combout\,
	datad => \pulse_gen|Equal1~1_combout\,
	combout => \pulse_gen|Equal1~2_combout\);

-- Location: LCCOMB_X1_Y10_N8
\pulse_gen|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|counter~0_combout\ = (\pulse_gen|Add0~4_combout\ & !\pulse_gen|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|Add0~4_combout\,
	datad => \pulse_gen|Equal1~2_combout\,
	combout => \pulse_gen|counter~0_combout\);

-- Location: FF_X1_Y10_N9
\pulse_gen|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \pulse_gen|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(2));

-- Location: LCCOMB_X1_Y10_N22
\pulse_gen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~12_combout\ = (\pulse_gen|counter\(6) & (\pulse_gen|Add0~11\ $ (GND))) # (!\pulse_gen|counter\(6) & (!\pulse_gen|Add0~11\ & VCC))
-- \pulse_gen|Add0~13\ = CARRY((\pulse_gen|counter\(6) & !\pulse_gen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(6),
	datad => VCC,
	cin => \pulse_gen|Add0~11\,
	combout => \pulse_gen|Add0~12_combout\,
	cout => \pulse_gen|Add0~13\);

-- Location: FF_X1_Y10_N23
\pulse_gen|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \pulse_gen|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(6));

-- Location: LCCOMB_X1_Y10_N26
\pulse_gen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~16_combout\ = (\pulse_gen|counter\(8) & (\pulse_gen|Add0~15\ $ (GND))) # (!\pulse_gen|counter\(8) & (!\pulse_gen|Add0~15\ & VCC))
-- \pulse_gen|Add0~17\ = CARRY((\pulse_gen|counter\(8) & !\pulse_gen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(8),
	datad => VCC,
	cin => \pulse_gen|Add0~15\,
	combout => \pulse_gen|Add0~16_combout\,
	cout => \pulse_gen|Add0~17\);

-- Location: FF_X1_Y10_N3
\pulse_gen|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	asdata => \pulse_gen|Add0~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(8));

-- Location: LCCOMB_X1_Y10_N28
\pulse_gen|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~18_combout\ = \pulse_gen|Add0~17\ $ (\pulse_gen|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|counter\(9),
	cin => \pulse_gen|Add0~17\,
	combout => \pulse_gen|Add0~18_combout\);

-- Location: FF_X1_Y10_N29
\pulse_gen|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \pulse_gen|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(9));

-- Location: FF_X1_Y10_N7
\pulse_gen|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	asdata => \pulse_gen|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(0));

-- Location: LCCOMB_X1_Y10_N6
\pulse_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~0_combout\ = (!\pulse_gen|counter\(3) & (!\pulse_gen|counter\(1) & (!\pulse_gen|counter\(0) & !\pulse_gen|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(3),
	datab => \pulse_gen|counter\(1),
	datac => \pulse_gen|counter\(0),
	datad => \pulse_gen|counter\(2),
	combout => \pulse_gen|Equal0~0_combout\);

-- Location: FF_X1_Y10_N25
\pulse_gen|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \pulse_gen|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(7));

-- Location: FF_X1_Y10_N21
\pulse_gen|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \pulse_gen|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|counter\(5));

-- Location: LCCOMB_X2_Y10_N2
\pulse_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~1_combout\ = (!\pulse_gen|counter\(4) & (!\pulse_gen|counter\(6) & (!\pulse_gen|counter\(7) & !\pulse_gen|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(4),
	datab => \pulse_gen|counter\(6),
	datac => \pulse_gen|counter\(7),
	datad => \pulse_gen|counter\(5),
	combout => \pulse_gen|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y10_N8
\pulse_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~2_combout\ = (!\pulse_gen|counter\(8) & (!\pulse_gen|counter\(9) & (\pulse_gen|Equal0~0_combout\ & \pulse_gen|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(8),
	datab => \pulse_gen|counter\(9),
	datac => \pulse_gen|Equal0~0_combout\,
	datad => \pulse_gen|Equal0~1_combout\,
	combout => \pulse_gen|Equal0~2_combout\);

-- Location: FF_X2_Y10_N9
\pulse_gen|start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \pulse_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|start~q\);

-- Location: LCCOMB_X2_Y9_N8
\spi|bit_number[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[0]~10_combout\ = \spi|bit_number\(0) $ (VCC)
-- \spi|bit_number[0]~11\ = CARRY(\spi|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(0),
	datad => VCC,
	combout => \spi|bit_number[0]~10_combout\,
	cout => \spi|bit_number[0]~11\);

-- Location: LCCOMB_X3_Y9_N12
\spi|bit_number[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[8]~20_combout\ = (!\spi|bit_number\(1) & \spi|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(1),
	datad => \spi|bit_number\(0),
	combout => \spi|bit_number[8]~20_combout\);

-- Location: LCCOMB_X2_Y9_N10
\spi|bit_number[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[1]~12_combout\ = (\spi|bit_number\(1) & (!\spi|bit_number[0]~11\)) # (!\spi|bit_number\(1) & ((\spi|bit_number[0]~11\) # (GND)))
-- \spi|bit_number[1]~13\ = CARRY((!\spi|bit_number[0]~11\) # (!\spi|bit_number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(1),
	datad => VCC,
	cin => \spi|bit_number[0]~11\,
	combout => \spi|bit_number[1]~12_combout\,
	cout => \spi|bit_number[1]~13\);

-- Location: LCCOMB_X2_Y9_N12
\spi|bit_number[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[2]~14_combout\ = (\spi|bit_number\(2) & (\spi|bit_number[1]~13\ $ (GND))) # (!\spi|bit_number\(2) & (!\spi|bit_number[1]~13\ & VCC))
-- \spi|bit_number[2]~15\ = CARRY((\spi|bit_number\(2) & !\spi|bit_number[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(2),
	datad => VCC,
	cin => \spi|bit_number[1]~13\,
	combout => \spi|bit_number[2]~14_combout\,
	cout => \spi|bit_number[2]~15\);

-- Location: LCCOMB_X2_Y9_N14
\spi|bit_number[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[3]~16_combout\ = (\spi|bit_number\(3) & (!\spi|bit_number[2]~15\)) # (!\spi|bit_number\(3) & ((\spi|bit_number[2]~15\) # (GND)))
-- \spi|bit_number[3]~17\ = CARRY((!\spi|bit_number[2]~15\) # (!\spi|bit_number\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(3),
	datad => VCC,
	cin => \spi|bit_number[2]~15\,
	combout => \spi|bit_number[3]~16_combout\,
	cout => \spi|bit_number[3]~17\);

-- Location: LCCOMB_X2_Y9_N16
\spi|bit_number[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[4]~18_combout\ = (\spi|bit_number\(4) & (\spi|bit_number[3]~17\ $ (GND))) # (!\spi|bit_number\(4) & (!\spi|bit_number[3]~17\ & VCC))
-- \spi|bit_number[4]~19\ = CARRY((\spi|bit_number\(4) & !\spi|bit_number[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(4),
	datad => VCC,
	cin => \spi|bit_number[3]~17\,
	combout => \spi|bit_number[4]~18_combout\,
	cout => \spi|bit_number[4]~19\);

-- Location: FF_X2_Y9_N17
\spi|bit_number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[4]~18_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(4));

-- Location: LCCOMB_X2_Y9_N18
\spi|bit_number[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[5]~23_combout\ = (\spi|bit_number\(5) & (!\spi|bit_number[4]~19\)) # (!\spi|bit_number\(5) & ((\spi|bit_number[4]~19\) # (GND)))
-- \spi|bit_number[5]~24\ = CARRY((!\spi|bit_number[4]~19\) # (!\spi|bit_number\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(5),
	datad => VCC,
	cin => \spi|bit_number[4]~19\,
	combout => \spi|bit_number[5]~23_combout\,
	cout => \spi|bit_number[5]~24\);

-- Location: FF_X2_Y9_N19
\spi|bit_number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[5]~23_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(5));

-- Location: LCCOMB_X2_Y9_N20
\spi|bit_number[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[6]~25_combout\ = (\spi|bit_number\(6) & (\spi|bit_number[5]~24\ $ (GND))) # (!\spi|bit_number\(6) & (!\spi|bit_number[5]~24\ & VCC))
-- \spi|bit_number[6]~26\ = CARRY((\spi|bit_number\(6) & !\spi|bit_number[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(6),
	datad => VCC,
	cin => \spi|bit_number[5]~24\,
	combout => \spi|bit_number[6]~25_combout\,
	cout => \spi|bit_number[6]~26\);

-- Location: FF_X2_Y9_N21
\spi|bit_number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[6]~25_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(6));

-- Location: LCCOMB_X2_Y9_N24
\spi|bit_number[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[8]~29_combout\ = (\spi|bit_number\(8) & (\spi|bit_number[7]~28\ $ (GND))) # (!\spi|bit_number\(8) & (!\spi|bit_number[7]~28\ & VCC))
-- \spi|bit_number[8]~30\ = CARRY((\spi|bit_number\(8) & !\spi|bit_number[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(8),
	datad => VCC,
	cin => \spi|bit_number[7]~28\,
	combout => \spi|bit_number[8]~29_combout\,
	cout => \spi|bit_number[8]~30\);

-- Location: FF_X2_Y9_N25
\spi|bit_number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[8]~29_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(8));

-- Location: FF_X2_Y9_N13
\spi|bit_number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[2]~14_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(2));

-- Location: LCCOMB_X3_Y9_N4
\spi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|LessThan0~2_combout\ = (\spi|bit_number\(3) & ((\spi|bit_number\(2)) # ((\spi|bit_number\(1)) # (\spi|bit_number\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(3),
	datab => \spi|bit_number\(2),
	datac => \spi|bit_number\(1),
	datad => \spi|bit_number\(0),
	combout => \spi|LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y9_N30
\spi|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal0~0_combout\ = (!\spi|bit_number\(7) & (!\spi|bit_number\(4) & (!\spi|bit_number\(6) & !\spi|bit_number\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(7),
	datab => \spi|bit_number\(4),
	datac => \spi|bit_number\(6),
	datad => \spi|bit_number\(5),
	combout => \spi|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y9_N10
\spi|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|LessThan0~3_combout\ = (\spi|bit_number\(9)) # ((\spi|bit_number\(8)) # ((\spi|LessThan0~2_combout\) # (!\spi|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(9),
	datab => \spi|bit_number\(8),
	datac => \spi|LessThan0~2_combout\,
	datad => \spi|Equal0~0_combout\,
	combout => \spi|LessThan0~3_combout\);

-- Location: LCCOMB_X3_Y9_N18
\spi|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal1~0_combout\ = (\spi|bit_number\(0) & (\spi|Equal0~2_combout\ & !\spi|bit_number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(0),
	datac => \spi|Equal0~2_combout\,
	datad => \spi|bit_number\(1),
	combout => \spi|Equal1~0_combout\);

-- Location: LCCOMB_X2_Y9_N2
\spi|bit_number[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[8]~22_combout\ = (\spi|Equal1~0_combout\) # ((\spi|clk_sync~q\ & (!\spi|LessThan0~3_combout\)) # (!\spi|clk_sync~q\ & ((\spi|start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|LessThan0~3_combout\,
	datac => \spi|start~q\,
	datad => \spi|Equal1~0_combout\,
	combout => \spi|bit_number[8]~22_combout\);

-- Location: FF_X2_Y9_N15
\spi|bit_number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[3]~16_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(3));

-- Location: LCCOMB_X2_Y9_N26
\spi|bit_number[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[9]~31_combout\ = \spi|bit_number\(9) $ (\spi|bit_number[8]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(9),
	cin => \spi|bit_number[8]~30\,
	combout => \spi|bit_number[9]~31_combout\);

-- Location: FF_X2_Y9_N27
\spi|bit_number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[9]~31_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(9));

-- Location: LCCOMB_X2_Y9_N0
\spi|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal0~1_combout\ = (!\spi|bit_number\(9) & !\spi|bit_number\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|bit_number\(9),
	datad => \spi|bit_number\(8),
	combout => \spi|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y9_N6
\spi|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal0~2_combout\ = (!\spi|bit_number\(2) & (\spi|bit_number\(3) & (\spi|Equal0~0_combout\ & \spi|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(2),
	datab => \spi|bit_number\(3),
	datac => \spi|Equal0~0_combout\,
	datad => \spi|Equal0~1_combout\,
	combout => \spi|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y9_N28
\spi|bit_number[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|bit_number[8]~21_combout\ = (!\spi|clk_sync~q\ & (\spi|start~q\ & ((!\spi|Equal0~2_combout\) # (!\spi|bit_number[8]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|bit_number[8]~20_combout\,
	datac => \spi|start~q\,
	datad => \spi|Equal0~2_combout\,
	combout => \spi|bit_number[8]~21_combout\);

-- Location: FF_X2_Y9_N9
\spi|bit_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[0]~10_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(0));

-- Location: FF_X2_Y9_N11
\spi|bit_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|bit_number[1]~12_combout\,
	sclr => \spi|bit_number[8]~21_combout\,
	ena => \spi|bit_number[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|bit_number\(1));

-- Location: LCCOMB_X3_Y9_N6
\spi|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|Equal0~3_combout\ = (!\spi|bit_number\(0) & \spi|bit_number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(0),
	datad => \spi|bit_number\(1),
	combout => \spi|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y9_N4
\spi|start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|start~0_combout\ = (\pulse_gen|start~q\) # ((\spi|start~q\ & ((!\spi|Equal0~3_combout\) # (!\spi|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal0~2_combout\,
	datab => \pulse_gen|start~q\,
	datac => \spi|start~q\,
	datad => \spi|Equal0~3_combout\,
	combout => \spi|start~0_combout\);

-- Location: FF_X2_Y9_N5
\spi|start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	d => \spi|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|start~q\);

-- Location: LCCOMB_X3_Y9_N20
\spi|clk_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|clk_sync~0_combout\ = (!\spi|Equal1~0_combout\ & ((\spi|start~q\) # (\spi|clk_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|start~q\,
	datac => \spi|clk_sync~q\,
	datad => \spi|Equal1~0_combout\,
	combout => \spi|clk_sync~0_combout\);

-- Location: FF_X3_Y9_N21
\spi|clk_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|clk_sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|clk_sync~q\);

-- Location: LCCOMB_X33_Y12_N4
\divider|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~0_combout\ = \divider|counter\(0) $ (VCC)
-- \divider|Add0~1\ = CARRY(\divider|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(0),
	datad => VCC,
	combout => \divider|Add0~0_combout\,
	cout => \divider|Add0~1\);

-- Location: LCCOMB_X33_Y12_N6
\divider|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~2_combout\ = (\divider|counter\(1) & (!\divider|Add0~1\)) # (!\divider|counter\(1) & ((\divider|Add0~1\) # (GND)))
-- \divider|Add0~3\ = CARRY((!\divider|Add0~1\) # (!\divider|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(1),
	datad => VCC,
	cin => \divider|Add0~1\,
	combout => \divider|Add0~2_combout\,
	cout => \divider|Add0~3\);

-- Location: FF_X33_Y12_N9
\divider|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(2));

-- Location: LCCOMB_X33_Y12_N8
\divider|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~4_combout\ = (\divider|counter\(2) & (\divider|Add0~3\ $ (GND))) # (!\divider|counter\(2) & (!\divider|Add0~3\ & VCC))
-- \divider|Add0~5\ = CARRY((\divider|counter\(2) & !\divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(2),
	datad => VCC,
	cin => \divider|Add0~3\,
	combout => \divider|Add0~4_combout\,
	cout => \divider|Add0~5\);

-- Location: LCCOMB_X33_Y12_N26
\divider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~0_combout\ = (\divider|Add0~6_combout\ & (\divider|Add0~0_combout\ & (!\divider|Add0~2_combout\ & !\divider|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~6_combout\,
	datab => \divider|Add0~0_combout\,
	datac => \divider|Add0~2_combout\,
	datad => \divider|Add0~4_combout\,
	combout => \divider|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y12_N28
\divider|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|counter~3_combout\ = (\divider|Add0~8_combout\ & ((!\divider|Equal0~1_combout\) # (!\divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~8_combout\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|counter~3_combout\);

-- Location: FF_X33_Y12_N29
\divider|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(4));

-- Location: LCCOMB_X33_Y12_N14
\divider|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~10_combout\ = (\divider|counter\(5) & (!\divider|Add0~9\)) # (!\divider|counter\(5) & ((\divider|Add0~9\) # (GND)))
-- \divider|Add0~11\ = CARRY((!\divider|Add0~9\) # (!\divider|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(5),
	datad => VCC,
	cin => \divider|Add0~9\,
	combout => \divider|Add0~10_combout\,
	cout => \divider|Add0~11\);

-- Location: LCCOMB_X33_Y12_N16
\divider|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~12_combout\ = (\divider|counter\(6) & (\divider|Add0~11\ $ (GND))) # (!\divider|counter\(6) & (!\divider|Add0~11\ & VCC))
-- \divider|Add0~13\ = CARRY((\divider|counter\(6) & !\divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(6),
	datad => VCC,
	cin => \divider|Add0~11\,
	combout => \divider|Add0~12_combout\,
	cout => \divider|Add0~13\);

-- Location: FF_X33_Y12_N19
\divider|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|counter\(7));

-- Location: LCCOMB_X33_Y12_N18
\divider|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Add0~14_combout\ = \divider|Add0~13\ $ (\divider|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divider|counter\(7),
	cin => \divider|Add0~13\,
	combout => \divider|Add0~14_combout\);

-- Location: LCCOMB_X33_Y12_N24
\divider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|Equal0~1_combout\ = (\divider|Add0~8_combout\ & (!\divider|Add0~12_combout\ & (!\divider|Add0~10_combout\ & !\divider|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~8_combout\,
	datab => \divider|Add0~12_combout\,
	datac => \divider|Add0~10_combout\,
	datad => \divider|Add0~14_combout\,
	combout => \divider|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y12_N20
\divider|out_clk_inner~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|out_clk_inner~0_combout\ = \divider|out_clk_inner~q\ $ (((\divider|Equal0~0_combout\ & \divider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|out_clk_inner~q\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|out_clk_inner~0_combout\);

-- Location: LCCOMB_X33_Y12_N2
\divider|out_clk_inner~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider|out_clk_inner~feeder_combout\ = \divider|out_clk_inner~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divider|out_clk_inner~0_combout\,
	combout => \divider|out_clk_inner~feeder_combout\);

-- Location: FF_X33_Y12_N3
\divider|out_clk_inner\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divider|out_clk_inner~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|out_clk_inner~q\);

-- Location: LCCOMB_X3_Y8_N20
\spi|sck\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|sck~combout\ = (\spi|clk_sync~q\ & \divider|out_clk_inner~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|clk_sync~q\,
	datad => \divider|out_clk_inner~q\,
	combout => \spi|sck~combout\);

-- Location: IOIBUF_X0_Y9_N8
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LCCOMB_X1_Y9_N18
\spi|inner_data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~10_combout\ = (\spi|start~q\ & (\spi|inner_data\(0) $ (\data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|inner_data\(0),
	datac => \data[0]~input_o\,
	datad => \spi|start~q\,
	combout => \spi|inner_data~10_combout\);

-- Location: LCCOMB_X1_Y9_N8
\spi|inner_data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~11_combout\ = (\spi|clk_sync~q\ & (\spi|LessThan0~3_combout\ & (\spi|inner_data\(0)))) # (!\spi|clk_sync~q\ & ((\spi|inner_data\(0) $ (\spi|inner_data~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datab => \spi|LessThan0~3_combout\,
	datac => \spi|inner_data\(0),
	datad => \spi|inner_data~10_combout\,
	combout => \spi|inner_data~11_combout\);

-- Location: FF_X1_Y9_N9
\spi|inner_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(0));

-- Location: LCCOMB_X1_Y9_N22
\spi|inner_data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~9_combout\ = (\spi|clk_sync~q\ & (((\spi|inner_data\(0))))) # (!\spi|clk_sync~q\ & ((\spi|start~q\ & (\data[1]~input_o\)) # (!\spi|start~q\ & ((\spi|inner_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_data\(0),
	datad => \spi|start~q\,
	combout => \spi|inner_data~9_combout\);

-- Location: LCCOMB_X1_Y9_N12
\spi|inner_data[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data[9]~1_combout\ = (\spi|clk_sync~q\ & (!\spi|LessThan0~3_combout\)) # (!\spi|clk_sync~q\ & ((\spi|start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~q\,
	datac => \spi|LessThan0~3_combout\,
	datad => \spi|start~q\,
	combout => \spi|inner_data[9]~1_combout\);

-- Location: FF_X1_Y9_N23
\spi|inner_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~9_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(1));

-- Location: LCCOMB_X1_Y9_N24
\spi|inner_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~8_combout\ = (\spi|clk_sync~q\ & (((\spi|inner_data\(1))))) # (!\spi|clk_sync~q\ & ((\spi|start~q\ & (\data[2]~input_o\)) # (!\spi|start~q\ & ((\spi|inner_data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_data\(1),
	datad => \spi|start~q\,
	combout => \spi|inner_data~8_combout\);

-- Location: FF_X1_Y9_N25
\spi|inner_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~8_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(2));

-- Location: LCCOMB_X1_Y9_N2
\spi|inner_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~7_combout\ = (\spi|clk_sync~q\ & (((\spi|inner_data\(2))))) # (!\spi|clk_sync~q\ & ((\spi|start~q\ & (\data[3]~input_o\)) # (!\spi|start~q\ & ((\spi|inner_data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \spi|inner_data\(2),
	datac => \spi|clk_sync~q\,
	datad => \spi|start~q\,
	combout => \spi|inner_data~7_combout\);

-- Location: FF_X1_Y9_N3
\spi|inner_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~7_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(3));

-- Location: LCCOMB_X1_Y9_N16
\spi|inner_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~6_combout\ = (\spi|clk_sync~q\ & (((\spi|inner_data\(3))))) # (!\spi|clk_sync~q\ & ((\spi|start~q\ & (\data[4]~input_o\)) # (!\spi|start~q\ & ((\spi|inner_data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \spi|inner_data\(3),
	datac => \spi|clk_sync~q\,
	datad => \spi|start~q\,
	combout => \spi|inner_data~6_combout\);

-- Location: FF_X1_Y9_N17
\spi|inner_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~6_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(4));

-- Location: LCCOMB_X1_Y9_N26
\spi|inner_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~5_combout\ = (\spi|clk_sync~q\ & (((\spi|inner_data\(4))))) # (!\spi|clk_sync~q\ & ((\spi|start~q\ & (\data[5]~input_o\)) # (!\spi|start~q\ & ((\spi|inner_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~input_o\,
	datab => \spi|inner_data\(4),
	datac => \spi|clk_sync~q\,
	datad => \spi|start~q\,
	combout => \spi|inner_data~5_combout\);

-- Location: FF_X1_Y9_N27
\spi|inner_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~5_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(5));

-- Location: LCCOMB_X1_Y9_N0
\spi|inner_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~4_combout\ = (\spi|clk_sync~q\ & (((\spi|inner_data\(5))))) # (!\spi|clk_sync~q\ & ((\spi|start~q\ & (\data[6]~input_o\)) # (!\spi|start~q\ & ((\spi|inner_data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~input_o\,
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_data\(5),
	datad => \spi|start~q\,
	combout => \spi|inner_data~4_combout\);

-- Location: FF_X1_Y9_N1
\spi|inner_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~4_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(6));

-- Location: LCCOMB_X1_Y9_N14
\spi|inner_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~3_combout\ = (\spi|clk_sync~q\ & (((\spi|inner_data\(6))))) # (!\spi|clk_sync~q\ & ((\spi|start~q\ & (\data[7]~input_o\)) # (!\spi|start~q\ & ((\spi|inner_data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~input_o\,
	datab => \spi|inner_data\(6),
	datac => \spi|clk_sync~q\,
	datad => \spi|start~q\,
	combout => \spi|inner_data~3_combout\);

-- Location: FF_X1_Y9_N15
\spi|inner_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~3_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(7));

-- Location: LCCOMB_X1_Y9_N30
\spi|inner_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~2_combout\ = (\spi|clk_sync~q\ & (((\spi|inner_data\(7))))) # (!\spi|clk_sync~q\ & ((\spi|start~q\ & (\data[8]~input_o\)) # (!\spi|start~q\ & ((\spi|inner_data\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[8]~input_o\,
	datab => \spi|inner_data\(7),
	datac => \spi|clk_sync~q\,
	datad => \spi|start~q\,
	combout => \spi|inner_data~2_combout\);

-- Location: FF_X1_Y9_N31
\spi|inner_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~2_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(8));

-- Location: LCCOMB_X1_Y9_N20
\spi|inner_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|inner_data~0_combout\ = (\spi|clk_sync~q\ & (((\spi|inner_data\(8))))) # (!\spi|clk_sync~q\ & ((\spi|start~q\ & (\data[9]~input_o\)) # (!\spi|start~q\ & ((\spi|inner_data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[9]~input_o\,
	datab => \spi|clk_sync~q\,
	datac => \spi|inner_data\(8),
	datad => \spi|start~q\,
	combout => \spi|inner_data~0_combout\);

-- Location: FF_X1_Y9_N21
\spi|inner_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	d => \spi|inner_data~0_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi|inner_data\(9));

-- Location: LCCOMB_X1_Y8_N16
\spi|mosi\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi|mosi~combout\ = (\spi|inner_data\(9) & \spi|clk_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|inner_data\(9),
	datad => \spi|clk_sync~q\,
	combout => \spi|mosi~combout\);

ww_sck <= \sck~output_o\;

ww_mosi <= \mosi~output_o\;

ww_ss <= \ss~output_o\;
END structure;


