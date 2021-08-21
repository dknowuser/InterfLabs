-- Copyright (C) 1991-2012 Altera Corporation
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
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/22/2020 20:03:47"

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

ENTITY 	lab4 IS
    PORT (
	clk : IN std_logic;
	dout : IN std_logic;
	reset : IN std_logic;
	sclk : OUT std_logic;
	cs : OUT std_logic;
	din : OUT std_logic;
	leds : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab4;

-- Design Ports Information
-- sclk	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cs	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- din	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[0]	=>  Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[1]	=>  Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[2]	=>  Location: PIN_175,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[3]	=>  Location: PIN_176,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[4]	=>  Location: PIN_179,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[5]	=>  Location: PIN_180,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[6]	=>  Location: PIN_182,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[7]	=>  Location: PIN_185,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_160,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dout	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
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
SIGNAL ww_dout : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_cs : std_logic;
SIGNAL ww_din : std_logic;
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_div|clk_div_inner~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_contr|Add1~6_combout\ : std_logic;
SIGNAL \adc_contr|Add1~12_combout\ : std_logic;
SIGNAL \adc_contr|Add1~16_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[5]~28_combout\ : std_logic;
SIGNAL \adc_contr|Add2~10_combout\ : std_logic;
SIGNAL \adc_contr|Add2~16_combout\ : std_logic;
SIGNAL \adc_contr|data[19]~7_combout\ : std_logic;
SIGNAL \adc_contr|data[1]~3_combout\ : std_logic;
SIGNAL \adc_contr|data[6]~0_combout\ : std_logic;
SIGNAL \adc_contr|data[9]~5_combout\ : std_logic;
SIGNAL \adc_contr|data[8]~6_combout\ : std_logic;
SIGNAL \adc_contr|Equal1~0_combout\ : std_logic;
SIGNAL \adc_contr|Equal1~2_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~2_combout\ : std_logic;
SIGNAL \adc_contr|WideOr0~0_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~6_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~8_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~9_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~10_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~11_combout\ : std_logic;
SIGNAL \adc_contr|Selector24~5_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[0]~24_combout\ : std_logic;
SIGNAL \adc_contr|data[18]~40_combout\ : std_logic;
SIGNAL \adc_contr|data[18]~42_combout\ : std_logic;
SIGNAL \adc_contr|data[18]~45_combout\ : std_logic;
SIGNAL \adc_contr|data~51_combout\ : std_logic;
SIGNAL \adc_contr|data~52_combout\ : std_logic;
SIGNAL \adc_contr|Selector2~0_combout\ : std_logic;
SIGNAL \adc_contr|data~57_combout\ : std_logic;
SIGNAL \adc_contr|data~61_combout\ : std_logic;
SIGNAL \adc_contr|data~62_combout\ : std_logic;
SIGNAL \adc_contr|data[22]~63_combout\ : std_logic;
SIGNAL \adc_contr|data[22]~64_combout\ : std_logic;
SIGNAL \adc_contr|data[7]~65_combout\ : std_logic;
SIGNAL \adc_contr|data[22]~66_combout\ : std_logic;
SIGNAL \adc_contr|data[23]~67_combout\ : std_logic;
SIGNAL \adc_contr|data[23]~68_combout\ : std_logic;
SIGNAL \adc_contr|data[23]~69_combout\ : std_logic;
SIGNAL \adc_contr|data[14]~72_combout\ : std_logic;
SIGNAL \adc_contr|state.communic_reg_mode_state~regout\ : std_logic;
SIGNAL \adc_contr|data~77_combout\ : std_logic;
SIGNAL \adc_contr|data~78_combout\ : std_logic;
SIGNAL \adc_contr|Selector9~0_combout\ : std_logic;
SIGNAL \adc_contr|data~86_combout\ : std_logic;
SIGNAL \adc_contr|Selector5~0_combout\ : std_logic;
SIGNAL \adc_contr|data[7]~87_combout\ : std_logic;
SIGNAL \adc_contr|data[7]~88_combout\ : std_logic;
SIGNAL \adc_contr|data[7]~89_combout\ : std_logic;
SIGNAL \adc_contr|data~93_combout\ : std_logic;
SIGNAL \adc_contr|data~94_combout\ : std_logic;
SIGNAL \adc_contr|data[10]~95_combout\ : std_logic;
SIGNAL \adc_contr|data[10]~96_combout\ : std_logic;
SIGNAL \adc_contr|data~97_combout\ : std_logic;
SIGNAL \adc_contr|data~98_combout\ : std_logic;
SIGNAL \adc_contr|Selector3~0_combout\ : std_logic;
SIGNAL \adc_contr|data[11]~99_combout\ : std_logic;
SIGNAL \adc_contr|data[11]~100_combout\ : std_logic;
SIGNAL \adc_contr|data~101_combout\ : std_logic;
SIGNAL \adc_contr|data[13]~102_combout\ : std_logic;
SIGNAL \adc_contr|data[13]~103_combout\ : std_logic;
SIGNAL \adc_contr|data[13]~104_combout\ : std_logic;
SIGNAL \adc_contr|data[14]~105_combout\ : std_logic;
SIGNAL \adc_contr|data[15]~106_combout\ : std_logic;
SIGNAL \adc_contr|data[12]~107_combout\ : std_logic;
SIGNAL \adc_contr|data[12]~108_combout\ : std_logic;
SIGNAL \adc_contr|data[12]~109_combout\ : std_logic;
SIGNAL \clk_div|counter~1_combout\ : std_logic;
SIGNAL \adc_contr|state~21_combout\ : std_logic;
SIGNAL \adc_contr|data[18]~110_combout\ : std_logic;
SIGNAL \adc_contr|data[10]~115_combout\ : std_logic;
SIGNAL \adc_contr|data[10]~116_combout\ : std_logic;
SIGNAL \adc_contr|data[11]~117_combout\ : std_logic;
SIGNAL \adc_contr|Selector4~4_combout\ : std_logic;
SIGNAL \adc_contr|data[13]~118_combout\ : std_logic;
SIGNAL \adc_contr|data[14]~119_combout\ : std_logic;
SIGNAL \adc_contr|data[14]~120_combout\ : std_logic;
SIGNAL \adc_contr|data[15]~121_combout\ : std_logic;
SIGNAL \adc_contr|data[15]~122_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \clk_div|counter~0_combout\ : std_logic;
SIGNAL \clk_div|Add0~0_combout\ : std_logic;
SIGNAL \clk_div|clk_div_inner~0_combout\ : std_logic;
SIGNAL \clk_div|clk_div_inner~regout\ : std_logic;
SIGNAL \clk_div|clk_div_inner~clkctrl_outclk\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \adc_contr|state~16_combout\ : std_logic;
SIGNAL \adc_contr|state.reset_state~regout\ : std_logic;
SIGNAL \adc_contr|bit_count[5]~0_combout\ : std_logic;
SIGNAL \adc_contr|data[5]~34_combout\ : std_logic;
SIGNAL \adc_contr|bit_count[3]~feeder_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[0]~15_combout\ : std_logic;
SIGNAL \adc_contr|clk_sync~0_combout\ : std_logic;
SIGNAL \adc_contr|clk_sync~regout\ : std_logic;
SIGNAL \adc_contr|bit_number[0]~44_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[0]~23_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[0]~25_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[0]~16\ : std_logic;
SIGNAL \adc_contr|bit_number[1]~17_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[1]~18\ : std_logic;
SIGNAL \adc_contr|bit_number[2]~19_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[2]~20\ : std_logic;
SIGNAL \adc_contr|bit_number[3]~21_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[3]~22\ : std_logic;
SIGNAL \adc_contr|bit_number[4]~26_combout\ : std_logic;
SIGNAL \adc_contr|Equal1~3_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[4]~27\ : std_logic;
SIGNAL \adc_contr|bit_number[5]~29\ : std_logic;
SIGNAL \adc_contr|bit_number[6]~30_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[6]~31\ : std_logic;
SIGNAL \adc_contr|bit_number[7]~33\ : std_logic;
SIGNAL \adc_contr|bit_number[8]~34_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[8]~35\ : std_logic;
SIGNAL \adc_contr|bit_number[9]~37\ : std_logic;
SIGNAL \adc_contr|bit_number[10]~38_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[10]~39\ : std_logic;
SIGNAL \adc_contr|bit_number[11]~40_combout\ : std_logic;
SIGNAL \adc_contr|state~14_combout\ : std_logic;
SIGNAL \adc_contr|state~15_combout\ : std_logic;
SIGNAL \adc_contr|state.wait_after_reset_state~regout\ : std_logic;
SIGNAL \adc_contr|bit_number[9]~36_combout\ : std_logic;
SIGNAL \adc_contr|LessThan0~2_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[7]~32_combout\ : std_logic;
SIGNAL \adc_contr|bit_number[11]~41\ : std_logic;
SIGNAL \adc_contr|bit_number[12]~42_combout\ : std_logic;
SIGNAL \adc_contr|LessThan0~1_combout\ : std_logic;
SIGNAL \adc_contr|Equal1~1_combout\ : std_logic;
SIGNAL \adc_contr|Equal1~4_combout\ : std_logic;
SIGNAL \adc_contr|state~19_combout\ : std_logic;
SIGNAL \adc_contr|state.mode_reg_write_state~regout\ : std_logic;
SIGNAL \adc_contr|state~22_combout\ : std_logic;
SIGNAL \adc_contr|state.communic_reg_config_state~regout\ : std_logic;
SIGNAL \adc_contr|state~20_combout\ : std_logic;
SIGNAL \adc_contr|state.config_reg_write_state~regout\ : std_logic;
SIGNAL \adc_contr|WideOr0~combout\ : std_logic;
SIGNAL \adc_contr|always1~1_combout\ : std_logic;
SIGNAL \adc_contr|always1~2_combout\ : std_logic;
SIGNAL \adc_contr|state~17_combout\ : std_logic;
SIGNAL \adc_contr|state.continious_read~regout\ : std_logic;
SIGNAL \dout~combout\ : std_logic;
SIGNAL \adc_contr|counter~0_combout\ : std_logic;
SIGNAL \adc_contr|counter~regout\ : std_logic;
SIGNAL \adc_contr|start~0_combout\ : std_logic;
SIGNAL \adc_contr|start~1_combout\ : std_logic;
SIGNAL \adc_contr|start~regout\ : std_logic;
SIGNAL \adc_contr|LessThan0~4_combout\ : std_logic;
SIGNAL \adc_contr|LessThan0~5_combout\ : std_logic;
SIGNAL \adc_contr|LessThan0~6_combout\ : std_logic;
SIGNAL \adc_contr|LessThan0~7_combout\ : std_logic;
SIGNAL \adc_contr|LessThan0~8_combout\ : std_logic;
SIGNAL \adc_contr|LessThan0~0_combout\ : std_logic;
SIGNAL \adc_contr|LessThan0~3_combout\ : std_logic;
SIGNAL \adc_contr|sclk_reg~3_combout\ : std_logic;
SIGNAL \adc_contr|sclk_reg~2_combout\ : std_logic;
SIGNAL \adc_contr|sclk_reg~regout\ : std_logic;
SIGNAL \adc_contr|always1~0_combout\ : std_logic;
SIGNAL \adc_contr|cs_hold~0_combout\ : std_logic;
SIGNAL \adc_contr|cs_hold~1_combout\ : std_logic;
SIGNAL \adc_contr|cs_hold~regout\ : std_logic;
SIGNAL \adc_contr|delay~0_combout\ : std_logic;
SIGNAL \adc_contr|delay~1_combout\ : std_logic;
SIGNAL \adc_contr|delay~regout\ : std_logic;
SIGNAL \adc_contr|cs~0_combout\ : std_logic;
SIGNAL \adc_contr|Add2~1_cout\ : std_logic;
SIGNAL \adc_contr|Add2~2_combout\ : std_logic;
SIGNAL \adc_contr|Add1~1_cout\ : std_logic;
SIGNAL \adc_contr|Add1~2_combout\ : std_logic;
SIGNAL \adc_contr|Selector24~7_combout\ : std_logic;
SIGNAL \adc_contr|always1~3_combout\ : std_logic;
SIGNAL \adc_contr|Add2~3\ : std_logic;
SIGNAL \adc_contr|Add2~4_combout\ : std_logic;
SIGNAL \adc_contr|Add2~5\ : std_logic;
SIGNAL \adc_contr|Add2~6_combout\ : std_logic;
SIGNAL \adc_contr|data~35_combout\ : std_logic;
SIGNAL \adc_contr|Add2~7\ : std_logic;
SIGNAL \adc_contr|Add2~8_combout\ : std_logic;
SIGNAL \adc_contr|Add2~9\ : std_logic;
SIGNAL \adc_contr|Add2~11\ : std_logic;
SIGNAL \adc_contr|Add2~13\ : std_logic;
SIGNAL \adc_contr|Add2~14_combout\ : std_logic;
SIGNAL \adc_contr|Add2~12_combout\ : std_logic;
SIGNAL \adc_contr|data~36_combout\ : std_logic;
SIGNAL \adc_contr|Add2~15\ : std_logic;
SIGNAL \adc_contr|Add2~17\ : std_logic;
SIGNAL \adc_contr|Add2~19\ : std_logic;
SIGNAL \adc_contr|Add2~20_combout\ : std_logic;
SIGNAL \adc_contr|Add2~18_combout\ : std_logic;
SIGNAL \adc_contr|data~37_combout\ : std_logic;
SIGNAL \adc_contr|data~43_combout\ : std_logic;
SIGNAL \adc_contr|data~50_combout\ : std_logic;
SIGNAL \adc_contr|data~79_combout\ : std_logic;
SIGNAL \adc_contr|data[3]~4_combout\ : std_logic;
SIGNAL \adc_contr|state~18_combout\ : std_logic;
SIGNAL \adc_contr|state.enter_continious_read~regout\ : std_logic;
SIGNAL \adc_contr|output_bit~1_combout\ : std_logic;
SIGNAL \adc_contr|Selector7~0_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~4_combout\ : std_logic;
SIGNAL \adc_contr|data~75_combout\ : std_logic;
SIGNAL \adc_contr|data~74_combout\ : std_logic;
SIGNAL \adc_contr|data~76_combout\ : std_logic;
SIGNAL \adc_contr|data[2]~2_combout\ : std_logic;
SIGNAL \adc_contr|Selector8~0_combout\ : std_logic;
SIGNAL \adc_contr|data[0]~80_combout\ : std_logic;
SIGNAL \adc_contr|data[5]~41_combout\ : std_logic;
SIGNAL \adc_contr|data~38_combout\ : std_logic;
SIGNAL \adc_contr|data~39_combout\ : std_logic;
SIGNAL \adc_contr|data[0]~113_combout\ : std_logic;
SIGNAL \adc_contr|data[0]~81_combout\ : std_logic;
SIGNAL \adc_contr|data[0]~111_combout\ : std_logic;
SIGNAL \adc_contr|data[0]~82_combout\ : std_logic;
SIGNAL \adc_contr|data[0]~83_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~5_combout\ : std_logic;
SIGNAL \adc_contr|data~58_combout\ : std_logic;
SIGNAL \adc_contr|data[5]~114_combout\ : std_logic;
SIGNAL \adc_contr|data[5]~84_combout\ : std_logic;
SIGNAL \adc_contr|data[5]~85_combout\ : std_logic;
SIGNAL \adc_contr|data~91_combout\ : std_logic;
SIGNAL \adc_contr|data~90_combout\ : std_logic;
SIGNAL \adc_contr|data~92_combout\ : std_logic;
SIGNAL \adc_contr|data[4]~1_combout\ : std_logic;
SIGNAL \adc_contr|Selector6~0_combout\ : std_logic;
SIGNAL \adc_contr|Selector6~1_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~7_combout\ : std_logic;
SIGNAL \adc_contr|Selector24~4_combout\ : std_logic;
SIGNAL \adc_contr|data[11]~48_combout\ : std_logic;
SIGNAL \adc_contr|data[18]~44_combout\ : std_logic;
SIGNAL \adc_contr|data[17]~46_combout\ : std_logic;
SIGNAL \adc_contr|data[17]~47_combout\ : std_logic;
SIGNAL \adc_contr|data[17]~49_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~0_combout\ : std_logic;
SIGNAL \adc_contr|data[10]~55_combout\ : std_logic;
SIGNAL \adc_contr|data[16]~53_combout\ : std_logic;
SIGNAL \adc_contr|data[16]~54_combout\ : std_logic;
SIGNAL \adc_contr|data[16]~56_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~1_combout\ : std_logic;
SIGNAL \adc_contr|data[21]~112_combout\ : std_logic;
SIGNAL \adc_contr|data[21]~59_combout\ : std_logic;
SIGNAL \adc_contr|data[21]~60_combout\ : std_logic;
SIGNAL \adc_contr|data[20]~70_combout\ : std_logic;
SIGNAL \adc_contr|data[20]~71_combout\ : std_logic;
SIGNAL \adc_contr|data[20]~73_combout\ : std_logic;
SIGNAL \adc_contr|Mux0~3_combout\ : std_logic;
SIGNAL \adc_contr|Selector24~2_combout\ : std_logic;
SIGNAL \adc_contr|Selector24~3_combout\ : std_logic;
SIGNAL \adc_contr|Selector24~6_combout\ : std_logic;
SIGNAL \adc_contr|output_bit~2_combout\ : std_logic;
SIGNAL \adc_contr|output_bit~0_combout\ : std_logic;
SIGNAL \adc_contr|Selector0~0_combout\ : std_logic;
SIGNAL \adc_contr|output_bit~regout\ : std_logic;
SIGNAL \adc_contr|leds_reg~0_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~1_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~2_combout\ : std_logic;
SIGNAL \adc_contr|Add1~3\ : std_logic;
SIGNAL \adc_contr|Add1~4_combout\ : std_logic;
SIGNAL \adc_contr|LessThan3~0_combout\ : std_logic;
SIGNAL \adc_contr|Add1~5\ : std_logic;
SIGNAL \adc_contr|Add1~7\ : std_logic;
SIGNAL \adc_contr|Add1~9\ : std_logic;
SIGNAL \adc_contr|Add1~11\ : std_logic;
SIGNAL \adc_contr|Add1~13\ : std_logic;
SIGNAL \adc_contr|Add1~15\ : std_logic;
SIGNAL \adc_contr|Add1~17\ : std_logic;
SIGNAL \adc_contr|Add1~19\ : std_logic;
SIGNAL \adc_contr|Add1~20_combout\ : std_logic;
SIGNAL \adc_contr|Add1~18_combout\ : std_logic;
SIGNAL \adc_contr|LessThan3~2_combout\ : std_logic;
SIGNAL \adc_contr|Add1~14_combout\ : std_logic;
SIGNAL \adc_contr|Add1~8_combout\ : std_logic;
SIGNAL \adc_contr|Add1~10_combout\ : std_logic;
SIGNAL \adc_contr|LessThan3~1_combout\ : std_logic;
SIGNAL \adc_contr|LessThan3~3_combout\ : std_logic;
SIGNAL \adc_contr|Decoder1~0_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~3_combout\ : std_logic;
SIGNAL \adc_contr|Decoder1~1_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~4_combout\ : std_logic;
SIGNAL \adc_contr|Decoder1~2_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~5_combout\ : std_logic;
SIGNAL \adc_contr|Decoder1~3_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~6_combout\ : std_logic;
SIGNAL \adc_contr|Decoder1~4_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~7_combout\ : std_logic;
SIGNAL \adc_contr|Decoder1~5_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~8_combout\ : std_logic;
SIGNAL \adc_contr|Decoder1~6_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~9_combout\ : std_logic;
SIGNAL \adc_contr|Decoder1~7_combout\ : std_logic;
SIGNAL \adc_contr|leds_reg~10_combout\ : std_logic;
SIGNAL \clk_div|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \adc_contr|leds_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \adc_contr|data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \adc_contr|bit_number\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \adc_contr|bit_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \adc_contr|ALT_INV_sclk_reg~regout\ : std_logic;
SIGNAL \clk_div|ALT_INV_clk_div_inner~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \adc_contr|ALT_INV_data[5]~34_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_dout <= dout;
ww_reset <= reset;
sclk <= ww_sclk;
cs <= ww_cs;
din <= ww_din;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_div|clk_div_inner~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_div|clk_div_inner~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\adc_contr|ALT_INV_sclk_reg~regout\ <= NOT \adc_contr|sclk_reg~regout\;
\clk_div|ALT_INV_clk_div_inner~clkctrl_outclk\ <= NOT \clk_div|clk_div_inner~clkctrl_outclk\;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\adc_contr|ALT_INV_data[5]~34_combout\ <= NOT \adc_contr|data[5]~34_combout\;

-- Location: LCFF_X13_Y9_N17
\adc_contr|bit_number[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[5]~28_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(5));

-- Location: LCFF_X14_Y13_N13
\adc_contr|data[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[19]~7_combout\,
	sdata => \adc_contr|Selector2~0_combout\,
	sload => \adc_contr|always1~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(19));

-- Location: LCFF_X12_Y10_N11
\adc_contr|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[1]~3_combout\,
	sdata => \adc_contr|Selector9~0_combout\,
	sload => \adc_contr|always1~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(1));

-- Location: LCFF_X12_Y11_N13
\adc_contr|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[6]~0_combout\,
	sdata => \adc_contr|Selector5~0_combout\,
	sload => \adc_contr|always1~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(6));

-- Location: LCFF_X13_Y12_N17
\adc_contr|data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[9]~5_combout\,
	sdata => \adc_contr|Selector3~0_combout\,
	sload => \adc_contr|always1~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(9));

-- Location: LCFF_X13_Y12_N31
\adc_contr|data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[8]~6_combout\,
	sdata => \adc_contr|Selector4~4_combout\,
	sload => \adc_contr|always1~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(8));

-- Location: LCCOMB_X15_Y9_N6
\adc_contr|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~6_combout\ = (\adc_contr|bit_number\(6) & ((\adc_contr|Add1~5\) # (GND))) # (!\adc_contr|bit_number\(6) & (!\adc_contr|Add1~5\))
-- \adc_contr|Add1~7\ = CARRY((\adc_contr|bit_number\(6)) # (!\adc_contr|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(6),
	datad => VCC,
	cin => \adc_contr|Add1~5\,
	combout => \adc_contr|Add1~6_combout\,
	cout => \adc_contr|Add1~7\);

-- Location: LCCOMB_X15_Y9_N12
\adc_contr|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~12_combout\ = (\adc_contr|bit_number\(9) & (!\adc_contr|Add1~11\ & VCC)) # (!\adc_contr|bit_number\(9) & (\adc_contr|Add1~11\ $ (GND)))
-- \adc_contr|Add1~13\ = CARRY((!\adc_contr|bit_number\(9) & !\adc_contr|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(9),
	datad => VCC,
	cin => \adc_contr|Add1~11\,
	combout => \adc_contr|Add1~12_combout\,
	cout => \adc_contr|Add1~13\);

-- Location: LCCOMB_X15_Y9_N16
\adc_contr|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~16_combout\ = (\adc_contr|bit_number\(11) & (!\adc_contr|Add1~15\ & VCC)) # (!\adc_contr|bit_number\(11) & (\adc_contr|Add1~15\ $ (GND)))
-- \adc_contr|Add1~17\ = CARRY((!\adc_contr|bit_number\(11) & !\adc_contr|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(11),
	datad => VCC,
	cin => \adc_contr|Add1~15\,
	combout => \adc_contr|Add1~16_combout\,
	cout => \adc_contr|Add1~17\);

-- Location: LCCOMB_X13_Y9_N16
\adc_contr|bit_number[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[5]~28_combout\ = (\adc_contr|bit_number\(5) & (!\adc_contr|bit_number[4]~27\)) # (!\adc_contr|bit_number\(5) & ((\adc_contr|bit_number[4]~27\) # (GND)))
-- \adc_contr|bit_number[5]~29\ = CARRY((!\adc_contr|bit_number[4]~27\) # (!\adc_contr|bit_number\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(5),
	datad => VCC,
	cin => \adc_contr|bit_number[4]~27\,
	combout => \adc_contr|bit_number[5]~28_combout\,
	cout => \adc_contr|bit_number[5]~29\);

-- Location: LCCOMB_X12_Y9_N10
\adc_contr|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~10_combout\ = (\adc_contr|bit_number\(8) & ((\adc_contr|Add2~9\) # (GND))) # (!\adc_contr|bit_number\(8) & (!\adc_contr|Add2~9\))
-- \adc_contr|Add2~11\ = CARRY((\adc_contr|bit_number\(8)) # (!\adc_contr|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(8),
	datad => VCC,
	cin => \adc_contr|Add2~9\,
	combout => \adc_contr|Add2~10_combout\,
	cout => \adc_contr|Add2~11\);

-- Location: LCCOMB_X12_Y9_N16
\adc_contr|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~16_combout\ = (\adc_contr|bit_number\(11) & (!\adc_contr|Add2~15\ & VCC)) # (!\adc_contr|bit_number\(11) & (\adc_contr|Add2~15\ $ (GND)))
-- \adc_contr|Add2~17\ = CARRY((!\adc_contr|bit_number\(11) & !\adc_contr|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(11),
	datad => VCC,
	cin => \adc_contr|Add2~15\,
	combout => \adc_contr|Add2~16_combout\,
	cout => \adc_contr|Add2~17\);

-- Location: LCCOMB_X14_Y13_N12
\adc_contr|data[19]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[19]~7_combout\ = (\adc_contr|always1~3_combout\ & ((\adc_contr|data~52_combout\))) # (!\adc_contr|always1~3_combout\ & (\adc_contr|data\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~3_combout\,
	datac => \adc_contr|data\(19),
	datad => \adc_contr|data~52_combout\,
	combout => \adc_contr|data[19]~7_combout\);

-- Location: LCCOMB_X12_Y10_N10
\adc_contr|data[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[1]~3_combout\ = (\adc_contr|always1~3_combout\ & ((\adc_contr|data~78_combout\))) # (!\adc_contr|always1~3_combout\ & (\adc_contr|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|always1~3_combout\,
	datac => \adc_contr|data\(1),
	datad => \adc_contr|data~78_combout\,
	combout => \adc_contr|data[1]~3_combout\);

-- Location: LCCOMB_X12_Y11_N12
\adc_contr|data[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[6]~0_combout\ = (\adc_contr|always1~3_combout\ & ((\adc_contr|data~86_combout\))) # (!\adc_contr|always1~3_combout\ & (\adc_contr|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|always1~3_combout\,
	datac => \adc_contr|data\(6),
	datad => \adc_contr|data~86_combout\,
	combout => \adc_contr|data[6]~0_combout\);

-- Location: LCCOMB_X13_Y12_N16
\adc_contr|data[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[9]~5_combout\ = (\adc_contr|always1~3_combout\ & ((\adc_contr|data~98_combout\))) # (!\adc_contr|always1~3_combout\ & (\adc_contr|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|always1~3_combout\,
	datac => \adc_contr|data\(9),
	datad => \adc_contr|data~98_combout\,
	combout => \adc_contr|data[9]~5_combout\);

-- Location: LCCOMB_X13_Y12_N30
\adc_contr|data[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[8]~6_combout\ = (\adc_contr|always1~3_combout\ & ((\adc_contr|data~101_combout\))) # (!\adc_contr|always1~3_combout\ & (\adc_contr|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|always1~3_combout\,
	datac => \adc_contr|data\(8),
	datad => \adc_contr|data~101_combout\,
	combout => \adc_contr|data[8]~6_combout\);

-- Location: LCCOMB_X14_Y9_N16
\adc_contr|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Equal1~0_combout\ = (\adc_contr|bit_number\(10)) # ((\adc_contr|bit_number\(6)) # (\adc_contr|bit_count\(5) $ (\adc_contr|bit_number\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_count\(5),
	datab => \adc_contr|bit_number\(10),
	datac => \adc_contr|bit_number\(5),
	datad => \adc_contr|bit_number\(6),
	combout => \adc_contr|Equal1~0_combout\);

-- Location: LCCOMB_X13_Y9_N2
\adc_contr|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Equal1~2_combout\ = (!\adc_contr|bit_number\(0) & !\adc_contr|bit_number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|bit_number\(2),
	combout => \adc_contr|Equal1~2_combout\);

-- Location: LCFF_X14_Y13_N7
\adc_contr|data[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[18]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(18));

-- Location: LCFF_X12_Y11_N7
\adc_contr|data[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(22));

-- Location: LCFF_X12_Y11_N21
\adc_contr|data[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(23));

-- Location: LCCOMB_X12_Y11_N10
\adc_contr|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~2_combout\ = (\adc_contr|bit_number\(0) & (((\adc_contr|data\(22)) # (\adc_contr|bit_number\(1))))) # (!\adc_contr|bit_number\(0) & (\adc_contr|data\(23) & ((!\adc_contr|bit_number\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(23),
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|data\(22),
	datad => \adc_contr|bit_number\(1),
	combout => \adc_contr|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y13_N12
\adc_contr|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|WideOr0~0_combout\ = (!\adc_contr|state.mode_reg_write_state~regout\ & !\adc_contr|state.config_reg_write_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_contr|state.mode_reg_write_state~regout\,
	datad => \adc_contr|state.config_reg_write_state~regout\,
	combout => \adc_contr|WideOr0~0_combout\);

-- Location: LCFF_X12_Y11_N19
\adc_contr|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[7]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(7));

-- Location: LCCOMB_X12_Y11_N8
\adc_contr|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~6_combout\ = (\adc_contr|bit_number\(0) & ((\adc_contr|data\(6)) # ((\adc_contr|bit_number\(1))))) # (!\adc_contr|bit_number\(0) & (((\adc_contr|data\(7) & !\adc_contr|bit_number\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(6),
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|data\(7),
	datad => \adc_contr|bit_number\(1),
	combout => \adc_contr|Mux0~6_combout\);

-- Location: LCFF_X12_Y12_N5
\adc_contr|data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[10]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(10));

-- Location: LCFF_X12_Y12_N31
\adc_contr|data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[11]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(11));

-- Location: LCCOMB_X12_Y12_N20
\adc_contr|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~8_combout\ = (\adc_contr|bit_number\(1) & ((\adc_contr|data\(9)) # ((\adc_contr|bit_number\(0))))) # (!\adc_contr|bit_number\(1) & (((\adc_contr|data\(11) & !\adc_contr|bit_number\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(9),
	datab => \adc_contr|data\(11),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|bit_number\(0),
	combout => \adc_contr|Mux0~8_combout\);

-- Location: LCCOMB_X12_Y12_N10
\adc_contr|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~9_combout\ = (\adc_contr|bit_number\(0) & ((\adc_contr|Mux0~8_combout\ & ((\adc_contr|data\(8)))) # (!\adc_contr|Mux0~8_combout\ & (\adc_contr|data\(10))))) # (!\adc_contr|bit_number\(0) & (((\adc_contr|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|data\(10),
	datac => \adc_contr|Mux0~8_combout\,
	datad => \adc_contr|data\(8),
	combout => \adc_contr|Mux0~9_combout\);

-- Location: LCFF_X13_Y11_N1
\adc_contr|data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[13]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(13));

-- Location: LCFF_X12_Y12_N9
\adc_contr|data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[14]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(14));

-- Location: LCFF_X12_Y12_N27
\adc_contr|data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[15]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(15));

-- Location: LCCOMB_X12_Y12_N16
\adc_contr|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~10_combout\ = (\adc_contr|bit_number\(1) & (((\adc_contr|bit_number\(0))))) # (!\adc_contr|bit_number\(1) & ((\adc_contr|bit_number\(0) & ((\adc_contr|data\(14)))) # (!\adc_contr|bit_number\(0) & (\adc_contr|data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(15),
	datab => \adc_contr|data\(14),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|bit_number\(0),
	combout => \adc_contr|Mux0~10_combout\);

-- Location: LCFF_X13_Y11_N27
\adc_contr|data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[12]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(12));

-- Location: LCCOMB_X13_Y11_N4
\adc_contr|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~11_combout\ = (\adc_contr|Mux0~10_combout\ & ((\adc_contr|data\(12)) # ((!\adc_contr|bit_number\(1))))) # (!\adc_contr|Mux0~10_combout\ & (((\adc_contr|bit_number\(1) & \adc_contr|data\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Mux0~10_combout\,
	datab => \adc_contr|data\(12),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|data\(13),
	combout => \adc_contr|Mux0~11_combout\);

-- Location: LCCOMB_X12_Y13_N10
\adc_contr|Selector24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector24~5_combout\ = (\adc_contr|bit_number\(3) & ((\adc_contr|bit_number\(2) & (\adc_contr|Mux0~9_combout\)) # (!\adc_contr|bit_number\(2) & ((\adc_contr|Mux0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(3),
	datab => \adc_contr|Mux0~9_combout\,
	datac => \adc_contr|bit_number\(2),
	datad => \adc_contr|Mux0~11_combout\,
	combout => \adc_contr|Selector24~5_combout\);

-- Location: LCCOMB_X14_Y10_N10
\adc_contr|bit_number[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[0]~24_combout\ = (\adc_contr|sclk_reg~regout\ & (((!\adc_contr|LessThan0~8_combout\ & !\adc_contr|LessThan0~3_combout\)))) # (!\adc_contr|sclk_reg~regout\ & (((!\adc_contr|LessThan0~8_combout\ & !\adc_contr|LessThan0~3_combout\)) # 
-- (!\adc_contr|state.wait_after_reset_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|sclk_reg~regout\,
	datab => \adc_contr|state.wait_after_reset_state~regout\,
	datac => \adc_contr|LessThan0~8_combout\,
	datad => \adc_contr|LessThan0~3_combout\,
	combout => \adc_contr|bit_number[0]~24_combout\);

-- Location: LCFF_X1_Y6_N17
\clk_div|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_div|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div|counter\(1));

-- Location: LCCOMB_X14_Y13_N18
\adc_contr|data[18]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[18]~40_combout\ = (\adc_contr|bit_number\(0) & !\adc_contr|bit_number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datad => \adc_contr|bit_number\(1),
	combout => \adc_contr|data[18]~40_combout\);

-- Location: LCCOMB_X14_Y13_N0
\adc_contr|data[18]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[18]~42_combout\ = (\adc_contr|data\(18) & (((\adc_contr|data[18]~110_combout\ & !\adc_contr|always1~0_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(18),
	datab => \adc_contr|data[18]~110_combout\,
	datac => \adc_contr|always1~0_combout\,
	datad => \adc_contr|data[5]~41_combout\,
	combout => \adc_contr|data[18]~42_combout\);

-- Location: LCCOMB_X14_Y13_N6
\adc_contr|data[18]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[18]~45_combout\ = (\adc_contr|data[18]~42_combout\) # ((\adc_contr|bit_number\(2) & (\adc_contr|data[18]~40_combout\ & \adc_contr|data[18]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|data[18]~40_combout\,
	datac => \adc_contr|data[18]~44_combout\,
	datad => \adc_contr|data[18]~42_combout\,
	combout => \adc_contr|data[18]~45_combout\);

-- Location: LCCOMB_X14_Y13_N16
\adc_contr|data~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~51_combout\ = (!\adc_contr|bit_number\(1) & \adc_contr|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(1),
	datad => \adc_contr|Add2~2_combout\,
	combout => \adc_contr|data~51_combout\);

-- Location: LCCOMB_X14_Y13_N22
\adc_contr|data~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~52_combout\ = (\adc_contr|data~51_combout\ & ((\adc_contr|data~50_combout\ & ((\dout~combout\))) # (!\adc_contr|data~50_combout\ & (\adc_contr|data\(19))))) # (!\adc_contr|data~51_combout\ & (\adc_contr|data\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(19),
	datab => \dout~combout\,
	datac => \adc_contr|data~51_combout\,
	datad => \adc_contr|data~50_combout\,
	combout => \adc_contr|data~52_combout\);

-- Location: LCCOMB_X12_Y13_N8
\adc_contr|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector2~0_combout\ = (\adc_contr|state.mode_reg_write_state~regout\) # ((\adc_contr|data\(19) & ((\adc_contr|state.wait_after_reset_state~regout\) # (!\adc_contr|state.reset_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.wait_after_reset_state~regout\,
	datab => \adc_contr|state.reset_state~regout\,
	datac => \adc_contr|state.mode_reg_write_state~regout\,
	datad => \adc_contr|data\(19),
	combout => \adc_contr|Selector2~0_combout\);

-- Location: LCCOMB_X12_Y12_N14
\adc_contr|data~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~57_combout\ = (!\adc_contr|bit_number\(3) & \adc_contr|bit_number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(3),
	datac => \adc_contr|bit_number\(1),
	combout => \adc_contr|data~57_combout\);

-- Location: LCCOMB_X13_Y11_N12
\adc_contr|data~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~61_combout\ = (!\adc_contr|bit_number\(3) & (!\adc_contr|bit_number\(1) & !\adc_contr|bit_number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(3),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|bit_number\(2),
	combout => \adc_contr|data~61_combout\);

-- Location: LCCOMB_X12_Y11_N22
\adc_contr|data~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~62_combout\ = (\adc_contr|data~36_combout\ & (\adc_contr|data~61_combout\ & (\adc_contr|data~37_combout\ & \adc_contr|data~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data~36_combout\,
	datab => \adc_contr|data~61_combout\,
	datac => \adc_contr|data~37_combout\,
	datad => \adc_contr|data~35_combout\,
	combout => \adc_contr|data~62_combout\);

-- Location: LCCOMB_X12_Y11_N24
\adc_contr|data[22]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[22]~63_combout\ = ((!\adc_contr|data~62_combout\) # (!\adc_contr|bit_number\(0))) # (!\adc_contr|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~2_combout\,
	datab => \adc_contr|bit_number\(0),
	datad => \adc_contr|data~62_combout\,
	combout => \adc_contr|data[22]~63_combout\);

-- Location: LCCOMB_X12_Y11_N26
\adc_contr|data[22]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[22]~64_combout\ = (\adc_contr|data\(22) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[22]~63_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(22),
	datac => \adc_contr|data[22]~63_combout\,
	datad => \adc_contr|data[5]~41_combout\,
	combout => \adc_contr|data[22]~64_combout\);

-- Location: LCCOMB_X13_Y10_N4
\adc_contr|data[7]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[7]~65_combout\ = (\adc_contr|data~61_combout\ & (\adc_contr|data[5]~41_combout\ & \adc_contr|data[0]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data~61_combout\,
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[0]~111_combout\,
	combout => \adc_contr|data[7]~65_combout\);

-- Location: LCCOMB_X12_Y11_N6
\adc_contr|data[22]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[22]~66_combout\ = (\adc_contr|data[22]~64_combout\) # ((\adc_contr|Add2~2_combout\ & (\adc_contr|bit_number\(0) & \adc_contr|data[7]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~2_combout\,
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|data[7]~65_combout\,
	datad => \adc_contr|data[22]~64_combout\,
	combout => \adc_contr|data[22]~66_combout\);

-- Location: LCCOMB_X12_Y11_N4
\adc_contr|data[23]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[23]~67_combout\ = ((\adc_contr|bit_number\(0)) # (!\adc_contr|data~62_combout\)) # (!\adc_contr|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~2_combout\,
	datab => \adc_contr|bit_number\(0),
	datad => \adc_contr|data~62_combout\,
	combout => \adc_contr|data[23]~67_combout\);

-- Location: LCCOMB_X12_Y11_N14
\adc_contr|data[23]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[23]~68_combout\ = (\adc_contr|data\(23) & (((\adc_contr|data[23]~67_combout\ & !\adc_contr|always1~0_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(23),
	datab => \adc_contr|data[23]~67_combout\,
	datac => \adc_contr|always1~0_combout\,
	datad => \adc_contr|data[5]~41_combout\,
	combout => \adc_contr|data[23]~68_combout\);

-- Location: LCCOMB_X12_Y11_N20
\adc_contr|data[23]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[23]~69_combout\ = (\adc_contr|data[23]~68_combout\) # ((\adc_contr|Add2~2_combout\ & (!\adc_contr|bit_number\(0) & \adc_contr|data[7]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~2_combout\,
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|data[23]~68_combout\,
	datad => \adc_contr|data[7]~65_combout\,
	combout => \adc_contr|data[23]~69_combout\);

-- Location: LCCOMB_X13_Y11_N10
\adc_contr|data[14]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[14]~72_combout\ = (\adc_contr|bit_number\(0) & !\adc_contr|bit_number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(0),
	datad => \adc_contr|bit_number\(2),
	combout => \adc_contr|data[14]~72_combout\);

-- Location: LCFF_X13_Y12_N11
\adc_contr|state.communic_reg_mode_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|state~21_combout\,
	ena => \adc_contr|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|state.communic_reg_mode_state~regout\);

-- Location: LCCOMB_X12_Y10_N22
\adc_contr|data~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~77_combout\ = (\adc_contr|bit_number\(1) & !\adc_contr|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(1),
	datad => \adc_contr|Add2~2_combout\,
	combout => \adc_contr|data~77_combout\);

-- Location: LCCOMB_X12_Y10_N28
\adc_contr|data~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~78_combout\ = (\adc_contr|data~50_combout\ & ((\adc_contr|data~77_combout\ & ((\dout~combout\))) # (!\adc_contr|data~77_combout\ & (\adc_contr|data\(1))))) # (!\adc_contr|data~50_combout\ & (\adc_contr|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(1),
	datab => \dout~combout\,
	datac => \adc_contr|data~50_combout\,
	datad => \adc_contr|data~77_combout\,
	combout => \adc_contr|data~78_combout\);

-- Location: LCCOMB_X12_Y10_N30
\adc_contr|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector9~0_combout\ = (\adc_contr|state.mode_reg_write_state~regout\) # ((\adc_contr|data\(1) & ((\adc_contr|state.wait_after_reset_state~regout\) # (!\adc_contr|state.reset_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.reset_state~regout\,
	datab => \adc_contr|state.mode_reg_write_state~regout\,
	datac => \adc_contr|state.wait_after_reset_state~regout\,
	datad => \adc_contr|data\(1),
	combout => \adc_contr|Selector9~0_combout\);

-- Location: LCCOMB_X12_Y11_N0
\adc_contr|data~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~86_combout\ = (\adc_contr|data[0]~80_combout\ & ((\adc_contr|data~62_combout\ & ((\dout~combout\))) # (!\adc_contr|data~62_combout\ & (\adc_contr|data\(6))))) # (!\adc_contr|data[0]~80_combout\ & (\adc_contr|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(6),
	datab => \dout~combout\,
	datac => \adc_contr|data[0]~80_combout\,
	datad => \adc_contr|data~62_combout\,
	combout => \adc_contr|data~86_combout\);

-- Location: LCCOMB_X12_Y11_N30
\adc_contr|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector5~0_combout\ = (\adc_contr|state.enter_continious_read~regout\) # ((\adc_contr|data\(6) & ((\adc_contr|state.wait_after_reset_state~regout\) # (!\adc_contr|state.reset_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(6),
	datab => \adc_contr|state.reset_state~regout\,
	datac => \adc_contr|state.wait_after_reset_state~regout\,
	datad => \adc_contr|state.enter_continious_read~regout\,
	combout => \adc_contr|Selector5~0_combout\);

-- Location: LCCOMB_X12_Y11_N16
\adc_contr|data[7]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[7]~87_combout\ = (\adc_contr|Add2~2_combout\) # ((\adc_contr|bit_number\(0)) # (!\adc_contr|data~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~2_combout\,
	datab => \adc_contr|bit_number\(0),
	datad => \adc_contr|data~62_combout\,
	combout => \adc_contr|data[7]~87_combout\);

-- Location: LCCOMB_X12_Y11_N2
\adc_contr|data[7]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[7]~88_combout\ = (\adc_contr|data\(7) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[7]~87_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(7),
	datac => \adc_contr|data[7]~87_combout\,
	datad => \adc_contr|data[5]~41_combout\,
	combout => \adc_contr|data[7]~88_combout\);

-- Location: LCCOMB_X12_Y11_N18
\adc_contr|data[7]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[7]~89_combout\ = (\adc_contr|data[7]~88_combout\) # ((!\adc_contr|Add2~2_combout\ & (!\adc_contr|bit_number\(0) & \adc_contr|data[7]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~2_combout\,
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|data[7]~65_combout\,
	datad => \adc_contr|data[7]~88_combout\,
	combout => \adc_contr|data[7]~89_combout\);

-- Location: LCCOMB_X15_Y9_N24
\adc_contr|data~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~93_combout\ = (\adc_contr|bit_number\(3) & !\adc_contr|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_contr|bit_number\(3),
	datad => \adc_contr|Add2~2_combout\,
	combout => \adc_contr|data~93_combout\);

-- Location: LCCOMB_X12_Y9_N26
\adc_contr|data~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~94_combout\ = (\adc_contr|data~36_combout\ & (\adc_contr|data~35_combout\ & (\adc_contr|data~93_combout\ & \adc_contr|data~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data~36_combout\,
	datab => \adc_contr|data~35_combout\,
	datac => \adc_contr|data~93_combout\,
	datad => \adc_contr|data~37_combout\,
	combout => \adc_contr|data~94_combout\);

-- Location: LCCOMB_X12_Y12_N12
\adc_contr|data[10]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[10]~95_combout\ = (\adc_contr|data\(10) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[10]~115_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(10),
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[10]~115_combout\,
	combout => \adc_contr|data[10]~95_combout\);

-- Location: LCCOMB_X13_Y10_N24
\adc_contr|data[10]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[10]~96_combout\ = (\adc_contr|data~75_combout\ & (\adc_contr|bit_number\(3) & (\adc_contr|data[5]~41_combout\ & \adc_contr|data[0]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data~75_combout\,
	datab => \adc_contr|bit_number\(3),
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[0]~111_combout\,
	combout => \adc_contr|data[10]~96_combout\);

-- Location: LCCOMB_X13_Y12_N2
\adc_contr|data~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~97_combout\ = (\adc_contr|bit_number\(1) & (\adc_contr|bit_number\(2) & \adc_contr|data~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(1),
	datab => \adc_contr|bit_number\(2),
	datad => \adc_contr|data~94_combout\,
	combout => \adc_contr|data~97_combout\);

-- Location: LCCOMB_X13_Y12_N12
\adc_contr|data~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~98_combout\ = (\adc_contr|bit_number\(0) & (\adc_contr|data\(9))) # (!\adc_contr|bit_number\(0) & ((\adc_contr|data~97_combout\ & ((\dout~combout\))) # (!\adc_contr|data~97_combout\ & (\adc_contr|data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|data\(9),
	datac => \dout~combout\,
	datad => \adc_contr|data~97_combout\,
	combout => \adc_contr|data~98_combout\);

-- Location: LCCOMB_X13_Y12_N14
\adc_contr|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector3~0_combout\ = (\adc_contr|state.mode_reg_write_state~regout\) # ((\adc_contr|data\(9) & ((\adc_contr|state.wait_after_reset_state~regout\) # (!\adc_contr|state.reset_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.reset_state~regout\,
	datab => \adc_contr|state.wait_after_reset_state~regout\,
	datac => \adc_contr|state.mode_reg_write_state~regout\,
	datad => \adc_contr|data\(9),
	combout => \adc_contr|Selector3~0_combout\);

-- Location: LCCOMB_X12_Y12_N22
\adc_contr|data[11]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[11]~99_combout\ = (\adc_contr|bit_number\(0)) # (((\adc_contr|bit_number\(1)) # (!\adc_contr|data~94_combout\)) # (!\adc_contr|bit_number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|data~94_combout\,
	combout => \adc_contr|data[11]~99_combout\);

-- Location: LCCOMB_X12_Y12_N24
\adc_contr|data[11]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[11]~100_combout\ = (\adc_contr|data\(11) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[11]~99_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(11),
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[11]~99_combout\,
	combout => \adc_contr|data[11]~100_combout\);

-- Location: LCCOMB_X13_Y12_N0
\adc_contr|data~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~101_combout\ = (\adc_contr|bit_number\(0) & ((\adc_contr|data~97_combout\ & ((\dout~combout\))) # (!\adc_contr|data~97_combout\ & (\adc_contr|data\(8))))) # (!\adc_contr|bit_number\(0) & (\adc_contr|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|data\(8),
	datac => \dout~combout\,
	datad => \adc_contr|data~97_combout\,
	combout => \adc_contr|data~101_combout\);

-- Location: LCCOMB_X13_Y11_N20
\adc_contr|data[13]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[13]~102_combout\ = (\adc_contr|data\(13) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[13]~118_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(13),
	datab => \adc_contr|always1~0_combout\,
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[13]~118_combout\,
	combout => \adc_contr|data[13]~102_combout\);

-- Location: LCCOMB_X13_Y11_N2
\adc_contr|data[13]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[13]~103_combout\ = (\adc_contr|bit_number\(3) & (!\adc_contr|Add2~2_combout\ & (\adc_contr|data[5]~41_combout\ & \adc_contr|data[0]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(3),
	datab => \adc_contr|Add2~2_combout\,
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[0]~111_combout\,
	combout => \adc_contr|data[13]~103_combout\);

-- Location: LCCOMB_X13_Y11_N0
\adc_contr|data[13]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[13]~104_combout\ = (\adc_contr|data[13]~102_combout\) # ((\adc_contr|Equal1~2_combout\ & (\adc_contr|bit_number\(1) & \adc_contr|data[13]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Equal1~2_combout\,
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|data[13]~102_combout\,
	datad => \adc_contr|data[13]~103_combout\,
	combout => \adc_contr|data[13]~104_combout\);

-- Location: LCCOMB_X12_Y12_N18
\adc_contr|data[14]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[14]~105_combout\ = (\adc_contr|data\(14) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[14]~119_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(14),
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[14]~119_combout\,
	combout => \adc_contr|data[14]~105_combout\);

-- Location: LCCOMB_X12_Y12_N0
\adc_contr|data[15]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[15]~106_combout\ = (\adc_contr|data\(15) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[15]~121_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(15),
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[15]~121_combout\,
	combout => \adc_contr|data[15]~106_combout\);

-- Location: LCCOMB_X13_Y11_N16
\adc_contr|data[12]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[12]~107_combout\ = (!\adc_contr|bit_number\(2) & (\adc_contr|bit_number\(1) & \adc_contr|bit_number\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|bit_number\(0),
	combout => \adc_contr|data[12]~107_combout\);

-- Location: LCCOMB_X13_Y11_N18
\adc_contr|data[12]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[12]~108_combout\ = (\adc_contr|data[5]~41_combout\ & ((\adc_contr|always1~0_combout\) # ((\adc_contr|data[12]~107_combout\ & \adc_contr|data~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data[12]~107_combout\,
	datab => \adc_contr|data~94_combout\,
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|always1~0_combout\,
	combout => \adc_contr|data[12]~108_combout\);

-- Location: LCCOMB_X13_Y11_N26
\adc_contr|data[12]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[12]~109_combout\ = (\adc_contr|data[12]~107_combout\ & ((\adc_contr|data[13]~103_combout\) # ((!\adc_contr|data[12]~108_combout\ & \adc_contr|data\(12))))) # (!\adc_contr|data[12]~107_combout\ & (!\adc_contr|data[12]~108_combout\ & 
-- (\adc_contr|data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data[12]~107_combout\,
	datab => \adc_contr|data[12]~108_combout\,
	datac => \adc_contr|data\(12),
	datad => \adc_contr|data[13]~103_combout\,
	combout => \adc_contr|data[12]~109_combout\);

-- Location: LCCOMB_X1_Y6_N16
\clk_div|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_div|counter~1_combout\ = (\clk_div|counter\(1) & (\clk_div|counter\(2) & !\clk_div|counter\(0))) # (!\clk_div|counter\(1) & ((\clk_div|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(2),
	datac => \clk_div|counter\(1),
	datad => \clk_div|counter\(0),
	combout => \clk_div|counter~1_combout\);

-- Location: LCCOMB_X13_Y12_N10
\adc_contr|state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|state~21_combout\ = (\adc_contr|Equal1~4_combout\ & (\adc_contr|state.wait_after_reset_state~regout\ & \adc_contr|always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|Equal1~4_combout\,
	datac => \adc_contr|state.wait_after_reset_state~regout\,
	datad => \adc_contr|always1~1_combout\,
	combout => \adc_contr|state~21_combout\);

-- Location: LCCOMB_X14_Y13_N2
\adc_contr|data[18]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[18]~110_combout\ = (\adc_contr|bit_number\(1)) # (((!\adc_contr|data~39_combout\) # (!\adc_contr|bit_number\(0))) # (!\adc_contr|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(1),
	datab => \adc_contr|Add2~2_combout\,
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|data~39_combout\,
	combout => \adc_contr|data[18]~110_combout\);

-- Location: LCCOMB_X12_Y12_N2
\adc_contr|data[10]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[10]~115_combout\ = (((\adc_contr|bit_number\(1)) # (!\adc_contr|data~94_combout\)) # (!\adc_contr|bit_number\(2))) # (!\adc_contr|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|data~94_combout\,
	combout => \adc_contr|data[10]~115_combout\);

-- Location: LCCOMB_X12_Y12_N4
\adc_contr|data[10]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[10]~116_combout\ = (\adc_contr|data[10]~95_combout\) # ((\adc_contr|bit_number\(0) & (\adc_contr|bit_number\(2) & \adc_contr|data[10]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|data[10]~96_combout\,
	datad => \adc_contr|data[10]~95_combout\,
	combout => \adc_contr|data[10]~116_combout\);

-- Location: LCCOMB_X12_Y12_N30
\adc_contr|data[11]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[11]~117_combout\ = (\adc_contr|data[11]~100_combout\) # ((!\adc_contr|bit_number\(0) & (\adc_contr|bit_number\(2) & \adc_contr|data[10]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|data[10]~96_combout\,
	datad => \adc_contr|data[11]~100_combout\,
	combout => \adc_contr|data[11]~117_combout\);

-- Location: LCCOMB_X13_Y12_N22
\adc_contr|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector4~4_combout\ = ((\adc_contr|data\(8) & ((\adc_contr|state.wait_after_reset_state~regout\) # (!\adc_contr|state.reset_state~regout\)))) # (!\adc_contr|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.reset_state~regout\,
	datab => \adc_contr|data\(8),
	datac => \adc_contr|state.wait_after_reset_state~regout\,
	datad => \adc_contr|WideOr0~0_combout\,
	combout => \adc_contr|Selector4~4_combout\);

-- Location: LCCOMB_X13_Y11_N22
\adc_contr|data[13]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[13]~118_combout\ = (\adc_contr|bit_number\(2)) # (((\adc_contr|bit_number\(0)) # (!\adc_contr|data~94_combout\)) # (!\adc_contr|bit_number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|data~94_combout\,
	datad => \adc_contr|bit_number\(0),
	combout => \adc_contr|data[13]~118_combout\);

-- Location: LCCOMB_X12_Y12_N28
\adc_contr|data[14]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[14]~119_combout\ = ((\adc_contr|bit_number\(2)) # ((\adc_contr|bit_number\(1)) # (!\adc_contr|data~94_combout\))) # (!\adc_contr|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|data~94_combout\,
	combout => \adc_contr|data[14]~119_combout\);

-- Location: LCCOMB_X12_Y12_N8
\adc_contr|data[14]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[14]~120_combout\ = (\adc_contr|data[14]~105_combout\) # ((\adc_contr|bit_number\(0) & (!\adc_contr|bit_number\(2) & \adc_contr|data[10]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|data[10]~96_combout\,
	datad => \adc_contr|data[14]~105_combout\,
	combout => \adc_contr|data[14]~120_combout\);

-- Location: LCCOMB_X12_Y12_N6
\adc_contr|data[15]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[15]~121_combout\ = (\adc_contr|bit_number\(0)) # ((\adc_contr|bit_number\(2)) # ((\adc_contr|bit_number\(1)) # (!\adc_contr|data~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|data~94_combout\,
	combout => \adc_contr|data[15]~121_combout\);

-- Location: LCCOMB_X12_Y12_N26
\adc_contr|data[15]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[15]~122_combout\ = (\adc_contr|data[15]~106_combout\) # ((!\adc_contr|bit_number\(0) & (!\adc_contr|bit_number\(2) & \adc_contr|data[10]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|data[10]~96_combout\,
	datad => \adc_contr|data[15]~106_combout\,
	combout => \adc_contr|data[15]~122_combout\);

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

-- Location: LCCOMB_X1_Y6_N18
\clk_div|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_div|counter~0_combout\ = (!\clk_div|counter\(0) & ((\clk_div|counter\(2)) # (!\clk_div|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(1),
	datac => \clk_div|counter\(0),
	datad => \clk_div|counter\(2),
	combout => \clk_div|counter~0_combout\);

-- Location: LCFF_X1_Y6_N19
\clk_div|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_div|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div|counter\(0));

-- Location: LCCOMB_X1_Y6_N26
\clk_div|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_div|Add0~0_combout\ = \clk_div|counter\(2) $ (((\clk_div|counter\(1) & \clk_div|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(1),
	datac => \clk_div|counter\(2),
	datad => \clk_div|counter\(0),
	combout => \clk_div|Add0~0_combout\);

-- Location: LCFF_X1_Y6_N27
\clk_div|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_div|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div|counter\(2));

-- Location: LCCOMB_X1_Y6_N8
\clk_div|clk_div_inner~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_div|clk_div_inner~0_combout\ = \clk_div|clk_div_inner~regout\ $ (((\clk_div|counter\(1) & (!\clk_div|counter\(2) & !\clk_div|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(1),
	datab => \clk_div|counter\(2),
	datac => \clk_div|clk_div_inner~regout\,
	datad => \clk_div|counter\(0),
	combout => \clk_div|clk_div_inner~0_combout\);

-- Location: LCFF_X1_Y6_N9
\clk_div|clk_div_inner\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \clk_div|clk_div_inner~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div|clk_div_inner~regout\);

-- Location: CLKCTRL_G3
\clk_div|clk_div_inner~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div|clk_div_inner~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div|clk_div_inner~clkctrl_outclk\);

-- Location: PIN_160,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X14_Y10_N8
\adc_contr|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|state~16_combout\ = (\adc_contr|always1~2_combout\ & (((\reset~combout\ & \adc_contr|state.reset_state~regout\)) # (!\adc_contr|state.continious_read~regout\))) # (!\adc_contr|always1~2_combout\ & (\reset~combout\ & 
-- (\adc_contr|state.reset_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~2_combout\,
	datab => \reset~combout\,
	datac => \adc_contr|state.reset_state~regout\,
	datad => \adc_contr|state.continious_read~regout\,
	combout => \adc_contr|state~16_combout\);

-- Location: LCFF_X14_Y10_N9
\adc_contr|state.reset_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|state.reset_state~regout\);

-- Location: LCCOMB_X14_Y9_N14
\adc_contr|bit_count[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_count[5]~0_combout\ = !\adc_contr|state.reset_state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_contr|state.reset_state~regout\,
	combout => \adc_contr|bit_count[5]~0_combout\);

-- Location: LCCOMB_X13_Y10_N8
\adc_contr|data[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[5]~34_combout\ = (!\adc_contr|clk_sync~regout\ & (\reset~combout\ & \adc_contr|start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|clk_sync~regout\,
	datab => \reset~combout\,
	datad => \adc_contr|start~regout\,
	combout => \adc_contr|data[5]~34_combout\);

-- Location: LCFF_X14_Y9_N15
\adc_contr|bit_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_count[5]~0_combout\,
	ena => \adc_contr|data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_count\(5));

-- Location: LCCOMB_X13_Y10_N10
\adc_contr|bit_count[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_count[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \adc_contr|bit_count[3]~feeder_combout\);

-- Location: LCFF_X13_Y10_N11
\adc_contr|bit_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_count[3]~feeder_combout\,
	ena => \adc_contr|data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_count\(3));

-- Location: LCCOMB_X13_Y9_N6
\adc_contr|bit_number[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[0]~15_combout\ = \adc_contr|bit_number\(0) $ (VCC)
-- \adc_contr|bit_number[0]~16\ = CARRY(\adc_contr|bit_number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(0),
	datad => VCC,
	combout => \adc_contr|bit_number[0]~15_combout\,
	cout => \adc_contr|bit_number[0]~16\);

-- Location: LCCOMB_X14_Y10_N28
\adc_contr|clk_sync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|clk_sync~0_combout\ = (!\adc_contr|always1~2_combout\ & ((\adc_contr|clk_sync~regout\) # ((\reset~combout\ & \adc_contr|start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~2_combout\,
	datab => \reset~combout\,
	datac => \adc_contr|clk_sync~regout\,
	datad => \adc_contr|start~regout\,
	combout => \adc_contr|clk_sync~0_combout\);

-- Location: LCFF_X14_Y10_N29
\adc_contr|clk_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|clk_sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|clk_sync~regout\);

-- Location: LCCOMB_X13_Y9_N0
\adc_contr|bit_number[0]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[0]~44_combout\ = (\adc_contr|start~regout\ & (!\adc_contr|clk_sync~regout\ & ((!\adc_contr|Equal1~4_combout\) # (!\adc_contr|always1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~1_combout\,
	datab => \adc_contr|start~regout\,
	datac => \adc_contr|clk_sync~regout\,
	datad => \adc_contr|Equal1~4_combout\,
	combout => \adc_contr|bit_number[0]~44_combout\);

-- Location: LCCOMB_X14_Y10_N12
\adc_contr|bit_number[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[0]~23_combout\ = ((!\adc_contr|clk_sync~regout\ & !\adc_contr|start~regout\)) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \adc_contr|clk_sync~regout\,
	datad => \adc_contr|start~regout\,
	combout => \adc_contr|bit_number[0]~23_combout\);

-- Location: LCCOMB_X14_Y10_N16
\adc_contr|bit_number[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[0]~25_combout\ = (\adc_contr|always1~2_combout\) # ((!\adc_contr|bit_number[0]~23_combout\ & ((!\adc_contr|clk_sync~regout\) # (!\adc_contr|bit_number[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number[0]~24_combout\,
	datab => \adc_contr|clk_sync~regout\,
	datac => \adc_contr|always1~2_combout\,
	datad => \adc_contr|bit_number[0]~23_combout\,
	combout => \adc_contr|bit_number[0]~25_combout\);

-- Location: LCFF_X13_Y9_N7
\adc_contr|bit_number[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[0]~15_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(0));

-- Location: LCCOMB_X13_Y9_N8
\adc_contr|bit_number[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[1]~17_combout\ = (\adc_contr|bit_number\(1) & (!\adc_contr|bit_number[0]~16\)) # (!\adc_contr|bit_number\(1) & ((\adc_contr|bit_number[0]~16\) # (GND)))
-- \adc_contr|bit_number[1]~18\ = CARRY((!\adc_contr|bit_number[0]~16\) # (!\adc_contr|bit_number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(1),
	datad => VCC,
	cin => \adc_contr|bit_number[0]~16\,
	combout => \adc_contr|bit_number[1]~17_combout\,
	cout => \adc_contr|bit_number[1]~18\);

-- Location: LCFF_X13_Y9_N9
\adc_contr|bit_number[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[1]~17_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(1));

-- Location: LCCOMB_X13_Y9_N10
\adc_contr|bit_number[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[2]~19_combout\ = (\adc_contr|bit_number\(2) & (\adc_contr|bit_number[1]~18\ $ (GND))) # (!\adc_contr|bit_number\(2) & (!\adc_contr|bit_number[1]~18\ & VCC))
-- \adc_contr|bit_number[2]~20\ = CARRY((\adc_contr|bit_number\(2) & !\adc_contr|bit_number[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(2),
	datad => VCC,
	cin => \adc_contr|bit_number[1]~18\,
	combout => \adc_contr|bit_number[2]~19_combout\,
	cout => \adc_contr|bit_number[2]~20\);

-- Location: LCFF_X13_Y9_N11
\adc_contr|bit_number[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[2]~19_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(2));

-- Location: LCCOMB_X13_Y9_N12
\adc_contr|bit_number[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[3]~21_combout\ = (\adc_contr|bit_number\(3) & (!\adc_contr|bit_number[2]~20\)) # (!\adc_contr|bit_number\(3) & ((\adc_contr|bit_number[2]~20\) # (GND)))
-- \adc_contr|bit_number[3]~22\ = CARRY((!\adc_contr|bit_number[2]~20\) # (!\adc_contr|bit_number\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(3),
	datad => VCC,
	cin => \adc_contr|bit_number[2]~20\,
	combout => \adc_contr|bit_number[3]~21_combout\,
	cout => \adc_contr|bit_number[3]~22\);

-- Location: LCFF_X13_Y9_N13
\adc_contr|bit_number[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[3]~21_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(3));

-- Location: LCCOMB_X13_Y9_N14
\adc_contr|bit_number[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[4]~26_combout\ = (\adc_contr|bit_number\(4) & (\adc_contr|bit_number[3]~22\ $ (GND))) # (!\adc_contr|bit_number\(4) & (!\adc_contr|bit_number[3]~22\ & VCC))
-- \adc_contr|bit_number[4]~27\ = CARRY((\adc_contr|bit_number\(4) & !\adc_contr|bit_number[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(4),
	datad => VCC,
	cin => \adc_contr|bit_number[3]~22\,
	combout => \adc_contr|bit_number[4]~26_combout\,
	cout => \adc_contr|bit_number[4]~27\);

-- Location: LCFF_X13_Y9_N15
\adc_contr|bit_number[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[4]~26_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(4));

-- Location: LCCOMB_X13_Y10_N2
\adc_contr|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Equal1~3_combout\ = (\adc_contr|bit_count\(3) & (\adc_contr|bit_number\(3) & (\adc_contr|bit_count\(4) $ (!\adc_contr|bit_number\(4))))) # (!\adc_contr|bit_count\(3) & (!\adc_contr|bit_number\(3) & (\adc_contr|bit_count\(4) $ 
-- (!\adc_contr|bit_number\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_count\(3),
	datab => \adc_contr|bit_count\(4),
	datac => \adc_contr|bit_number\(3),
	datad => \adc_contr|bit_number\(4),
	combout => \adc_contr|Equal1~3_combout\);

-- Location: LCCOMB_X13_Y9_N18
\adc_contr|bit_number[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[6]~30_combout\ = (\adc_contr|bit_number\(6) & (\adc_contr|bit_number[5]~29\ $ (GND))) # (!\adc_contr|bit_number\(6) & (!\adc_contr|bit_number[5]~29\ & VCC))
-- \adc_contr|bit_number[6]~31\ = CARRY((\adc_contr|bit_number\(6) & !\adc_contr|bit_number[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(6),
	datad => VCC,
	cin => \adc_contr|bit_number[5]~29\,
	combout => \adc_contr|bit_number[6]~30_combout\,
	cout => \adc_contr|bit_number[6]~31\);

-- Location: LCFF_X13_Y9_N19
\adc_contr|bit_number[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[6]~30_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(6));

-- Location: LCCOMB_X13_Y9_N20
\adc_contr|bit_number[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[7]~32_combout\ = (\adc_contr|bit_number\(7) & (!\adc_contr|bit_number[6]~31\)) # (!\adc_contr|bit_number\(7) & ((\adc_contr|bit_number[6]~31\) # (GND)))
-- \adc_contr|bit_number[7]~33\ = CARRY((!\adc_contr|bit_number[6]~31\) # (!\adc_contr|bit_number\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(7),
	datad => VCC,
	cin => \adc_contr|bit_number[6]~31\,
	combout => \adc_contr|bit_number[7]~32_combout\,
	cout => \adc_contr|bit_number[7]~33\);

-- Location: LCCOMB_X13_Y9_N22
\adc_contr|bit_number[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[8]~34_combout\ = (\adc_contr|bit_number\(8) & (\adc_contr|bit_number[7]~33\ $ (GND))) # (!\adc_contr|bit_number\(8) & (!\adc_contr|bit_number[7]~33\ & VCC))
-- \adc_contr|bit_number[8]~35\ = CARRY((\adc_contr|bit_number\(8) & !\adc_contr|bit_number[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(8),
	datad => VCC,
	cin => \adc_contr|bit_number[7]~33\,
	combout => \adc_contr|bit_number[8]~34_combout\,
	cout => \adc_contr|bit_number[8]~35\);

-- Location: LCFF_X13_Y9_N23
\adc_contr|bit_number[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[8]~34_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(8));

-- Location: LCCOMB_X13_Y9_N24
\adc_contr|bit_number[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[9]~36_combout\ = (\adc_contr|bit_number\(9) & (!\adc_contr|bit_number[8]~35\)) # (!\adc_contr|bit_number\(9) & ((\adc_contr|bit_number[8]~35\) # (GND)))
-- \adc_contr|bit_number[9]~37\ = CARRY((!\adc_contr|bit_number[8]~35\) # (!\adc_contr|bit_number\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(9),
	datad => VCC,
	cin => \adc_contr|bit_number[8]~35\,
	combout => \adc_contr|bit_number[9]~36_combout\,
	cout => \adc_contr|bit_number[9]~37\);

-- Location: LCCOMB_X13_Y9_N26
\adc_contr|bit_number[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[10]~38_combout\ = (\adc_contr|bit_number\(10) & (\adc_contr|bit_number[9]~37\ $ (GND))) # (!\adc_contr|bit_number\(10) & (!\adc_contr|bit_number[9]~37\ & VCC))
-- \adc_contr|bit_number[10]~39\ = CARRY((\adc_contr|bit_number\(10) & !\adc_contr|bit_number[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(10),
	datad => VCC,
	cin => \adc_contr|bit_number[9]~37\,
	combout => \adc_contr|bit_number[10]~38_combout\,
	cout => \adc_contr|bit_number[10]~39\);

-- Location: LCFF_X13_Y9_N27
\adc_contr|bit_number[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[10]~38_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(10));

-- Location: LCCOMB_X13_Y9_N28
\adc_contr|bit_number[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[11]~40_combout\ = (\adc_contr|bit_number\(11) & (!\adc_contr|bit_number[10]~39\)) # (!\adc_contr|bit_number\(11) & ((\adc_contr|bit_number[10]~39\) # (GND)))
-- \adc_contr|bit_number[11]~41\ = CARRY((!\adc_contr|bit_number[10]~39\) # (!\adc_contr|bit_number\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(11),
	datad => VCC,
	cin => \adc_contr|bit_number[10]~39\,
	combout => \adc_contr|bit_number[11]~40_combout\,
	cout => \adc_contr|bit_number[11]~41\);

-- Location: LCFF_X13_Y9_N29
\adc_contr|bit_number[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[11]~40_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(11));

-- Location: LCCOMB_X13_Y12_N4
\adc_contr|state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|state~14_combout\ = (!\adc_contr|state.reset_state~regout\ & (\adc_contr|Equal1~4_combout\ & \adc_contr|always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.reset_state~regout\,
	datac => \adc_contr|Equal1~4_combout\,
	datad => \adc_contr|always1~1_combout\,
	combout => \adc_contr|state~14_combout\);

-- Location: LCCOMB_X13_Y12_N24
\adc_contr|state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|state~15_combout\ = ((\adc_contr|always1~1_combout\ & \adc_contr|Equal1~4_combout\)) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \adc_contr|always1~1_combout\,
	datac => \adc_contr|Equal1~4_combout\,
	combout => \adc_contr|state~15_combout\);

-- Location: LCFF_X13_Y12_N5
\adc_contr|state.wait_after_reset_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|state~14_combout\,
	ena => \adc_contr|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|state.wait_after_reset_state~regout\);

-- Location: LCFF_X14_Y9_N25
\adc_contr|bit_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	sdata => \adc_contr|state.wait_after_reset_state~regout\,
	sload => VCC,
	ena => \adc_contr|data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_count\(12));

-- Location: LCFF_X13_Y9_N25
\adc_contr|bit_number[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[9]~36_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(9));

-- Location: LCCOMB_X14_Y9_N20
\adc_contr|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan0~2_combout\ = \adc_contr|bit_count\(12) $ (\adc_contr|bit_number\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_contr|bit_count\(12),
	datad => \adc_contr|bit_number\(9),
	combout => \adc_contr|LessThan0~2_combout\);

-- Location: LCFF_X13_Y9_N21
\adc_contr|bit_number[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[7]~32_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(7));

-- Location: LCCOMB_X13_Y9_N30
\adc_contr|bit_number[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|bit_number[12]~42_combout\ = \adc_contr|bit_number[11]~41\ $ (!\adc_contr|bit_number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_contr|bit_number\(12),
	cin => \adc_contr|bit_number[11]~41\,
	combout => \adc_contr|bit_number[12]~42_combout\);

-- Location: LCFF_X13_Y9_N31
\adc_contr|bit_number[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|bit_number[12]~42_combout\,
	sclr => \adc_contr|bit_number[0]~44_combout\,
	ena => \adc_contr|bit_number[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_number\(12));

-- Location: LCCOMB_X14_Y9_N22
\adc_contr|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan0~1_combout\ = (\adc_contr|bit_count\(12) & (\adc_contr|bit_number\(8) & (\adc_contr|bit_number\(7) & \adc_contr|bit_number\(12)))) # (!\adc_contr|bit_count\(12) & (!\adc_contr|bit_number\(8) & (!\adc_contr|bit_number\(7) & 
-- !\adc_contr|bit_number\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_count\(12),
	datab => \adc_contr|bit_number\(8),
	datac => \adc_contr|bit_number\(7),
	datad => \adc_contr|bit_number\(12),
	combout => \adc_contr|LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y9_N6
\adc_contr|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Equal1~1_combout\ = (!\adc_contr|Equal1~0_combout\ & (!\adc_contr|bit_number\(11) & (!\adc_contr|LessThan0~2_combout\ & \adc_contr|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Equal1~0_combout\,
	datab => \adc_contr|bit_number\(11),
	datac => \adc_contr|LessThan0~2_combout\,
	datad => \adc_contr|LessThan0~1_combout\,
	combout => \adc_contr|Equal1~1_combout\);

-- Location: LCCOMB_X13_Y10_N12
\adc_contr|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Equal1~4_combout\ = (\adc_contr|Equal1~2_combout\ & (\adc_contr|Equal1~3_combout\ & (!\adc_contr|bit_number\(1) & \adc_contr|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Equal1~2_combout\,
	datab => \adc_contr|Equal1~3_combout\,
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|Equal1~1_combout\,
	combout => \adc_contr|Equal1~4_combout\);

-- Location: LCCOMB_X13_Y12_N8
\adc_contr|state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|state~19_combout\ = (\adc_contr|state.communic_reg_mode_state~regout\ & (\adc_contr|Equal1~4_combout\ & \adc_contr|always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.communic_reg_mode_state~regout\,
	datac => \adc_contr|Equal1~4_combout\,
	datad => \adc_contr|always1~1_combout\,
	combout => \adc_contr|state~19_combout\);

-- Location: LCFF_X13_Y12_N9
\adc_contr|state.mode_reg_write_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|state~19_combout\,
	ena => \adc_contr|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|state.mode_reg_write_state~regout\);

-- Location: LCCOMB_X13_Y12_N28
\adc_contr|state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|state~22_combout\ = (\adc_contr|Equal1~4_combout\ & (\adc_contr|state.mode_reg_write_state~regout\ & \adc_contr|always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|Equal1~4_combout\,
	datac => \adc_contr|state.mode_reg_write_state~regout\,
	datad => \adc_contr|always1~1_combout\,
	combout => \adc_contr|state~22_combout\);

-- Location: LCFF_X13_Y12_N29
\adc_contr|state.communic_reg_config_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|state~22_combout\,
	ena => \adc_contr|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|state.communic_reg_config_state~regout\);

-- Location: LCCOMB_X13_Y12_N26
\adc_contr|state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|state~20_combout\ = (\adc_contr|state.communic_reg_config_state~regout\ & (\adc_contr|Equal1~4_combout\ & \adc_contr|always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|state.communic_reg_config_state~regout\,
	datac => \adc_contr|Equal1~4_combout\,
	datad => \adc_contr|always1~1_combout\,
	combout => \adc_contr|state~20_combout\);

-- Location: LCFF_X13_Y12_N27
\adc_contr|state.config_reg_write_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|state~20_combout\,
	ena => \adc_contr|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|state.config_reg_write_state~regout\);

-- Location: LCCOMB_X14_Y9_N24
\adc_contr|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|WideOr0~combout\ = (\adc_contr|state.continious_read~regout\) # ((\adc_contr|state.mode_reg_write_state~regout\) # (\adc_contr|state.config_reg_write_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.continious_read~regout\,
	datab => \adc_contr|state.mode_reg_write_state~regout\,
	datad => \adc_contr|state.config_reg_write_state~regout\,
	combout => \adc_contr|WideOr0~combout\);

-- Location: LCFF_X13_Y10_N9
\adc_contr|bit_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	sdata => \adc_contr|WideOr0~combout\,
	sload => VCC,
	ena => \adc_contr|data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|bit_count\(4));

-- Location: LCCOMB_X14_Y9_N12
\adc_contr|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|always1~1_combout\ = (\adc_contr|bit_count\(12)) # ((\adc_contr|bit_count\(5)) # ((\adc_contr|bit_count\(3)) # (\adc_contr|bit_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_count\(12),
	datab => \adc_contr|bit_count\(5),
	datac => \adc_contr|bit_count\(3),
	datad => \adc_contr|bit_count\(4),
	combout => \adc_contr|always1~1_combout\);

-- Location: LCCOMB_X14_Y10_N20
\adc_contr|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|always1~2_combout\ = (\adc_contr|always1~1_combout\ & \adc_contr|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_contr|always1~1_combout\,
	datad => \adc_contr|Equal1~4_combout\,
	combout => \adc_contr|always1~2_combout\);

-- Location: LCCOMB_X14_Y10_N30
\adc_contr|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|state~17_combout\ = (\adc_contr|state.enter_continious_read~regout\ & ((\adc_contr|always1~2_combout\) # ((\reset~combout\ & \adc_contr|state.continious_read~regout\)))) # (!\adc_contr|state.enter_continious_read~regout\ & (\reset~combout\ & 
-- (\adc_contr|state.continious_read~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.enter_continious_read~regout\,
	datab => \reset~combout\,
	datac => \adc_contr|state.continious_read~regout\,
	datad => \adc_contr|always1~2_combout\,
	combout => \adc_contr|state~17_combout\);

-- Location: LCFF_X14_Y10_N31
\adc_contr|state.continious_read\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|state.continious_read~regout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dout~I\ : cycloneii_io
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
	padio => ww_dout,
	combout => \dout~combout\);

-- Location: LCCOMB_X13_Y10_N30
\adc_contr|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|counter~0_combout\ = (\adc_contr|counter~regout\) # ((!\adc_contr|start~regout\ & ((!\adc_contr|state.continious_read~regout\) # (!\dout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|start~regout\,
	datab => \dout~combout\,
	datac => \adc_contr|counter~regout\,
	datad => \adc_contr|state.continious_read~regout\,
	combout => \adc_contr|counter~0_combout\);

-- Location: LCFF_X13_Y10_N31
\adc_contr|counter\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|ALT_INV_clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|counter~regout\);

-- Location: LCCOMB_X14_Y10_N24
\adc_contr|start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|start~0_combout\ = (\adc_contr|counter~regout\ & (!\adc_contr|start~regout\ & ((!\adc_contr|state.continious_read~regout\) # (!\dout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~combout\,
	datab => \adc_contr|state.continious_read~regout\,
	datac => \adc_contr|counter~regout\,
	datad => \adc_contr|start~regout\,
	combout => \adc_contr|start~0_combout\);

-- Location: LCCOMB_X13_Y10_N28
\adc_contr|start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|start~1_combout\ = (\adc_contr|start~0_combout\) # ((\adc_contr|start~regout\ & !\adc_contr|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|start~0_combout\,
	datac => \adc_contr|start~regout\,
	datad => \adc_contr|Equal1~4_combout\,
	combout => \adc_contr|start~1_combout\);

-- Location: LCFF_X13_Y10_N29
\adc_contr|start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|ALT_INV_clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|start~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|start~regout\);

-- Location: LCCOMB_X13_Y9_N4
\adc_contr|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan0~4_combout\ = (!\adc_contr|bit_number\(5) & (!\adc_contr|bit_number\(6) & (!\adc_contr|bit_number\(10) & !\adc_contr|bit_number\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(5),
	datab => \adc_contr|bit_number\(6),
	datac => \adc_contr|bit_number\(10),
	datad => \adc_contr|bit_number\(11),
	combout => \adc_contr|LessThan0~4_combout\);

-- Location: LCCOMB_X14_Y9_N4
\adc_contr|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan0~5_combout\ = (!\adc_contr|LessThan0~2_combout\ & (\adc_contr|bit_count\(5) & (\adc_contr|LessThan0~4_combout\ & \adc_contr|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|LessThan0~2_combout\,
	datab => \adc_contr|bit_count\(5),
	datac => \adc_contr|LessThan0~4_combout\,
	datad => \adc_contr|LessThan0~1_combout\,
	combout => \adc_contr|LessThan0~5_combout\);

-- Location: LCCOMB_X14_Y9_N26
\adc_contr|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan0~6_combout\ = (\adc_contr|bit_count\(12) & (((!\adc_contr|bit_number\(8)) # (!\adc_contr|bit_number\(7))) # (!\adc_contr|bit_number\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_count\(12),
	datab => \adc_contr|bit_number\(9),
	datac => \adc_contr|bit_number\(7),
	datad => \adc_contr|bit_number\(8),
	combout => \adc_contr|LessThan0~6_combout\);

-- Location: LCCOMB_X14_Y9_N28
\adc_contr|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan0~7_combout\ = (!\adc_contr|bit_number\(11) & (!\adc_contr|bit_number\(10) & \adc_contr|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(11),
	datac => \adc_contr|bit_number\(10),
	datad => \adc_contr|LessThan0~6_combout\,
	combout => \adc_contr|LessThan0~7_combout\);

-- Location: LCCOMB_X14_Y9_N30
\adc_contr|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan0~8_combout\ = (\adc_contr|LessThan0~5_combout\) # ((\adc_contr|LessThan0~7_combout\) # ((\adc_contr|bit_count\(12) & !\adc_contr|bit_number\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_count\(12),
	datab => \adc_contr|bit_number\(12),
	datac => \adc_contr|LessThan0~5_combout\,
	datad => \adc_contr|LessThan0~7_combout\,
	combout => \adc_contr|LessThan0~8_combout\);

-- Location: LCCOMB_X13_Y10_N16
\adc_contr|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan0~0_combout\ = (\adc_contr|bit_count\(4) & (((\adc_contr|bit_count\(3) & !\adc_contr|bit_number\(3))) # (!\adc_contr|bit_number\(4)))) # (!\adc_contr|bit_count\(4) & (\adc_contr|bit_count\(3) & (!\adc_contr|bit_number\(3) & 
-- !\adc_contr|bit_number\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_count\(3),
	datab => \adc_contr|bit_count\(4),
	datac => \adc_contr|bit_number\(3),
	datad => \adc_contr|bit_number\(4),
	combout => \adc_contr|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y10_N26
\adc_contr|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan0~3_combout\ = (\adc_contr|LessThan0~0_combout\ & \adc_contr|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|LessThan0~0_combout\,
	datad => \adc_contr|Equal1~1_combout\,
	combout => \adc_contr|LessThan0~3_combout\);

-- Location: LCCOMB_X14_Y10_N6
\adc_contr|sclk_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|sclk_reg~3_combout\ = (\adc_contr|clk_sync~regout\ & (((!\adc_contr|LessThan0~8_combout\ & !\adc_contr|LessThan0~3_combout\)))) # (!\adc_contr|clk_sync~regout\ & (!\adc_contr|start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|clk_sync~regout\,
	datab => \adc_contr|start~regout\,
	datac => \adc_contr|LessThan0~8_combout\,
	datad => \adc_contr|LessThan0~3_combout\,
	combout => \adc_contr|sclk_reg~3_combout\);

-- Location: LCCOMB_X12_Y10_N6
\adc_contr|sclk_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|sclk_reg~2_combout\ = (\reset~combout\ & (\adc_contr|sclk_reg~regout\ $ (((!\adc_contr|state.wait_after_reset_state~regout\ & !\adc_contr|sclk_reg~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.wait_after_reset_state~regout\,
	datab => \reset~combout\,
	datac => \adc_contr|sclk_reg~regout\,
	datad => \adc_contr|sclk_reg~3_combout\,
	combout => \adc_contr|sclk_reg~2_combout\);

-- Location: LCFF_X12_Y10_N7
\adc_contr|sclk_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|sclk_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|sclk_reg~regout\);

-- Location: LCCOMB_X13_Y10_N26
\adc_contr|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|always1~0_combout\ = (!\adc_contr|clk_sync~regout\ & \adc_contr|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_contr|clk_sync~regout\,
	datad => \adc_contr|start~regout\,
	combout => \adc_contr|always1~0_combout\);

-- Location: LCCOMB_X14_Y10_N18
\adc_contr|cs_hold~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|cs_hold~0_combout\ = (\adc_contr|cs_hold~regout\) # ((\adc_contr|state.enter_continious_read~regout\ & (\adc_contr|always1~0_combout\ & \reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.enter_continious_read~regout\,
	datab => \adc_contr|always1~0_combout\,
	datac => \reset~combout\,
	datad => \adc_contr|cs_hold~regout\,
	combout => \adc_contr|cs_hold~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\adc_contr|cs_hold~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|cs_hold~1_combout\ = (\adc_contr|cs_hold~0_combout\) # ((!\adc_contr|sclk_reg~3_combout\ & (\adc_contr|state.continious_read~regout\ & \reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|sclk_reg~3_combout\,
	datab => \adc_contr|state.continious_read~regout\,
	datac => \reset~combout\,
	datad => \adc_contr|cs_hold~0_combout\,
	combout => \adc_contr|cs_hold~1_combout\);

-- Location: LCFF_X14_Y10_N23
\adc_contr|cs_hold\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|cs_hold~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|cs_hold~regout\);

-- Location: LCCOMB_X14_Y10_N2
\adc_contr|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|delay~0_combout\ = ((\adc_contr|delay~regout\ & ((\adc_contr|state.reset_state~regout\) # (!\adc_contr|always1~0_combout\)))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|delay~regout\,
	datab => \reset~combout\,
	datac => \adc_contr|state.reset_state~regout\,
	datad => \adc_contr|always1~0_combout\,
	combout => \adc_contr|delay~0_combout\);

-- Location: LCCOMB_X14_Y10_N4
\adc_contr|delay~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|delay~1_combout\ = (\adc_contr|always1~2_combout\ & (((!\adc_contr|state.wait_after_reset_state~regout\ & \adc_contr|delay~0_combout\)) # (!\adc_contr|state.reset_state~regout\))) # (!\adc_contr|always1~2_combout\ & 
-- (((\adc_contr|delay~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~2_combout\,
	datab => \adc_contr|state.wait_after_reset_state~regout\,
	datac => \adc_contr|state.reset_state~regout\,
	datad => \adc_contr|delay~0_combout\,
	combout => \adc_contr|delay~1_combout\);

-- Location: LCFF_X14_Y10_N5
\adc_contr|delay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|delay~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|delay~regout\);

-- Location: LCCOMB_X15_Y10_N20
\adc_contr|cs~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|cs~0_combout\ = (!\adc_contr|cs_hold~regout\ & ((\adc_contr|delay~regout\) # (!\adc_contr|start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|start~regout\,
	datab => \adc_contr|cs_hold~regout\,
	datad => \adc_contr|delay~regout\,
	combout => \adc_contr|cs~0_combout\);

-- Location: LCCOMB_X12_Y9_N0
\adc_contr|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~1_cout\ = CARRY(!\adc_contr|bit_number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(3),
	datad => VCC,
	cout => \adc_contr|Add2~1_cout\);

-- Location: LCCOMB_X12_Y9_N2
\adc_contr|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~2_combout\ = (\adc_contr|bit_number\(4) & (!\adc_contr|Add2~1_cout\)) # (!\adc_contr|bit_number\(4) & (\adc_contr|Add2~1_cout\ & VCC))
-- \adc_contr|Add2~3\ = CARRY((\adc_contr|bit_number\(4) & !\adc_contr|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(4),
	datad => VCC,
	cin => \adc_contr|Add2~1_cout\,
	combout => \adc_contr|Add2~2_combout\,
	cout => \adc_contr|Add2~3\);

-- Location: LCCOMB_X15_Y9_N0
\adc_contr|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~1_cout\ = CARRY(!\adc_contr|bit_number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(3),
	datad => VCC,
	cout => \adc_contr|Add1~1_cout\);

-- Location: LCCOMB_X15_Y9_N2
\adc_contr|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~2_combout\ = (\adc_contr|bit_number\(4) & ((\adc_contr|Add1~1_cout\) # (GND))) # (!\adc_contr|bit_number\(4) & (!\adc_contr|Add1~1_cout\))
-- \adc_contr|Add1~3\ = CARRY((\adc_contr|bit_number\(4)) # (!\adc_contr|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(4),
	datad => VCC,
	cin => \adc_contr|Add1~1_cout\,
	combout => \adc_contr|Add1~2_combout\,
	cout => \adc_contr|Add1~3\);

-- Location: LCCOMB_X12_Y13_N30
\adc_contr|Selector24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector24~7_combout\ = (\adc_contr|state.config_reg_write_state~regout\ & (!\adc_contr|Add2~2_combout\)) # (!\adc_contr|state.config_reg_write_state~regout\ & ((\adc_contr|state.mode_reg_write_state~regout\ & (!\adc_contr|Add2~2_combout\)) # 
-- (!\adc_contr|state.mode_reg_write_state~regout\ & ((!\adc_contr|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.config_reg_write_state~regout\,
	datab => \adc_contr|Add2~2_combout\,
	datac => \adc_contr|state.mode_reg_write_state~regout\,
	datad => \adc_contr|Add1~2_combout\,
	combout => \adc_contr|Selector24~7_combout\);

-- Location: LCCOMB_X14_Y9_N2
\adc_contr|always1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|always1~3_combout\ = (\adc_contr|clk_sync~regout\ & ((\adc_contr|LessThan0~8_combout\) # ((\adc_contr|Equal1~1_combout\ & \adc_contr|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Equal1~1_combout\,
	datab => \adc_contr|clk_sync~regout\,
	datac => \adc_contr|LessThan0~0_combout\,
	datad => \adc_contr|LessThan0~8_combout\,
	combout => \adc_contr|always1~3_combout\);

-- Location: LCCOMB_X12_Y9_N4
\adc_contr|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~4_combout\ = (\adc_contr|bit_number\(5) & (!\adc_contr|Add2~3\ & VCC)) # (!\adc_contr|bit_number\(5) & (\adc_contr|Add2~3\ $ (GND)))
-- \adc_contr|Add2~5\ = CARRY((!\adc_contr|bit_number\(5) & !\adc_contr|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(5),
	datad => VCC,
	cin => \adc_contr|Add2~3\,
	combout => \adc_contr|Add2~4_combout\,
	cout => \adc_contr|Add2~5\);

-- Location: LCCOMB_X12_Y9_N6
\adc_contr|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~6_combout\ = (\adc_contr|bit_number\(6) & ((\adc_contr|Add2~5\) # (GND))) # (!\adc_contr|bit_number\(6) & (!\adc_contr|Add2~5\))
-- \adc_contr|Add2~7\ = CARRY((\adc_contr|bit_number\(6)) # (!\adc_contr|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(6),
	datad => VCC,
	cin => \adc_contr|Add2~5\,
	combout => \adc_contr|Add2~6_combout\,
	cout => \adc_contr|Add2~7\);

-- Location: LCCOMB_X12_Y9_N22
\adc_contr|data~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~35_combout\ = (\adc_contr|sclk_reg~regout\ & (\adc_contr|state.continious_read~regout\ & (!\adc_contr|Add2~4_combout\ & !\adc_contr|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|sclk_reg~regout\,
	datab => \adc_contr|state.continious_read~regout\,
	datac => \adc_contr|Add2~4_combout\,
	datad => \adc_contr|Add2~6_combout\,
	combout => \adc_contr|data~35_combout\);

-- Location: LCCOMB_X12_Y9_N8
\adc_contr|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~8_combout\ = (\adc_contr|bit_number\(7) & (!\adc_contr|Add2~7\ & VCC)) # (!\adc_contr|bit_number\(7) & (\adc_contr|Add2~7\ $ (GND)))
-- \adc_contr|Add2~9\ = CARRY((!\adc_contr|bit_number\(7) & !\adc_contr|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(7),
	datad => VCC,
	cin => \adc_contr|Add2~7\,
	combout => \adc_contr|Add2~8_combout\,
	cout => \adc_contr|Add2~9\);

-- Location: LCCOMB_X12_Y9_N12
\adc_contr|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~12_combout\ = (\adc_contr|bit_number\(9) & (!\adc_contr|Add2~11\ & VCC)) # (!\adc_contr|bit_number\(9) & (\adc_contr|Add2~11\ $ (GND)))
-- \adc_contr|Add2~13\ = CARRY((!\adc_contr|bit_number\(9) & !\adc_contr|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(9),
	datad => VCC,
	cin => \adc_contr|Add2~11\,
	combout => \adc_contr|Add2~12_combout\,
	cout => \adc_contr|Add2~13\);

-- Location: LCCOMB_X12_Y9_N14
\adc_contr|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~14_combout\ = (\adc_contr|bit_number\(10) & ((\adc_contr|Add2~13\) # (GND))) # (!\adc_contr|bit_number\(10) & (!\adc_contr|Add2~13\))
-- \adc_contr|Add2~15\ = CARRY((\adc_contr|bit_number\(10)) # (!\adc_contr|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(10),
	datad => VCC,
	cin => \adc_contr|Add2~13\,
	combout => \adc_contr|Add2~14_combout\,
	cout => \adc_contr|Add2~15\);

-- Location: LCCOMB_X12_Y9_N28
\adc_contr|data~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~36_combout\ = (!\adc_contr|Add2~10_combout\ & (!\adc_contr|Add2~8_combout\ & (!\adc_contr|Add2~14_combout\ & !\adc_contr|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~10_combout\,
	datab => \adc_contr|Add2~8_combout\,
	datac => \adc_contr|Add2~14_combout\,
	datad => \adc_contr|Add2~12_combout\,
	combout => \adc_contr|data~36_combout\);

-- Location: LCCOMB_X12_Y9_N18
\adc_contr|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~18_combout\ = (\adc_contr|bit_number\(12) & ((\adc_contr|Add2~17\) # (GND))) # (!\adc_contr|bit_number\(12) & (!\adc_contr|Add2~17\))
-- \adc_contr|Add2~19\ = CARRY((\adc_contr|bit_number\(12)) # (!\adc_contr|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(12),
	datad => VCC,
	cin => \adc_contr|Add2~17\,
	combout => \adc_contr|Add2~18_combout\,
	cout => \adc_contr|Add2~19\);

-- Location: LCCOMB_X12_Y9_N20
\adc_contr|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add2~20_combout\ = !\adc_contr|Add2~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \adc_contr|Add2~19\,
	combout => \adc_contr|Add2~20_combout\);

-- Location: LCCOMB_X12_Y9_N30
\adc_contr|data~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~37_combout\ = (!\adc_contr|Add2~16_combout\ & (\adc_contr|Add2~20_combout\ & !\adc_contr|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~16_combout\,
	datac => \adc_contr|Add2~20_combout\,
	datad => \adc_contr|Add2~18_combout\,
	combout => \adc_contr|data~37_combout\);

-- Location: LCCOMB_X13_Y10_N18
\adc_contr|data~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~43_combout\ = (\adc_contr|data~35_combout\ & (\adc_contr|data~36_combout\ & \adc_contr|data~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|data~35_combout\,
	datac => \adc_contr|data~36_combout\,
	datad => \adc_contr|data~37_combout\,
	combout => \adc_contr|data~43_combout\);

-- Location: LCCOMB_X13_Y10_N14
\adc_contr|data~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~50_combout\ = (!\adc_contr|bit_number\(0) & (!\adc_contr|bit_number\(3) & (\adc_contr|bit_number\(2) & \adc_contr|data~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(3),
	datac => \adc_contr|bit_number\(2),
	datad => \adc_contr|data~43_combout\,
	combout => \adc_contr|data~50_combout\);

-- Location: LCCOMB_X12_Y10_N12
\adc_contr|data~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~79_combout\ = (\adc_contr|data~75_combout\ & ((\adc_contr|data~50_combout\ & ((\dout~combout\))) # (!\adc_contr|data~50_combout\ & (\adc_contr|data\(3))))) # (!\adc_contr|data~75_combout\ & (\adc_contr|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data~75_combout\,
	datab => \adc_contr|data\(3),
	datac => \adc_contr|data~50_combout\,
	datad => \dout~combout\,
	combout => \adc_contr|data~79_combout\);

-- Location: LCCOMB_X12_Y10_N4
\adc_contr|data[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[3]~4_combout\ = (\adc_contr|always1~3_combout\ & ((\adc_contr|data~79_combout\))) # (!\adc_contr|always1~3_combout\ & (\adc_contr|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|always1~3_combout\,
	datac => \adc_contr|data\(3),
	datad => \adc_contr|data~79_combout\,
	combout => \adc_contr|data[3]~4_combout\);

-- Location: LCCOMB_X13_Y12_N6
\adc_contr|state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|state~18_combout\ = (\adc_contr|state.config_reg_write_state~regout\ & (\adc_contr|Equal1~4_combout\ & \adc_contr|always1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.config_reg_write_state~regout\,
	datac => \adc_contr|Equal1~4_combout\,
	datad => \adc_contr|always1~1_combout\,
	combout => \adc_contr|state~18_combout\);

-- Location: LCFF_X13_Y12_N7
\adc_contr|state.enter_continious_read\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|state~18_combout\,
	ena => \adc_contr|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|state.enter_continious_read~regout\);

-- Location: LCCOMB_X12_Y10_N0
\adc_contr|output_bit~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|output_bit~1_combout\ = (!\adc_contr|state.wait_after_reset_state~regout\ & \adc_contr|state.reset_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_contr|state.wait_after_reset_state~regout\,
	datad => \adc_contr|state.reset_state~regout\,
	combout => \adc_contr|output_bit~1_combout\);

-- Location: LCCOMB_X12_Y10_N14
\adc_contr|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector7~0_combout\ = (\adc_contr|state.communic_reg_mode_state~regout\) # ((\adc_contr|state.enter_continious_read~regout\) # ((\adc_contr|data\(3) & !\adc_contr|output_bit~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.communic_reg_mode_state~regout\,
	datab => \adc_contr|data\(3),
	datac => \adc_contr|state.enter_continious_read~regout\,
	datad => \adc_contr|output_bit~1_combout\,
	combout => \adc_contr|Selector7~0_combout\);

-- Location: LCFF_X12_Y10_N5
\adc_contr|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[3]~4_combout\,
	sdata => \adc_contr|Selector7~0_combout\,
	sload => \adc_contr|always1~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(3));

-- Location: LCCOMB_X12_Y10_N8
\adc_contr|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~4_combout\ = (\adc_contr|bit_number\(1) & ((\adc_contr|data\(1)) # ((\adc_contr|bit_number\(0))))) # (!\adc_contr|bit_number\(1) & (((\adc_contr|data\(3) & !\adc_contr|bit_number\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(1),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|data\(3),
	datad => \adc_contr|bit_number\(0),
	combout => \adc_contr|Mux0~4_combout\);

-- Location: LCCOMB_X12_Y10_N24
\adc_contr|data~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~75_combout\ = (!\adc_contr|bit_number\(1) & !\adc_contr|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(1),
	datad => \adc_contr|Add2~2_combout\,
	combout => \adc_contr|data~75_combout\);

-- Location: LCCOMB_X13_Y10_N6
\adc_contr|data~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~74_combout\ = (\adc_contr|bit_number\(0) & (!\adc_contr|bit_number\(3) & (\adc_contr|bit_number\(2) & \adc_contr|data~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|bit_number\(3),
	datac => \adc_contr|bit_number\(2),
	datad => \adc_contr|data~43_combout\,
	combout => \adc_contr|data~74_combout\);

-- Location: LCCOMB_X12_Y10_N18
\adc_contr|data~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~76_combout\ = (\adc_contr|data~75_combout\ & ((\adc_contr|data~74_combout\ & ((\dout~combout\))) # (!\adc_contr|data~74_combout\ & (\adc_contr|data\(2))))) # (!\adc_contr|data~75_combout\ & (\adc_contr|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(2),
	datab => \dout~combout\,
	datac => \adc_contr|data~75_combout\,
	datad => \adc_contr|data~74_combout\,
	combout => \adc_contr|data~76_combout\);

-- Location: LCCOMB_X12_Y10_N16
\adc_contr|data[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[2]~2_combout\ = (\adc_contr|always1~3_combout\ & ((\adc_contr|data~76_combout\))) # (!\adc_contr|always1~3_combout\ & (\adc_contr|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|always1~3_combout\,
	datac => \adc_contr|data\(2),
	datad => \adc_contr|data~76_combout\,
	combout => \adc_contr|data[2]~2_combout\);

-- Location: LCCOMB_X12_Y10_N20
\adc_contr|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector8~0_combout\ = (\adc_contr|state.mode_reg_write_state~regout\) # ((\adc_contr|state.enter_continious_read~regout\) # ((\adc_contr|data\(2) & !\adc_contr|output_bit~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(2),
	datab => \adc_contr|state.mode_reg_write_state~regout\,
	datac => \adc_contr|state.enter_continious_read~regout\,
	datad => \adc_contr|output_bit~1_combout\,
	combout => \adc_contr|Selector8~0_combout\);

-- Location: LCFF_X12_Y10_N17
\adc_contr|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[2]~2_combout\,
	sdata => \adc_contr|Selector8~0_combout\,
	sload => \adc_contr|always1~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(2));

-- Location: LCCOMB_X13_Y13_N22
\adc_contr|data[0]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[0]~80_combout\ = (\adc_contr|bit_number\(0) & !\adc_contr|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|Add2~2_combout\,
	combout => \adc_contr|data[0]~80_combout\);

-- Location: LCCOMB_X13_Y10_N20
\adc_contr|data[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[5]~41_combout\ = (\reset~combout\ & ((\adc_contr|always1~0_combout\ & (\adc_contr|output_bit~1_combout\)) # (!\adc_contr|always1~0_combout\ & ((\adc_contr|always1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|output_bit~1_combout\,
	datab => \reset~combout\,
	datac => \adc_contr|always1~3_combout\,
	datad => \adc_contr|always1~0_combout\,
	combout => \adc_contr|data[5]~41_combout\);

-- Location: LCCOMB_X13_Y13_N30
\adc_contr|data~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~38_combout\ = (\adc_contr|bit_number\(2) & !\adc_contr|bit_number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_contr|bit_number\(2),
	datad => \adc_contr|bit_number\(3),
	combout => \adc_contr|data~38_combout\);

-- Location: LCCOMB_X13_Y13_N12
\adc_contr|data~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~39_combout\ = (\adc_contr|data~35_combout\ & (\adc_contr|data~38_combout\ & (\adc_contr|data~37_combout\ & \adc_contr|data~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data~35_combout\,
	datab => \adc_contr|data~38_combout\,
	datac => \adc_contr|data~37_combout\,
	datad => \adc_contr|data~36_combout\,
	combout => \adc_contr|data~39_combout\);

-- Location: LCCOMB_X13_Y13_N0
\adc_contr|data[0]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[0]~113_combout\ = (\adc_contr|Add2~2_combout\) # (((!\adc_contr|data~39_combout\) # (!\adc_contr|bit_number\(1))) # (!\adc_contr|bit_number\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~2_combout\,
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|data~39_combout\,
	combout => \adc_contr|data[0]~113_combout\);

-- Location: LCCOMB_X13_Y13_N4
\adc_contr|data[0]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[0]~81_combout\ = (\adc_contr|data\(0) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[0]~113_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(0),
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[0]~113_combout\,
	combout => \adc_contr|data[0]~81_combout\);

-- Location: LCCOMB_X13_Y10_N22
\adc_contr|data[0]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[0]~111_combout\ = (\dout~combout\ & (\adc_contr|data~43_combout\ & ((\adc_contr|clk_sync~regout\) # (!\adc_contr|start~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|clk_sync~regout\,
	datab => \dout~combout\,
	datac => \adc_contr|start~regout\,
	datad => \adc_contr|data~43_combout\,
	combout => \adc_contr|data[0]~111_combout\);

-- Location: LCCOMB_X13_Y13_N6
\adc_contr|data[0]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[0]~82_combout\ = (!\adc_contr|bit_number\(3) & (\adc_contr|bit_number\(1) & (\adc_contr|data[5]~41_combout\ & \adc_contr|data[0]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(3),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[0]~111_combout\,
	combout => \adc_contr|data[0]~82_combout\);

-- Location: LCCOMB_X13_Y13_N28
\adc_contr|data[0]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[0]~83_combout\ = (\adc_contr|data[0]~81_combout\) # ((\adc_contr|bit_number\(2) & (\adc_contr|data[0]~80_combout\ & \adc_contr|data[0]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|data[0]~80_combout\,
	datac => \adc_contr|data[0]~81_combout\,
	datad => \adc_contr|data[0]~82_combout\,
	combout => \adc_contr|data[0]~83_combout\);

-- Location: LCFF_X13_Y13_N29
\adc_contr|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[0]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(0));

-- Location: LCCOMB_X12_Y10_N26
\adc_contr|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~5_combout\ = (\adc_contr|bit_number\(0) & ((\adc_contr|Mux0~4_combout\ & ((\adc_contr|data\(0)))) # (!\adc_contr|Mux0~4_combout\ & (\adc_contr|data\(2))))) # (!\adc_contr|bit_number\(0) & (\adc_contr|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datab => \adc_contr|Mux0~4_combout\,
	datac => \adc_contr|data\(2),
	datad => \adc_contr|data\(0),
	combout => \adc_contr|Mux0~5_combout\);

-- Location: LCCOMB_X12_Y9_N24
\adc_contr|data~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~58_combout\ = (\adc_contr|data~57_combout\ & (\adc_contr|data~35_combout\ & (\adc_contr|data~36_combout\ & \adc_contr|data~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data~57_combout\,
	datab => \adc_contr|data~35_combout\,
	datac => \adc_contr|data~36_combout\,
	datad => \adc_contr|data~37_combout\,
	combout => \adc_contr|data~58_combout\);

-- Location: LCCOMB_X13_Y13_N2
\adc_contr|data[5]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[5]~114_combout\ = (\adc_contr|bit_number\(2)) # ((\adc_contr|bit_number\(0)) # ((\adc_contr|Add2~2_combout\) # (!\adc_contr|data~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|Add2~2_combout\,
	datad => \adc_contr|data~58_combout\,
	combout => \adc_contr|data[5]~114_combout\);

-- Location: LCCOMB_X13_Y13_N20
\adc_contr|data[5]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[5]~84_combout\ = (\adc_contr|data\(5) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[5]~114_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(5),
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[5]~114_combout\,
	combout => \adc_contr|data[5]~84_combout\);

-- Location: LCCOMB_X13_Y13_N18
\adc_contr|data[5]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[5]~85_combout\ = (\adc_contr|data[5]~84_combout\) # ((\adc_contr|Equal1~2_combout\ & (!\adc_contr|Add2~2_combout\ & \adc_contr|data[0]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Equal1~2_combout\,
	datab => \adc_contr|Add2~2_combout\,
	datac => \adc_contr|data[5]~84_combout\,
	datad => \adc_contr|data[0]~82_combout\,
	combout => \adc_contr|data[5]~85_combout\);

-- Location: LCFF_X13_Y13_N19
\adc_contr|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[5]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(5));

-- Location: LCCOMB_X13_Y13_N8
\adc_contr|data~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~91_combout\ = (\adc_contr|bit_number\(2)) # (((\adc_contr|Add2~2_combout\) # (!\adc_contr|data~58_combout\)) # (!\adc_contr|bit_number\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|Add2~2_combout\,
	datad => \adc_contr|data~58_combout\,
	combout => \adc_contr|data~91_combout\);

-- Location: LCCOMB_X13_Y13_N26
\adc_contr|data~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~90_combout\ = (!\adc_contr|bit_number\(2) & (\adc_contr|data[0]~80_combout\ & (\dout~combout\ & \adc_contr|data~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|data[0]~80_combout\,
	datac => \dout~combout\,
	datad => \adc_contr|data~58_combout\,
	combout => \adc_contr|data~90_combout\);

-- Location: LCCOMB_X13_Y13_N10
\adc_contr|data~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data~92_combout\ = (\adc_contr|data~90_combout\) # ((\adc_contr|data\(4) & \adc_contr|data~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|data\(4),
	datac => \adc_contr|data~91_combout\,
	datad => \adc_contr|data~90_combout\,
	combout => \adc_contr|data~92_combout\);

-- Location: LCCOMB_X13_Y13_N16
\adc_contr|data[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[4]~1_combout\ = (\adc_contr|always1~3_combout\ & ((\adc_contr|data~92_combout\))) # (!\adc_contr|always1~3_combout\ & (\adc_contr|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~3_combout\,
	datac => \adc_contr|data\(4),
	datad => \adc_contr|data~92_combout\,
	combout => \adc_contr|data[4]~1_combout\);

-- Location: LCCOMB_X13_Y12_N18
\adc_contr|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector6~0_combout\ = (\adc_contr|state.communic_reg_config_state~regout\) # ((\adc_contr|data\(4) & ((\adc_contr|state.wait_after_reset_state~regout\) # (!\adc_contr|state.reset_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(4),
	datab => \adc_contr|state.communic_reg_config_state~regout\,
	datac => \adc_contr|state.wait_after_reset_state~regout\,
	datad => \adc_contr|state.reset_state~regout\,
	combout => \adc_contr|Selector6~0_combout\);

-- Location: LCCOMB_X13_Y12_N20
\adc_contr|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector6~1_combout\ = (\adc_contr|state.enter_continious_read~regout\) # ((\adc_contr|Selector6~0_combout\) # (\adc_contr|state.config_reg_write_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.enter_continious_read~regout\,
	datab => \adc_contr|Selector6~0_combout\,
	datad => \adc_contr|state.config_reg_write_state~regout\,
	combout => \adc_contr|Selector6~1_combout\);

-- Location: LCFF_X13_Y13_N17
\adc_contr|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[4]~1_combout\,
	sdata => \adc_contr|Selector6~1_combout\,
	sload => \adc_contr|always1~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(4));

-- Location: LCCOMB_X13_Y13_N24
\adc_contr|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~7_combout\ = (\adc_contr|Mux0~6_combout\ & (((\adc_contr|data\(4)) # (!\adc_contr|bit_number\(1))))) # (!\adc_contr|Mux0~6_combout\ & (\adc_contr|data\(5) & (\adc_contr|bit_number\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Mux0~6_combout\,
	datab => \adc_contr|data\(5),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|data\(4),
	combout => \adc_contr|Mux0~7_combout\);

-- Location: LCCOMB_X12_Y13_N24
\adc_contr|Selector24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector24~4_combout\ = (!\adc_contr|bit_number\(3) & ((\adc_contr|bit_number\(2) & (\adc_contr|Mux0~5_combout\)) # (!\adc_contr|bit_number\(2) & ((\adc_contr|Mux0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(3),
	datab => \adc_contr|Mux0~5_combout\,
	datac => \adc_contr|bit_number\(2),
	datad => \adc_contr|Mux0~7_combout\,
	combout => \adc_contr|Selector24~4_combout\);

-- Location: LCCOMB_X14_Y13_N30
\adc_contr|data[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[11]~48_combout\ = (!\adc_contr|bit_number\(0) & \adc_contr|bit_number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datad => \adc_contr|bit_number\(2),
	combout => \adc_contr|data[11]~48_combout\);

-- Location: LCCOMB_X13_Y10_N0
\adc_contr|data[18]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[18]~44_combout\ = (\adc_contr|Add2~2_combout\ & (!\adc_contr|bit_number\(3) & (\adc_contr|data[5]~41_combout\ & \adc_contr|data[0]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add2~2_combout\,
	datab => \adc_contr|bit_number\(3),
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[0]~111_combout\,
	combout => \adc_contr|data[18]~44_combout\);

-- Location: LCCOMB_X14_Y13_N14
\adc_contr|data[17]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[17]~46_combout\ = (((\adc_contr|bit_number\(0)) # (!\adc_contr|data~39_combout\)) # (!\adc_contr|Add2~2_combout\)) # (!\adc_contr|bit_number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(1),
	datab => \adc_contr|Add2~2_combout\,
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|data~39_combout\,
	combout => \adc_contr|data[17]~46_combout\);

-- Location: LCCOMB_X14_Y13_N28
\adc_contr|data[17]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[17]~47_combout\ = (\adc_contr|data\(17) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[17]~46_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(17),
	datac => \adc_contr|data[17]~46_combout\,
	datad => \adc_contr|data[5]~41_combout\,
	combout => \adc_contr|data[17]~47_combout\);

-- Location: LCCOMB_X14_Y13_N4
\adc_contr|data[17]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[17]~49_combout\ = (\adc_contr|data[17]~47_combout\) # ((\adc_contr|bit_number\(1) & (\adc_contr|data[11]~48_combout\ & \adc_contr|data[18]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(1),
	datab => \adc_contr|data[11]~48_combout\,
	datac => \adc_contr|data[18]~44_combout\,
	datad => \adc_contr|data[17]~47_combout\,
	combout => \adc_contr|data[17]~49_combout\);

-- Location: LCFF_X14_Y13_N5
\adc_contr|data[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[17]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(17));

-- Location: LCCOMB_X14_Y13_N26
\adc_contr|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~0_combout\ = (\adc_contr|bit_number\(1) & (((\adc_contr|data\(17)) # (\adc_contr|bit_number\(0))))) # (!\adc_contr|bit_number\(1) & (\adc_contr|data\(19) & ((!\adc_contr|bit_number\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(19),
	datab => \adc_contr|data\(17),
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|bit_number\(0),
	combout => \adc_contr|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y13_N8
\adc_contr|data[10]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[10]~55_combout\ = (\adc_contr|bit_number\(0) & \adc_contr|bit_number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(0),
	datad => \adc_contr|bit_number\(2),
	combout => \adc_contr|data[10]~55_combout\);

-- Location: LCCOMB_X14_Y13_N20
\adc_contr|data[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[16]~53_combout\ = (((!\adc_contr|data~39_combout\) # (!\adc_contr|bit_number\(0))) # (!\adc_contr|Add2~2_combout\)) # (!\adc_contr|bit_number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(1),
	datab => \adc_contr|Add2~2_combout\,
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|data~39_combout\,
	combout => \adc_contr|data[16]~53_combout\);

-- Location: LCCOMB_X14_Y13_N10
\adc_contr|data[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[16]~54_combout\ = (\adc_contr|data\(16) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[16]~53_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|always1~0_combout\,
	datab => \adc_contr|data\(16),
	datac => \adc_contr|data[16]~53_combout\,
	datad => \adc_contr|data[5]~41_combout\,
	combout => \adc_contr|data[16]~54_combout\);

-- Location: LCCOMB_X14_Y13_N24
\adc_contr|data[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[16]~56_combout\ = (\adc_contr|data[16]~54_combout\) # ((\adc_contr|bit_number\(1) & (\adc_contr|data[10]~55_combout\ & \adc_contr|data[18]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(1),
	datab => \adc_contr|data[10]~55_combout\,
	datac => \adc_contr|data[18]~44_combout\,
	datad => \adc_contr|data[16]~54_combout\,
	combout => \adc_contr|data[16]~56_combout\);

-- Location: LCFF_X14_Y13_N25
\adc_contr|data[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(16));

-- Location: LCCOMB_X13_Y13_N14
\adc_contr|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~1_combout\ = (\adc_contr|bit_number\(0) & ((\adc_contr|Mux0~0_combout\ & ((\adc_contr|data\(16)))) # (!\adc_contr|Mux0~0_combout\ & (\adc_contr|data\(18))))) # (!\adc_contr|bit_number\(0) & (((\adc_contr|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(18),
	datab => \adc_contr|bit_number\(0),
	datac => \adc_contr|Mux0~0_combout\,
	datad => \adc_contr|data\(16),
	combout => \adc_contr|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y11_N28
\adc_contr|data[21]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[21]~112_combout\ = (\adc_contr|bit_number\(2)) # (((\adc_contr|bit_number\(0)) # (!\adc_contr|data~58_combout\)) # (!\adc_contr|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|Add2~2_combout\,
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|data~58_combout\,
	combout => \adc_contr|data[21]~112_combout\);

-- Location: LCCOMB_X13_Y11_N6
\adc_contr|data[21]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[21]~59_combout\ = (\adc_contr|data\(21) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[21]~112_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(21),
	datab => \adc_contr|always1~0_combout\,
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[21]~112_combout\,
	combout => \adc_contr|data[21]~59_combout\);

-- Location: LCCOMB_X13_Y11_N24
\adc_contr|data[21]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[21]~60_combout\ = (\adc_contr|data[21]~59_combout\) # ((\adc_contr|Equal1~2_combout\ & (\adc_contr|data[18]~44_combout\ & \adc_contr|bit_number\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Equal1~2_combout\,
	datab => \adc_contr|data[18]~44_combout\,
	datac => \adc_contr|bit_number\(1),
	datad => \adc_contr|data[21]~59_combout\,
	combout => \adc_contr|data[21]~60_combout\);

-- Location: LCFF_X13_Y11_N25
\adc_contr|data[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[21]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(21));

-- Location: LCCOMB_X13_Y11_N30
\adc_contr|data[20]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[20]~70_combout\ = (\adc_contr|bit_number\(2)) # (((!\adc_contr|data~58_combout\) # (!\adc_contr|bit_number\(0))) # (!\adc_contr|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|Add2~2_combout\,
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|data~58_combout\,
	combout => \adc_contr|data[20]~70_combout\);

-- Location: LCCOMB_X13_Y11_N8
\adc_contr|data[20]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[20]~71_combout\ = (\adc_contr|data\(20) & (((!\adc_contr|always1~0_combout\ & \adc_contr|data[20]~70_combout\)) # (!\adc_contr|data[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data\(20),
	datab => \adc_contr|always1~0_combout\,
	datac => \adc_contr|data[5]~41_combout\,
	datad => \adc_contr|data[20]~70_combout\,
	combout => \adc_contr|data[20]~71_combout\);

-- Location: LCCOMB_X13_Y11_N14
\adc_contr|data[20]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|data[20]~73_combout\ = (\adc_contr|data[20]~71_combout\) # ((\adc_contr|data[14]~72_combout\ & (\adc_contr|bit_number\(1) & \adc_contr|data[18]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|data[14]~72_combout\,
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|data[20]~71_combout\,
	datad => \adc_contr|data[18]~44_combout\,
	combout => \adc_contr|data[20]~73_combout\);

-- Location: LCFF_X13_Y11_N15
\adc_contr|data[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|data[20]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|data\(20));

-- Location: LCCOMB_X12_Y11_N28
\adc_contr|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Mux0~3_combout\ = (\adc_contr|Mux0~2_combout\ & (((\adc_contr|data\(20)) # (!\adc_contr|bit_number\(1))))) # (!\adc_contr|Mux0~2_combout\ & (\adc_contr|data\(21) & ((\adc_contr|bit_number\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Mux0~2_combout\,
	datab => \adc_contr|data\(21),
	datac => \adc_contr|data\(20),
	datad => \adc_contr|bit_number\(1),
	combout => \adc_contr|Mux0~3_combout\);

-- Location: LCCOMB_X12_Y13_N22
\adc_contr|Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector24~2_combout\ = (!\adc_contr|bit_number\(3) & ((\adc_contr|bit_number\(2) & (\adc_contr|Mux0~1_combout\)) # (!\adc_contr|bit_number\(2) & ((\adc_contr|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(3),
	datab => \adc_contr|bit_number\(2),
	datac => \adc_contr|Mux0~1_combout\,
	datad => \adc_contr|Mux0~3_combout\,
	combout => \adc_contr|Selector24~2_combout\);

-- Location: LCCOMB_X12_Y13_N26
\adc_contr|Selector24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector24~3_combout\ = (\adc_contr|Selector24~2_combout\ & ((\adc_contr|WideOr0~0_combout\ & ((\adc_contr|Add1~2_combout\))) # (!\adc_contr|WideOr0~0_combout\ & (\adc_contr|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|WideOr0~0_combout\,
	datab => \adc_contr|Selector24~2_combout\,
	datac => \adc_contr|Add2~2_combout\,
	datad => \adc_contr|Add1~2_combout\,
	combout => \adc_contr|Selector24~3_combout\);

-- Location: LCCOMB_X12_Y13_N0
\adc_contr|Selector24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector24~6_combout\ = (\adc_contr|Selector24~3_combout\) # ((\adc_contr|Selector24~7_combout\ & ((\adc_contr|Selector24~5_combout\) # (\adc_contr|Selector24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Selector24~5_combout\,
	datab => \adc_contr|Selector24~7_combout\,
	datac => \adc_contr|Selector24~4_combout\,
	datad => \adc_contr|Selector24~3_combout\,
	combout => \adc_contr|Selector24~6_combout\);

-- Location: LCCOMB_X12_Y10_N2
\adc_contr|output_bit~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|output_bit~2_combout\ = (\adc_contr|sclk_reg~regout\ & (\adc_contr|output_bit~1_combout\ & (!\adc_contr|state.continious_read~regout\ & \adc_contr|always1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|sclk_reg~regout\,
	datab => \adc_contr|output_bit~1_combout\,
	datac => \adc_contr|state.continious_read~regout\,
	datad => \adc_contr|always1~3_combout\,
	combout => \adc_contr|output_bit~2_combout\);

-- Location: LCCOMB_X12_Y13_N16
\adc_contr|output_bit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|output_bit~0_combout\ = (\adc_contr|output_bit~2_combout\ & (\adc_contr|Selector24~6_combout\)) # (!\adc_contr|output_bit~2_combout\ & ((\adc_contr|output_bit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|Selector24~6_combout\,
	datac => \adc_contr|output_bit~regout\,
	datad => \adc_contr|output_bit~2_combout\,
	combout => \adc_contr|output_bit~0_combout\);

-- Location: LCCOMB_X12_Y13_N14
\adc_contr|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Selector0~0_combout\ = ((\adc_contr|state.wait_after_reset_state~regout\ & \adc_contr|output_bit~regout\)) # (!\adc_contr|state.reset_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|state.wait_after_reset_state~regout\,
	datac => \adc_contr|output_bit~regout\,
	datad => \adc_contr|state.reset_state~regout\,
	combout => \adc_contr|Selector0~0_combout\);

-- Location: LCFF_X12_Y13_N17
\adc_contr|output_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|output_bit~0_combout\,
	sdata => \adc_contr|Selector0~0_combout\,
	sload => \adc_contr|always1~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|output_bit~regout\);

-- Location: LCCOMB_X14_Y9_N8
\adc_contr|leds_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~0_combout\ = (!\adc_contr|bit_number\(12) & (!\adc_contr|bit_number\(9) & (\adc_contr|state.continious_read~regout\ & !\adc_contr|bit_number\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(12),
	datab => \adc_contr|bit_number\(9),
	datac => \adc_contr|state.continious_read~regout\,
	datad => \adc_contr|bit_number\(8),
	combout => \adc_contr|leds_reg~0_combout\);

-- Location: LCCOMB_X14_Y9_N18
\adc_contr|leds_reg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~1_combout\ = (!\adc_contr|bit_number\(4) & (\adc_contr|leds_reg~0_combout\ & (!\adc_contr|bit_number\(7) & !\adc_contr|bit_number\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(4),
	datab => \adc_contr|leds_reg~0_combout\,
	datac => \adc_contr|bit_number\(7),
	datad => \adc_contr|bit_number\(3),
	combout => \adc_contr|leds_reg~1_combout\);

-- Location: LCCOMB_X14_Y9_N0
\adc_contr|leds_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~2_combout\ = (\adc_contr|sclk_reg~regout\ & (\adc_contr|LessThan0~4_combout\ & (\adc_contr|always1~3_combout\ & \adc_contr|leds_reg~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|sclk_reg~regout\,
	datab => \adc_contr|LessThan0~4_combout\,
	datac => \adc_contr|always1~3_combout\,
	datad => \adc_contr|leds_reg~1_combout\,
	combout => \adc_contr|leds_reg~2_combout\);

-- Location: LCCOMB_X15_Y9_N4
\adc_contr|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~4_combout\ = (\adc_contr|bit_number\(5) & (!\adc_contr|Add1~3\ & VCC)) # (!\adc_contr|bit_number\(5) & (\adc_contr|Add1~3\ $ (GND)))
-- \adc_contr|Add1~5\ = CARRY((!\adc_contr|bit_number\(5) & !\adc_contr|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(5),
	datad => VCC,
	cin => \adc_contr|Add1~3\,
	combout => \adc_contr|Add1~4_combout\,
	cout => \adc_contr|Add1~5\);

-- Location: LCCOMB_X15_Y9_N30
\adc_contr|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan3~0_combout\ = (\adc_contr|Add1~6_combout\) # ((\adc_contr|bit_number\(3)) # ((\adc_contr|Add1~4_combout\) # (\adc_contr|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add1~6_combout\,
	datab => \adc_contr|bit_number\(3),
	datac => \adc_contr|Add1~4_combout\,
	datad => \adc_contr|Add1~2_combout\,
	combout => \adc_contr|LessThan3~0_combout\);

-- Location: LCCOMB_X15_Y9_N8
\adc_contr|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~8_combout\ = (\adc_contr|bit_number\(7) & (!\adc_contr|Add1~7\ & VCC)) # (!\adc_contr|bit_number\(7) & (\adc_contr|Add1~7\ $ (GND)))
-- \adc_contr|Add1~9\ = CARRY((!\adc_contr|bit_number\(7) & !\adc_contr|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(7),
	datad => VCC,
	cin => \adc_contr|Add1~7\,
	combout => \adc_contr|Add1~8_combout\,
	cout => \adc_contr|Add1~9\);

-- Location: LCCOMB_X15_Y9_N10
\adc_contr|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~10_combout\ = (\adc_contr|bit_number\(8) & ((\adc_contr|Add1~9\) # (GND))) # (!\adc_contr|bit_number\(8) & (!\adc_contr|Add1~9\))
-- \adc_contr|Add1~11\ = CARRY((\adc_contr|bit_number\(8)) # (!\adc_contr|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(8),
	datad => VCC,
	cin => \adc_contr|Add1~9\,
	combout => \adc_contr|Add1~10_combout\,
	cout => \adc_contr|Add1~11\);

-- Location: LCCOMB_X15_Y9_N14
\adc_contr|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~14_combout\ = (\adc_contr|bit_number\(10) & ((\adc_contr|Add1~13\) # (GND))) # (!\adc_contr|bit_number\(10) & (!\adc_contr|Add1~13\))
-- \adc_contr|Add1~15\ = CARRY((\adc_contr|bit_number\(10)) # (!\adc_contr|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(10),
	datad => VCC,
	cin => \adc_contr|Add1~13\,
	combout => \adc_contr|Add1~14_combout\,
	cout => \adc_contr|Add1~15\);

-- Location: LCCOMB_X15_Y9_N18
\adc_contr|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~18_combout\ = (\adc_contr|bit_number\(12) & ((\adc_contr|Add1~17\) # (GND))) # (!\adc_contr|bit_number\(12) & (!\adc_contr|Add1~17\))
-- \adc_contr|Add1~19\ = CARRY((\adc_contr|bit_number\(12)) # (!\adc_contr|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|bit_number\(12),
	datad => VCC,
	cin => \adc_contr|Add1~17\,
	combout => \adc_contr|Add1~18_combout\,
	cout => \adc_contr|Add1~19\);

-- Location: LCCOMB_X15_Y9_N20
\adc_contr|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Add1~20_combout\ = !\adc_contr|Add1~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \adc_contr|Add1~19\,
	combout => \adc_contr|Add1~20_combout\);

-- Location: LCCOMB_X15_Y9_N26
\adc_contr|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan3~2_combout\ = (\adc_contr|Add1~16_combout\) # ((\adc_contr|Add1~18_combout\) # (!\adc_contr|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add1~16_combout\,
	datac => \adc_contr|Add1~20_combout\,
	datad => \adc_contr|Add1~18_combout\,
	combout => \adc_contr|LessThan3~2_combout\);

-- Location: LCCOMB_X15_Y9_N28
\adc_contr|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan3~1_combout\ = (\adc_contr|Add1~12_combout\) # ((\adc_contr|Add1~14_combout\) # ((\adc_contr|Add1~8_combout\) # (\adc_contr|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|Add1~12_combout\,
	datab => \adc_contr|Add1~14_combout\,
	datac => \adc_contr|Add1~8_combout\,
	datad => \adc_contr|Add1~10_combout\,
	combout => \adc_contr|LessThan3~1_combout\);

-- Location: LCCOMB_X15_Y10_N6
\adc_contr|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|LessThan3~3_combout\ = (\adc_contr|LessThan3~0_combout\) # ((\adc_contr|LessThan3~2_combout\) # (\adc_contr|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_contr|LessThan3~0_combout\,
	datac => \adc_contr|LessThan3~2_combout\,
	datad => \adc_contr|LessThan3~1_combout\,
	combout => \adc_contr|LessThan3~3_combout\);

-- Location: LCCOMB_X15_Y10_N28
\adc_contr|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Decoder1~0_combout\ = (\adc_contr|bit_number\(2) & (\adc_contr|bit_number\(1) & (\adc_contr|bit_number\(0) & !\adc_contr|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|LessThan3~3_combout\,
	combout => \adc_contr|Decoder1~0_combout\);

-- Location: LCCOMB_X15_Y10_N8
\adc_contr|leds_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~3_combout\ = (\adc_contr|leds_reg~2_combout\ & ((\adc_contr|Decoder1~0_combout\ & (\dout~combout\)) # (!\adc_contr|Decoder1~0_combout\ & ((\adc_contr|leds_reg\(0)))))) # (!\adc_contr|leds_reg~2_combout\ & (((\adc_contr|leds_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~combout\,
	datab => \adc_contr|leds_reg~2_combout\,
	datac => \adc_contr|leds_reg\(0),
	datad => \adc_contr|Decoder1~0_combout\,
	combout => \adc_contr|leds_reg~3_combout\);

-- Location: LCFF_X15_Y10_N9
\adc_contr|leds_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|leds_reg~3_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \adc_contr|ALT_INV_data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|leds_reg\(0));

-- Location: LCCOMB_X15_Y10_N26
\adc_contr|Decoder1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Decoder1~1_combout\ = (\adc_contr|bit_number\(2) & (\adc_contr|bit_number\(1) & (!\adc_contr|bit_number\(0) & !\adc_contr|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|LessThan3~3_combout\,
	combout => \adc_contr|Decoder1~1_combout\);

-- Location: LCCOMB_X15_Y10_N10
\adc_contr|leds_reg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~4_combout\ = (\adc_contr|leds_reg~2_combout\ & ((\adc_contr|Decoder1~1_combout\ & (\dout~combout\)) # (!\adc_contr|Decoder1~1_combout\ & ((\adc_contr|leds_reg\(1)))))) # (!\adc_contr|leds_reg~2_combout\ & (((\adc_contr|leds_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~combout\,
	datab => \adc_contr|leds_reg~2_combout\,
	datac => \adc_contr|leds_reg\(1),
	datad => \adc_contr|Decoder1~1_combout\,
	combout => \adc_contr|leds_reg~4_combout\);

-- Location: LCFF_X15_Y10_N11
\adc_contr|leds_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|leds_reg~4_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \adc_contr|ALT_INV_data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|leds_reg\(1));

-- Location: LCCOMB_X15_Y10_N12
\adc_contr|Decoder1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Decoder1~2_combout\ = (\adc_contr|bit_number\(2) & (!\adc_contr|bit_number\(1) & (\adc_contr|bit_number\(0) & !\adc_contr|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|LessThan3~3_combout\,
	combout => \adc_contr|Decoder1~2_combout\);

-- Location: LCCOMB_X15_Y10_N16
\adc_contr|leds_reg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~5_combout\ = (\adc_contr|leds_reg~2_combout\ & ((\adc_contr|Decoder1~2_combout\ & (\dout~combout\)) # (!\adc_contr|Decoder1~2_combout\ & ((\adc_contr|leds_reg\(2)))))) # (!\adc_contr|leds_reg~2_combout\ & (((\adc_contr|leds_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~combout\,
	datab => \adc_contr|leds_reg~2_combout\,
	datac => \adc_contr|leds_reg\(2),
	datad => \adc_contr|Decoder1~2_combout\,
	combout => \adc_contr|leds_reg~5_combout\);

-- Location: LCFF_X15_Y10_N17
\adc_contr|leds_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|leds_reg~5_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \adc_contr|ALT_INV_data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|leds_reg\(2));

-- Location: LCCOMB_X15_Y10_N30
\adc_contr|Decoder1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Decoder1~3_combout\ = (\adc_contr|bit_number\(2) & (!\adc_contr|bit_number\(1) & (!\adc_contr|bit_number\(0) & !\adc_contr|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|LessThan3~3_combout\,
	combout => \adc_contr|Decoder1~3_combout\);

-- Location: LCCOMB_X14_Y10_N0
\adc_contr|leds_reg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~6_combout\ = (\adc_contr|leds_reg~2_combout\ & ((\adc_contr|Decoder1~3_combout\ & (\dout~combout\)) # (!\adc_contr|Decoder1~3_combout\ & ((\adc_contr|leds_reg\(3)))))) # (!\adc_contr|leds_reg~2_combout\ & (((\adc_contr|leds_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~combout\,
	datab => \adc_contr|leds_reg~2_combout\,
	datac => \adc_contr|leds_reg\(3),
	datad => \adc_contr|Decoder1~3_combout\,
	combout => \adc_contr|leds_reg~6_combout\);

-- Location: LCFF_X14_Y10_N1
\adc_contr|leds_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|leds_reg~6_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \adc_contr|ALT_INV_data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|leds_reg\(3));

-- Location: LCCOMB_X15_Y10_N4
\adc_contr|Decoder1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Decoder1~4_combout\ = (!\adc_contr|bit_number\(2) & (\adc_contr|bit_number\(1) & (\adc_contr|bit_number\(0) & !\adc_contr|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|LessThan3~3_combout\,
	combout => \adc_contr|Decoder1~4_combout\);

-- Location: LCCOMB_X14_Y10_N14
\adc_contr|leds_reg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~7_combout\ = (\adc_contr|leds_reg~2_combout\ & ((\adc_contr|Decoder1~4_combout\ & (\dout~combout\)) # (!\adc_contr|Decoder1~4_combout\ & ((\adc_contr|leds_reg\(4)))))) # (!\adc_contr|leds_reg~2_combout\ & (((\adc_contr|leds_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~combout\,
	datab => \adc_contr|leds_reg~2_combout\,
	datac => \adc_contr|leds_reg\(4),
	datad => \adc_contr|Decoder1~4_combout\,
	combout => \adc_contr|leds_reg~7_combout\);

-- Location: LCFF_X14_Y10_N15
\adc_contr|leds_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|leds_reg~7_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \adc_contr|ALT_INV_data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|leds_reg\(4));

-- Location: LCCOMB_X15_Y10_N22
\adc_contr|Decoder1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Decoder1~5_combout\ = (!\adc_contr|bit_number\(2) & (\adc_contr|bit_number\(1) & (!\adc_contr|bit_number\(0) & !\adc_contr|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|LessThan3~3_combout\,
	combout => \adc_contr|Decoder1~5_combout\);

-- Location: LCCOMB_X15_Y10_N2
\adc_contr|leds_reg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~8_combout\ = (\adc_contr|leds_reg~2_combout\ & ((\adc_contr|Decoder1~5_combout\ & (\dout~combout\)) # (!\adc_contr|Decoder1~5_combout\ & ((\adc_contr|leds_reg\(5)))))) # (!\adc_contr|leds_reg~2_combout\ & (((\adc_contr|leds_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~combout\,
	datab => \adc_contr|leds_reg~2_combout\,
	datac => \adc_contr|leds_reg\(5),
	datad => \adc_contr|Decoder1~5_combout\,
	combout => \adc_contr|leds_reg~8_combout\);

-- Location: LCFF_X15_Y10_N3
\adc_contr|leds_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|leds_reg~8_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \adc_contr|ALT_INV_data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|leds_reg\(5));

-- Location: LCCOMB_X15_Y10_N0
\adc_contr|Decoder1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Decoder1~6_combout\ = (!\adc_contr|bit_number\(2) & (!\adc_contr|bit_number\(1) & (\adc_contr|bit_number\(0) & !\adc_contr|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|LessThan3~3_combout\,
	combout => \adc_contr|Decoder1~6_combout\);

-- Location: LCCOMB_X15_Y10_N24
\adc_contr|leds_reg~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~9_combout\ = (\adc_contr|leds_reg~2_combout\ & ((\adc_contr|Decoder1~6_combout\ & (\dout~combout\)) # (!\adc_contr|Decoder1~6_combout\ & ((\adc_contr|leds_reg\(6)))))) # (!\adc_contr|leds_reg~2_combout\ & (((\adc_contr|leds_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~combout\,
	datab => \adc_contr|leds_reg~2_combout\,
	datac => \adc_contr|leds_reg\(6),
	datad => \adc_contr|Decoder1~6_combout\,
	combout => \adc_contr|leds_reg~9_combout\);

-- Location: LCFF_X15_Y10_N25
\adc_contr|leds_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|leds_reg~9_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \adc_contr|ALT_INV_data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|leds_reg\(6));

-- Location: LCCOMB_X15_Y10_N18
\adc_contr|Decoder1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|Decoder1~7_combout\ = (!\adc_contr|bit_number\(2) & (!\adc_contr|bit_number\(1) & (!\adc_contr|bit_number\(0) & !\adc_contr|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_contr|bit_number\(2),
	datab => \adc_contr|bit_number\(1),
	datac => \adc_contr|bit_number\(0),
	datad => \adc_contr|LessThan3~3_combout\,
	combout => \adc_contr|Decoder1~7_combout\);

-- Location: LCCOMB_X15_Y10_N14
\adc_contr|leds_reg~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \adc_contr|leds_reg~10_combout\ = (\adc_contr|leds_reg~2_combout\ & ((\adc_contr|Decoder1~7_combout\ & (\dout~combout\)) # (!\adc_contr|Decoder1~7_combout\ & ((\adc_contr|leds_reg\(7)))))) # (!\adc_contr|leds_reg~2_combout\ & 
-- (((\adc_contr|leds_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~combout\,
	datab => \adc_contr|leds_reg~2_combout\,
	datac => \adc_contr|leds_reg\(7),
	datad => \adc_contr|Decoder1~7_combout\,
	combout => \adc_contr|leds_reg~10_combout\);

-- Location: LCFF_X15_Y10_N15
\adc_contr|leds_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_div|clk_div_inner~clkctrl_outclk\,
	datain => \adc_contr|leds_reg~10_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \adc_contr|ALT_INV_data[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \adc_contr|leds_reg\(7));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \adc_contr|ALT_INV_sclk_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sclk);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cs~I\ : cycloneii_io
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
	datain => \adc_contr|cs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cs);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \adc_contr|output_bit~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_din);

-- Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[0]~I\ : cycloneii_io
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
	datain => \adc_contr|leds_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(0));

-- Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[1]~I\ : cycloneii_io
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
	datain => \adc_contr|leds_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(1));

-- Location: PIN_175,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[2]~I\ : cycloneii_io
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
	datain => \adc_contr|leds_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(2));

-- Location: PIN_176,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[3]~I\ : cycloneii_io
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
	datain => \adc_contr|leds_reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(3));

-- Location: PIN_179,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[4]~I\ : cycloneii_io
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
	datain => \adc_contr|leds_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(4));

-- Location: PIN_180,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[5]~I\ : cycloneii_io
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
	datain => \adc_contr|leds_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(5));

-- Location: PIN_182,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[6]~I\ : cycloneii_io
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
	datain => \adc_contr|leds_reg\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(6));

-- Location: PIN_185,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[7]~I\ : cycloneii_io
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
	datain => \adc_contr|leds_reg\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(7));
END structure;


