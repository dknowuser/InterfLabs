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

-- DATE "10/06/2020 12:28:31"

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

ENTITY 	lab2 IS
    PORT (
	clk : IN std_logic;
	data_msb : IN std_logic_vector(7 DOWNTO 0);
	start_btn : IN std_logic;
	sclk : OUT std_logic;
	din : OUT std_logic;
	sync : OUT std_logic;
	ldac : OUT std_logic;
	clr : OUT std_logic;
	inner_clk : OUT std_logic
	);
END lab2;

-- Design Ports Information
-- sclk	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- din	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sync	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ldac	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clr	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- inner_clk	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start_btn	=>  Location: PIN_182,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_msb[7]	=>  Location: PIN_161,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_msb[6]	=>  Location: PIN_162,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_msb[5]	=>  Location: PIN_163,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_msb[4]	=>  Location: PIN_164,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_msb[3]	=>  Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_msb[2]	=>  Location: PIN_168,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_msb[1]	=>  Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_msb[0]	=>  Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab2 IS
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
SIGNAL ww_data_msb : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start_btn : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_din : std_logic;
SIGNAL ww_sync : std_logic;
SIGNAL ww_ldac : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_inner_clk : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_SPI|input_register[11]~0_combout\ : std_logic;
SIGNAL \my_SPI|input_register[10]~1_combout\ : std_logic;
SIGNAL \my_SPI|input_register[9]~2_combout\ : std_logic;
SIGNAL \my_SPI|input_register[8]~3_combout\ : std_logic;
SIGNAL \my_SPI|input_register[7]~4_combout\ : std_logic;
SIGNAL \my_SPI|input_register[6]~5_combout\ : std_logic;
SIGNAL \my_SPI|input_register[5]~6_combout\ : std_logic;
SIGNAL \divider|Equal0~2_combout\ : std_logic;
SIGNAL \divider|counter~1_combout\ : std_logic;
SIGNAL \my_SPI|always1~0_combout\ : std_logic;
SIGNAL \my_SPI|input_register[7]~13_combout\ : std_logic;
SIGNAL \my_SPI|input_register[7]~14_combout\ : std_logic;
SIGNAL \my_SPI|input_register~15_combout\ : std_logic;
SIGNAL \my_SPI|input_register~16_combout\ : std_logic;
SIGNAL \my_SPI|input_register~17_combout\ : std_logic;
SIGNAL \my_SPI|input_register~18_combout\ : std_logic;
SIGNAL \my_SPI|input_register~19_combout\ : std_logic;
SIGNAL \my_SPI|input_register~20_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \divider|Add0~0_combout\ : std_logic;
SIGNAL \divider|Add0~1\ : std_logic;
SIGNAL \divider|Add0~2_combout\ : std_logic;
SIGNAL \divider|Add0~3\ : std_logic;
SIGNAL \divider|Add0~4_combout\ : std_logic;
SIGNAL \divider|Add0~5\ : std_logic;
SIGNAL \divider|Add0~6_combout\ : std_logic;
SIGNAL \divider|Equal0~0_combout\ : std_logic;
SIGNAL \divider|counter~0_combout\ : std_logic;
SIGNAL \divider|Add0~7\ : std_logic;
SIGNAL \divider|Add0~8_combout\ : std_logic;
SIGNAL \divider|Add0~9\ : std_logic;
SIGNAL \divider|Add0~10_combout\ : std_logic;
SIGNAL \divider|Add0~11\ : std_logic;
SIGNAL \divider|Add0~13\ : std_logic;
SIGNAL \divider|Add0~14_combout\ : std_logic;
SIGNAL \divider|Add0~12_combout\ : std_logic;
SIGNAL \divider|Equal0~1_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~0_combout\ : std_logic;
SIGNAL \divider|out_clk_inner~regout\ : std_logic;
SIGNAL \my_SPI|bit_number[0]~6\ : std_logic;
SIGNAL \my_SPI|bit_number[1]~7_combout\ : std_logic;
SIGNAL \my_SPI|update~regout\ : std_logic;
SIGNAL \my_SPI|inner_ldac~feeder_combout\ : std_logic;
SIGNAL \my_SPI|inner_ldac~regout\ : std_logic;
SIGNAL \start_btn~combout\ : std_logic;
SIGNAL \my_SPI|hold_start~0_combout\ : std_logic;
SIGNAL \my_SPI|bit_number[2]~9_combout\ : std_logic;
SIGNAL \my_SPI|bit_number[2]~15_combout\ : std_logic;
SIGNAL \my_SPI|bit_number[3]~11_combout\ : std_logic;
SIGNAL \my_SPI|Equal0~0_combout\ : std_logic;
SIGNAL \my_SPI|hold_start~1_combout\ : std_logic;
SIGNAL \my_SPI|hold_start~regout\ : std_logic;
SIGNAL \my_SPI|input_register~12_combout\ : std_logic;
SIGNAL \my_SPI|bit_number[1]~8\ : std_logic;
SIGNAL \my_SPI|bit_number[2]~10\ : std_logic;
SIGNAL \my_SPI|bit_number[3]~12\ : std_logic;
SIGNAL \my_SPI|bit_number[4]~13_combout\ : std_logic;
SIGNAL \my_SPI|start~0_combout\ : std_logic;
SIGNAL \my_SPI|start~1_combout\ : std_logic;
SIGNAL \my_SPI|start~regout\ : std_logic;
SIGNAL \my_SPI|sclk~combout\ : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \my_SPI|bit_number[0]~5_combout\ : std_logic;
SIGNAL \my_SPI|LessThan1~0_combout\ : std_logic;
SIGNAL \my_SPI|input_register~9_combout\ : std_logic;
SIGNAL \my_SPI|input_register~10_combout\ : std_logic;
SIGNAL \my_SPI|input_register~11_combout\ : std_logic;
SIGNAL \my_SPI|start_sync~0_combout\ : std_logic;
SIGNAL \my_SPI|start_sync~1_combout\ : std_logic;
SIGNAL \my_SPI|start_sync~regout\ : std_logic;
SIGNAL \my_SPI|sync~combout\ : std_logic;
SIGNAL \divider|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \my_SPI|input_register\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \my_SPI|bit_number\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \data_msb~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \divider|ALT_INV_out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \my_SPI|ALT_INV_hold_start~regout\ : std_logic;
SIGNAL \my_SPI|ALT_INV_inner_ldac~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data_msb <= data_msb;
ww_start_btn <= start_btn;
sclk <= ww_sclk;
din <= ww_din;
sync <= ww_sync;
ldac <= ww_ldac;
clr <= ww_clr;
inner_clk <= ww_inner_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divider|out_clk_inner~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \divider|out_clk_inner~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\divider|ALT_INV_out_clk_inner~clkctrl_outclk\ <= NOT \divider|out_clk_inner~clkctrl_outclk\;
\my_SPI|ALT_INV_hold_start~regout\ <= NOT \my_SPI|hold_start~regout\;
\my_SPI|ALT_INV_inner_ldac~regout\ <= NOT \my_SPI|inner_ldac~regout\;

-- Location: LCFF_X18_Y13_N9
\my_SPI|input_register[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[11]~0_combout\,
	sdata => \my_SPI|input_register~17_combout\,
	sload => \my_SPI|input_register[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(11));

-- Location: LCFF_X18_Y13_N15
\my_SPI|input_register[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[10]~1_combout\,
	sdata => \my_SPI|input_register[11]~0_combout\,
	sload => \my_SPI|input_register[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(10));

-- Location: LCCOMB_X18_Y13_N8
\my_SPI|input_register[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[11]~0_combout\ = (\my_SPI|always1~0_combout\ & (\data_msb~combout\(6))) # (!\my_SPI|always1~0_combout\ & ((\my_SPI|input_register\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_msb~combout\(6),
	datab => \my_SPI|input_register\(10),
	datad => \my_SPI|always1~0_combout\,
	combout => \my_SPI|input_register[11]~0_combout\);

-- Location: LCFF_X18_Y13_N5
\my_SPI|input_register[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[9]~2_combout\,
	sdata => \my_SPI|input_register[10]~1_combout\,
	sload => \my_SPI|input_register[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(9));

-- Location: LCCOMB_X18_Y13_N14
\my_SPI|input_register[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[10]~1_combout\ = (\my_SPI|always1~0_combout\ & (\data_msb~combout\(5))) # (!\my_SPI|always1~0_combout\ & ((\my_SPI|input_register\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_msb~combout\(5),
	datab => \my_SPI|input_register\(9),
	datad => \my_SPI|always1~0_combout\,
	combout => \my_SPI|input_register[10]~1_combout\);

-- Location: LCFF_X18_Y13_N31
\my_SPI|input_register[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[8]~3_combout\,
	sdata => \my_SPI|input_register[9]~2_combout\,
	sload => \my_SPI|input_register[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(8));

-- Location: LCCOMB_X18_Y13_N4
\my_SPI|input_register[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[9]~2_combout\ = (\my_SPI|always1~0_combout\ & (\data_msb~combout\(4))) # (!\my_SPI|always1~0_combout\ & ((\my_SPI|input_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_msb~combout\(4),
	datab => \my_SPI|input_register\(8),
	datad => \my_SPI|always1~0_combout\,
	combout => \my_SPI|input_register[9]~2_combout\);

-- Location: LCFF_X18_Y13_N21
\my_SPI|input_register[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[7]~4_combout\,
	sdata => \my_SPI|input_register[8]~3_combout\,
	sload => \my_SPI|input_register[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(7));

-- Location: LCCOMB_X18_Y13_N30
\my_SPI|input_register[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[8]~3_combout\ = (\my_SPI|always1~0_combout\ & (\data_msb~combout\(3))) # (!\my_SPI|always1~0_combout\ & ((\my_SPI|input_register\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_msb~combout\(3),
	datab => \my_SPI|input_register\(7),
	datad => \my_SPI|always1~0_combout\,
	combout => \my_SPI|input_register[8]~3_combout\);

-- Location: LCFF_X18_Y13_N23
\my_SPI|input_register[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[6]~5_combout\,
	sdata => \my_SPI|input_register[7]~4_combout\,
	sload => \my_SPI|input_register[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(6));

-- Location: LCCOMB_X18_Y13_N20
\my_SPI|input_register[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[7]~4_combout\ = (\my_SPI|always1~0_combout\ & (\data_msb~combout\(2))) # (!\my_SPI|always1~0_combout\ & ((\my_SPI|input_register\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_msb~combout\(2),
	datab => \my_SPI|input_register\(6),
	datad => \my_SPI|always1~0_combout\,
	combout => \my_SPI|input_register[7]~4_combout\);

-- Location: LCFF_X18_Y13_N29
\my_SPI|input_register[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[5]~6_combout\,
	sdata => \my_SPI|input_register[6]~5_combout\,
	sload => \my_SPI|input_register[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(5));

-- Location: LCCOMB_X18_Y13_N22
\my_SPI|input_register[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[6]~5_combout\ = (\my_SPI|always1~0_combout\ & (\data_msb~combout\(1))) # (!\my_SPI|always1~0_combout\ & ((\my_SPI|input_register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_msb~combout\(1),
	datab => \my_SPI|input_register\(5),
	datad => \my_SPI|always1~0_combout\,
	combout => \my_SPI|input_register[6]~5_combout\);

-- Location: LCCOMB_X18_Y13_N28
\my_SPI|input_register[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[5]~6_combout\ = (\my_SPI|always1~0_combout\ & (\data_msb~combout\(0))) # (!\my_SPI|always1~0_combout\ & ((\my_SPI|input_register\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_msb~combout\(0),
	datab => \my_SPI|input_register\(4),
	datad => \my_SPI|always1~0_combout\,
	combout => \my_SPI|input_register[5]~6_combout\);

-- Location: LCFF_X1_Y6_N25
\divider|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(6));

-- Location: LCFF_X18_Y13_N27
\my_SPI|input_register[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(14));

-- Location: LCCOMB_X1_Y6_N26
\divider|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Equal0~2_combout\ = (\divider|Add0~8_combout\ & !\divider|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider|Add0~8_combout\,
	datad => \divider|Add0~10_combout\,
	combout => \divider|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y6_N24
\divider|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|counter~1_combout\ = (\divider|Add0~12_combout\ & ((\divider|Add0~14_combout\) # ((!\divider|Equal0~2_combout\) # (!\divider|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~12_combout\,
	datab => \divider|Add0~14_combout\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~2_combout\,
	combout => \divider|counter~1_combout\);

-- Location: LCCOMB_X18_Y13_N12
\my_SPI|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|always1~0_combout\ = (\my_SPI|hold_start~regout\ & !\my_SPI|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|hold_start~regout\,
	datad => \my_SPI|start~regout\,
	combout => \my_SPI|always1~0_combout\);

-- Location: LCFF_X18_Y13_N7
\my_SPI|input_register[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register~16_combout\,
	ena => \my_SPI|input_register~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(13));

-- Location: LCCOMB_X17_Y13_N14
\my_SPI|input_register[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[7]~13_combout\ = (!\my_SPI|bit_number\(4) & !\my_SPI|hold_start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|bit_number\(4),
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|input_register[7]~13_combout\);

-- Location: LCCOMB_X18_Y13_N0
\my_SPI|input_register[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[7]~14_combout\ = (\my_SPI|Equal0~0_combout\) # (((\my_SPI|LessThan1~0_combout\) # (!\my_SPI|input_register[7]~13_combout\)) # (!\my_SPI|start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Equal0~0_combout\,
	datab => \my_SPI|start~regout\,
	datac => \my_SPI|LessThan1~0_combout\,
	datad => \my_SPI|input_register[7]~13_combout\,
	combout => \my_SPI|input_register[7]~14_combout\);

-- Location: LCCOMB_X18_Y13_N26
\my_SPI|input_register~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~15_combout\ = (\my_SPI|always1~0_combout\) # ((\my_SPI|input_register[7]~14_combout\ & ((\my_SPI|input_register\(14)))) # (!\my_SPI|input_register[7]~14_combout\ & (\my_SPI|input_register\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|always1~0_combout\,
	datab => \my_SPI|input_register\(13),
	datac => \my_SPI|input_register\(14),
	datad => \my_SPI|input_register[7]~14_combout\,
	combout => \my_SPI|input_register~15_combout\);

-- Location: LCFF_X18_Y13_N11
\my_SPI|input_register[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register~18_combout\,
	ena => \my_SPI|input_register~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(12));

-- Location: LCCOMB_X18_Y13_N6
\my_SPI|input_register~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~16_combout\ = (\my_SPI|input_register\(12) & ((\my_SPI|start~regout\) # (!\my_SPI|hold_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|input_register\(12),
	datac => \my_SPI|hold_start~regout\,
	datad => \my_SPI|start~regout\,
	combout => \my_SPI|input_register~16_combout\);

-- Location: LCCOMB_X18_Y13_N24
\my_SPI|input_register~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~17_combout\ = (\my_SPI|hold_start~regout\ & ((\my_SPI|start~regout\ & ((\my_SPI|input_register\(11)))) # (!\my_SPI|start~regout\ & (\data_msb~combout\(7))))) # (!\my_SPI|hold_start~regout\ & (((\my_SPI|input_register\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_msb~combout\(7),
	datab => \my_SPI|input_register\(11),
	datac => \my_SPI|hold_start~regout\,
	datad => \my_SPI|start~regout\,
	combout => \my_SPI|input_register~17_combout\);

-- Location: LCCOMB_X18_Y13_N10
\my_SPI|input_register~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~18_combout\ = (\my_SPI|input_register~17_combout\ & (\my_SPI|input_register~9_combout\ & \my_SPI|start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|input_register~17_combout\,
	datac => \my_SPI|input_register~9_combout\,
	datad => \my_SPI|start~regout\,
	combout => \my_SPI|input_register~18_combout\);

-- Location: LCFF_X18_Y13_N19
\my_SPI|input_register[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(4));

-- Location: LCCOMB_X18_Y13_N18
\my_SPI|input_register~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~19_combout\ = (\my_SPI|input_register[5]~6_combout\ & ((!\my_SPI|input_register~9_combout\) # (!\my_SPI|start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|start~regout\,
	datac => \my_SPI|input_register~9_combout\,
	datad => \my_SPI|input_register[5]~6_combout\,
	combout => \my_SPI|input_register~19_combout\);

-- Location: LCCOMB_X18_Y13_N16
\my_SPI|input_register~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~20_combout\ = (\my_SPI|start~regout\ & ((\my_SPI|input_register~9_combout\))) # (!\my_SPI|start~regout\ & (\my_SPI|hold_start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|start~regout\,
	datac => \my_SPI|hold_start~regout\,
	datad => \my_SPI|input_register~9_combout\,
	combout => \my_SPI|input_register~20_combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_161,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_msb[7]~I\ : cycloneii_io
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
	padio => ww_data_msb(7),
	combout => \data_msb~combout\(7));

-- Location: PIN_162,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_msb[6]~I\ : cycloneii_io
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
	padio => ww_data_msb(6),
	combout => \data_msb~combout\(6));

-- Location: PIN_163,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_msb[5]~I\ : cycloneii_io
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
	padio => ww_data_msb(5),
	combout => \data_msb~combout\(5));

-- Location: PIN_164,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_msb[4]~I\ : cycloneii_io
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
	padio => ww_data_msb(4),
	combout => \data_msb~combout\(4));

-- Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_msb[3]~I\ : cycloneii_io
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
	padio => ww_data_msb(3),
	combout => \data_msb~combout\(3));

-- Location: PIN_168,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_msb[2]~I\ : cycloneii_io
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
	padio => ww_data_msb(2),
	combout => \data_msb~combout\(2));

-- Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_msb[1]~I\ : cycloneii_io
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
	padio => ww_data_msb(1),
	combout => \data_msb~combout\(1));

-- Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_msb[0]~I\ : cycloneii_io
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
	padio => ww_data_msb(0),
	combout => \data_msb~combout\(0));

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

-- Location: LCFF_X1_Y6_N3
\divider|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(1));

-- Location: LCCOMB_X1_Y6_N0
\divider|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~0_combout\ = \divider|counter\(0) $ (VCC)
-- \divider|Add0~1\ = CARRY(\divider|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(0),
	datad => VCC,
	combout => \divider|Add0~0_combout\,
	cout => \divider|Add0~1\);

-- Location: LCFF_X1_Y6_N1
\divider|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(0));

-- Location: LCCOMB_X1_Y6_N2
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

-- Location: LCFF_X1_Y6_N5
\divider|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(2));

-- Location: LCCOMB_X1_Y6_N4
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

-- Location: LCFF_X1_Y6_N7
\divider|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(3));

-- Location: LCCOMB_X1_Y6_N6
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

-- Location: LCCOMB_X1_Y6_N20
\divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Equal0~0_combout\ = (!\divider|Add0~0_combout\ & (!\divider|Add0~2_combout\ & (!\divider|Add0~4_combout\ & !\divider|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~0_combout\,
	datab => \divider|Add0~2_combout\,
	datac => \divider|Add0~4_combout\,
	datad => \divider|Add0~6_combout\,
	combout => \divider|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y6_N18
\divider|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|counter~0_combout\ = (\divider|Add0~8_combout\ & ((!\divider|Equal0~1_combout\) # (!\divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|Add0~8_combout\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|counter~0_combout\);

-- Location: LCFF_X1_Y6_N19
\divider|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(4));

-- Location: LCCOMB_X1_Y6_N8
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

-- Location: LCFF_X1_Y6_N15
\divider|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(7));

-- Location: LCCOMB_X1_Y6_N10
\divider|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~10_combout\ = (\divider|counter\(5) & (!\divider|Add0~9\)) # (!\divider|counter\(5) & ((\divider|Add0~9\) # (GND)))
-- \divider|Add0~11\ = CARRY((!\divider|Add0~9\) # (!\divider|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divider|counter\(5),
	datad => VCC,
	cin => \divider|Add0~9\,
	combout => \divider|Add0~10_combout\,
	cout => \divider|Add0~11\);

-- Location: LCFF_X1_Y6_N11
\divider|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(5));

-- Location: LCCOMB_X1_Y6_N12
\divider|Add0~12\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X1_Y6_N14
\divider|Add0~14\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X1_Y6_N30
\divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Equal0~1_combout\ = (!\divider|Add0~10_combout\ & (\divider|Add0~8_combout\ & (!\divider|Add0~14_combout\ & \divider|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~10_combout\,
	datab => \divider|Add0~8_combout\,
	datac => \divider|Add0~14_combout\,
	datad => \divider|Add0~12_combout\,
	combout => \divider|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y6_N28
\divider|out_clk_inner~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|out_clk_inner~0_combout\ = \divider|out_clk_inner~regout\ $ (((\divider|Equal0~0_combout\ & \divider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Equal0~0_combout\,
	datac => \divider|out_clk_inner~regout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|out_clk_inner~0_combout\);

-- Location: LCFF_X1_Y6_N29
\divider|out_clk_inner\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|out_clk_inner~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|out_clk_inner~regout\);

-- Location: LCCOMB_X15_Y13_N22
\my_SPI|bit_number[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|bit_number[0]~5_combout\ = \my_SPI|bit_number\(0) $ (VCC)
-- \my_SPI|bit_number[0]~6\ = CARRY(\my_SPI|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(0),
	datad => VCC,
	combout => \my_SPI|bit_number[0]~5_combout\,
	cout => \my_SPI|bit_number[0]~6\);

-- Location: LCCOMB_X15_Y13_N24
\my_SPI|bit_number[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|bit_number[1]~7_combout\ = (\my_SPI|bit_number\(1) & (!\my_SPI|bit_number[0]~6\)) # (!\my_SPI|bit_number\(1) & ((\my_SPI|bit_number[0]~6\) # (GND)))
-- \my_SPI|bit_number[1]~8\ = CARRY((!\my_SPI|bit_number[0]~6\) # (!\my_SPI|bit_number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|bit_number\(1),
	datad => VCC,
	cin => \my_SPI|bit_number[0]~6\,
	combout => \my_SPI|bit_number[1]~7_combout\,
	cout => \my_SPI|bit_number[1]~8\);

-- Location: LCFF_X15_Y13_N21
\my_SPI|update\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|start~0_combout\,
	ena => \my_SPI|ALT_INV_hold_start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|update~regout\);

-- Location: LCCOMB_X15_Y13_N0
\my_SPI|inner_ldac~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|inner_ldac~feeder_combout\ = \my_SPI|update~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|update~regout\,
	combout => \my_SPI|inner_ldac~feeder_combout\);

-- Location: LCFF_X15_Y13_N1
\my_SPI|inner_ldac\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|inner_ldac~feeder_combout\,
	ena => \my_SPI|ALT_INV_hold_start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|inner_ldac~regout\);

-- Location: PIN_182,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start_btn~I\ : cycloneii_io
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
	padio => ww_start_btn,
	combout => \start_btn~combout\);

-- Location: LCCOMB_X15_Y13_N12
\my_SPI|hold_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|hold_start~0_combout\ = (!\my_SPI|update~regout\ & (!\my_SPI|inner_ldac~regout\ & (\start_btn~combout\ & !\my_SPI|hold_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|update~regout\,
	datab => \my_SPI|inner_ldac~regout\,
	datac => \start_btn~combout\,
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|hold_start~0_combout\);

-- Location: LCCOMB_X15_Y13_N26
\my_SPI|bit_number[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|bit_number[2]~9_combout\ = (\my_SPI|bit_number\(2) & (\my_SPI|bit_number[1]~8\ $ (GND))) # (!\my_SPI|bit_number\(2) & (!\my_SPI|bit_number[1]~8\ & VCC))
-- \my_SPI|bit_number[2]~10\ = CARRY((\my_SPI|bit_number\(2) & !\my_SPI|bit_number[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(2),
	datad => VCC,
	cin => \my_SPI|bit_number[1]~8\,
	combout => \my_SPI|bit_number[2]~9_combout\,
	cout => \my_SPI|bit_number[2]~10\);

-- Location: LCCOMB_X15_Y13_N4
\my_SPI|bit_number[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|bit_number[2]~15_combout\ = (!\my_SPI|hold_start~regout\ & ((!\my_SPI|start~regout\) # (!\my_SPI|bit_number\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|bit_number\(4),
	datac => \my_SPI|hold_start~regout\,
	datad => \my_SPI|start~regout\,
	combout => \my_SPI|bit_number[2]~15_combout\);

-- Location: LCFF_X15_Y13_N27
\my_SPI|bit_number[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[2]~9_combout\,
	sclr => \my_SPI|input_register~12_combout\,
	ena => \my_SPI|bit_number[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(2));

-- Location: LCCOMB_X15_Y13_N28
\my_SPI|bit_number[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|bit_number[3]~11_combout\ = (\my_SPI|bit_number\(3) & (!\my_SPI|bit_number[2]~10\)) # (!\my_SPI|bit_number\(3) & ((\my_SPI|bit_number[2]~10\) # (GND)))
-- \my_SPI|bit_number[3]~12\ = CARRY((!\my_SPI|bit_number[2]~10\) # (!\my_SPI|bit_number\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(3),
	datad => VCC,
	cin => \my_SPI|bit_number[2]~10\,
	combout => \my_SPI|bit_number[3]~11_combout\,
	cout => \my_SPI|bit_number[3]~12\);

-- Location: LCFF_X15_Y13_N29
\my_SPI|bit_number[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[3]~11_combout\,
	sclr => \my_SPI|input_register~12_combout\,
	ena => \my_SPI|bit_number[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(3));

-- Location: LCCOMB_X15_Y13_N10
\my_SPI|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Equal0~0_combout\ = (!\my_SPI|bit_number\(0) & (!\my_SPI|bit_number\(2) & (!\my_SPI|bit_number\(1) & !\my_SPI|bit_number\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(0),
	datab => \my_SPI|bit_number\(2),
	datac => \my_SPI|bit_number\(1),
	datad => \my_SPI|bit_number\(3),
	combout => \my_SPI|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y13_N30
\my_SPI|hold_start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|hold_start~1_combout\ = (!\my_SPI|start~regout\ & (\my_SPI|hold_start~0_combout\ & ((!\my_SPI|Equal0~0_combout\) # (!\my_SPI|bit_number\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(4),
	datab => \my_SPI|start~regout\,
	datac => \my_SPI|hold_start~0_combout\,
	datad => \my_SPI|Equal0~0_combout\,
	combout => \my_SPI|hold_start~1_combout\);

-- Location: LCFF_X17_Y13_N31
\my_SPI|hold_start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|hold_start~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|hold_start~regout\);

-- Location: LCCOMB_X15_Y13_N6
\my_SPI|input_register~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~12_combout\ = (!\my_SPI|hold_start~regout\ & !\my_SPI|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|hold_start~regout\,
	datad => \my_SPI|start~regout\,
	combout => \my_SPI|input_register~12_combout\);

-- Location: LCFF_X15_Y13_N25
\my_SPI|bit_number[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[1]~7_combout\,
	sclr => \my_SPI|input_register~12_combout\,
	ena => \my_SPI|bit_number[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(1));

-- Location: LCCOMB_X15_Y13_N30
\my_SPI|bit_number[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|bit_number[4]~13_combout\ = \my_SPI|bit_number[3]~12\ $ (!\my_SPI|bit_number\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_SPI|bit_number\(4),
	cin => \my_SPI|bit_number[3]~12\,
	combout => \my_SPI|bit_number[4]~13_combout\);

-- Location: LCFF_X15_Y13_N31
\my_SPI|bit_number[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[4]~13_combout\,
	sclr => \my_SPI|input_register~12_combout\,
	ena => \my_SPI|bit_number[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(4));

-- Location: LCCOMB_X15_Y13_N20
\my_SPI|start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start~0_combout\ = (!\my_SPI|inner_ldac~regout\ & (\my_SPI|bit_number\(4) & (!\my_SPI|update~regout\ & \my_SPI|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|inner_ldac~regout\,
	datab => \my_SPI|bit_number\(4),
	datac => \my_SPI|update~regout\,
	datad => \my_SPI|Equal0~0_combout\,
	combout => \my_SPI|start~0_combout\);

-- Location: LCCOMB_X17_Y13_N28
\my_SPI|start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start~1_combout\ = (\my_SPI|hold_start~regout\) # ((\my_SPI|start~regout\ & !\my_SPI|start~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|hold_start~regout\,
	datac => \my_SPI|start~regout\,
	datad => \my_SPI|start~0_combout\,
	combout => \my_SPI|start~1_combout\);

-- Location: LCFF_X17_Y13_N29
\my_SPI|start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|start~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|start~regout\);

-- Location: LCCOMB_X1_Y11_N20
\my_SPI|sclk\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sclk~combout\ = (\divider|out_clk_inner~regout\ & \my_SPI|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|out_clk_inner~regout\,
	datad => \my_SPI|start~regout\,
	combout => \my_SPI|sclk~combout\);

-- Location: CLKCTRL_G3
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

-- Location: LCFF_X15_Y13_N23
\my_SPI|bit_number[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[0]~5_combout\,
	sclr => \my_SPI|input_register~12_combout\,
	ena => \my_SPI|bit_number[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(0));

-- Location: LCCOMB_X15_Y13_N14
\my_SPI|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|LessThan1~0_combout\ = (\my_SPI|bit_number\(1) & (\my_SPI|bit_number\(0) & (\my_SPI|bit_number\(2) & \my_SPI|bit_number\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(1),
	datab => \my_SPI|bit_number\(0),
	datac => \my_SPI|bit_number\(2),
	datad => \my_SPI|bit_number\(3),
	combout => \my_SPI|LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y13_N16
\my_SPI|input_register~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~9_combout\ = (!\my_SPI|bit_number\(4) & (!\my_SPI|Equal0~0_combout\ & (!\my_SPI|LessThan1~0_combout\ & !\my_SPI|hold_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(4),
	datab => \my_SPI|Equal0~0_combout\,
	datac => \my_SPI|LessThan1~0_combout\,
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|input_register~9_combout\);

-- Location: LCCOMB_X17_Y13_N26
\my_SPI|input_register~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~10_combout\ = (\my_SPI|start~regout\ & ((\my_SPI|input_register~9_combout\ & (\my_SPI|input_register\(14))) # (!\my_SPI|input_register~9_combout\ & ((\my_SPI|input_register\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|input_register\(14),
	datab => \my_SPI|input_register\(15),
	datac => \my_SPI|input_register~9_combout\,
	datad => \my_SPI|start~regout\,
	combout => \my_SPI|input_register~10_combout\);

-- Location: LCCOMB_X17_Y13_N22
\my_SPI|input_register~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~11_combout\ = (\my_SPI|input_register~10_combout\) # ((!\my_SPI|hold_start~regout\ & (!\my_SPI|start~regout\ & \my_SPI|input_register\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|hold_start~regout\,
	datab => \my_SPI|start~regout\,
	datac => \my_SPI|input_register\(15),
	datad => \my_SPI|input_register~10_combout\,
	combout => \my_SPI|input_register~11_combout\);

-- Location: LCFF_X17_Y13_N23
\my_SPI|input_register[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(15));

-- Location: LCCOMB_X17_Y13_N12
\my_SPI|start_sync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start_sync~0_combout\ = (!\my_SPI|bit_number\(4) & !\my_SPI|hold_start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|bit_number\(4),
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|start_sync~0_combout\);

-- Location: LCCOMB_X17_Y13_N24
\my_SPI|start_sync~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start_sync~1_combout\ = (\my_SPI|start~regout\ & ((\my_SPI|start_sync~regout\) # ((\my_SPI|LessThan1~0_combout\ & \my_SPI|start_sync~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|LessThan1~0_combout\,
	datab => \my_SPI|start~regout\,
	datac => \my_SPI|start_sync~regout\,
	datad => \my_SPI|start_sync~0_combout\,
	combout => \my_SPI|start_sync~1_combout\);

-- Location: LCFF_X17_Y13_N25
\my_SPI|start_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|start_sync~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|start_sync~regout\);

-- Location: LCCOMB_X12_Y12_N8
\my_SPI|sync\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sync~combout\ = (!\my_SPI|start~regout\ & !\my_SPI|start_sync~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|start~regout\,
	datad => \my_SPI|start_sync~regout\,
	combout => \my_SPI|sync~combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sclk~I\ : cycloneii_io
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
	datain => \my_SPI|sclk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sclk);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\din~I\ : cycloneii_io
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
	datain => \my_SPI|input_register\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_din);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sync~I\ : cycloneii_io
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
	datain => \my_SPI|sync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sync);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ldac~I\ : cycloneii_io
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
	datain => \my_SPI|ALT_INV_inner_ldac~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ldac);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clr~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clr);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\inner_clk~I\ : cycloneii_io
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
	datain => \divider|out_clk_inner~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_inner_clk);
END structure;


