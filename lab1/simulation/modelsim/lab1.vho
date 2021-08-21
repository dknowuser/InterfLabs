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

-- DATE "09/22/2020 11:57:24"

-- 
-- Device: Altera EP2C5Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab1 IS
    PORT (
	clk : IN std_logic;
	data : IN std_logic_vector(7 DOWNTO 0);
	sck : OUT std_logic;
	mosi : OUT std_logic;
	ss : OUT std_logic
	);
END lab1;

-- Design Ports Information
-- sck	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- mosi	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ss	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- clk	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_162,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_163,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_165,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_170,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sck : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_ss : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divider|Add0~4_combout\ : std_logic;
SIGNAL \divider|Add0~8_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~0_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~8_combout\ : std_logic;
SIGNAL \spi|Equal0~3_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~1_combout\ : std_logic;
SIGNAL \spi|inner_data~3_combout\ : std_logic;
SIGNAL \spi|inner_data~4_combout\ : std_logic;
SIGNAL \spi|inner_data~5_combout\ : std_logic;
SIGNAL \spi|inner_data~6_combout\ : std_logic;
SIGNAL \spi|inner_data~7_combout\ : std_logic;
SIGNAL \spi|inner_data~8_combout\ : std_logic;
SIGNAL \spi|inner_data~9_combout\ : std_logic;
SIGNAL \spi|inner_data~10_combout\ : std_logic;
SIGNAL \spi|inner_data~11_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \spi|bit_number[0]~13\ : std_logic;
SIGNAL \spi|bit_number[1]~15\ : std_logic;
SIGNAL \spi|bit_number[2]~16_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~16_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~19\ : std_logic;
SIGNAL \pulse_gen|Add0~21\ : std_logic;
SIGNAL \pulse_gen|Add0~22_combout\ : std_logic;
SIGNAL \pulse_gen|Equal1~3_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~12_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~23\ : std_logic;
SIGNAL \pulse_gen|Add0~25\ : std_logic;
SIGNAL \pulse_gen|Add0~26_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~24_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~27\ : std_logic;
SIGNAL \pulse_gen|Add0~28_combout\ : std_logic;
SIGNAL \pulse_gen|Equal1~4_combout\ : std_logic;
SIGNAL \pulse_gen|counter~0_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~1\ : std_logic;
SIGNAL \pulse_gen|Add0~2_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~3\ : std_logic;
SIGNAL \pulse_gen|Add0~4_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~5\ : std_logic;
SIGNAL \pulse_gen|Add0~6_combout\ : std_logic;
SIGNAL \pulse_gen|Equal1~0_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~10_combout\ : std_logic;
SIGNAL \pulse_gen|Equal1~1_combout\ : std_logic;
SIGNAL \pulse_gen|Equal1~2_combout\ : std_logic;
SIGNAL \pulse_gen|counter~1_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~7\ : std_logic;
SIGNAL \pulse_gen|Add0~9\ : std_logic;
SIGNAL \pulse_gen|Add0~11\ : std_logic;
SIGNAL \pulse_gen|Add0~13\ : std_logic;
SIGNAL \pulse_gen|Add0~14_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~15\ : std_logic;
SIGNAL \pulse_gen|Add0~17\ : std_logic;
SIGNAL \pulse_gen|Add0~18_combout\ : std_logic;
SIGNAL \pulse_gen|Add0~20_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~2_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~3_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~0_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~4_combout\ : std_logic;
SIGNAL \pulse_gen|start~regout\ : std_logic;
SIGNAL \spi|bit_number[7]~27_combout\ : std_logic;
SIGNAL \spi|bit_number[8]~30\ : std_logic;
SIGNAL \spi|bit_number[9]~31_combout\ : std_logic;
SIGNAL \spi|bit_number[1]~14_combout\ : std_logic;
SIGNAL \spi|bit_number[0]~12_combout\ : std_logic;
SIGNAL \spi|LessThan0~2_combout\ : std_logic;
SIGNAL \spi|LessThan0~3_combout\ : std_logic;
SIGNAL \spi|bit_number[8]~20_combout\ : std_logic;
SIGNAL \spi|bit_number[6]~25_combout\ : std_logic;
SIGNAL \spi|Equal0~0_combout\ : std_logic;
SIGNAL \spi|Equal0~2_combout\ : std_logic;
SIGNAL \spi|start~0_combout\ : std_logic;
SIGNAL \spi|start~regout\ : std_logic;
SIGNAL \spi|bit_number[8]~33_combout\ : std_logic;
SIGNAL \spi|bit_number[2]~17\ : std_logic;
SIGNAL \spi|bit_number[3]~19\ : std_logic;
SIGNAL \spi|bit_number[4]~21_combout\ : std_logic;
SIGNAL \spi|bit_number[4]~22\ : std_logic;
SIGNAL \spi|bit_number[5]~23_combout\ : std_logic;
SIGNAL \spi|bit_number[5]~24\ : std_logic;
SIGNAL \spi|bit_number[6]~26\ : std_logic;
SIGNAL \spi|bit_number[7]~28\ : std_logic;
SIGNAL \spi|bit_number[8]~29_combout\ : std_logic;
SIGNAL \spi|Equal0~1_combout\ : std_logic;
SIGNAL \spi|bit_number[3]~18_combout\ : std_logic;
SIGNAL \spi|Equal1~0_combout\ : std_logic;
SIGNAL \spi|Equal1~1_combout\ : std_logic;
SIGNAL \spi|clk_sync~0_combout\ : std_logic;
SIGNAL \spi|clk_sync~regout\ : std_logic;
SIGNAL \divider|Add0~0_combout\ : std_logic;
SIGNAL \divider|counter~1_combout\ : std_logic;
SIGNAL \divider|Add0~7\ : std_logic;
SIGNAL \divider|Add0~9\ : std_logic;
SIGNAL \divider|Add0~10_combout\ : std_logic;
SIGNAL \divider|Add0~11\ : std_logic;
SIGNAL \divider|Add0~12_combout\ : std_logic;
SIGNAL \divider|Add0~13\ : std_logic;
SIGNAL \divider|Add0~14_combout\ : std_logic;
SIGNAL \divider|Equal0~1_combout\ : std_logic;
SIGNAL \divider|counter~0_combout\ : std_logic;
SIGNAL \divider|Add0~1\ : std_logic;
SIGNAL \divider|Add0~2_combout\ : std_logic;
SIGNAL \divider|Add0~3\ : std_logic;
SIGNAL \divider|Add0~5\ : std_logic;
SIGNAL \divider|Add0~6_combout\ : std_logic;
SIGNAL \divider|Equal0~0_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~0_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~regout\ : std_logic;
SIGNAL \spi|sck~combout\ : std_logic;
SIGNAL \spi|inner_data~2_combout\ : std_logic;
SIGNAL \spi|inner_data[9]~1_combout\ : std_logic;
SIGNAL \spi|inner_data~0_combout\ : std_logic;
SIGNAL \spi|mosi~combout\ : std_logic;
SIGNAL \divider|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pulse_gen|counter\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \spi|inner_data\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \spi|bit_number\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \data~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \divider|ALT_INV_out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \spi|ALT_INV_start~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data <= data;
sck <= ww_sck;
mosi <= ww_mosi;
ss <= ww_ss;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divider|out_clk_inner~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \divider|out_clk_inner~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\divider|ALT_INV_out_clk_inner~clkctrl_outclk\ <= NOT \divider|out_clk_inner~clkctrl_outclk\;
\spi|ALT_INV_start~regout\ <= NOT \spi|start~regout\;

-- Location: LCCOMB_X27_Y7_N16
\divider|Add0~4\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X27_Y7_N20
\divider|Add0~8\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X21_Y12_N0
\pulse_gen|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~0_combout\ = \pulse_gen|counter\(0) $ (VCC)
-- \pulse_gen|Add0~1\ = CARRY(\pulse_gen|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(0),
	datad => VCC,
	combout => \pulse_gen|Add0~0_combout\,
	cout => \pulse_gen|Add0~1\);

-- Location: LCCOMB_X21_Y12_N8
\pulse_gen|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~8_combout\ = (\pulse_gen|counter\(4) & (\pulse_gen|Add0~7\ $ (GND))) # (!\pulse_gen|counter\(4) & (!\pulse_gen|Add0~7\ & VCC))
-- \pulse_gen|Add0~9\ = CARRY((\pulse_gen|counter\(4) & !\pulse_gen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(4),
	datad => VCC,
	cin => \pulse_gen|Add0~7\,
	combout => \pulse_gen|Add0~8_combout\,
	cout => \pulse_gen|Add0~9\);

-- Location: LCFF_X27_Y7_N13
\divider|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(0));

-- Location: LCFF_X27_Y7_N23
\divider|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(5));

-- Location: LCFF_X27_Y7_N27
\divider|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(7));

-- Location: LCCOMB_X25_Y13_N14
\spi|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal0~3_combout\ = (\spi|bit_number\(1) & !\spi|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|bit_number\(1),
	datad => \spi|bit_number\(0),
	combout => \spi|Equal0~3_combout\);

-- Location: LCFF_X25_Y13_N25
\spi|inner_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~3_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(7));

-- Location: LCFF_X21_Y12_N11
\pulse_gen|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(5));

-- Location: LCFF_X21_Y12_N13
\pulse_gen|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(6));

-- Location: LCCOMB_X22_Y12_N20
\pulse_gen|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~1_combout\ = (!\pulse_gen|counter\(7) & (!\pulse_gen|counter\(5) & (!\pulse_gen|counter\(6) & !\pulse_gen|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(7),
	datab => \pulse_gen|counter\(5),
	datac => \pulse_gen|counter\(6),
	datad => \pulse_gen|counter\(4),
	combout => \pulse_gen|Equal0~1_combout\);

-- Location: LCFF_X25_Y13_N27
\spi|inner_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~4_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(6));

-- Location: LCCOMB_X25_Y13_N24
\spi|inner_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~3_combout\ = (\spi|start~regout\ & ((\spi|clk_sync~regout\ & ((\spi|inner_data\(6)))) # (!\spi|clk_sync~regout\ & (\data~combout\(7))))) # (!\spi|start~regout\ & (((\spi|inner_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|start~regout\,
	datab => \spi|clk_sync~regout\,
	datac => \data~combout\(7),
	datad => \spi|inner_data\(6),
	combout => \spi|inner_data~3_combout\);

-- Location: LCFF_X25_Y13_N17
\spi|inner_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~5_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(5));

-- Location: LCCOMB_X25_Y13_N26
\spi|inner_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~4_combout\ = (\spi|start~regout\ & ((\spi|clk_sync~regout\ & ((\spi|inner_data\(5)))) # (!\spi|clk_sync~regout\ & (\data~combout\(6))))) # (!\spi|start~regout\ & (((\spi|inner_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|start~regout\,
	datab => \data~combout\(6),
	datac => \spi|inner_data\(5),
	datad => \spi|clk_sync~regout\,
	combout => \spi|inner_data~4_combout\);

-- Location: LCFF_X25_Y13_N7
\spi|inner_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~6_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(4));

-- Location: LCCOMB_X25_Y13_N16
\spi|inner_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~5_combout\ = (\spi|clk_sync~regout\ & (\spi|inner_data\(4))) # (!\spi|clk_sync~regout\ & ((\spi|start~regout\ & ((\data~combout\(5)))) # (!\spi|start~regout\ & (\spi|inner_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(4),
	datab => \spi|clk_sync~regout\,
	datac => \data~combout\(5),
	datad => \spi|start~regout\,
	combout => \spi|inner_data~5_combout\);

-- Location: LCFF_X25_Y13_N29
\spi|inner_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~7_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(3));

-- Location: LCCOMB_X25_Y13_N6
\spi|inner_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~6_combout\ = (\spi|start~regout\ & ((\spi|clk_sync~regout\ & ((\spi|inner_data\(3)))) # (!\spi|clk_sync~regout\ & (\data~combout\(4))))) # (!\spi|start~regout\ & (((\spi|inner_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|start~regout\,
	datab => \spi|clk_sync~regout\,
	datac => \data~combout\(4),
	datad => \spi|inner_data\(3),
	combout => \spi|inner_data~6_combout\);

-- Location: LCFF_X25_Y13_N11
\spi|inner_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~8_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(2));

-- Location: LCCOMB_X25_Y13_N28
\spi|inner_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~7_combout\ = (\spi|clk_sync~regout\ & (\spi|inner_data\(2))) # (!\spi|clk_sync~regout\ & ((\spi|start~regout\ & ((\data~combout\(3)))) # (!\spi|start~regout\ & (\spi|inner_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(2),
	datab => \spi|clk_sync~regout\,
	datac => \data~combout\(3),
	datad => \spi|start~regout\,
	combout => \spi|inner_data~7_combout\);

-- Location: LCFF_X25_Y13_N21
\spi|inner_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~9_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(1));

-- Location: LCCOMB_X25_Y13_N10
\spi|inner_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~8_combout\ = (\spi|clk_sync~regout\ & (\spi|inner_data\(1))) # (!\spi|clk_sync~regout\ & ((\spi|start~regout\ & ((\data~combout\(2)))) # (!\spi|start~regout\ & (\spi|inner_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(1),
	datab => \spi|clk_sync~regout\,
	datac => \data~combout\(2),
	datad => \spi|start~regout\,
	combout => \spi|inner_data~8_combout\);

-- Location: LCFF_X24_Y13_N17
\spi|inner_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(0));

-- Location: LCCOMB_X25_Y13_N20
\spi|inner_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~9_combout\ = (\spi|clk_sync~regout\ & (((\spi|inner_data\(0))))) # (!\spi|clk_sync~regout\ & ((\spi|start~regout\ & (\data~combout\(1))) # (!\spi|start~regout\ & ((\spi|inner_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(1),
	datab => \spi|clk_sync~regout\,
	datac => \spi|inner_data\(0),
	datad => \spi|start~regout\,
	combout => \spi|inner_data~9_combout\);

-- Location: LCCOMB_X24_Y13_N30
\spi|inner_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~10_combout\ = (\spi|clk_sync~regout\ & (\spi|LessThan0~3_combout\ & ((\spi|inner_data\(0))))) # (!\spi|clk_sync~regout\ & (((\spi|start~regout\) # (\spi|inner_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|LessThan0~3_combout\,
	datab => \spi|clk_sync~regout\,
	datac => \spi|start~regout\,
	datad => \spi|inner_data\(0),
	combout => \spi|inner_data~10_combout\);

-- Location: LCCOMB_X24_Y13_N16
\spi|inner_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~11_combout\ = (\spi|inner_data~10_combout\ & ((\data~combout\(0)) # ((\spi|clk_sync~regout\) # (!\spi|start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(0),
	datab => \spi|clk_sync~regout\,
	datac => \spi|start~regout\,
	datad => \spi|inner_data~10_combout\,
	combout => \spi|inner_data~11_combout\);

-- Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
\data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(7),
	combout => \data~combout\(7));

-- Location: PIN_162,	 I/O Standard: 2.5 V,	 Current Strength: Default
\data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(6),
	combout => \data~combout\(6));

-- Location: PIN_163,	 I/O Standard: 2.5 V,	 Current Strength: Default
\data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(5),
	combout => \data~combout\(5));

-- Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
\data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(4),
	combout => \data~combout\(4));

-- Location: PIN_165,	 I/O Standard: 2.5 V,	 Current Strength: Default
\data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
\data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
\data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: PIN_170,	 I/O Standard: 2.5 V,	 Current Strength: Default
\data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: CLKCTRL_G5
\divider|out_clk_inner~clkctrl\ : cycloneii_clkctrl
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

-- Location: CLKCTRL_G6
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y13_N10
\spi|bit_number[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[0]~12_combout\ = \spi|bit_number\(0) $ (VCC)
-- \spi|bit_number[0]~13\ = CARRY(\spi|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(0),
	datad => VCC,
	combout => \spi|bit_number[0]~12_combout\,
	cout => \spi|bit_number[0]~13\);

-- Location: LCCOMB_X26_Y13_N12
\spi|bit_number[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[1]~14_combout\ = (\spi|bit_number\(1) & (!\spi|bit_number[0]~13\)) # (!\spi|bit_number\(1) & ((\spi|bit_number[0]~13\) # (GND)))
-- \spi|bit_number[1]~15\ = CARRY((!\spi|bit_number[0]~13\) # (!\spi|bit_number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(1),
	datad => VCC,
	cin => \spi|bit_number[0]~13\,
	combout => \spi|bit_number[1]~14_combout\,
	cout => \spi|bit_number[1]~15\);

-- Location: LCCOMB_X26_Y13_N14
\spi|bit_number[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[2]~16_combout\ = (\spi|bit_number\(2) & (\spi|bit_number[1]~15\ $ (GND))) # (!\spi|bit_number\(2) & (!\spi|bit_number[1]~15\ & VCC))
-- \spi|bit_number[2]~17\ = CARRY((\spi|bit_number\(2) & !\spi|bit_number[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(2),
	datad => VCC,
	cin => \spi|bit_number[1]~15\,
	combout => \spi|bit_number[2]~16_combout\,
	cout => \spi|bit_number[2]~17\);

-- Location: LCCOMB_X21_Y12_N16
\pulse_gen|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~16_combout\ = (\pulse_gen|counter\(8) & (\pulse_gen|Add0~15\ $ (GND))) # (!\pulse_gen|counter\(8) & (!\pulse_gen|Add0~15\ & VCC))
-- \pulse_gen|Add0~17\ = CARRY((\pulse_gen|counter\(8) & !\pulse_gen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(8),
	datad => VCC,
	cin => \pulse_gen|Add0~15\,
	combout => \pulse_gen|Add0~16_combout\,
	cout => \pulse_gen|Add0~17\);

-- Location: LCFF_X21_Y12_N23
\pulse_gen|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(11));

-- Location: LCCOMB_X21_Y12_N18
\pulse_gen|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~18_combout\ = (\pulse_gen|counter\(9) & (!\pulse_gen|Add0~17\)) # (!\pulse_gen|counter\(9) & ((\pulse_gen|Add0~17\) # (GND)))
-- \pulse_gen|Add0~19\ = CARRY((!\pulse_gen|Add0~17\) # (!\pulse_gen|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(9),
	datad => VCC,
	cin => \pulse_gen|Add0~17\,
	combout => \pulse_gen|Add0~18_combout\,
	cout => \pulse_gen|Add0~19\);

-- Location: LCCOMB_X21_Y12_N20
\pulse_gen|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~20_combout\ = (\pulse_gen|counter\(10) & (\pulse_gen|Add0~19\ $ (GND))) # (!\pulse_gen|counter\(10) & (!\pulse_gen|Add0~19\ & VCC))
-- \pulse_gen|Add0~21\ = CARRY((\pulse_gen|counter\(10) & !\pulse_gen|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(10),
	datad => VCC,
	cin => \pulse_gen|Add0~19\,
	combout => \pulse_gen|Add0~20_combout\,
	cout => \pulse_gen|Add0~21\);

-- Location: LCCOMB_X21_Y12_N22
\pulse_gen|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~22_combout\ = (\pulse_gen|counter\(11) & (!\pulse_gen|Add0~21\)) # (!\pulse_gen|counter\(11) & ((\pulse_gen|Add0~21\) # (GND)))
-- \pulse_gen|Add0~23\ = CARRY((!\pulse_gen|Add0~21\) # (!\pulse_gen|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(11),
	datad => VCC,
	cin => \pulse_gen|Add0~21\,
	combout => \pulse_gen|Add0~22_combout\,
	cout => \pulse_gen|Add0~23\);

-- Location: LCCOMB_X22_Y12_N14
\pulse_gen|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal1~3_combout\ = (!\pulse_gen|Add0~20_combout\ & (!\pulse_gen|Add0~18_combout\ & (!\pulse_gen|Add0~16_combout\ & !\pulse_gen|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Add0~20_combout\,
	datab => \pulse_gen|Add0~18_combout\,
	datac => \pulse_gen|Add0~16_combout\,
	datad => \pulse_gen|Add0~22_combout\,
	combout => \pulse_gen|Equal1~3_combout\);

-- Location: LCCOMB_X21_Y12_N12
\pulse_gen|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~12_combout\ = (\pulse_gen|counter\(6) & (\pulse_gen|Add0~11\ $ (GND))) # (!\pulse_gen|counter\(6) & (!\pulse_gen|Add0~11\ & VCC))
-- \pulse_gen|Add0~13\ = CARRY((\pulse_gen|counter\(6) & !\pulse_gen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(6),
	datad => VCC,
	cin => \pulse_gen|Add0~11\,
	combout => \pulse_gen|Add0~12_combout\,
	cout => \pulse_gen|Add0~13\);

-- Location: LCFF_X21_Y12_N5
\pulse_gen|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(2));

-- Location: LCFF_X21_Y12_N27
\pulse_gen|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(13));

-- Location: LCCOMB_X21_Y12_N24
\pulse_gen|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~24_combout\ = (\pulse_gen|counter\(12) & (\pulse_gen|Add0~23\ $ (GND))) # (!\pulse_gen|counter\(12) & (!\pulse_gen|Add0~23\ & VCC))
-- \pulse_gen|Add0~25\ = CARRY((\pulse_gen|counter\(12) & !\pulse_gen|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(12),
	datad => VCC,
	cin => \pulse_gen|Add0~23\,
	combout => \pulse_gen|Add0~24_combout\,
	cout => \pulse_gen|Add0~25\);

-- Location: LCCOMB_X21_Y12_N26
\pulse_gen|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~26_combout\ = (\pulse_gen|counter\(13) & (!\pulse_gen|Add0~25\)) # (!\pulse_gen|counter\(13) & ((\pulse_gen|Add0~25\) # (GND)))
-- \pulse_gen|Add0~27\ = CARRY((!\pulse_gen|Add0~25\) # (!\pulse_gen|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(13),
	datad => VCC,
	cin => \pulse_gen|Add0~25\,
	combout => \pulse_gen|Add0~26_combout\,
	cout => \pulse_gen|Add0~27\);

-- Location: LCFF_X21_Y12_N29
\pulse_gen|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(14));

-- Location: LCCOMB_X21_Y12_N28
\pulse_gen|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~28_combout\ = \pulse_gen|Add0~27\ $ (!\pulse_gen|counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|counter\(14),
	cin => \pulse_gen|Add0~27\,
	combout => \pulse_gen|Add0~28_combout\);

-- Location: LCCOMB_X22_Y12_N28
\pulse_gen|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal1~4_combout\ = (!\pulse_gen|Add0~26_combout\ & (!\pulse_gen|Add0~24_combout\ & !\pulse_gen|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|Add0~26_combout\,
	datac => \pulse_gen|Add0~24_combout\,
	datad => \pulse_gen|Add0~28_combout\,
	combout => \pulse_gen|Equal1~4_combout\);

-- Location: LCCOMB_X22_Y12_N30
\pulse_gen|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|counter~0_combout\ = (\pulse_gen|Add0~0_combout\ & (((!\pulse_gen|Equal1~4_combout\) # (!\pulse_gen|Equal1~2_combout\)) # (!\pulse_gen|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Add0~0_combout\,
	datab => \pulse_gen|Equal1~3_combout\,
	datac => \pulse_gen|Equal1~2_combout\,
	datad => \pulse_gen|Equal1~4_combout\,
	combout => \pulse_gen|counter~0_combout\);

-- Location: LCFF_X22_Y12_N31
\pulse_gen|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(0));

-- Location: LCCOMB_X21_Y12_N2
\pulse_gen|Add0~2\ : cycloneii_lcell_comb
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

-- Location: LCFF_X21_Y12_N31
\pulse_gen|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	sdata => \pulse_gen|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(1));

-- Location: LCCOMB_X21_Y12_N4
\pulse_gen|Add0~4\ : cycloneii_lcell_comb
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

-- Location: LCFF_X21_Y12_N7
\pulse_gen|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(3));

-- Location: LCCOMB_X21_Y12_N6
\pulse_gen|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~6_combout\ = (\pulse_gen|counter\(3) & (!\pulse_gen|Add0~5\)) # (!\pulse_gen|counter\(3) & ((\pulse_gen|Add0~5\) # (GND)))
-- \pulse_gen|Add0~7\ = CARRY((!\pulse_gen|Add0~5\) # (!\pulse_gen|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(3),
	datad => VCC,
	cin => \pulse_gen|Add0~5\,
	combout => \pulse_gen|Add0~6_combout\,
	cout => \pulse_gen|Add0~7\);

-- Location: LCCOMB_X21_Y12_N30
\pulse_gen|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal1~0_combout\ = (\pulse_gen|Add0~0_combout\ & (!\pulse_gen|Add0~4_combout\ & (!\pulse_gen|Add0~2_combout\ & !\pulse_gen|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Add0~0_combout\,
	datab => \pulse_gen|Add0~4_combout\,
	datac => \pulse_gen|Add0~2_combout\,
	datad => \pulse_gen|Add0~6_combout\,
	combout => \pulse_gen|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y12_N10
\pulse_gen|Add0~10\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X22_Y12_N10
\pulse_gen|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal1~1_combout\ = (\pulse_gen|Add0~8_combout\ & !\pulse_gen|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Add0~8_combout\,
	datad => \pulse_gen|Add0~10_combout\,
	combout => \pulse_gen|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y12_N8
\pulse_gen|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal1~2_combout\ = (!\pulse_gen|Add0~14_combout\ & (!\pulse_gen|Add0~12_combout\ & (\pulse_gen|Equal1~0_combout\ & \pulse_gen|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Add0~14_combout\,
	datab => \pulse_gen|Add0~12_combout\,
	datac => \pulse_gen|Equal1~0_combout\,
	datad => \pulse_gen|Equal1~1_combout\,
	combout => \pulse_gen|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y12_N22
\pulse_gen|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|counter~1_combout\ = (\pulse_gen|Add0~8_combout\ & (((!\pulse_gen|Equal1~4_combout\) # (!\pulse_gen|Equal1~2_combout\)) # (!\pulse_gen|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Add0~8_combout\,
	datab => \pulse_gen|Equal1~3_combout\,
	datac => \pulse_gen|Equal1~2_combout\,
	datad => \pulse_gen|Equal1~4_combout\,
	combout => \pulse_gen|counter~1_combout\);

-- Location: LCFF_X22_Y12_N23
\pulse_gen|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(4));

-- Location: LCCOMB_X21_Y12_N14
\pulse_gen|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Add0~14_combout\ = (\pulse_gen|counter\(7) & (!\pulse_gen|Add0~13\)) # (!\pulse_gen|counter\(7) & ((\pulse_gen|Add0~13\) # (GND)))
-- \pulse_gen|Add0~15\ = CARRY((!\pulse_gen|Add0~13\) # (!\pulse_gen|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(7),
	datad => VCC,
	cin => \pulse_gen|Add0~13\,
	combout => \pulse_gen|Add0~14_combout\,
	cout => \pulse_gen|Add0~15\);

-- Location: LCFF_X21_Y12_N15
\pulse_gen|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(7));

-- Location: LCFF_X21_Y12_N19
\pulse_gen|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(9));

-- Location: LCFF_X21_Y12_N21
\pulse_gen|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(10));

-- Location: LCFF_X21_Y12_N17
\pulse_gen|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(8));

-- Location: LCCOMB_X22_Y12_N2
\pulse_gen|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~2_combout\ = (!\pulse_gen|counter\(11) & (!\pulse_gen|counter\(9) & (!\pulse_gen|counter\(10) & !\pulse_gen|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(11),
	datab => \pulse_gen|counter\(9),
	datac => \pulse_gen|counter\(10),
	datad => \pulse_gen|counter\(8),
	combout => \pulse_gen|Equal0~2_combout\);

-- Location: LCFF_X21_Y12_N25
\pulse_gen|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|counter\(12));

-- Location: LCCOMB_X22_Y12_N24
\pulse_gen|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~3_combout\ = (!\pulse_gen|counter\(12) & (!\pulse_gen|counter\(14) & !\pulse_gen|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|counter\(12),
	datac => \pulse_gen|counter\(14),
	datad => \pulse_gen|counter\(13),
	combout => \pulse_gen|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y12_N12
\pulse_gen|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~0_combout\ = (!\pulse_gen|counter\(1) & (!\pulse_gen|counter\(2) & (!\pulse_gen|counter\(3) & !\pulse_gen|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|counter\(1),
	datab => \pulse_gen|counter\(2),
	datac => \pulse_gen|counter\(3),
	datad => \pulse_gen|counter\(0),
	combout => \pulse_gen|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y12_N0
\pulse_gen|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~4_combout\ = (\pulse_gen|Equal0~1_combout\ & (\pulse_gen|Equal0~2_combout\ & (\pulse_gen|Equal0~3_combout\ & \pulse_gen|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Equal0~1_combout\,
	datab => \pulse_gen|Equal0~2_combout\,
	datac => \pulse_gen|Equal0~3_combout\,
	datad => \pulse_gen|Equal0~0_combout\,
	combout => \pulse_gen|Equal0~4_combout\);

-- Location: LCFF_X22_Y12_N1
\pulse_gen|start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \pulse_gen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pulse_gen|start~regout\);

-- Location: LCCOMB_X26_Y13_N24
\spi|bit_number[7]~27\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X26_Y13_N26
\spi|bit_number[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[8]~29_combout\ = (\spi|bit_number\(8) & (\spi|bit_number[7]~28\ $ (GND))) # (!\spi|bit_number\(8) & (!\spi|bit_number[7]~28\ & VCC))
-- \spi|bit_number[8]~30\ = CARRY((\spi|bit_number\(8) & !\spi|bit_number[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(8),
	datad => VCC,
	cin => \spi|bit_number[7]~28\,
	combout => \spi|bit_number[8]~29_combout\,
	cout => \spi|bit_number[8]~30\);

-- Location: LCCOMB_X26_Y13_N28
\spi|bit_number[9]~31\ : cycloneii_lcell_comb
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

-- Location: LCFF_X26_Y13_N29
\spi|bit_number[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[9]~31_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(9));

-- Location: LCFF_X26_Y13_N13
\spi|bit_number[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[1]~14_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(1));

-- Location: LCFF_X26_Y13_N11
\spi|bit_number[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[0]~12_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(0));

-- Location: LCCOMB_X25_Y13_N22
\spi|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|LessThan0~2_combout\ = (\spi|bit_number\(3) & ((\spi|bit_number\(1)) # ((\spi|bit_number\(2)) # (\spi|bit_number\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(3),
	datab => \spi|bit_number\(1),
	datac => \spi|bit_number\(2),
	datad => \spi|bit_number\(0),
	combout => \spi|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y13_N2
\spi|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|LessThan0~3_combout\ = ((\spi|bit_number\(9)) # ((\spi|bit_number\(8)) # (\spi|LessThan0~2_combout\))) # (!\spi|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal0~0_combout\,
	datab => \spi|bit_number\(9),
	datac => \spi|bit_number\(8),
	datad => \spi|LessThan0~2_combout\,
	combout => \spi|LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y13_N0
\spi|bit_number[8]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[8]~20_combout\ = (\spi|Equal1~1_combout\) # ((\spi|clk_sync~regout\ & ((!\spi|LessThan0~3_combout\))) # (!\spi|clk_sync~regout\ & (\spi|start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datab => \spi|Equal1~1_combout\,
	datac => \spi|start~regout\,
	datad => \spi|LessThan0~3_combout\,
	combout => \spi|bit_number[8]~20_combout\);

-- Location: LCFF_X26_Y13_N25
\spi|bit_number[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[7]~27_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(7));

-- Location: LCCOMB_X26_Y13_N22
\spi|bit_number[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[6]~25_combout\ = (\spi|bit_number\(6) & (\spi|bit_number[5]~24\ $ (GND))) # (!\spi|bit_number\(6) & (!\spi|bit_number[5]~24\ & VCC))
-- \spi|bit_number[6]~26\ = CARRY((\spi|bit_number\(6) & !\spi|bit_number[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(6),
	datad => VCC,
	cin => \spi|bit_number[5]~24\,
	combout => \spi|bit_number[6]~25_combout\,
	cout => \spi|bit_number[6]~26\);

-- Location: LCFF_X26_Y13_N23
\spi|bit_number[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[6]~25_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(6));

-- Location: LCCOMB_X26_Y13_N6
\spi|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal0~0_combout\ = (!\spi|bit_number\(5) & (!\spi|bit_number\(4) & (!\spi|bit_number\(7) & !\spi|bit_number\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(5),
	datab => \spi|bit_number\(4),
	datac => \spi|bit_number\(7),
	datad => \spi|bit_number\(6),
	combout => \spi|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y13_N2
\spi|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal0~2_combout\ = (\spi|bit_number\(3) & (!\spi|bit_number\(2) & (\spi|Equal0~1_combout\ & \spi|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(3),
	datab => \spi|bit_number\(2),
	datac => \spi|Equal0~1_combout\,
	datad => \spi|Equal0~0_combout\,
	combout => \spi|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y13_N4
\spi|start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|start~0_combout\ = (\pulse_gen|start~regout\) # ((\spi|start~regout\ & ((!\spi|Equal0~2_combout\) # (!\spi|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal0~3_combout\,
	datab => \pulse_gen|start~regout\,
	datac => \spi|start~regout\,
	datad => \spi|Equal0~2_combout\,
	combout => \spi|start~0_combout\);

-- Location: LCFF_X26_Y13_N5
\spi|start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \spi|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|start~regout\);

-- Location: LCCOMB_X26_Y13_N30
\spi|bit_number[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[8]~33_combout\ = (!\spi|clk_sync~regout\ & (\spi|start~regout\ & !\spi|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|clk_sync~regout\,
	datac => \spi|start~regout\,
	datad => \spi|Equal1~1_combout\,
	combout => \spi|bit_number[8]~33_combout\);

-- Location: LCFF_X26_Y13_N15
\spi|bit_number[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[2]~16_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(2));

-- Location: LCCOMB_X26_Y13_N16
\spi|bit_number[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[3]~18_combout\ = (\spi|bit_number\(3) & (!\spi|bit_number[2]~17\)) # (!\spi|bit_number\(3) & ((\spi|bit_number[2]~17\) # (GND)))
-- \spi|bit_number[3]~19\ = CARRY((!\spi|bit_number[2]~17\) # (!\spi|bit_number\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi|bit_number\(3),
	datad => VCC,
	cin => \spi|bit_number[2]~17\,
	combout => \spi|bit_number[3]~18_combout\,
	cout => \spi|bit_number[3]~19\);

-- Location: LCCOMB_X26_Y13_N18
\spi|bit_number[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[4]~21_combout\ = (\spi|bit_number\(4) & (\spi|bit_number[3]~19\ $ (GND))) # (!\spi|bit_number\(4) & (!\spi|bit_number[3]~19\ & VCC))
-- \spi|bit_number[4]~22\ = CARRY((\spi|bit_number\(4) & !\spi|bit_number[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(4),
	datad => VCC,
	cin => \spi|bit_number[3]~19\,
	combout => \spi|bit_number[4]~21_combout\,
	cout => \spi|bit_number[4]~22\);

-- Location: LCFF_X26_Y13_N19
\spi|bit_number[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[4]~21_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(4));

-- Location: LCCOMB_X26_Y13_N20
\spi|bit_number[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|bit_number[5]~23_combout\ = (\spi|bit_number\(5) & (!\spi|bit_number[4]~22\)) # (!\spi|bit_number\(5) & ((\spi|bit_number[4]~22\) # (GND)))
-- \spi|bit_number[5]~24\ = CARRY((!\spi|bit_number[4]~22\) # (!\spi|bit_number\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(5),
	datad => VCC,
	cin => \spi|bit_number[4]~22\,
	combout => \spi|bit_number[5]~23_combout\,
	cout => \spi|bit_number[5]~24\);

-- Location: LCFF_X26_Y13_N21
\spi|bit_number[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[5]~23_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(5));

-- Location: LCFF_X26_Y13_N27
\spi|bit_number[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[8]~29_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(8));

-- Location: LCCOMB_X26_Y13_N8
\spi|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal0~1_combout\ = (!\spi|bit_number\(8) & !\spi|bit_number\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(8),
	datad => \spi|bit_number\(9),
	combout => \spi|Equal0~1_combout\);

-- Location: LCFF_X26_Y13_N17
\spi|bit_number[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|bit_number[3]~18_combout\,
	sclr => \spi|bit_number[8]~33_combout\,
	ena => \spi|bit_number[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|bit_number\(3));

-- Location: LCCOMB_X25_Y13_N12
\spi|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal1~0_combout\ = (!\spi|bit_number\(1) & (!\spi|bit_number\(2) & \spi|bit_number\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|bit_number\(1),
	datac => \spi|bit_number\(2),
	datad => \spi|bit_number\(0),
	combout => \spi|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y13_N18
\spi|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|Equal1~1_combout\ = (\spi|Equal0~0_combout\ & (\spi|Equal0~1_combout\ & (\spi|bit_number\(3) & \spi|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|Equal0~0_combout\,
	datab => \spi|Equal0~1_combout\,
	datac => \spi|bit_number\(3),
	datad => \spi|Equal1~0_combout\,
	combout => \spi|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y13_N0
\spi|clk_sync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|clk_sync~0_combout\ = (!\spi|Equal1~1_combout\ & ((\spi|start~regout\) # (\spi|clk_sync~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|start~regout\,
	datac => \spi|clk_sync~regout\,
	datad => \spi|Equal1~1_combout\,
	combout => \spi|clk_sync~0_combout\);

-- Location: LCFF_X25_Y13_N1
\spi|clk_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|clk_sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|clk_sync~regout\);

-- Location: LCCOMB_X27_Y7_N12
\divider|Add0~0\ : cycloneii_lcell_comb
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

-- Location: LCFF_X27_Y7_N19
\divider|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(3));

-- Location: LCCOMB_X27_Y7_N28
\divider|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|counter~1_combout\ = (\divider|Add0~8_combout\ & ((!\divider|Equal0~1_combout\) # (!\divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~8_combout\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|counter~1_combout\);

-- Location: LCFF_X27_Y7_N29
\divider|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(4));

-- Location: LCCOMB_X27_Y7_N18
\divider|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~6_combout\ = (\divider|counter\(3) & (!\divider|Add0~5\)) # (!\divider|counter\(3) & ((\divider|Add0~5\) # (GND)))
-- \divider|Add0~7\ = CARRY((!\divider|Add0~5\) # (!\divider|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(3),
	datad => VCC,
	cin => \divider|Add0~5\,
	combout => \divider|Add0~6_combout\,
	cout => \divider|Add0~7\);

-- Location: LCCOMB_X27_Y7_N22
\divider|Add0~10\ : cycloneii_lcell_comb
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

-- Location: LCFF_X27_Y7_N25
\divider|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(6));

-- Location: LCCOMB_X27_Y7_N24
\divider|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~12_combout\ = (\divider|counter\(6) & (\divider|Add0~11\ $ (GND))) # (!\divider|counter\(6) & (!\divider|Add0~11\ & VCC))
-- \divider|Add0~13\ = CARRY((\divider|counter\(6) & !\divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(6),
	datad => VCC,
	cin => \divider|Add0~11\,
	combout => \divider|Add0~12_combout\,
	cout => \divider|Add0~13\);

-- Location: LCCOMB_X27_Y7_N26
\divider|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~14_combout\ = \divider|counter\(7) $ (\divider|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(7),
	cin => \divider|Add0~13\,
	combout => \divider|Add0~14_combout\);

-- Location: LCCOMB_X27_Y7_N2
\divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Equal0~1_combout\ = (\divider|Add0~8_combout\ & (!\divider|Add0~10_combout\ & (!\divider|Add0~12_combout\ & !\divider|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~8_combout\,
	datab => \divider|Add0~10_combout\,
	datac => \divider|Add0~12_combout\,
	datad => \divider|Add0~14_combout\,
	combout => \divider|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y7_N4
\divider|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|counter~0_combout\ = (\divider|Add0~4_combout\ & ((!\divider|Equal0~1_combout\) # (!\divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~4_combout\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|counter~0_combout\);

-- Location: LCFF_X27_Y7_N5
\divider|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(2));

-- Location: LCCOMB_X27_Y7_N14
\divider|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~2_combout\ = (\divider|counter\(1) & (!\divider|Add0~1\)) # (!\divider|counter\(1) & ((\divider|Add0~1\) # (GND)))
-- \divider|Add0~3\ = CARRY((!\divider|Add0~1\) # (!\divider|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(1),
	datad => VCC,
	cin => \divider|Add0~1\,
	combout => \divider|Add0~2_combout\,
	cout => \divider|Add0~3\);

-- Location: LCFF_X27_Y7_N15
\divider|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(1));

-- Location: LCCOMB_X27_Y7_N8
\divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Equal0~0_combout\ = (\divider|Add0~4_combout\ & (!\divider|Add0~0_combout\ & (!\divider|Add0~6_combout\ & !\divider|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~4_combout\,
	datab => \divider|Add0~0_combout\,
	datac => \divider|Add0~6_combout\,
	datad => \divider|Add0~2_combout\,
	combout => \divider|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y7_N30
\divider|out_clk_inner~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|out_clk_inner~0_combout\ = \divider|out_clk_inner~regout\ $ (((\divider|Equal0~0_combout\ & \divider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|Equal0~0_combout\,
	datac => \divider|out_clk_inner~regout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|out_clk_inner~0_combout\);

-- Location: LCFF_X27_Y7_N31
\divider|out_clk_inner\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|out_clk_inner~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|out_clk_inner~regout\);

-- Location: LCCOMB_X24_Y13_N28
\spi|sck\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|sck~combout\ = (\spi|clk_sync~regout\ & \divider|out_clk_inner~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_sync~regout\,
	datad => \divider|out_clk_inner~regout\,
	combout => \spi|sck~combout\);

-- Location: LCCOMB_X25_Y13_N4
\spi|inner_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~2_combout\ = (\spi|inner_data\(7) & ((\spi|clk_sync~regout\) # (!\spi|start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|inner_data\(7),
	datab => \spi|clk_sync~regout\,
	datad => \spi|start~regout\,
	combout => \spi|inner_data~2_combout\);

-- Location: LCCOMB_X25_Y13_N8
\spi|inner_data[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data[9]~1_combout\ = (\spi|clk_sync~regout\ & (!\spi|LessThan0~3_combout\)) # (!\spi|clk_sync~regout\ & ((\spi|start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi|clk_sync~regout\,
	datac => \spi|LessThan0~3_combout\,
	datad => \spi|start~regout\,
	combout => \spi|inner_data[9]~1_combout\);

-- Location: LCFF_X25_Y13_N5
\spi|inner_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~2_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(8));

-- Location: LCCOMB_X25_Y13_N30
\spi|inner_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|inner_data~0_combout\ = (\spi|inner_data\(8) & ((\spi|clk_sync~regout\) # (!\spi|start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi|start~regout\,
	datab => \spi|inner_data\(8),
	datad => \spi|clk_sync~regout\,
	combout => \spi|inner_data~0_combout\);

-- Location: LCFF_X25_Y13_N31
\spi|inner_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \spi|inner_data~0_combout\,
	ena => \spi|inner_data[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi|inner_data\(9));

-- Location: LCCOMB_X24_Y13_N6
\spi|mosi\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi|mosi~combout\ = (\spi|clk_sync~regout\ & \spi|inner_data\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi|clk_sync~regout\,
	datad => \spi|inner_data\(9),
	combout => \spi|mosi~combout\);

-- Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\sck~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \spi|sck~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sck);

-- Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\mosi~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \spi|mosi~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mosi);

-- Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\ss~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \spi|ALT_INV_start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ss);
END structure;


