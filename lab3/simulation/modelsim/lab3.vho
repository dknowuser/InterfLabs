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

-- DATE "10/05/2020 01:04:17"

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

ENTITY 	lab3 IS
    PORT (
	clk : IN std_logic;
	sclk : OUT std_logic;
	din : OUT std_logic;
	sync : OUT std_logic;
	ldac : OUT std_logic;
	clr : OUT std_logic;
	sin_freq : IN std_logic_vector(7 DOWNTO 0)
	);
END lab3;

-- Design Ports Information
-- sclk	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- din	=>  Location: PIN_182,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sync	=>  Location: PIN_179,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ldac	=>  Location: PIN_176,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clr	=>  Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sin_freq[0]	=>  Location: PIN_175,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sin_freq[1]	=>  Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sin_freq[2]	=>  Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sin_freq[3]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sin_freq[4]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sin_freq[5]	=>  Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sin_freq[6]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sin_freq[7]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
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
SIGNAL ww_sclk : std_logic;
SIGNAL ww_din : std_logic;
SIGNAL ww_sync : std_logic;
SIGNAL ww_ldac : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_sin_freq : std_logic_vector(7 DOWNTO 0);
SIGNAL \divider|out_clk_inner~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_SPI|Add0~0_combout\ : std_logic;
SIGNAL \my_SPI|input_register[12]~0_combout\ : std_logic;
SIGNAL \my_SPI|input_register[11]~1_combout\ : std_logic;
SIGNAL \my_SPI|Add2~0_combout\ : std_logic;
SIGNAL \my_SPI|Add2~1\ : std_logic;
SIGNAL \my_SPI|Add2~2_combout\ : std_logic;
SIGNAL \my_SPI|Add2~3\ : std_logic;
SIGNAL \my_SPI|Add2~4_combout\ : std_logic;
SIGNAL \my_SPI|Add2~5\ : std_logic;
SIGNAL \my_SPI|Add2~6_combout\ : std_logic;
SIGNAL \my_SPI|Add2~7\ : std_logic;
SIGNAL \my_SPI|Add2~8_combout\ : std_logic;
SIGNAL \my_SPI|Add2~9\ : std_logic;
SIGNAL \my_SPI|Add2~10_combout\ : std_logic;
SIGNAL \my_SPI|Add2~11\ : std_logic;
SIGNAL \my_SPI|Add2~12_combout\ : std_logic;
SIGNAL \my_SPI|Add2~13\ : std_logic;
SIGNAL \my_SPI|Add2~14_combout\ : std_logic;
SIGNAL \my_SPI|input_register[10]~2_combout\ : std_logic;
SIGNAL \my_SPI|input_register[9]~3_combout\ : std_logic;
SIGNAL \my_SPI|input_register[8]~4_combout\ : std_logic;
SIGNAL \my_SPI|input_register[7]~5_combout\ : std_logic;
SIGNAL \my_SPI|input_register[6]~6_combout\ : std_logic;
SIGNAL \my_SPI|input_register[5]~7_combout\ : std_logic;
SIGNAL \my_SPI|input_register[4]~8_combout\ : std_logic;
SIGNAL \my_SPI|input_register[3]~9_combout\ : std_logic;
SIGNAL \my_SPI|start~0_combout\ : std_logic;
SIGNAL \my_SPI|WideOr1~combout\ : std_logic;
SIGNAL \my_SPI|start_clocks~1_combout\ : std_logic;
SIGNAL \my_SPI|sin_freq_cnt[6]~7_combout\ : std_logic;
SIGNAL \my_SPI|input_register[6]~15_combout\ : std_logic;
SIGNAL \my_SPI|input_register~16_combout\ : std_logic;
SIGNAL \my_SPI|input_register~17_combout\ : std_logic;
SIGNAL \my_SPI|Mux0~0_combout\ : std_logic;
SIGNAL \my_SPI|Mux0~1_combout\ : std_logic;
SIGNAL \my_SPI|Mux0~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux0~3_combout\ : std_logic;
SIGNAL \my_SPI|input_register~18_combout\ : std_logic;
SIGNAL \my_SPI|Mux1~0_combout\ : std_logic;
SIGNAL \my_SPI|Mux1~1_combout\ : std_logic;
SIGNAL \my_SPI|Mux1~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux1~3_combout\ : std_logic;
SIGNAL \my_SPI|Mux1~4_combout\ : std_logic;
SIGNAL \my_SPI|Mux1~5_combout\ : std_logic;
SIGNAL \my_SPI|Mux1~6_combout\ : std_logic;
SIGNAL \my_SPI|Mux1~7_combout\ : std_logic;
SIGNAL \my_SPI|table_num[8]~0_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~0_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~1_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~3_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~4_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~5_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~6_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~7_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~8_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~9_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~10_combout\ : std_logic;
SIGNAL \my_SPI|Mux2~11_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~3_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~4_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~5_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~6_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~7_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~8_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~9_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~10_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~11_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~12_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~13_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~14_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~15_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~16_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~17_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~18_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~19_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~20_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~21_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~22_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~23_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~24_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~25_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~26_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~3_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~4_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~5_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~6_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~7_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~8_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~9_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~10_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~11_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~12_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~13_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~14_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~15_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~16_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~17_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~18_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~19_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~20_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~21_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~22_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~23_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~24_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~25_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~26_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~27_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~28_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~29_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~30_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~31_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~32_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~33_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~34_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~35_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~36_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~37_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~38_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~39_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~40_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~41_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~42_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~43_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~44_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~45_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~46_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~47_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~48_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~49_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~50_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~51_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~0_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~1_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~3_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~4_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~5_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~6_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~7_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~8_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~9_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~10_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~11_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~12_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~13_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~14_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~15_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~16_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~17_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~18_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~19_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~20_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~21_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~22_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~23_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~24_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~25_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~26_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~27_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~28_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~29_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~30_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~31_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~32_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~33_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~34_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~35_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~36_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~37_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~38_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~39_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~40_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~41_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~42_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~43_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~44_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~45_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~46_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~47_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~48_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~49_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~50_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~51_combout\ : std_logic;
SIGNAL \my_SPI|Mux5~52_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~0_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~1_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~3_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~4_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~5_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~6_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~7_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~8_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~9_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~10_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~11_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~12_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~13_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~14_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~15_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~16_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~17_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~18_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~19_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~20_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~21_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~22_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~23_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~24_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~25_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~26_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~27_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~28_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~29_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~30_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~31_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~32_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~33_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~34_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~35_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~36_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~37_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~38_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~39_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~40_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~41_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~42_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~43_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~44_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~45_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~46_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~47_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~48_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~49_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~50_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~51_combout\ : std_logic;
SIGNAL \my_SPI|Mux6~52_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~0_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~1_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~3_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~4_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~5_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~6_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~7_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~8_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~9_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~10_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~11_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~12_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~13_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~14_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~15_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~16_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~17_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~18_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~19_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~20_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~21_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~22_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~23_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~24_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~25_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~26_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~27_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~28_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~29_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~30_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~31_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~32_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~33_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~34_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~35_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~36_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~37_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~38_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~39_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~40_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~41_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~42_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~43_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~44_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~45_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~46_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~47_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~48_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~49_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~50_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~51_combout\ : std_logic;
SIGNAL \my_SPI|Mux7~52_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~0_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~1_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~3_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~4_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~5_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~6_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~7_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~8_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~9_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~10_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~11_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~12_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~13_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~14_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~15_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~16_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~17_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~18_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~19_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~20_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~21_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~22_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~23_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~24_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~25_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~26_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~27_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~28_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~29_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~30_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~31_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~32_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~33_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~34_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~35_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~36_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~37_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~38_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~39_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~40_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~41_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~42_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~43_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~44_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~45_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~46_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~47_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~48_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~49_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~50_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~51_combout\ : std_logic;
SIGNAL \my_SPI|Mux8~52_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~2_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~3_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~4_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~5_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~6_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~7_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~8_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~9_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~10_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~11_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~12_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~13_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~14_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~15_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~16_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~17_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~18_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~19_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~20_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~21_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~22_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~23_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~24_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~25_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~26_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~27_combout\ : std_logic;
SIGNAL \my_SPI|Mux4~52_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~27_combout\ : std_logic;
SIGNAL \my_SPI|input_register~20_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~28_combout\ : std_logic;
SIGNAL \my_SPI|Mux9~29_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~28_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~29_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~30_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~31_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~32_combout\ : std_logic;
SIGNAL \my_SPI|Mux3~33_combout\ : std_logic;
SIGNAL \my_SPI|table_num[0]~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \divider|Add0~0_combout\ : std_logic;
SIGNAL \divider|Add0~4_combout\ : std_logic;
SIGNAL \divider|Equal0~0_combout\ : std_logic;
SIGNAL \divider|counter~0_combout\ : std_logic;
SIGNAL \divider|Add0~1\ : std_logic;
SIGNAL \divider|Add0~2_combout\ : std_logic;
SIGNAL \divider|Add0~3\ : std_logic;
SIGNAL \divider|Add0~5\ : std_logic;
SIGNAL \divider|Add0~6_combout\ : std_logic;
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
SIGNAL \my_SPI|Equal2~0_combout\ : std_logic;
SIGNAL \my_SPI|Equal2~1_combout\ : std_logic;
SIGNAL \my_SPI|Equal2~2_combout\ : std_logic;
SIGNAL \my_SPI|bit_number[0]~6\ : std_logic;
SIGNAL \my_SPI|bit_number[1]~8\ : std_logic;
SIGNAL \my_SPI|bit_number[2]~10\ : std_logic;
SIGNAL \my_SPI|bit_number[3]~12\ : std_logic;
SIGNAL \my_SPI|bit_number[4]~13_combout\ : std_logic;
SIGNAL \my_SPI|Add0~5\ : std_logic;
SIGNAL \my_SPI|Add0~6_combout\ : std_logic;
SIGNAL \my_SPI|hold_start~0_combout\ : std_logic;
SIGNAL \my_SPI|Add0~12_combout\ : std_logic;
SIGNAL \my_SPI|hold_start~1_combout\ : std_logic;
SIGNAL \my_SPI|start_clocks~2_combout\ : std_logic;
SIGNAL \my_SPI|hold_start~2_combout\ : std_logic;
SIGNAL \my_SPI|start_clocks~3_combout\ : std_logic;
SIGNAL \my_SPI|hold_start~3_combout\ : std_logic;
SIGNAL \my_SPI|hold_start~regout\ : std_logic;
SIGNAL \my_SPI|always1~1_combout\ : std_logic;
SIGNAL \my_SPI|bit_number[0]~15_combout\ : std_logic;
SIGNAL \my_SPI|bit_number[1]~7_combout\ : std_logic;
SIGNAL \my_SPI|bit_number[2]~9_combout\ : std_logic;
SIGNAL \my_SPI|bit_number[3]~11_combout\ : std_logic;
SIGNAL \my_SPI|WideOr1~0_combout\ : std_logic;
SIGNAL \my_SPI|Equal1~0_combout\ : std_logic;
SIGNAL \my_SPI|sin_freq_cnt[0]~0_combout\ : std_logic;
SIGNAL \my_SPI|sin_freq_cnt[0]~1_combout\ : std_logic;
SIGNAL \my_SPI|Add0~1\ : std_logic;
SIGNAL \my_SPI|Add0~2_combout\ : std_logic;
SIGNAL \my_SPI|sin_freq_cnt[1]~2_combout\ : std_logic;
SIGNAL \my_SPI|Add0~3\ : std_logic;
SIGNAL \my_SPI|Add0~4_combout\ : std_logic;
SIGNAL \my_SPI|sin_freq_cnt[2]~3_combout\ : std_logic;
SIGNAL \my_SPI|WideOr0~0_combout\ : std_logic;
SIGNAL \my_SPI|WideOr0~combout\ : std_logic;
SIGNAL \my_SPI|sin_freq_cnt[3]~4_combout\ : std_logic;
SIGNAL \my_SPI|Add0~7\ : std_logic;
SIGNAL \my_SPI|Add0~8_combout\ : std_logic;
SIGNAL \my_SPI|sin_freq_cnt[4]~5_combout\ : std_logic;
SIGNAL \my_SPI|Add0~9\ : std_logic;
SIGNAL \my_SPI|Add0~11\ : std_logic;
SIGNAL \my_SPI|Add0~13\ : std_logic;
SIGNAL \my_SPI|Add0~14_combout\ : std_logic;
SIGNAL \my_SPI|sin_freq_cnt[7]~8_combout\ : std_logic;
SIGNAL \my_SPI|Add0~10_combout\ : std_logic;
SIGNAL \my_SPI|sin_freq_cnt[5]~6_combout\ : std_logic;
SIGNAL \my_SPI|WideOr0~1_combout\ : std_logic;
SIGNAL \my_SPI|start_clocks~0_combout\ : std_logic;
SIGNAL \my_SPI|update~regout\ : std_logic;
SIGNAL \my_SPI|inner_ldac~regout\ : std_logic;
SIGNAL \my_SPI|start~1_combout\ : std_logic;
SIGNAL \my_SPI|start~2_combout\ : std_logic;
SIGNAL \my_SPI|start~regout\ : std_logic;
SIGNAL \my_SPI|sclk~combout\ : std_logic;
SIGNAL \divider|out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \my_SPI|bit_number[0]~5_combout\ : std_logic;
SIGNAL \my_SPI|LessThan1~0_combout\ : std_logic;
SIGNAL \my_SPI|input_register~14_combout\ : std_logic;
SIGNAL \my_SPI|input_register~19_combout\ : std_logic;
SIGNAL \my_SPI|always1~0_combout\ : std_logic;
SIGNAL \my_SPI|start_sync~0_combout\ : std_logic;
SIGNAL \my_SPI|start_sync~1_combout\ : std_logic;
SIGNAL \my_SPI|start_sync~regout\ : std_logic;
SIGNAL \my_SPI|sync~combout\ : std_logic;
SIGNAL \divider|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \my_SPI|table_num\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \my_SPI|start_clocks\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \my_SPI|sin_freq_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \my_SPI|input_register\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \my_SPI|bit_number\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sin_freq~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \divider|ALT_INV_out_clk_inner~clkctrl_outclk\ : std_logic;
SIGNAL \my_SPI|ALT_INV_inner_ldac~regout\ : std_logic;

BEGIN

ww_clk <= clk;
sclk <= ww_sclk;
din <= ww_din;
sync <= ww_sync;
ldac <= ww_ldac;
clr <= ww_clr;
ww_sin_freq <= sin_freq;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divider|out_clk_inner~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \divider|out_clk_inner~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\divider|ALT_INV_out_clk_inner~clkctrl_outclk\ <= NOT \divider|out_clk_inner~clkctrl_outclk\;
\my_SPI|ALT_INV_inner_ldac~regout\ <= NOT \my_SPI|inner_ldac~regout\;

-- Location: LCCOMB_X17_Y9_N0
\my_SPI|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add0~0_combout\ = \my_SPI|sin_freq_cnt\(0) $ (VCC)
-- \my_SPI|Add0~1\ = CARRY(\my_SPI|sin_freq_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|sin_freq_cnt\(0),
	datad => VCC,
	combout => \my_SPI|Add0~0_combout\,
	cout => \my_SPI|Add0~1\);

-- Location: LCFF_X13_Y6_N9
\my_SPI|input_register[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[12]~0_combout\,
	sdata => \my_SPI|input_register~18_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(12));

-- Location: LCFF_X13_Y6_N23
\my_SPI|input_register[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[11]~1_combout\,
	sdata => \my_SPI|input_register[12]~0_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(11));

-- Location: LCCOMB_X13_Y6_N8
\my_SPI|input_register[12]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[12]~0_combout\ = (\my_SPI|WideOr1~combout\ & (!\my_SPI|Mux0~3_combout\)) # (!\my_SPI|WideOr1~combout\ & ((\my_SPI|input_register\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux0~3_combout\,
	datab => \my_SPI|WideOr1~combout\,
	datad => \my_SPI|input_register\(11),
	combout => \my_SPI|input_register[12]~0_combout\);

-- Location: LCFF_X14_Y7_N17
\my_SPI|input_register[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[10]~2_combout\,
	sdata => \my_SPI|input_register[11]~1_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(10));

-- Location: LCCOMB_X13_Y6_N22
\my_SPI|input_register[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[11]~1_combout\ = (\my_SPI|WideOr1~combout\ & ((\my_SPI|Mux1~7_combout\))) # (!\my_SPI|WideOr1~combout\ & (\my_SPI|input_register\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|input_register\(10),
	datab => \my_SPI|WideOr1~combout\,
	datad => \my_SPI|Mux1~7_combout\,
	combout => \my_SPI|input_register[11]~1_combout\);

-- Location: LCCOMB_X14_Y8_N0
\my_SPI|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add2~0_combout\ = (\my_SPI|table_num\(0) & (\my_SPI|table_num\(1) $ (VCC))) # (!\my_SPI|table_num\(0) & (\my_SPI|table_num\(1) & VCC))
-- \my_SPI|Add2~1\ = CARRY((\my_SPI|table_num\(0) & \my_SPI|table_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(1),
	datad => VCC,
	combout => \my_SPI|Add2~0_combout\,
	cout => \my_SPI|Add2~1\);

-- Location: LCCOMB_X14_Y8_N2
\my_SPI|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add2~2_combout\ = (\my_SPI|table_num\(2) & (!\my_SPI|Add2~1\)) # (!\my_SPI|table_num\(2) & ((\my_SPI|Add2~1\) # (GND)))
-- \my_SPI|Add2~3\ = CARRY((!\my_SPI|Add2~1\) # (!\my_SPI|table_num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(2),
	datad => VCC,
	cin => \my_SPI|Add2~1\,
	combout => \my_SPI|Add2~2_combout\,
	cout => \my_SPI|Add2~3\);

-- Location: LCCOMB_X14_Y8_N4
\my_SPI|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add2~4_combout\ = (\my_SPI|table_num\(3) & (\my_SPI|Add2~3\ $ (GND))) # (!\my_SPI|table_num\(3) & (!\my_SPI|Add2~3\ & VCC))
-- \my_SPI|Add2~5\ = CARRY((\my_SPI|table_num\(3) & !\my_SPI|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(3),
	datad => VCC,
	cin => \my_SPI|Add2~3\,
	combout => \my_SPI|Add2~4_combout\,
	cout => \my_SPI|Add2~5\);

-- Location: LCCOMB_X14_Y8_N6
\my_SPI|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add2~6_combout\ = (\my_SPI|table_num\(4) & (!\my_SPI|Add2~5\)) # (!\my_SPI|table_num\(4) & ((\my_SPI|Add2~5\) # (GND)))
-- \my_SPI|Add2~7\ = CARRY((!\my_SPI|Add2~5\) # (!\my_SPI|table_num\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datad => VCC,
	cin => \my_SPI|Add2~5\,
	combout => \my_SPI|Add2~6_combout\,
	cout => \my_SPI|Add2~7\);

-- Location: LCCOMB_X14_Y8_N8
\my_SPI|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add2~8_combout\ = (\my_SPI|table_num\(5) & (\my_SPI|Add2~7\ $ (GND))) # (!\my_SPI|table_num\(5) & (!\my_SPI|Add2~7\ & VCC))
-- \my_SPI|Add2~9\ = CARRY((\my_SPI|table_num\(5) & !\my_SPI|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(5),
	datad => VCC,
	cin => \my_SPI|Add2~7\,
	combout => \my_SPI|Add2~8_combout\,
	cout => \my_SPI|Add2~9\);

-- Location: LCCOMB_X14_Y8_N10
\my_SPI|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add2~10_combout\ = (\my_SPI|table_num\(6) & (!\my_SPI|Add2~9\)) # (!\my_SPI|table_num\(6) & ((\my_SPI|Add2~9\) # (GND)))
-- \my_SPI|Add2~11\ = CARRY((!\my_SPI|Add2~9\) # (!\my_SPI|table_num\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datad => VCC,
	cin => \my_SPI|Add2~9\,
	combout => \my_SPI|Add2~10_combout\,
	cout => \my_SPI|Add2~11\);

-- Location: LCCOMB_X14_Y8_N12
\my_SPI|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add2~12_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|Add2~11\ $ (GND))) # (!\my_SPI|table_num\(7) & (!\my_SPI|Add2~11\ & VCC))
-- \my_SPI|Add2~13\ = CARRY((\my_SPI|table_num\(7) & !\my_SPI|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datad => VCC,
	cin => \my_SPI|Add2~11\,
	combout => \my_SPI|Add2~12_combout\,
	cout => \my_SPI|Add2~13\);

-- Location: LCCOMB_X14_Y8_N14
\my_SPI|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add2~14_combout\ = \my_SPI|table_num\(8) $ (\my_SPI|Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(8),
	cin => \my_SPI|Add2~13\,
	combout => \my_SPI|Add2~14_combout\);

-- Location: LCFF_X14_Y7_N31
\my_SPI|input_register[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[9]~3_combout\,
	sdata => \my_SPI|input_register[10]~2_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(9));

-- Location: LCCOMB_X14_Y7_N16
\my_SPI|input_register[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[10]~2_combout\ = (\my_SPI|WideOr1~combout\ & ((\my_SPI|Mux2~11_combout\))) # (!\my_SPI|WideOr1~combout\ & (\my_SPI|input_register\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~combout\,
	datab => \my_SPI|input_register\(9),
	datad => \my_SPI|Mux2~11_combout\,
	combout => \my_SPI|input_register[10]~2_combout\);

-- Location: LCFF_X14_Y7_N9
\my_SPI|input_register[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[8]~4_combout\,
	sdata => \my_SPI|input_register[9]~3_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(8));

-- Location: LCCOMB_X14_Y7_N30
\my_SPI|input_register[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[9]~3_combout\ = (\my_SPI|WideOr1~combout\ & ((\my_SPI|Mux3~26_combout\))) # (!\my_SPI|WideOr1~combout\ & (\my_SPI|input_register\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~combout\,
	datab => \my_SPI|input_register\(8),
	datad => \my_SPI|Mux3~26_combout\,
	combout => \my_SPI|input_register[9]~3_combout\);

-- Location: LCFF_X14_Y7_N15
\my_SPI|input_register[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[7]~5_combout\,
	sdata => \my_SPI|input_register[8]~4_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(7));

-- Location: LCCOMB_X14_Y7_N8
\my_SPI|input_register[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[8]~4_combout\ = (\my_SPI|WideOr1~combout\ & ((\my_SPI|Mux4~51_combout\))) # (!\my_SPI|WideOr1~combout\ & (\my_SPI|input_register\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~combout\,
	datab => \my_SPI|input_register\(7),
	datad => \my_SPI|Mux4~51_combout\,
	combout => \my_SPI|input_register[8]~4_combout\);

-- Location: LCFF_X14_Y7_N21
\my_SPI|input_register[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[6]~6_combout\,
	sdata => \my_SPI|input_register[7]~5_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(6));

-- Location: LCCOMB_X14_Y7_N14
\my_SPI|input_register[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[7]~5_combout\ = (\my_SPI|WideOr1~combout\ & ((\my_SPI|Mux5~52_combout\))) # (!\my_SPI|WideOr1~combout\ & (\my_SPI|input_register\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~combout\,
	datab => \my_SPI|input_register\(6),
	datad => \my_SPI|Mux5~52_combout\,
	combout => \my_SPI|input_register[7]~5_combout\);

-- Location: LCFF_X14_Y7_N11
\my_SPI|input_register[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[5]~7_combout\,
	sdata => \my_SPI|input_register[6]~6_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(5));

-- Location: LCCOMB_X14_Y7_N20
\my_SPI|input_register[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[6]~6_combout\ = (\my_SPI|WideOr1~combout\ & ((\my_SPI|Mux6~52_combout\))) # (!\my_SPI|WideOr1~combout\ & (\my_SPI|input_register\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|input_register\(5),
	datab => \my_SPI|WideOr1~combout\,
	datad => \my_SPI|Mux6~52_combout\,
	combout => \my_SPI|input_register[6]~6_combout\);

-- Location: LCFF_X14_Y9_N25
\my_SPI|input_register[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[4]~8_combout\,
	sdata => \my_SPI|input_register[5]~7_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(4));

-- Location: LCCOMB_X14_Y7_N10
\my_SPI|input_register[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[5]~7_combout\ = (\my_SPI|WideOr1~combout\ & ((\my_SPI|Mux7~52_combout\))) # (!\my_SPI|WideOr1~combout\ & (\my_SPI|input_register\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~combout\,
	datab => \my_SPI|input_register\(4),
	datad => \my_SPI|Mux7~52_combout\,
	combout => \my_SPI|input_register[5]~7_combout\);

-- Location: LCFF_X14_Y9_N11
\my_SPI|input_register[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register[3]~9_combout\,
	sdata => \my_SPI|input_register[4]~8_combout\,
	sload => \my_SPI|input_register[6]~15_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(3));

-- Location: LCCOMB_X14_Y9_N24
\my_SPI|input_register[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[4]~8_combout\ = (\my_SPI|WideOr1~combout\ & ((\my_SPI|Mux8~52_combout\))) # (!\my_SPI|WideOr1~combout\ & (\my_SPI|input_register\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|input_register\(3),
	datab => \my_SPI|WideOr1~combout\,
	datad => \my_SPI|Mux8~52_combout\,
	combout => \my_SPI|input_register[4]~8_combout\);

-- Location: LCCOMB_X14_Y9_N10
\my_SPI|input_register[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[3]~9_combout\ = (\my_SPI|WideOr1~combout\ & ((\my_SPI|Mux9~26_combout\))) # (!\my_SPI|WideOr1~combout\ & (\my_SPI|input_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~combout\,
	datab => \my_SPI|input_register\(2),
	datad => \my_SPI|Mux9~26_combout\,
	combout => \my_SPI|input_register[3]~9_combout\);

-- Location: LCFF_X1_Y6_N11
\divider|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(2));

-- Location: LCFF_X1_Y6_N15
\divider|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(4));

-- Location: LCFF_X1_Y6_N19
\divider|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(6));

-- Location: LCFF_X18_Y9_N5
\my_SPI|sin_freq_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|sin_freq_cnt[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|sin_freq_cnt\(6));

-- Location: LCCOMB_X18_Y9_N10
\my_SPI|start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start~0_combout\ = (!\my_SPI|WideOr0~0_combout\ & (!\my_SPI|WideOr0~1_combout\ & (\my_SPI|hold_start~regout\ & \my_SPI|start_clocks\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr0~0_combout\,
	datab => \my_SPI|WideOr0~1_combout\,
	datac => \my_SPI|hold_start~regout\,
	datad => \my_SPI|start_clocks\(0),
	combout => \my_SPI|start~0_combout\);

-- Location: LCFF_X14_Y7_N25
\my_SPI|input_register[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register~16_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(14));

-- Location: LCCOMB_X14_Y9_N14
\my_SPI|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|WideOr1~combout\ = (!\my_SPI|bit_number\(4) & \my_SPI|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|bit_number\(4),
	datad => \my_SPI|WideOr1~0_combout\,
	combout => \my_SPI|WideOr1~combout\);

-- Location: LCCOMB_X18_Y9_N2
\my_SPI|start_clocks~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start_clocks~1_combout\ = (!\my_SPI|start~regout\ & (!\my_SPI|hold_start~regout\ & (!\my_SPI|update~regout\ & !\my_SPI|inner_ldac~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|start~regout\,
	datab => \my_SPI|hold_start~regout\,
	datac => \my_SPI|update~regout\,
	datad => \my_SPI|inner_ldac~regout\,
	combout => \my_SPI|start_clocks~1_combout\);

-- Location: LCCOMB_X18_Y9_N4
\my_SPI|sin_freq_cnt[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sin_freq_cnt[6]~7_combout\ = (\my_SPI|Add0~12_combout\ & ((\my_SPI|WideOr0~combout\) # ((\sin_freq~combout\(6) & !\my_SPI|sin_freq_cnt[0]~0_combout\)))) # (!\my_SPI|Add0~12_combout\ & (((\sin_freq~combout\(6) & 
-- !\my_SPI|sin_freq_cnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Add0~12_combout\,
	datab => \my_SPI|WideOr0~combout\,
	datac => \sin_freq~combout\(6),
	datad => \my_SPI|sin_freq_cnt[0]~0_combout\,
	combout => \my_SPI|sin_freq_cnt[6]~7_combout\);

-- Location: LCCOMB_X14_Y9_N6
\my_SPI|input_register[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register[6]~15_combout\ = (\my_SPI|WideOr1~0_combout\) # ((\my_SPI|bit_number\(4)) # (\my_SPI|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~0_combout\,
	datac => \my_SPI|bit_number\(4),
	datad => \my_SPI|LessThan1~0_combout\,
	combout => \my_SPI|input_register[6]~15_combout\);

-- Location: LCFF_X14_Y7_N19
\my_SPI|input_register[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register~17_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(13));

-- Location: LCCOMB_X14_Y7_N24
\my_SPI|input_register~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~16_combout\ = (\my_SPI|WideOr1~combout\ & (((\my_SPI|input_register[6]~15_combout\)))) # (!\my_SPI|WideOr1~combout\ & ((\my_SPI|input_register[6]~15_combout\ & ((\my_SPI|input_register\(14)))) # 
-- (!\my_SPI|input_register[6]~15_combout\ & (\my_SPI|input_register\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~combout\,
	datab => \my_SPI|input_register\(13),
	datac => \my_SPI|input_register\(14),
	datad => \my_SPI|input_register[6]~15_combout\,
	combout => \my_SPI|input_register~16_combout\);

-- Location: LCCOMB_X14_Y7_N18
\my_SPI|input_register~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~17_combout\ = (!\my_SPI|WideOr1~combout\ & ((\my_SPI|input_register[6]~15_combout\ & ((\my_SPI|input_register\(13)))) # (!\my_SPI|input_register[6]~15_combout\ & (\my_SPI|input_register\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~combout\,
	datab => \my_SPI|input_register\(12),
	datac => \my_SPI|input_register\(13),
	datad => \my_SPI|input_register[6]~15_combout\,
	combout => \my_SPI|input_register~17_combout\);

-- Location: LCFF_X14_Y8_N15
\my_SPI|table_num[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|Add2~14_combout\,
	ena => \my_SPI|table_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|table_num\(8));

-- Location: LCFF_X14_Y8_N3
\my_SPI|table_num[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|Add2~2_combout\,
	ena => \my_SPI|table_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|table_num\(2));

-- Location: LCFF_X14_Y8_N7
\my_SPI|table_num[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|Add2~6_combout\,
	ena => \my_SPI|table_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|table_num\(4));

-- Location: LCFF_X13_Y6_N1
\my_SPI|table_num[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|table_num[0]~1_combout\,
	ena => \my_SPI|table_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|table_num\(0));

-- Location: LCFF_X14_Y8_N1
\my_SPI|table_num[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|Add2~0_combout\,
	ena => \my_SPI|table_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|table_num\(1));

-- Location: LCCOMB_X13_Y10_N0
\my_SPI|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux0~0_combout\ = (\my_SPI|table_num\(0) & (\my_SPI|table_num\(1) & (\my_SPI|table_num\(2) & \my_SPI|table_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux0~0_combout\);

-- Location: LCFF_X14_Y8_N5
\my_SPI|table_num[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|Add2~4_combout\,
	ena => \my_SPI|table_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|table_num\(3));

-- Location: LCFF_X14_Y8_N9
\my_SPI|table_num[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|Add2~8_combout\,
	ena => \my_SPI|table_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|table_num\(5));

-- Location: LCCOMB_X12_Y8_N28
\my_SPI|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux0~1_combout\ = (\my_SPI|table_num\(3) & \my_SPI|table_num\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux0~1_combout\);

-- Location: LCFF_X14_Y8_N11
\my_SPI|table_num[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|Add2~10_combout\,
	ena => \my_SPI|table_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|table_num\(6));

-- Location: LCFF_X14_Y8_N13
\my_SPI|table_num[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|Add2~12_combout\,
	ena => \my_SPI|table_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|table_num\(7));

-- Location: LCCOMB_X12_Y7_N20
\my_SPI|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux0~2_combout\ = (\my_SPI|table_num\(7) & \my_SPI|table_num\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y7_N14
\my_SPI|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux0~3_combout\ = (\my_SPI|table_num\(8)) # ((\my_SPI|Mux0~0_combout\ & (\my_SPI|Mux0~2_combout\ & \my_SPI|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(8),
	datab => \my_SPI|Mux0~0_combout\,
	datac => \my_SPI|Mux0~2_combout\,
	datad => \my_SPI|Mux0~1_combout\,
	combout => \my_SPI|Mux0~3_combout\);

-- Location: LCCOMB_X13_Y9_N4
\my_SPI|input_register~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~18_combout\ = (\my_SPI|input_register\(12) & ((\my_SPI|bit_number\(4)) # (!\my_SPI|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|input_register\(12),
	datac => \my_SPI|WideOr1~0_combout\,
	datad => \my_SPI|bit_number\(4),
	combout => \my_SPI|input_register~18_combout\);

-- Location: LCCOMB_X12_Y7_N12
\my_SPI|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux1~0_combout\ = (\my_SPI|table_num\(2) & (((\my_SPI|table_num\(0)) # (\my_SPI|table_num\(1))) # (!\my_SPI|table_num\(4)))) # (!\my_SPI|table_num\(2) & (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(0),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y8_N26
\my_SPI|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux1~1_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3) & (!\my_SPI|table_num\(4) & !\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6)))))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(4) & 
-- ((\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux1~1_combout\);

-- Location: LCCOMB_X12_Y7_N30
\my_SPI|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux1~2_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(3) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(3) & (!\my_SPI|table_num\(5) & \my_SPI|table_num\(4))))) # (!\my_SPI|table_num\(6) & (((\my_SPI|table_num\(5) & 
-- \my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y7_N8
\my_SPI|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux1~3_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|Mux1~2_combout\) # (!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|Mux1~2_combout\,
	combout => \my_SPI|Mux1~3_combout\);

-- Location: LCCOMB_X12_Y7_N26
\my_SPI|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux1~4_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(7) & \my_SPI|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|Mux1~2_combout\,
	combout => \my_SPI|Mux1~4_combout\);

-- Location: LCCOMB_X12_Y7_N24
\my_SPI|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux1~5_combout\ = (\my_SPI|Mux1~1_combout\ & (!\my_SPI|Mux1~0_combout\ & (!\my_SPI|Mux1~3_combout\ & !\my_SPI|Mux1~4_combout\))) # (!\my_SPI|Mux1~1_combout\ & (((\my_SPI|Mux1~3_combout\ & \my_SPI|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux1~0_combout\,
	datab => \my_SPI|Mux1~1_combout\,
	datac => \my_SPI|Mux1~3_combout\,
	datad => \my_SPI|Mux1~4_combout\,
	combout => \my_SPI|Mux1~5_combout\);

-- Location: LCCOMB_X12_Y7_N2
\my_SPI|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux1~6_combout\ = (\my_SPI|Mux1~1_combout\ & ((\my_SPI|Mux1~0_combout\ & ((!\my_SPI|Mux1~4_combout\))) # (!\my_SPI|Mux1~0_combout\ & (\my_SPI|Mux1~3_combout\)))) # (!\my_SPI|Mux1~1_combout\ & ((\my_SPI|Mux1~3_combout\ $ 
-- (\my_SPI|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux1~0_combout\,
	datab => \my_SPI|Mux1~1_combout\,
	datac => \my_SPI|Mux1~3_combout\,
	datad => \my_SPI|Mux1~4_combout\,
	combout => \my_SPI|Mux1~6_combout\);

-- Location: LCCOMB_X12_Y7_N0
\my_SPI|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux1~7_combout\ = (\my_SPI|Mux1~5_combout\ & ((\my_SPI|table_num\(8)) # ((\my_SPI|Mux0~0_combout\ & !\my_SPI|Mux1~6_combout\)))) # (!\my_SPI|Mux1~5_combout\ & (\my_SPI|table_num\(8) $ (((\my_SPI|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(8),
	datab => \my_SPI|Mux0~0_combout\,
	datac => \my_SPI|Mux1~5_combout\,
	datad => \my_SPI|Mux1~6_combout\,
	combout => \my_SPI|Mux1~7_combout\);

-- Location: LCCOMB_X14_Y9_N8
\my_SPI|table_num[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|table_num[8]~0_combout\ = (\my_SPI|WideOr1~0_combout\ & (!\my_SPI|bit_number\(4) & (\my_SPI|start~regout\ & !\my_SPI|hold_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~0_combout\,
	datab => \my_SPI|bit_number\(4),
	datac => \my_SPI|start~regout\,
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|table_num[8]~0_combout\);

-- Location: LCCOMB_X17_Y7_N4
\my_SPI|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~0_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(7) $ (((!\my_SPI|table_num\(5) & !\my_SPI|table_num\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y7_N22
\my_SPI|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~1_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(0)) # (!\my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(3) & ((!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(3) & 
-- (\my_SPI|table_num\(0) & \my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y7_N8
\my_SPI|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~2_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6)) # (\my_SPI|table_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y7_N6
\my_SPI|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~3_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|Mux2~2_combout\ $ (((!\my_SPI|table_num\(6) & \my_SPI|Mux2~1_combout\))))) # (!\my_SPI|table_num\(2) & (\my_SPI|Mux2~2_combout\ & (\my_SPI|table_num\(6) $ (!\my_SPI|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|Mux2~2_combout\,
	datad => \my_SPI|Mux2~1_combout\,
	combout => \my_SPI|Mux2~3_combout\);

-- Location: LCCOMB_X17_Y7_N16
\my_SPI|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~4_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|Mux2~1_combout\ $ (((!\my_SPI|table_num\(6) & !\my_SPI|Mux2~2_combout\))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(6) & (\my_SPI|Mux2~2_combout\ & !\my_SPI|Mux2~1_combout\)) # 
-- (!\my_SPI|table_num\(6) & (!\my_SPI|Mux2~2_combout\ & \my_SPI|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|Mux2~2_combout\,
	datad => \my_SPI|Mux2~1_combout\,
	combout => \my_SPI|Mux2~4_combout\);

-- Location: LCCOMB_X17_Y7_N18
\my_SPI|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~5_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|table_num\(5) & (\my_SPI|table_num\(4) $ (\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(5) $ (\my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux2~5_combout\);

-- Location: LCCOMB_X17_Y7_N24
\my_SPI|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~6_combout\ = (\my_SPI|table_num\(7) & (((\my_SPI|table_num\(5) & \my_SPI|table_num\(4))) # (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(4) & 
-- (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux2~6_combout\);

-- Location: LCCOMB_X17_Y7_N14
\my_SPI|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~7_combout\ = (\my_SPI|Mux2~3_combout\ & (\my_SPI|Mux2~6_combout\ $ (((\my_SPI|Mux2~5_combout\ & !\my_SPI|Mux2~4_combout\))))) # (!\my_SPI|Mux2~3_combout\ & ((\my_SPI|Mux2~6_combout\) # (\my_SPI|Mux2~5_combout\ $ (\my_SPI|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux2~6_combout\,
	datab => \my_SPI|Mux2~5_combout\,
	datac => \my_SPI|Mux2~4_combout\,
	datad => \my_SPI|Mux2~3_combout\,
	combout => \my_SPI|Mux2~7_combout\);

-- Location: LCCOMB_X17_Y7_N0
\my_SPI|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~8_combout\ = (\my_SPI|Mux2~6_combout\ & ((\my_SPI|Mux2~5_combout\ $ (\my_SPI|Mux2~4_combout\)) # (!\my_SPI|Mux2~3_combout\))) # (!\my_SPI|Mux2~6_combout\ & (\my_SPI|Mux2~5_combout\ & (\my_SPI|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux2~6_combout\,
	datab => \my_SPI|Mux2~5_combout\,
	datac => \my_SPI|Mux2~4_combout\,
	datad => \my_SPI|Mux2~3_combout\,
	combout => \my_SPI|Mux2~8_combout\);

-- Location: LCCOMB_X17_Y7_N30
\my_SPI|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~9_combout\ = \my_SPI|table_num\(8) $ (((\my_SPI|Mux2~3_combout\ & (\my_SPI|Mux2~7_combout\)) # (!\my_SPI|Mux2~3_combout\ & ((\my_SPI|Mux2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux2~3_combout\,
	datab => \my_SPI|table_num\(8),
	datac => \my_SPI|Mux2~7_combout\,
	datad => \my_SPI|Mux2~8_combout\,
	combout => \my_SPI|Mux2~9_combout\);

-- Location: LCCOMB_X17_Y7_N20
\my_SPI|Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~10_combout\ = (\my_SPI|Mux2~3_combout\ & (((\my_SPI|table_num\(8) & \my_SPI|Mux2~7_combout\)) # (!\my_SPI|Mux2~8_combout\))) # (!\my_SPI|Mux2~3_combout\ & (((\my_SPI|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux2~3_combout\,
	datab => \my_SPI|table_num\(8),
	datac => \my_SPI|Mux2~7_combout\,
	datad => \my_SPI|Mux2~8_combout\,
	combout => \my_SPI|Mux2~10_combout\);

-- Location: LCCOMB_X17_Y7_N26
\my_SPI|Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux2~11_combout\ = \my_SPI|Mux2~9_combout\ $ (((\my_SPI|Mux2~0_combout\ & \my_SPI|Mux2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|Mux2~0_combout\,
	datac => \my_SPI|Mux2~10_combout\,
	datad => \my_SPI|Mux2~9_combout\,
	combout => \my_SPI|Mux2~11_combout\);

-- Location: LCCOMB_X13_Y8_N20
\my_SPI|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~2_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(5) & \my_SPI|table_num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux3~2_combout\);

-- Location: LCCOMB_X13_Y8_N18
\my_SPI|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~3_combout\ = (!\my_SPI|table_num\(7) & !\my_SPI|table_num\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux3~3_combout\);

-- Location: LCCOMB_X13_Y8_N28
\my_SPI|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~4_combout\ = (\my_SPI|table_num\(3) & (\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6) & (!\my_SPI|Mux3~2_combout\)) # (!\my_SPI|table_num\(6) & ((!\my_SPI|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|Mux3~2_combout\,
	datad => \my_SPI|Mux3~3_combout\,
	combout => \my_SPI|Mux3~4_combout\);

-- Location: LCCOMB_X13_Y8_N2
\my_SPI|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~5_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(0)) # ((\my_SPI|table_num\(2)) # (!\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux3~5_combout\);

-- Location: LCCOMB_X13_Y8_N16
\my_SPI|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~6_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|Mux3~4_combout\ & (\my_SPI|Mux3~5_combout\)) # (!\my_SPI|Mux3~4_combout\ & ((!\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(3) & (((\my_SPI|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|Mux3~5_combout\,
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|Mux3~4_combout\,
	combout => \my_SPI|Mux3~6_combout\);

-- Location: LCCOMB_X13_Y7_N24
\my_SPI|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~7_combout\ = (\my_SPI|table_num\(7) & (((!\my_SPI|table_num\(0) & !\my_SPI|table_num\(2))) # (!\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(2) $ (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux3~7_combout\);

-- Location: LCCOMB_X13_Y7_N22
\my_SPI|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~8_combout\ = (\my_SPI|table_num\(7) & (((\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(0) & (\my_SPI|table_num\(2) & !\my_SPI|table_num\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux3~8_combout\);

-- Location: LCCOMB_X13_Y7_N20
\my_SPI|Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~9_combout\ = (\my_SPI|table_num\(3) & (\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6) & ((\my_SPI|Mux3~8_combout\))) # (!\my_SPI|table_num\(6) & (\my_SPI|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|Mux3~3_combout\,
	datad => \my_SPI|Mux3~8_combout\,
	combout => \my_SPI|Mux3~9_combout\);

-- Location: LCCOMB_X13_Y7_N26
\my_SPI|Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~10_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(2) & ((\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(2) & (!\my_SPI|table_num\(0) & !\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(7) & (((\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux3~10_combout\);

-- Location: LCCOMB_X13_Y7_N4
\my_SPI|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~11_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|Mux3~9_combout\ & ((!\my_SPI|Mux3~10_combout\))) # (!\my_SPI|Mux3~9_combout\ & (!\my_SPI|Mux3~7_combout\)))) # (!\my_SPI|table_num\(3) & (((\my_SPI|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux3~7_combout\,
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux3~9_combout\,
	datad => \my_SPI|Mux3~10_combout\,
	combout => \my_SPI|Mux3~11_combout\);

-- Location: LCCOMB_X13_Y7_N30
\my_SPI|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~12_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(1)) # ((!\my_SPI|Mux3~31_combout\)))) # (!\my_SPI|table_num\(4) & (!\my_SPI|table_num\(1) & (\my_SPI|Mux3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux3~11_combout\,
	datad => \my_SPI|Mux3~31_combout\,
	combout => \my_SPI|Mux3~12_combout\);

-- Location: LCCOMB_X12_Y7_N10
\my_SPI|Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~13_combout\ = (\my_SPI|table_num\(7)) # ((\my_SPI|table_num\(6)) # ((\my_SPI|table_num\(0) & \my_SPI|table_num\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux3~13_combout\);

-- Location: LCCOMB_X12_Y7_N4
\my_SPI|Mux3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~14_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|Mux3~29_combout\ & ((\my_SPI|Mux0~2_combout\))) # (!\my_SPI|Mux3~29_combout\ & (!\my_SPI|Mux3~13_combout\)))) # (!\my_SPI|table_num\(3) & (((\my_SPI|Mux3~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux3~13_combout\,
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux0~2_combout\,
	datad => \my_SPI|Mux3~29_combout\,
	combout => \my_SPI|Mux3~14_combout\);

-- Location: LCCOMB_X13_Y7_N0
\my_SPI|Mux3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~15_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux3~12_combout\ & ((\my_SPI|Mux3~14_combout\))) # (!\my_SPI|Mux3~12_combout\ & (!\my_SPI|Mux3~6_combout\)))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux3~6_combout\,
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux3~14_combout\,
	datad => \my_SPI|Mux3~12_combout\,
	combout => \my_SPI|Mux3~15_combout\);

-- Location: LCCOMB_X14_Y10_N12
\my_SPI|Mux3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~16_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(2) & (\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(2) & ((!\my_SPI|table_num\(7)))))) # (!\my_SPI|table_num\(5) & (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(2)) # 
-- (\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux3~16_combout\);

-- Location: LCCOMB_X13_Y7_N14
\my_SPI|Mux3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~17_combout\ = (\my_SPI|table_num\(3) & (\my_SPI|Mux3~16_combout\)) # (!\my_SPI|table_num\(3) & ((\my_SPI|Mux3~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux3~16_combout\,
	datad => \my_SPI|Mux3~27_combout\,
	combout => \my_SPI|Mux3~17_combout\);

-- Location: LCCOMB_X13_Y7_N16
\my_SPI|Mux3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~18_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(1)) # ((\my_SPI|Mux3~31_combout\)))) # (!\my_SPI|table_num\(4) & (!\my_SPI|table_num\(1) & (\my_SPI|Mux3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux3~17_combout\,
	datad => \my_SPI|Mux3~31_combout\,
	combout => \my_SPI|Mux3~18_combout\);

-- Location: LCCOMB_X17_Y7_N12
\my_SPI|Mux3~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~19_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & !\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(6) $ 
-- (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux3~19_combout\);

-- Location: LCCOMB_X12_Y7_N22
\my_SPI|Mux3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~20_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|table_num\(5) & \my_SPI|table_num\(6))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(5) & !\my_SPI|table_num\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux3~20_combout\);

-- Location: LCCOMB_X12_Y7_N16
\my_SPI|Mux3~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~21_combout\ = (\my_SPI|table_num\(5) & (((\my_SPI|table_num\(2) & \my_SPI|table_num\(7))) # (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(2) & (!\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(2) & 
-- ((\my_SPI|table_num\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux3~21_combout\);

-- Location: LCCOMB_X12_Y7_N6
\my_SPI|Mux3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~22_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(0)) # ((!\my_SPI|Mux3~20_combout\)))) # (!\my_SPI|table_num\(3) & (!\my_SPI|table_num\(0) & (!\my_SPI|Mux3~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|Mux3~21_combout\,
	datad => \my_SPI|Mux3~20_combout\,
	combout => \my_SPI|Mux3~22_combout\);

-- Location: LCCOMB_X17_Y7_N10
\my_SPI|Mux3~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~23_combout\ = (\my_SPI|table_num\(2)) # ((\my_SPI|table_num\(7) & ((!\my_SPI|table_num\(5)) # (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6)) # (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux3~23_combout\);

-- Location: LCCOMB_X13_Y7_N10
\my_SPI|Mux3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~24_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux3~22_combout\ & ((\my_SPI|Mux3~23_combout\))) # (!\my_SPI|Mux3~22_combout\ & (!\my_SPI|Mux3~19_combout\)))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux3~19_combout\,
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|Mux3~22_combout\,
	datad => \my_SPI|Mux3~23_combout\,
	combout => \my_SPI|Mux3~24_combout\);

-- Location: LCCOMB_X13_Y7_N12
\my_SPI|Mux3~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~25_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux3~18_combout\ & ((\my_SPI|Mux3~24_combout\))) # (!\my_SPI|Mux3~18_combout\ & (\my_SPI|Mux3~6_combout\)))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux3~6_combout\,
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux3~18_combout\,
	datad => \my_SPI|Mux3~24_combout\,
	combout => \my_SPI|Mux3~25_combout\);

-- Location: LCCOMB_X14_Y7_N28
\my_SPI|Mux3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~26_combout\ = (\my_SPI|table_num\(8) & (\my_SPI|Mux3~15_combout\)) # (!\my_SPI|table_num\(8) & ((\my_SPI|Mux3~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(8),
	datac => \my_SPI|Mux3~15_combout\,
	datad => \my_SPI|Mux3~25_combout\,
	combout => \my_SPI|Mux3~26_combout\);

-- Location: LCCOMB_X15_Y8_N4
\my_SPI|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~2_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(3) $ (((\my_SPI|table_num\(7) & !\my_SPI|table_num\(2)))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(2) & (\my_SPI|table_num\(7) $ (!\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~2_combout\);

-- Location: LCCOMB_X15_Y8_N22
\my_SPI|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~3_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(2)) # (\my_SPI|table_num\(3) $ (\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(3) $ (((!\my_SPI|table_num\(7) & \my_SPI|table_num\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~3_combout\);

-- Location: LCCOMB_X15_Y8_N20
\my_SPI|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~4_combout\ = (\my_SPI|table_num\(7) & (((\my_SPI|table_num\(3)) # (!\my_SPI|table_num\(2))) # (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) $ (\my_SPI|table_num\(3) $ (\my_SPI|table_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~4_combout\);

-- Location: LCCOMB_X15_Y8_N30
\my_SPI|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~5_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(4)) # ((!\my_SPI|Mux4~3_combout\)))) # (!\my_SPI|table_num\(5) & (!\my_SPI|table_num\(4) & (!\my_SPI|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux4~4_combout\,
	datad => \my_SPI|Mux4~3_combout\,
	combout => \my_SPI|Mux4~5_combout\);

-- Location: LCCOMB_X17_Y8_N12
\my_SPI|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~6_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|table_num\(3) $ (\my_SPI|table_num\(6) $ (\my_SPI|table_num\(2))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(3) & (!\my_SPI|table_num\(6) & !\my_SPI|table_num\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~6_combout\);

-- Location: LCCOMB_X15_Y8_N16
\my_SPI|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~7_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux4~5_combout\ & (\my_SPI|Mux4~6_combout\)) # (!\my_SPI|Mux4~5_combout\ & ((\my_SPI|Mux4~2_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux4~6_combout\,
	datab => \my_SPI|Mux4~2_combout\,
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|Mux4~5_combout\,
	combout => \my_SPI|Mux4~7_combout\);

-- Location: LCCOMB_X18_Y8_N12
\my_SPI|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~8_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6) & (!\my_SPI|table_num\(2))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(2) & ((!\my_SPI|table_num\(6)) # 
-- (!\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux4~8_combout\);

-- Location: LCCOMB_X18_Y8_N2
\my_SPI|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~9_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(2)) # (\my_SPI|table_num\(7) $ (\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux4~9_combout\);

-- Location: LCCOMB_X18_Y8_N8
\my_SPI|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~10_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6) & (!\my_SPI|table_num\(2) & \my_SPI|table_num\(5))) # (!\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(2) $ 
-- (((\my_SPI|table_num\(6) & !\my_SPI|table_num\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux4~10_combout\);

-- Location: LCCOMB_X18_Y8_N10
\my_SPI|Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~11_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(3))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(3) & ((!\my_SPI|Mux4~9_combout\))) # (!\my_SPI|table_num\(3) & (!\my_SPI|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux4~10_combout\,
	datad => \my_SPI|Mux4~9_combout\,
	combout => \my_SPI|Mux4~11_combout\);

-- Location: LCCOMB_X17_Y8_N30
\my_SPI|Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~12_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5) & (\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(2)))))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5) & (!\my_SPI|table_num\(6) & 
-- !\my_SPI|table_num\(2))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~12_combout\);

-- Location: LCCOMB_X18_Y8_N0
\my_SPI|Mux4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~13_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux4~11_combout\ & ((\my_SPI|Mux4~12_combout\))) # (!\my_SPI|Mux4~11_combout\ & (\my_SPI|Mux4~8_combout\)))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux4~8_combout\,
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux4~12_combout\,
	datad => \my_SPI|Mux4~11_combout\,
	combout => \my_SPI|Mux4~13_combout\);

-- Location: LCCOMB_X17_Y8_N16
\my_SPI|Mux4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~14_combout\ = (\my_SPI|table_num\(6) & (((\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(2) & (\my_SPI|table_num\(5) $ (!\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux4~14_combout\);

-- Location: LCCOMB_X18_Y8_N6
\my_SPI|Mux4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~15_combout\ = (\my_SPI|table_num\(7) & (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(6)) # (\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(6) & 
-- (\my_SPI|table_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux4~15_combout\);

-- Location: LCCOMB_X18_Y8_N24
\my_SPI|Mux4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~16_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5)) # (!\my_SPI|table_num\(2)))) # (!\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5) & 
-- ((\my_SPI|table_num\(2)))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux4~16_combout\);

-- Location: LCCOMB_X18_Y8_N14
\my_SPI|Mux4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~17_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(3))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(3) & ((\my_SPI|Mux4~15_combout\))) # (!\my_SPI|table_num\(3) & (!\my_SPI|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux4~16_combout\,
	datad => \my_SPI|Mux4~15_combout\,
	combout => \my_SPI|Mux4~17_combout\);

-- Location: LCCOMB_X17_Y8_N10
\my_SPI|Mux4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~18_combout\ = (\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) $ (((\my_SPI|table_num\(7) & \my_SPI|table_num\(2)))))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7) & ((!\my_SPI|table_num\(2)))) # (!\my_SPI|table_num\(7) & 
-- (!\my_SPI|table_num\(6) & \my_SPI|table_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~18_combout\);

-- Location: LCCOMB_X18_Y8_N16
\my_SPI|Mux4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~19_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux4~17_combout\ & ((!\my_SPI|Mux4~18_combout\))) # (!\my_SPI|Mux4~17_combout\ & (\my_SPI|Mux4~14_combout\)))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|Mux4~14_combout\,
	datac => \my_SPI|Mux4~17_combout\,
	datad => \my_SPI|Mux4~18_combout\,
	combout => \my_SPI|Mux4~19_combout\);

-- Location: LCCOMB_X18_Y8_N26
\my_SPI|Mux4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~20_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|table_num\(0)) # ((\my_SPI|Mux4~13_combout\)))) # (!\my_SPI|table_num\(1) & (!\my_SPI|table_num\(0) & (\my_SPI|Mux4~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|Mux4~19_combout\,
	datad => \my_SPI|Mux4~13_combout\,
	combout => \my_SPI|Mux4~20_combout\);

-- Location: LCCOMB_X14_Y10_N30
\my_SPI|Mux4~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~21_combout\ = (\my_SPI|table_num\(2) & (((\my_SPI|table_num\(3))) # (!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(2) & (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7)) # (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~21_combout\);

-- Location: LCCOMB_X14_Y10_N20
\my_SPI|Mux4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~22_combout\ = (\my_SPI|table_num\(3) & (((\my_SPI|table_num\(6)) # (\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(2) & ((!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(2) & (\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux4~22_combout\);

-- Location: LCCOMB_X14_Y10_N10
\my_SPI|Mux4~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~23_combout\ = (\my_SPI|table_num\(2) & (((\my_SPI|table_num\(3) & !\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(2) & (\my_SPI|table_num\(7) $ (((!\my_SPI|table_num\(3) & \my_SPI|table_num\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux4~23_combout\);

-- Location: LCCOMB_X14_Y10_N8
\my_SPI|Mux4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~24_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(4)) # ((!\my_SPI|Mux4~22_combout\)))) # (!\my_SPI|table_num\(5) & (!\my_SPI|table_num\(4) & ((!\my_SPI|Mux4~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux4~22_combout\,
	datad => \my_SPI|Mux4~23_combout\,
	combout => \my_SPI|Mux4~24_combout\);

-- Location: LCCOMB_X14_Y10_N22
\my_SPI|Mux4~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~25_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(3)) # (!\my_SPI|table_num\(2))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(3) $ (((\my_SPI|table_num\(2)) # (\my_SPI|table_num\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux4~25_combout\);

-- Location: LCCOMB_X14_Y10_N16
\my_SPI|Mux4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~26_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux4~24_combout\ & (\my_SPI|Mux4~25_combout\)) # (!\my_SPI|Mux4~24_combout\ & ((\my_SPI|Mux4~21_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|Mux4~25_combout\,
	datac => \my_SPI|Mux4~24_combout\,
	datad => \my_SPI|Mux4~21_combout\,
	combout => \my_SPI|Mux4~26_combout\);

-- Location: LCCOMB_X14_Y7_N22
\my_SPI|Mux4~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~27_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux4~20_combout\ & ((\my_SPI|Mux4~26_combout\))) # (!\my_SPI|Mux4~20_combout\ & (\my_SPI|Mux4~7_combout\)))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|Mux4~7_combout\,
	datac => \my_SPI|Mux4~26_combout\,
	datad => \my_SPI|Mux4~20_combout\,
	combout => \my_SPI|Mux4~27_combout\);

-- Location: LCCOMB_X17_Y8_N4
\my_SPI|Mux4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~28_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|table_num\(4) $ (((\my_SPI|table_num\(7)) # (\my_SPI|table_num\(0)))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(7)) # ((\my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux4~28_combout\);

-- Location: LCCOMB_X17_Y8_N18
\my_SPI|Mux4~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~29_combout\ = (\my_SPI|table_num\(2) & (((!\my_SPI|table_num\(7) & \my_SPI|table_num\(0))) # (!\my_SPI|table_num\(4)))) # (!\my_SPI|table_num\(2) & (\my_SPI|table_num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(0),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux4~29_combout\);

-- Location: LCCOMB_X17_Y8_N8
\my_SPI|Mux4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~30_combout\ = (\my_SPI|table_num\(7)) # (\my_SPI|table_num\(4) $ (\my_SPI|table_num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~30_combout\);

-- Location: LCCOMB_X17_Y8_N22
\my_SPI|Mux4~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~31_combout\ = (\my_SPI|table_num\(3) & (\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6) & ((!\my_SPI|Mux4~29_combout\))) # (!\my_SPI|table_num\(6) & (\my_SPI|Mux4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|Mux4~30_combout\,
	datad => \my_SPI|Mux4~29_combout\,
	combout => \my_SPI|Mux4~31_combout\);

-- Location: LCCOMB_X17_Y8_N24
\my_SPI|Mux4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~32_combout\ = (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(2) & ((!\my_SPI|table_num\(0)) # (!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(2) & (\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux4~32_combout\);

-- Location: LCCOMB_X17_Y8_N6
\my_SPI|Mux4~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~33_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|Mux4~31_combout\ & (\my_SPI|Mux4~32_combout\)) # (!\my_SPI|Mux4~31_combout\ & ((\my_SPI|Mux4~28_combout\))))) # (!\my_SPI|table_num\(3) & (((\my_SPI|Mux4~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux4~32_combout\,
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux4~28_combout\,
	datad => \my_SPI|Mux4~31_combout\,
	combout => \my_SPI|Mux4~33_combout\);

-- Location: LCCOMB_X14_Y8_N28
\my_SPI|Mux4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~34_combout\ = \my_SPI|table_num\(4) $ (((\my_SPI|table_num\(3) & (\my_SPI|table_num\(2))) # (!\my_SPI|table_num\(3) & ((!\my_SPI|table_num\(0)) # (!\my_SPI|table_num\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux4~34_combout\);

-- Location: LCCOMB_X14_Y8_N22
\my_SPI|Mux4~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~35_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6)) # ((\my_SPI|table_num\(2) & \my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(2)) # (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux4~35_combout\);

-- Location: LCCOMB_X14_Y8_N24
\my_SPI|Mux4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~36_combout\ = (\my_SPI|table_num\(6) & (((\my_SPI|Mux4~34_combout\)))) # (!\my_SPI|table_num\(6) & ((\my_SPI|Mux4~35_combout\) # ((!\my_SPI|table_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|Mux4~35_combout\,
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|Mux4~34_combout\,
	combout => \my_SPI|Mux4~36_combout\);

-- Location: LCCOMB_X14_Y8_N18
\my_SPI|Mux4~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~37_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|Mux4~36_combout\ & ((\my_SPI|Mux4~35_combout\) # (\my_SPI|Mux4~52_combout\)))) # (!\my_SPI|table_num\(7) & ((\my_SPI|Mux4~35_combout\) # ((\my_SPI|Mux4~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|Mux4~35_combout\,
	datac => \my_SPI|Mux4~36_combout\,
	datad => \my_SPI|Mux4~52_combout\,
	combout => \my_SPI|Mux4~37_combout\);

-- Location: LCCOMB_X13_Y8_N22
\my_SPI|Mux4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~38_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(6) $ (((\my_SPI|table_num\(3)))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & (\my_SPI|table_num\(0) $ (!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(6) & 
-- (\my_SPI|table_num\(0) & !\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(0),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux4~38_combout\);

-- Location: LCCOMB_X13_Y8_N24
\my_SPI|Mux4~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~39_combout\ = (\my_SPI|table_num\(7) & ((!\my_SPI|table_num\(4)) # (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6)) # (\my_SPI|table_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux4~39_combout\);

-- Location: LCCOMB_X13_Y8_N10
\my_SPI|Mux4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~40_combout\ = (\my_SPI|table_num\(2) & (((\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(3) & ((\my_SPI|table_num\(7)) # (!\my_SPI|Mux4~39_combout\))) # (!\my_SPI|table_num\(3) & ((\my_SPI|Mux4~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|Mux4~39_combout\,
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~40_combout\);

-- Location: LCCOMB_X13_Y8_N12
\my_SPI|Mux4~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~41_combout\ = (\my_SPI|table_num\(3) & (\my_SPI|table_num\(4))) # (!\my_SPI|table_num\(3) & (\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(0)) # (!\my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(0),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux4~41_combout\);

-- Location: LCCOMB_X13_Y8_N30
\my_SPI|Mux4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~42_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|Mux4~40_combout\ & (!\my_SPI|Mux4~41_combout\)) # (!\my_SPI|Mux4~40_combout\ & ((\my_SPI|Mux4~38_combout\))))) # (!\my_SPI|table_num\(2) & (((\my_SPI|Mux4~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux4~41_combout\,
	datab => \my_SPI|Mux4~38_combout\,
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|Mux4~40_combout\,
	combout => \my_SPI|Mux4~42_combout\);

-- Location: LCCOMB_X14_Y8_N16
\my_SPI|Mux4~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~43_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(5) & ((\my_SPI|Mux4~37_combout\))) # (!\my_SPI|table_num\(5) & (\my_SPI|Mux4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|Mux4~42_combout\,
	datad => \my_SPI|Mux4~37_combout\,
	combout => \my_SPI|Mux4~43_combout\);

-- Location: LCCOMB_X17_Y8_N0
\my_SPI|Mux4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~44_combout\ = (\my_SPI|table_num\(7)) # ((\my_SPI|table_num\(4) & \my_SPI|table_num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~44_combout\);

-- Location: LCCOMB_X17_Y8_N14
\my_SPI|Mux4~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~45_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|table_num\(4) $ (((!\my_SPI|table_num\(2)))))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(4)) # ((\my_SPI|table_num\(0)) # (\my_SPI|table_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(0),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux4~45_combout\);

-- Location: LCCOMB_X17_Y8_N28
\my_SPI|Mux4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~46_combout\ = (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(4) & ((!\my_SPI|table_num\(0)) # (!\my_SPI|table_num\(2)))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(0),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux4~46_combout\);

-- Location: LCCOMB_X17_Y8_N26
\my_SPI|Mux4~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~47_combout\ = (\my_SPI|table_num\(3) & (\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6) & (\my_SPI|Mux4~45_combout\)) # (!\my_SPI|table_num\(6) & ((\my_SPI|Mux4~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|Mux4~45_combout\,
	datad => \my_SPI|Mux4~46_combout\,
	combout => \my_SPI|Mux4~47_combout\);

-- Location: LCCOMB_X17_Y8_N20
\my_SPI|Mux4~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~48_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(2) & (\my_SPI|table_num\(4) & !\my_SPI|table_num\(0))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(4)) # (!\my_SPI|table_num\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux4~48_combout\);

-- Location: LCCOMB_X17_Y8_N2
\my_SPI|Mux4~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~49_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|Mux4~47_combout\ & ((!\my_SPI|Mux4~48_combout\))) # (!\my_SPI|Mux4~47_combout\ & (\my_SPI|Mux4~44_combout\)))) # (!\my_SPI|table_num\(3) & (((\my_SPI|Mux4~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|Mux4~44_combout\,
	datac => \my_SPI|Mux4~48_combout\,
	datad => \my_SPI|Mux4~47_combout\,
	combout => \my_SPI|Mux4~49_combout\);

-- Location: LCCOMB_X14_Y8_N26
\my_SPI|Mux4~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~50_combout\ = (\my_SPI|Mux4~43_combout\ & (((\my_SPI|Mux4~49_combout\)) # (!\my_SPI|table_num\(1)))) # (!\my_SPI|Mux4~43_combout\ & (\my_SPI|table_num\(1) & ((\my_SPI|Mux4~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux4~43_combout\,
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux4~49_combout\,
	datad => \my_SPI|Mux4~33_combout\,
	combout => \my_SPI|Mux4~50_combout\);

-- Location: LCCOMB_X14_Y7_N0
\my_SPI|Mux4~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~51_combout\ = (\my_SPI|table_num\(8) & ((\my_SPI|Mux4~27_combout\))) # (!\my_SPI|table_num\(8) & (\my_SPI|Mux4~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(8),
	datac => \my_SPI|Mux4~50_combout\,
	datad => \my_SPI|Mux4~27_combout\,
	combout => \my_SPI|Mux4~51_combout\);

-- Location: LCCOMB_X15_Y4_N4
\my_SPI|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~0_combout\ = (\my_SPI|table_num\(6) & (((\my_SPI|table_num\(1) & \my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(5) & (!\my_SPI|table_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y4_N18
\my_SPI|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~1_combout\ = (\my_SPI|table_num\(6) & (((!\my_SPI|table_num\(1) & \my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux5~1_combout\);

-- Location: LCCOMB_X15_Y4_N20
\my_SPI|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~2_combout\ = (\my_SPI|table_num\(5) & (\my_SPI|table_num\(1) $ (((\my_SPI|table_num\(7)) # (\my_SPI|table_num\(6)))))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(1)) # (\my_SPI|table_num\(7) $ (\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux5~2_combout\);

-- Location: LCCOMB_X15_Y4_N26
\my_SPI|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~3_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(4)) # ((\my_SPI|Mux5~1_combout\)))) # (!\my_SPI|table_num\(3) & (!\my_SPI|table_num\(4) & (!\my_SPI|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux5~2_combout\,
	datad => \my_SPI|Mux5~1_combout\,
	combout => \my_SPI|Mux5~3_combout\);

-- Location: LCCOMB_X15_Y4_N16
\my_SPI|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~4_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7) & (\my_SPI|table_num\(1))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(6) & (((\my_SPI|table_num\(1) & \my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux5~4_combout\);

-- Location: LCCOMB_X15_Y4_N14
\my_SPI|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~5_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux5~3_combout\ & (!\my_SPI|Mux5~4_combout\)) # (!\my_SPI|Mux5~3_combout\ & ((\my_SPI|Mux5~0_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux5~4_combout\,
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux5~0_combout\,
	datad => \my_SPI|Mux5~3_combout\,
	combout => \my_SPI|Mux5~5_combout\);

-- Location: LCCOMB_X15_Y5_N28
\my_SPI|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~6_combout\ = (\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(4)) # (\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7) & (\my_SPI|table_num\(4) $ (!\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~6_combout\);

-- Location: LCCOMB_X15_Y5_N22
\my_SPI|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~7_combout\ = (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) & !\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & \my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux5~7_combout\);

-- Location: LCCOMB_X15_Y5_N4
\my_SPI|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~8_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~8_combout\);

-- Location: LCCOMB_X15_Y5_N30
\my_SPI|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~9_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(1)) # ((\my_SPI|Mux5~7_combout\)))) # (!\my_SPI|table_num\(3) & (!\my_SPI|table_num\(1) & (\my_SPI|Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux5~8_combout\,
	datad => \my_SPI|Mux5~7_combout\,
	combout => \my_SPI|Mux5~9_combout\);

-- Location: LCCOMB_X15_Y5_N24
\my_SPI|Mux5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~10_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & (\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5) & (\my_SPI|table_num\(7))) # 
-- (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux5~10_combout\);

-- Location: LCCOMB_X15_Y5_N2
\my_SPI|Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~11_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux5~9_combout\ & (\my_SPI|Mux5~10_combout\)) # (!\my_SPI|Mux5~9_combout\ & ((!\my_SPI|Mux5~6_combout\))))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux5~10_combout\,
	datab => \my_SPI|Mux5~6_combout\,
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|Mux5~9_combout\,
	combout => \my_SPI|Mux5~11_combout\);

-- Location: LCCOMB_X15_Y5_N8
\my_SPI|Mux5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~12_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5) & (!\my_SPI|table_num\(7) & !\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7) & \my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~12_combout\);

-- Location: LCCOMB_X15_Y5_N18
\my_SPI|Mux5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~13_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7)) # (\my_SPI|table_num\(6) $ (\my_SPI|table_num\(4))))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(6)) # ((\my_SPI|table_num\(7) & \my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux5~13_combout\);

-- Location: LCCOMB_X15_Y5_N20
\my_SPI|Mux5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~14_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5) & ((\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5)))) # 
-- (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux5~14_combout\);

-- Location: LCCOMB_X15_Y5_N26
\my_SPI|Mux5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~15_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(1)) # ((\my_SPI|Mux5~13_combout\)))) # (!\my_SPI|table_num\(3) & (!\my_SPI|table_num\(1) & (!\my_SPI|Mux5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux5~14_combout\,
	datad => \my_SPI|Mux5~13_combout\,
	combout => \my_SPI|Mux5~15_combout\);

-- Location: LCCOMB_X15_Y5_N16
\my_SPI|Mux5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~16_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & (!\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~16_combout\);

-- Location: LCCOMB_X15_Y5_N14
\my_SPI|Mux5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~17_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux5~15_combout\ & (!\my_SPI|Mux5~16_combout\)) # (!\my_SPI|Mux5~15_combout\ & ((\my_SPI|Mux5~12_combout\))))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux5~16_combout\,
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux5~12_combout\,
	datad => \my_SPI|Mux5~15_combout\,
	combout => \my_SPI|Mux5~17_combout\);

-- Location: LCCOMB_X15_Y5_N12
\my_SPI|Mux5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~18_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(0)) # ((\my_SPI|Mux5~11_combout\)))) # (!\my_SPI|table_num\(2) & (!\my_SPI|table_num\(0) & (\my_SPI|Mux5~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|Mux5~17_combout\,
	datad => \my_SPI|Mux5~11_combout\,
	combout => \my_SPI|Mux5~18_combout\);

-- Location: LCCOMB_X15_Y4_N28
\my_SPI|Mux5~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~19_combout\ = (\my_SPI|table_num\(5) & (((\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(1))))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) $ (((!\my_SPI|table_num\(7) & \my_SPI|table_num\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~19_combout\);

-- Location: LCCOMB_X15_Y4_N6
\my_SPI|Mux5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~20_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(7) $ ((!\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(1) & (((!\my_SPI|table_num\(5) & \my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~20_combout\);

-- Location: LCCOMB_X15_Y4_N8
\my_SPI|Mux5~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~21_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6) & (\my_SPI|table_num\(1) & \my_SPI|table_num\(5))) # (!\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & 
-- (\my_SPI|table_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux5~21_combout\);

-- Location: LCCOMB_X15_Y4_N30
\my_SPI|Mux5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~22_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(4)) # ((\my_SPI|Mux5~20_combout\)))) # (!\my_SPI|table_num\(3) & (!\my_SPI|table_num\(4) & (!\my_SPI|Mux5~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux5~21_combout\,
	datad => \my_SPI|Mux5~20_combout\,
	combout => \my_SPI|Mux5~22_combout\);

-- Location: LCCOMB_X15_Y4_N24
\my_SPI|Mux5~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~23_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6)) # ((\my_SPI|table_num\(1) & \my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(1)) # (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux5~23_combout\);

-- Location: LCCOMB_X15_Y4_N2
\my_SPI|Mux5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~24_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux5~22_combout\ & (\my_SPI|Mux5~23_combout\)) # (!\my_SPI|Mux5~22_combout\ & ((!\my_SPI|Mux5~19_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux5~23_combout\,
	datab => \my_SPI|Mux5~19_combout\,
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|Mux5~22_combout\,
	combout => \my_SPI|Mux5~24_combout\);

-- Location: LCCOMB_X15_Y5_N10
\my_SPI|Mux5~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~25_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux5~18_combout\ & (\my_SPI|Mux5~24_combout\)) # (!\my_SPI|Mux5~18_combout\ & ((\my_SPI|Mux5~5_combout\))))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|Mux5~24_combout\,
	datac => \my_SPI|Mux5~5_combout\,
	datad => \my_SPI|Mux5~18_combout\,
	combout => \my_SPI|Mux5~25_combout\);

-- Location: LCCOMB_X14_Y6_N24
\my_SPI|Mux5~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~26_combout\ = (\my_SPI|table_num\(7) & (!\my_SPI|table_num\(3) & (\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~26_combout\);

-- Location: LCCOMB_X15_Y6_N12
\my_SPI|Mux5~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~27_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7) & ((!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7) $ 
-- (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux5~27_combout\);

-- Location: LCCOMB_X15_Y6_N26
\my_SPI|Mux5~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~28_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3)) # (!\my_SPI|table_num\(7)))))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7)) # 
-- ((\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux5~28_combout\);

-- Location: LCCOMB_X15_Y6_N4
\my_SPI|Mux5~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~29_combout\ = (\my_SPI|table_num\(1) & (((\my_SPI|table_num\(4))))) # (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(4) & (\my_SPI|Mux5~27_combout\)) # (!\my_SPI|table_num\(4) & ((\my_SPI|Mux5~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux5~27_combout\,
	datab => \my_SPI|Mux5~28_combout\,
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux5~29_combout\);

-- Location: LCCOMB_X14_Y6_N6
\my_SPI|Mux5~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~30_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(7) & (((!\my_SPI|table_num\(5) & \my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux5~30_combout\);

-- Location: LCCOMB_X15_Y6_N2
\my_SPI|Mux5~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~31_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux5~29_combout\ & (!\my_SPI|Mux5~30_combout\)) # (!\my_SPI|Mux5~29_combout\ & ((!\my_SPI|Mux5~26_combout\))))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux5~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|Mux5~30_combout\,
	datac => \my_SPI|Mux5~29_combout\,
	datad => \my_SPI|Mux5~26_combout\,
	combout => \my_SPI|Mux5~31_combout\);

-- Location: LCCOMB_X18_Y8_N4
\my_SPI|Mux5~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~32_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) $ (((!\my_SPI|table_num\(4) & !\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5)) # (\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~32_combout\);

-- Location: LCCOMB_X18_Y8_N18
\my_SPI|Mux5~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~33_combout\ = (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) & !\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & \my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux5~33_combout\);

-- Location: LCCOMB_X18_Y8_N20
\my_SPI|Mux5~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~34_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(6)) # 
-- (\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux5~34_combout\);

-- Location: LCCOMB_X18_Y8_N30
\my_SPI|Mux5~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~35_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(3))) # (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(3) & ((!\my_SPI|Mux5~33_combout\))) # (!\my_SPI|table_num\(3) & (!\my_SPI|Mux5~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux5~34_combout\,
	datad => \my_SPI|Mux5~33_combout\,
	combout => \my_SPI|Mux5~35_combout\);

-- Location: LCCOMB_X18_Y8_N28
\my_SPI|Mux5~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~36_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7)) # ((\my_SPI|table_num\(4) & !\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7)) # (!\my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~36_combout\);

-- Location: LCCOMB_X18_Y8_N22
\my_SPI|Mux5~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~37_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux5~35_combout\ & (!\my_SPI|Mux5~36_combout\)) # (!\my_SPI|Mux5~35_combout\ & ((\my_SPI|Mux5~32_combout\))))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux5~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|Mux5~36_combout\,
	datac => \my_SPI|Mux5~32_combout\,
	datad => \my_SPI|Mux5~35_combout\,
	combout => \my_SPI|Mux5~37_combout\);

-- Location: LCCOMB_X15_Y6_N20
\my_SPI|Mux5~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~38_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(7) & (!\my_SPI|table_num\(5) & \my_SPI|table_num\(6))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(5) & !\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~38_combout\);

-- Location: LCCOMB_X15_Y6_N22
\my_SPI|Mux5~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~39_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(7)) # (\my_SPI|table_num\(5) $ (\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5)) # (!\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~39_combout\);

-- Location: LCCOMB_X15_Y6_N16
\my_SPI|Mux5~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~40_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(6)) # ((!\my_SPI|table_num\(4) & \my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(4)) # (!\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~40_combout\);

-- Location: LCCOMB_X15_Y6_N18
\my_SPI|Mux5~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~41_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(3))) # (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(3) & ((!\my_SPI|Mux5~39_combout\))) # (!\my_SPI|table_num\(3) & (\my_SPI|Mux5~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux5~40_combout\,
	datad => \my_SPI|Mux5~39_combout\,
	combout => \my_SPI|Mux5~41_combout\);

-- Location: LCCOMB_X15_Y6_N0
\my_SPI|Mux5~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~42_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5)) # ((\my_SPI|table_num\(7) & \my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(6) & 
-- (\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux5~42_combout\);

-- Location: LCCOMB_X15_Y6_N14
\my_SPI|Mux5~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~43_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux5~41_combout\ & (\my_SPI|Mux5~42_combout\)) # (!\my_SPI|Mux5~41_combout\ & ((!\my_SPI|Mux5~38_combout\))))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux5~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|Mux5~42_combout\,
	datac => \my_SPI|Mux5~38_combout\,
	datad => \my_SPI|Mux5~41_combout\,
	combout => \my_SPI|Mux5~43_combout\);

-- Location: LCCOMB_X15_Y6_N28
\my_SPI|Mux5~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~44_combout\ = (\my_SPI|table_num\(0) & (\my_SPI|table_num\(2))) # (!\my_SPI|table_num\(0) & ((\my_SPI|table_num\(2) & ((\my_SPI|Mux5~37_combout\))) # (!\my_SPI|table_num\(2) & (\my_SPI|Mux5~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|Mux5~43_combout\,
	datad => \my_SPI|Mux5~37_combout\,
	combout => \my_SPI|Mux5~44_combout\);

-- Location: LCCOMB_X15_Y5_N0
\my_SPI|Mux5~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~45_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7)) # (!\my_SPI|table_num\(1)))))) # (!\my_SPI|table_num\(3) & (\my_SPI|table_num\(6) $ 
-- (((\my_SPI|table_num\(1) & !\my_SPI|table_num\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux5~45_combout\);

-- Location: LCCOMB_X15_Y6_N6
\my_SPI|Mux5~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~46_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(3)) # ((!\my_SPI|table_num\(6) & \my_SPI|table_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux5~46_combout\);

-- Location: LCCOMB_X15_Y6_N8
\my_SPI|Mux5~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~47_combout\ = (\my_SPI|table_num\(7) & (((\my_SPI|table_num\(1) & \my_SPI|table_num\(3))) # (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(1) $ (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux5~47_combout\);

-- Location: LCCOMB_X15_Y6_N30
\my_SPI|Mux5~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~48_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5) & ((\my_SPI|Mux5~46_combout\))) # (!\my_SPI|table_num\(5) & (\my_SPI|Mux5~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|Mux5~47_combout\,
	datad => \my_SPI|Mux5~46_combout\,
	combout => \my_SPI|Mux5~48_combout\);

-- Location: LCCOMB_X14_Y5_N0
\my_SPI|Mux5~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~49_combout\ = (\my_SPI|table_num\(1) & (!\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(1) & (\my_SPI|table_num\(3) & (\my_SPI|table_num\(6) $ (!\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux5~49_combout\);

-- Location: LCCOMB_X15_Y6_N24
\my_SPI|Mux5~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~50_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux5~48_combout\ & ((!\my_SPI|Mux5~49_combout\))) # (!\my_SPI|Mux5~48_combout\ & (\my_SPI|Mux5~45_combout\)))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux5~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|Mux5~45_combout\,
	datac => \my_SPI|Mux5~49_combout\,
	datad => \my_SPI|Mux5~48_combout\,
	combout => \my_SPI|Mux5~50_combout\);

-- Location: LCCOMB_X15_Y6_N10
\my_SPI|Mux5~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~51_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux5~44_combout\ & ((\my_SPI|Mux5~50_combout\))) # (!\my_SPI|Mux5~44_combout\ & (\my_SPI|Mux5~31_combout\)))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux5~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|Mux5~31_combout\,
	datac => \my_SPI|Mux5~50_combout\,
	datad => \my_SPI|Mux5~44_combout\,
	combout => \my_SPI|Mux5~51_combout\);

-- Location: LCCOMB_X14_Y7_N26
\my_SPI|Mux5~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux5~52_combout\ = (\my_SPI|table_num\(8) & (\my_SPI|Mux5~25_combout\)) # (!\my_SPI|table_num\(8) & ((\my_SPI|Mux5~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(8),
	datac => \my_SPI|Mux5~25_combout\,
	datad => \my_SPI|Mux5~51_combout\,
	combout => \my_SPI|Mux5~52_combout\);

-- Location: LCCOMB_X13_Y10_N14
\my_SPI|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~0_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(4) & ((!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(7) & \my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(4) & 
-- (\my_SPI|table_num\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y10_N16
\my_SPI|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~1_combout\ = (\my_SPI|table_num\(6) & (((\my_SPI|table_num\(4) & \my_SPI|table_num\(3))) # (!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(3) & (\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(3) & 
-- ((\my_SPI|table_num\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~1_combout\);

-- Location: LCCOMB_X13_Y10_N26
\my_SPI|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~2_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(4))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) & (\my_SPI|table_num\(4) & 
-- \my_SPI|table_num\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~2_combout\);

-- Location: LCCOMB_X13_Y10_N12
\my_SPI|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~3_combout\ = (\my_SPI|table_num\(0) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(0) & ((\my_SPI|table_num\(5) & (!\my_SPI|Mux6~1_combout\)) # (!\my_SPI|table_num\(5) & ((!\my_SPI|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|Mux6~1_combout\,
	datad => \my_SPI|Mux6~2_combout\,
	combout => \my_SPI|Mux6~3_combout\);

-- Location: LCCOMB_X13_Y10_N18
\my_SPI|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~4_combout\ = (\my_SPI|table_num\(6) & (!\my_SPI|table_num\(4) & (!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(4) & (!\my_SPI|table_num\(7) & !\my_SPI|table_num\(3))) # (!\my_SPI|table_num\(4) & 
-- ((\my_SPI|table_num\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~4_combout\);

-- Location: LCCOMB_X13_Y10_N28
\my_SPI|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~5_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux6~3_combout\ & (\my_SPI|Mux6~4_combout\)) # (!\my_SPI|Mux6~3_combout\ & ((\my_SPI|Mux6~0_combout\))))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|Mux6~4_combout\,
	datac => \my_SPI|Mux6~0_combout\,
	datad => \my_SPI|Mux6~3_combout\,
	combout => \my_SPI|Mux6~5_combout\);

-- Location: LCCOMB_X13_Y6_N6
\my_SPI|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~6_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7) & (\my_SPI|table_num\(0))) # (!\my_SPI|table_num\(7) & ((!\my_SPI|table_num\(3)))))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(0)) # ((\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~6_combout\);

-- Location: LCCOMB_X13_Y6_N16
\my_SPI|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~7_combout\ = (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7) & ((!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(0) & \my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~7_combout\);

-- Location: LCCOMB_X13_Y6_N30
\my_SPI|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~8_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(0) $ (((!\my_SPI|table_num\(3) & \my_SPI|table_num\(7)))))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(0)) # (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux6~8_combout\);

-- Location: LCCOMB_X13_Y6_N4
\my_SPI|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~9_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5) & (!\my_SPI|Mux6~7_combout\)) # (!\my_SPI|table_num\(5) & ((\my_SPI|Mux6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|Mux6~7_combout\,
	datad => \my_SPI|Mux6~8_combout\,
	combout => \my_SPI|Mux6~9_combout\);

-- Location: LCCOMB_X13_Y6_N10
\my_SPI|Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~10_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(0)) # ((!\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(0) $ (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~10_combout\);

-- Location: LCCOMB_X13_Y6_N28
\my_SPI|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~11_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux6~9_combout\ & ((!\my_SPI|Mux6~10_combout\))) # (!\my_SPI|Mux6~9_combout\ & (!\my_SPI|Mux6~6_combout\)))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux6~6_combout\,
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux6~9_combout\,
	datad => \my_SPI|Mux6~10_combout\,
	combout => \my_SPI|Mux6~11_combout\);

-- Location: LCCOMB_X13_Y6_N18
\my_SPI|Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~12_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(0) $ (!\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(5) & (((\my_SPI|table_num\(0)) # (\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux6~12_combout\);

-- Location: LCCOMB_X13_Y6_N24
\my_SPI|Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~13_combout\ = (\my_SPI|table_num\(5) & (!\my_SPI|table_num\(0) & (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) & (\my_SPI|table_num\(0) $ (\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux6~13_combout\);

-- Location: LCCOMB_X13_Y6_N2
\my_SPI|Mux6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~14_combout\ = (\my_SPI|table_num\(5) & (((\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) $ (((\my_SPI|table_num\(0)) # (\my_SPI|table_num\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux6~14_combout\);

-- Location: LCCOMB_X13_Y6_N12
\my_SPI|Mux6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~15_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(3))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(3) & (\my_SPI|Mux6~13_combout\)) # (!\my_SPI|table_num\(3) & ((!\my_SPI|Mux6~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux6~13_combout\,
	datad => \my_SPI|Mux6~14_combout\,
	combout => \my_SPI|Mux6~15_combout\);

-- Location: LCCOMB_X13_Y6_N14
\my_SPI|Mux6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~16_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(0)) # ((!\my_SPI|table_num\(6) & \my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) $ (\my_SPI|table_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux6~16_combout\);

-- Location: LCCOMB_X13_Y6_N20
\my_SPI|Mux6~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~17_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux6~15_combout\ & ((\my_SPI|Mux6~16_combout\))) # (!\my_SPI|Mux6~15_combout\ & (\my_SPI|Mux6~12_combout\)))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|Mux6~12_combout\,
	datac => \my_SPI|Mux6~16_combout\,
	datad => \my_SPI|Mux6~15_combout\,
	combout => \my_SPI|Mux6~17_combout\);

-- Location: LCCOMB_X13_Y6_N26
\my_SPI|Mux6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~18_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(2))) # (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(2) & ((\my_SPI|Mux6~11_combout\))) # (!\my_SPI|table_num\(2) & (\my_SPI|Mux6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|Mux6~17_combout\,
	datad => \my_SPI|Mux6~11_combout\,
	combout => \my_SPI|Mux6~18_combout\);

-- Location: LCCOMB_X15_Y10_N24
\my_SPI|Mux6~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~19_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(4)) # (\my_SPI|table_num\(3) $ (!\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(3) & (\my_SPI|table_num\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux6~19_combout\);

-- Location: LCCOMB_X15_Y10_N2
\my_SPI|Mux6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~20_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(4) $ (\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7) & (\my_SPI|table_num\(3) $ (!\my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux6~20_combout\);

-- Location: LCCOMB_X15_Y10_N0
\my_SPI|Mux6~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~21_combout\ = (\my_SPI|table_num\(7) & (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(3) $ (\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3)) # (\my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux6~21_combout\);

-- Location: LCCOMB_X15_Y10_N18
\my_SPI|Mux6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~22_combout\ = (\my_SPI|table_num\(6) & (((\my_SPI|table_num\(0))) # (!\my_SPI|Mux6~20_combout\))) # (!\my_SPI|table_num\(6) & (((!\my_SPI|table_num\(0) & \my_SPI|Mux6~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|Mux6~20_combout\,
	datac => \my_SPI|table_num\(0),
	datad => \my_SPI|Mux6~21_combout\,
	combout => \my_SPI|Mux6~22_combout\);

-- Location: LCCOMB_X15_Y10_N8
\my_SPI|Mux6~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~23_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(7)) # ((!\my_SPI|table_num\(5) & !\my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(3) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(3) & 
-- ((\my_SPI|table_num\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~23_combout\);

-- Location: LCCOMB_X15_Y10_N26
\my_SPI|Mux6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~24_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux6~22_combout\ & ((\my_SPI|Mux6~23_combout\))) # (!\my_SPI|Mux6~22_combout\ & (!\my_SPI|Mux6~19_combout\)))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux6~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux6~19_combout\,
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|Mux6~23_combout\,
	datad => \my_SPI|Mux6~22_combout\,
	combout => \my_SPI|Mux6~24_combout\);

-- Location: LCCOMB_X14_Y7_N4
\my_SPI|Mux6~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~25_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux6~18_combout\ & ((\my_SPI|Mux6~24_combout\))) # (!\my_SPI|Mux6~18_combout\ & (\my_SPI|Mux6~5_combout\)))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux6~5_combout\,
	datab => \my_SPI|Mux6~24_combout\,
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|Mux6~18_combout\,
	combout => \my_SPI|Mux6~25_combout\);

-- Location: LCCOMB_X14_Y6_N16
\my_SPI|Mux6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~26_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5) & (!\my_SPI|table_num\(3) & !\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7)))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(3) & 
-- (\my_SPI|table_num\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux6~26_combout\);

-- Location: LCCOMB_X14_Y6_N10
\my_SPI|Mux6~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~27_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6)) # ((\my_SPI|table_num\(7) & \my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(3) & (\my_SPI|table_num\(5) $ (((\my_SPI|table_num\(7) & \my_SPI|table_num\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux6~27_combout\);

-- Location: LCCOMB_X14_Y6_N0
\my_SPI|Mux6~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~28_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(3) & (!\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(3) & ((!\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) & (\my_SPI|table_num\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~28_combout\);

-- Location: LCCOMB_X14_Y6_N18
\my_SPI|Mux6~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~29_combout\ = (\my_SPI|table_num\(4) & (((\my_SPI|table_num\(0)) # (\my_SPI|Mux6~27_combout\)))) # (!\my_SPI|table_num\(4) & (\my_SPI|Mux6~28_combout\ & (!\my_SPI|table_num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|Mux6~28_combout\,
	datac => \my_SPI|table_num\(0),
	datad => \my_SPI|Mux6~27_combout\,
	combout => \my_SPI|Mux6~29_combout\);

-- Location: LCCOMB_X14_Y6_N12
\my_SPI|Mux6~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~30_combout\ = (\my_SPI|table_num\(6) & (((!\my_SPI|table_num\(5) & !\my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7) & (!\my_SPI|table_num\(5) & \my_SPI|table_num\(3))) # (!\my_SPI|table_num\(7) & 
-- (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~30_combout\);

-- Location: LCCOMB_X14_Y6_N26
\my_SPI|Mux6~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~31_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux6~29_combout\ & (!\my_SPI|Mux6~30_combout\)) # (!\my_SPI|Mux6~29_combout\ & ((!\my_SPI|Mux6~26_combout\))))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux6~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|Mux6~30_combout\,
	datac => \my_SPI|Mux6~26_combout\,
	datad => \my_SPI|Mux6~29_combout\,
	combout => \my_SPI|Mux6~31_combout\);

-- Location: LCCOMB_X13_Y8_N8
\my_SPI|Mux6~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~32_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(0))))) # (!\my_SPI|table_num\(4) & (!\my_SPI|table_num\(0) & (\my_SPI|table_num\(5) $ (\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux6~32_combout\);

-- Location: LCCOMB_X13_Y8_N14
\my_SPI|Mux6~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~33_combout\ = (\my_SPI|table_num\(6) & (((!\my_SPI|table_num\(0))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(4) & (\my_SPI|table_num\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux6~33_combout\);

-- Location: LCCOMB_X13_Y8_N0
\my_SPI|Mux6~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~34_combout\ = (\my_SPI|table_num\(4) & (!\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(0)) # (!\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(0)) # ((\my_SPI|table_num\(5) & \my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux6~34_combout\);

-- Location: LCCOMB_X13_Y8_N6
\my_SPI|Mux6~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~35_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(3)) # ((!\my_SPI|Mux6~33_combout\)))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(3) & ((!\my_SPI|Mux6~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux6~33_combout\,
	datad => \my_SPI|Mux6~34_combout\,
	combout => \my_SPI|Mux6~35_combout\);

-- Location: LCCOMB_X13_Y8_N4
\my_SPI|Mux6~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~36_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(0)))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(5) $ (((\my_SPI|table_num\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux6~36_combout\);

-- Location: LCCOMB_X13_Y8_N26
\my_SPI|Mux6~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~37_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|Mux6~35_combout\ & (!\my_SPI|Mux6~36_combout\)) # (!\my_SPI|Mux6~35_combout\ & ((\my_SPI|Mux6~32_combout\))))) # (!\my_SPI|table_num\(3) & (((\my_SPI|Mux6~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|Mux6~36_combout\,
	datac => \my_SPI|Mux6~32_combout\,
	datad => \my_SPI|Mux6~35_combout\,
	combout => \my_SPI|Mux6~37_combout\);

-- Location: LCCOMB_X14_Y6_N4
\my_SPI|Mux6~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~38_combout\ = (\my_SPI|table_num\(5) & (((!\my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(5) & (!\my_SPI|table_num\(0) & (\my_SPI|table_num\(6) & \my_SPI|table_num\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~38_combout\);

-- Location: LCCOMB_X14_Y6_N30
\my_SPI|Mux6~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~39_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5) & (\my_SPI|table_num\(0))) # (!\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(3)))))) # (!\my_SPI|table_num\(6) & (((\my_SPI|table_num\(5) & !\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~39_combout\);

-- Location: LCCOMB_X14_Y6_N8
\my_SPI|Mux6~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~40_combout\ = (\my_SPI|table_num\(0) & (((\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(0) & ((\my_SPI|table_num\(6)) # ((\my_SPI|table_num\(5) & !\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~40_combout\);

-- Location: LCCOMB_X14_Y6_N2
\my_SPI|Mux6~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~41_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(7) & ((!\my_SPI|Mux6~39_combout\))) # (!\my_SPI|table_num\(7) & (\my_SPI|Mux6~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|Mux6~40_combout\,
	datad => \my_SPI|Mux6~39_combout\,
	combout => \my_SPI|Mux6~41_combout\);

-- Location: LCCOMB_X14_Y6_N20
\my_SPI|Mux6~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~42_combout\ = (!\my_SPI|table_num\(0) & (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(5)) # (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~42_combout\);

-- Location: LCCOMB_X14_Y6_N14
\my_SPI|Mux6~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~43_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux6~41_combout\ & (\my_SPI|Mux6~42_combout\)) # (!\my_SPI|Mux6~41_combout\ & ((!\my_SPI|Mux6~38_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux6~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux6~42_combout\,
	datab => \my_SPI|Mux6~38_combout\,
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|Mux6~41_combout\,
	combout => \my_SPI|Mux6~43_combout\);

-- Location: LCCOMB_X14_Y6_N28
\my_SPI|Mux6~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~44_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(1)) # ((\my_SPI|Mux6~37_combout\)))) # (!\my_SPI|table_num\(2) & (!\my_SPI|table_num\(1) & (\my_SPI|Mux6~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux6~43_combout\,
	datad => \my_SPI|Mux6~37_combout\,
	combout => \my_SPI|Mux6~44_combout\);

-- Location: LCCOMB_X13_Y10_N10
\my_SPI|Mux6~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~45_combout\ = (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(0) $ (((\my_SPI|table_num\(5) & \my_SPI|table_num\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(0),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux6~45_combout\);

-- Location: LCCOMB_X13_Y10_N20
\my_SPI|Mux6~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~46_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|table_num\(3) & (!\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(3) & ((!\my_SPI|table_num\(7)))))) # (!\my_SPI|table_num\(0) & (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5)) # 
-- (!\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux6~46_combout\);

-- Location: LCCOMB_X13_Y10_N6
\my_SPI|Mux6~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~47_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(3) $ (\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(0) $ (((\my_SPI|table_num\(3) & \my_SPI|table_num\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux6~47_combout\);

-- Location: LCCOMB_X13_Y10_N24
\my_SPI|Mux6~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~48_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(4)) # ((\my_SPI|Mux6~46_combout\)))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(4) & ((!\my_SPI|Mux6~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux6~46_combout\,
	datad => \my_SPI|Mux6~47_combout\,
	combout => \my_SPI|Mux6~48_combout\);

-- Location: LCCOMB_X13_Y10_N22
\my_SPI|Mux6~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~49_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(0) $ (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(3) $ (\my_SPI|table_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux6~49_combout\);

-- Location: LCCOMB_X13_Y10_N4
\my_SPI|Mux6~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~50_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux6~48_combout\ & ((!\my_SPI|Mux6~49_combout\))) # (!\my_SPI|Mux6~48_combout\ & (!\my_SPI|Mux6~45_combout\)))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux6~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux6~45_combout\,
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux6~48_combout\,
	datad => \my_SPI|Mux6~49_combout\,
	combout => \my_SPI|Mux6~50_combout\);

-- Location: LCCOMB_X14_Y6_N22
\my_SPI|Mux6~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~51_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux6~44_combout\ & ((\my_SPI|Mux6~50_combout\))) # (!\my_SPI|Mux6~44_combout\ & (\my_SPI|Mux6~31_combout\)))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux6~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|Mux6~31_combout\,
	datac => \my_SPI|Mux6~50_combout\,
	datad => \my_SPI|Mux6~44_combout\,
	combout => \my_SPI|Mux6~51_combout\);

-- Location: LCCOMB_X14_Y7_N2
\my_SPI|Mux6~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux6~52_combout\ = (\my_SPI|table_num\(8) & (\my_SPI|Mux6~25_combout\)) # (!\my_SPI|table_num\(8) & ((\my_SPI|Mux6~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(8),
	datac => \my_SPI|Mux6~25_combout\,
	datad => \my_SPI|Mux6~51_combout\,
	combout => \my_SPI|Mux6~52_combout\);

-- Location: LCCOMB_X15_Y10_N4
\my_SPI|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~0_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(6)) # ((\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(2) & (((\my_SPI|table_num\(7) & \my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux7~0_combout\);

-- Location: LCCOMB_X15_Y10_N14
\my_SPI|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~1_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(3)) # ((\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(2) & (((\my_SPI|table_num\(6) & \my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux7~1_combout\);

-- Location: LCCOMB_X15_Y10_N28
\my_SPI|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~2_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(3) & \my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(2) & (((\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux7~2_combout\);

-- Location: LCCOMB_X15_Y10_N6
\my_SPI|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~3_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(4)) # ((\my_SPI|Mux7~1_combout\)))) # (!\my_SPI|table_num\(5) & (!\my_SPI|table_num\(4) & ((\my_SPI|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux7~1_combout\,
	datad => \my_SPI|Mux7~2_combout\,
	combout => \my_SPI|Mux7~3_combout\);

-- Location: LCCOMB_X15_Y10_N16
\my_SPI|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~4_combout\ = (\my_SPI|table_num\(2) & (((!\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(6) & (!\my_SPI|table_num\(3) & !\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux7~4_combout\);

-- Location: LCCOMB_X15_Y10_N10
\my_SPI|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~5_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux7~3_combout\ & (\my_SPI|Mux7~4_combout\)) # (!\my_SPI|Mux7~3_combout\ & ((!\my_SPI|Mux7~0_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux7~4_combout\,
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux7~0_combout\,
	datad => \my_SPI|Mux7~3_combout\,
	combout => \my_SPI|Mux7~5_combout\);

-- Location: LCCOMB_X15_Y5_N6
\my_SPI|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~6_combout\ = (!\my_SPI|table_num\(2) & (!\my_SPI|table_num\(6) & \my_SPI|table_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux7~6_combout\);

-- Location: LCCOMB_X15_Y7_N16
\my_SPI|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~7_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(5) $ (((!\my_SPI|table_num\(6)))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(2) & ((\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(2) & (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~7_combout\);

-- Location: LCCOMB_X15_Y7_N6
\my_SPI|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~8_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(6) $ (((!\my_SPI|table_num\(2)) # (!\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(2)))) # 
-- (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(2)) # (\my_SPI|table_num\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~8_combout\);

-- Location: LCCOMB_X15_Y7_N24
\my_SPI|Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~9_combout\ = (\my_SPI|table_num\(3) & (\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(7) & (\my_SPI|Mux7~7_combout\)) # (!\my_SPI|table_num\(7) & ((!\my_SPI|Mux7~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|Mux7~7_combout\,
	datad => \my_SPI|Mux7~8_combout\,
	combout => \my_SPI|Mux7~9_combout\);

-- Location: LCCOMB_X15_Y10_N20
\my_SPI|Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~10_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(4) & (!\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(2) & (\my_SPI|table_num\(4) $ (((\my_SPI|table_num\(6) & 
-- !\my_SPI|table_num\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux7~10_combout\);

-- Location: LCCOMB_X15_Y7_N14
\my_SPI|Mux7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~11_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|Mux7~9_combout\ & (!\my_SPI|Mux7~10_combout\)) # (!\my_SPI|Mux7~9_combout\ & ((\my_SPI|Mux7~6_combout\))))) # (!\my_SPI|table_num\(3) & (((\my_SPI|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|Mux7~10_combout\,
	datac => \my_SPI|Mux7~9_combout\,
	datad => \my_SPI|Mux7~6_combout\,
	combout => \my_SPI|Mux7~11_combout\);

-- Location: LCCOMB_X15_Y10_N22
\my_SPI|Mux7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~12_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(2) & ((\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(2) & (\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(6) $ (((\my_SPI|table_num\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux7~12_combout\);

-- Location: LCCOMB_X15_Y7_N0
\my_SPI|Mux7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~13_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(2) & !\my_SPI|table_num\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux7~13_combout\);

-- Location: LCCOMB_X15_Y7_N2
\my_SPI|Mux7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~14_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|table_num\(4) $ (((\my_SPI|table_num\(5) & !\my_SPI|table_num\(6)))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(4) & ((!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(4) & 
-- (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~14_combout\);

-- Location: LCCOMB_X15_Y7_N28
\my_SPI|Mux7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~15_combout\ = (\my_SPI|table_num\(3) & (((\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(7) & ((\my_SPI|Mux7~13_combout\))) # (!\my_SPI|table_num\(7) & (\my_SPI|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|Mux7~14_combout\,
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|Mux7~13_combout\,
	combout => \my_SPI|Mux7~15_combout\);

-- Location: LCCOMB_X15_Y10_N12
\my_SPI|Mux7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~16_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(4) & (\my_SPI|table_num\(5) & \my_SPI|table_num\(2))) # (!\my_SPI|table_num\(4) & (!\my_SPI|table_num\(5) & !\my_SPI|table_num\(2))))) # (!\my_SPI|table_num\(6) & 
-- (\my_SPI|table_num\(4) $ (((\my_SPI|table_num\(5)) # (\my_SPI|table_num\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux7~16_combout\);

-- Location: LCCOMB_X15_Y7_N22
\my_SPI|Mux7~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~17_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|Mux7~15_combout\ & ((\my_SPI|Mux7~16_combout\))) # (!\my_SPI|Mux7~15_combout\ & (!\my_SPI|Mux7~12_combout\)))) # (!\my_SPI|table_num\(3) & (((\my_SPI|Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|Mux7~12_combout\,
	datac => \my_SPI|Mux7~16_combout\,
	datad => \my_SPI|Mux7~15_combout\,
	combout => \my_SPI|Mux7~17_combout\);

-- Location: LCCOMB_X15_Y7_N4
\my_SPI|Mux7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~18_combout\ = (\my_SPI|table_num\(0) & (\my_SPI|table_num\(1))) # (!\my_SPI|table_num\(0) & ((\my_SPI|table_num\(1) & (\my_SPI|Mux7~11_combout\)) # (!\my_SPI|table_num\(1) & ((\my_SPI|Mux7~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux7~11_combout\,
	datad => \my_SPI|Mux7~17_combout\,
	combout => \my_SPI|Mux7~18_combout\);

-- Location: LCCOMB_X14_Y4_N12
\my_SPI|Mux7~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~19_combout\ = (\my_SPI|table_num\(5) & (((\my_SPI|table_num\(7)) # (!\my_SPI|table_num\(2))))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(6) & (\my_SPI|table_num\(2))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux7~19_combout\);

-- Location: LCCOMB_X14_Y4_N22
\my_SPI|Mux7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~20_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(2)))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(2)) # (!\my_SPI|table_num\(6)))))) # (!\my_SPI|table_num\(5) & 
-- (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(7)) # (!\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~20_combout\);

-- Location: LCCOMB_X14_Y4_N20
\my_SPI|Mux7~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~21_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5) & ((\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(2)))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(2)) # (!\my_SPI|table_num\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~21_combout\);

-- Location: LCCOMB_X14_Y4_N14
\my_SPI|Mux7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~22_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(3))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(3) & ((!\my_SPI|Mux7~20_combout\))) # (!\my_SPI|table_num\(3) & (!\my_SPI|Mux7~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux7~21_combout\,
	datad => \my_SPI|Mux7~20_combout\,
	combout => \my_SPI|Mux7~22_combout\);

-- Location: LCCOMB_X14_Y4_N24
\my_SPI|Mux7~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~23_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7)) # ((!\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7) $ (((\my_SPI|table_num\(2) & \my_SPI|table_num\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~23_combout\);

-- Location: LCCOMB_X14_Y4_N2
\my_SPI|Mux7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~24_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux7~22_combout\ & (\my_SPI|Mux7~23_combout\)) # (!\my_SPI|Mux7~22_combout\ & ((\my_SPI|Mux7~19_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux7~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux7~23_combout\,
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux7~22_combout\,
	datad => \my_SPI|Mux7~19_combout\,
	combout => \my_SPI|Mux7~24_combout\);

-- Location: LCCOMB_X14_Y7_N12
\my_SPI|Mux7~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~25_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux7~18_combout\ & ((\my_SPI|Mux7~24_combout\))) # (!\my_SPI|Mux7~18_combout\ & (\my_SPI|Mux7~5_combout\)))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|Mux7~5_combout\,
	datac => \my_SPI|Mux7~24_combout\,
	datad => \my_SPI|Mux7~18_combout\,
	combout => \my_SPI|Mux7~25_combout\);

-- Location: LCCOMB_X15_Y8_N2
\my_SPI|Mux7~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~26_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(3) $ ((\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(3) & (\my_SPI|table_num\(7) & !\my_SPI|table_num\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux7~26_combout\);

-- Location: LCCOMB_X15_Y8_N28
\my_SPI|Mux7~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~27_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(3) & (!\my_SPI|table_num\(7) & \my_SPI|table_num\(2)))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(3) $ ((\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux7~27_combout\);

-- Location: LCCOMB_X14_Y8_N20
\my_SPI|Mux7~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~28_combout\ = (\my_SPI|table_num\(7) & (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(3)) # (\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(7) & (((\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~28_combout\);

-- Location: LCCOMB_X15_Y8_N6
\my_SPI|Mux7~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~29_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(4)) # ((!\my_SPI|Mux7~27_combout\)))) # (!\my_SPI|table_num\(5) & (!\my_SPI|table_num\(4) & (!\my_SPI|Mux7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux7~28_combout\,
	datad => \my_SPI|Mux7~27_combout\,
	combout => \my_SPI|Mux7~29_combout\);

-- Location: LCCOMB_X15_Y8_N24
\my_SPI|Mux7~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~30_combout\ = (\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(2) & ((!\my_SPI|table_num\(3)) # (!\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux7~30_combout\);

-- Location: LCCOMB_X15_Y8_N18
\my_SPI|Mux7~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~31_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux7~29_combout\ & (!\my_SPI|Mux7~30_combout\)) # (!\my_SPI|Mux7~29_combout\ & ((!\my_SPI|Mux7~26_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux7~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux7~30_combout\,
	datab => \my_SPI|Mux7~26_combout\,
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|Mux7~29_combout\,
	combout => \my_SPI|Mux7~31_combout\);

-- Location: LCCOMB_X15_Y8_N8
\my_SPI|Mux7~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~32_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(4) $ (!\my_SPI|table_num\(3))) # (!\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(6) & (((\my_SPI|table_num\(4)) # (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~32_combout\);

-- Location: LCCOMB_X15_Y8_N14
\my_SPI|Mux7~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~33_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5)) # (\my_SPI|table_num\(3) $ 
-- (\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~33_combout\);

-- Location: LCCOMB_X15_Y8_N12
\my_SPI|Mux7~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~34_combout\ = (\my_SPI|table_num\(6) & (((\my_SPI|table_num\(5) & \my_SPI|table_num\(3))) # (!\my_SPI|table_num\(4)))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(5) $ (((\my_SPI|table_num\(4)) # (\my_SPI|table_num\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~34_combout\);

-- Location: LCCOMB_X15_Y8_N10
\my_SPI|Mux7~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~35_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(7) & (!\my_SPI|Mux7~33_combout\)) # (!\my_SPI|table_num\(7) & ((\my_SPI|Mux7~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|Mux7~33_combout\,
	datad => \my_SPI|Mux7~34_combout\,
	combout => \my_SPI|Mux7~35_combout\);

-- Location: LCCOMB_X15_Y8_N0
\my_SPI|Mux7~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~36_combout\ = (\my_SPI|table_num\(4) & (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3)) # (!\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~36_combout\);

-- Location: LCCOMB_X15_Y8_N26
\my_SPI|Mux7~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~37_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|Mux7~35_combout\ & (!\my_SPI|Mux7~36_combout\)) # (!\my_SPI|Mux7~35_combout\ & ((\my_SPI|Mux7~32_combout\))))) # (!\my_SPI|table_num\(2) & (((\my_SPI|Mux7~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|Mux7~36_combout\,
	datac => \my_SPI|Mux7~32_combout\,
	datad => \my_SPI|Mux7~35_combout\,
	combout => \my_SPI|Mux7~37_combout\);

-- Location: LCCOMB_X15_Y7_N30
\my_SPI|Mux7~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~38_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(3) $ (\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(6) & 
-- ((\my_SPI|table_num\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~38_combout\);

-- Location: LCCOMB_X15_Y7_N20
\my_SPI|Mux7~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~39_combout\ = (\my_SPI|table_num\(6) & (((\my_SPI|table_num\(3) & \my_SPI|table_num\(4))))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(3) $ (\my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux7~39_combout\);

-- Location: LCCOMB_X15_Y7_N10
\my_SPI|Mux7~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~40_combout\ = (\my_SPI|table_num\(4) & (((!\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux7~40_combout\);

-- Location: LCCOMB_X15_Y7_N8
\my_SPI|Mux7~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~41_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(2)) # ((!\my_SPI|Mux7~39_combout\)))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(2) & ((!\my_SPI|Mux7~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|Mux7~39_combout\,
	datad => \my_SPI|Mux7~40_combout\,
	combout => \my_SPI|Mux7~41_combout\);

-- Location: LCCOMB_X15_Y9_N22
\my_SPI|Mux7~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~42_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(5) $ (((!\my_SPI|table_num\(4)) # (!\my_SPI|table_num\(3)))))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(3)) # (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux7~42_combout\);

-- Location: LCCOMB_X15_Y7_N18
\my_SPI|Mux7~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~43_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|Mux7~41_combout\ & ((!\my_SPI|Mux7~42_combout\))) # (!\my_SPI|Mux7~41_combout\ & (!\my_SPI|Mux7~38_combout\)))) # (!\my_SPI|table_num\(2) & (((\my_SPI|Mux7~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|Mux7~38_combout\,
	datac => \my_SPI|Mux7~41_combout\,
	datad => \my_SPI|Mux7~42_combout\,
	combout => \my_SPI|Mux7~43_combout\);

-- Location: LCCOMB_X15_Y7_N12
\my_SPI|Mux7~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~44_combout\ = (\my_SPI|table_num\(0) & (\my_SPI|table_num\(1))) # (!\my_SPI|table_num\(0) & ((\my_SPI|table_num\(1) & (\my_SPI|Mux7~37_combout\)) # (!\my_SPI|table_num\(1) & ((\my_SPI|Mux7~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux7~37_combout\,
	datad => \my_SPI|Mux7~43_combout\,
	combout => \my_SPI|Mux7~44_combout\);

-- Location: LCCOMB_X14_Y10_N14
\my_SPI|Mux7~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~45_combout\ = (\my_SPI|table_num\(5) & (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) & \my_SPI|table_num\(4)))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & !\my_SPI|table_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux7~45_combout\);

-- Location: LCCOMB_X14_Y10_N24
\my_SPI|Mux7~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~46_combout\ = (\my_SPI|table_num\(5) & (((!\my_SPI|table_num\(4) & !\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(4) & (\my_SPI|table_num\(6) & !\my_SPI|table_num\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux7~46_combout\);

-- Location: LCCOMB_X14_Y10_N2
\my_SPI|Mux7~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~47_combout\ = (\my_SPI|table_num\(7) & (((!\my_SPI|table_num\(4) & !\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(5)))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(4) & (\my_SPI|table_num\(6) & !\my_SPI|table_num\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux7~47_combout\);

-- Location: LCCOMB_X14_Y10_N0
\my_SPI|Mux7~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~48_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(2)) # ((\my_SPI|Mux7~46_combout\)))) # (!\my_SPI|table_num\(3) & (!\my_SPI|table_num\(2) & ((\my_SPI|Mux7~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|Mux7~46_combout\,
	datad => \my_SPI|Mux7~47_combout\,
	combout => \my_SPI|Mux7~48_combout\);

-- Location: LCCOMB_X14_Y10_N6
\my_SPI|Mux7~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~49_combout\ = (\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(4)) # (!\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & !\my_SPI|table_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux7~49_combout\);

-- Location: LCCOMB_X14_Y10_N4
\my_SPI|Mux7~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~50_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|Mux7~48_combout\ & (\my_SPI|Mux7~49_combout\)) # (!\my_SPI|Mux7~48_combout\ & ((\my_SPI|Mux7~45_combout\))))) # (!\my_SPI|table_num\(2) & (((\my_SPI|Mux7~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux7~49_combout\,
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|Mux7~45_combout\,
	datad => \my_SPI|Mux7~48_combout\,
	combout => \my_SPI|Mux7~50_combout\);

-- Location: LCCOMB_X15_Y7_N26
\my_SPI|Mux7~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~51_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux7~44_combout\ & ((\my_SPI|Mux7~50_combout\))) # (!\my_SPI|Mux7~44_combout\ & (\my_SPI|Mux7~31_combout\)))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux7~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|Mux7~31_combout\,
	datac => \my_SPI|Mux7~50_combout\,
	datad => \my_SPI|Mux7~44_combout\,
	combout => \my_SPI|Mux7~51_combout\);

-- Location: LCCOMB_X14_Y7_N6
\my_SPI|Mux7~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux7~52_combout\ = (\my_SPI|table_num\(8) & ((\my_SPI|Mux7~25_combout\))) # (!\my_SPI|table_num\(8) & (\my_SPI|Mux7~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(8),
	datac => \my_SPI|Mux7~51_combout\,
	datad => \my_SPI|Mux7~25_combout\,
	combout => \my_SPI|Mux7~52_combout\);

-- Location: LCCOMB_X12_Y8_N4
\my_SPI|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~0_combout\ = (\my_SPI|table_num\(7) & (((!\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3)) # 
-- (\my_SPI|table_num\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux8~0_combout\);

-- Location: LCCOMB_X12_Y8_N18
\my_SPI|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~1_combout\ = (\my_SPI|table_num\(7)) # ((\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3)) # (!\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux8~1_combout\);

-- Location: LCCOMB_X12_Y8_N20
\my_SPI|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~2_combout\ = (\my_SPI|table_num\(7) & (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) $ (!\my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(5) $ (((\my_SPI|table_num\(6)) # (\my_SPI|table_num\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux8~2_combout\);

-- Location: LCCOMB_X12_Y8_N2
\my_SPI|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~3_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(4))) # (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(4) & ((!\my_SPI|Mux8~1_combout\))) # (!\my_SPI|table_num\(4) & (!\my_SPI|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux8~2_combout\,
	datad => \my_SPI|Mux8~1_combout\,
	combout => \my_SPI|Mux8~3_combout\);

-- Location: LCCOMB_X12_Y8_N8
\my_SPI|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~4_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3)) # (\my_SPI|table_num\(6)))))) # (!\my_SPI|table_num\(7) & 
-- (((\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux8~4_combout\);

-- Location: LCCOMB_X12_Y8_N30
\my_SPI|Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~5_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux8~3_combout\ & (!\my_SPI|Mux8~4_combout\)) # (!\my_SPI|Mux8~3_combout\ & ((!\my_SPI|Mux8~0_combout\))))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|Mux8~4_combout\,
	datac => \my_SPI|Mux8~0_combout\,
	datad => \my_SPI|Mux8~3_combout\,
	combout => \my_SPI|Mux8~5_combout\);

-- Location: LCCOMB_X13_Y9_N26
\my_SPI|Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~6_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(3) & ((!\my_SPI|table_num\(1)))) # (!\my_SPI|table_num\(3) & (!\my_SPI|table_num\(7) & \my_SPI|table_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux8~6_combout\);

-- Location: LCCOMB_X13_Y9_N24
\my_SPI|Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~7_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6)) # (\my_SPI|table_num\(1) $ (\my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(3) & (\my_SPI|table_num\(1) $ (\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux8~7_combout\);

-- Location: LCCOMB_X13_Y9_N6
\my_SPI|Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~8_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(1))))) # (!\my_SPI|table_num\(3) & (\my_SPI|table_num\(1) & (\my_SPI|table_num\(7) $ 
-- (!\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux8~8_combout\);

-- Location: LCCOMB_X13_Y9_N20
\my_SPI|Mux8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~9_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5) & (!\my_SPI|Mux8~7_combout\)) # (!\my_SPI|table_num\(5) & ((\my_SPI|Mux8~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|Mux8~7_combout\,
	datad => \my_SPI|Mux8~8_combout\,
	combout => \my_SPI|Mux8~9_combout\);

-- Location: LCCOMB_X13_Y9_N2
\my_SPI|Mux8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~10_combout\ = (\my_SPI|table_num\(3) & (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6)))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(7) & (\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux8~10_combout\);

-- Location: LCCOMB_X13_Y9_N8
\my_SPI|Mux8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~11_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux8~9_combout\ & (\my_SPI|Mux8~10_combout\)) # (!\my_SPI|Mux8~9_combout\ & ((\my_SPI|Mux8~6_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|Mux8~10_combout\,
	datac => \my_SPI|Mux8~9_combout\,
	datad => \my_SPI|Mux8~6_combout\,
	combout => \my_SPI|Mux8~11_combout\);

-- Location: LCCOMB_X13_Y9_N22
\my_SPI|Mux8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~12_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(3)) # (\my_SPI|table_num\(6) $ (!\my_SPI|table_num\(1))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(6) & (\my_SPI|table_num\(3) $ (!\my_SPI|table_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux8~12_combout\);

-- Location: LCCOMB_X13_Y9_N12
\my_SPI|Mux8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~13_combout\ = (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(1) & ((!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(1) & (\my_SPI|table_num\(7) & \my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux8~13_combout\);

-- Location: LCCOMB_X13_Y9_N14
\my_SPI|Mux8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~14_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(3) & (!\my_SPI|table_num\(1))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6)))))) # (!\my_SPI|table_num\(7) & (((!\my_SPI|table_num\(6) & \my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux8~14_combout\);

-- Location: LCCOMB_X13_Y9_N16
\my_SPI|Mux8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~15_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5) & ((\my_SPI|Mux8~13_combout\))) # (!\my_SPI|table_num\(5) & (\my_SPI|Mux8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|Mux8~14_combout\,
	datad => \my_SPI|Mux8~13_combout\,
	combout => \my_SPI|Mux8~15_combout\);

-- Location: LCCOMB_X13_Y9_N10
\my_SPI|Mux8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~16_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(1)) # (\my_SPI|table_num\(7) $ (\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(1)))) # (!\my_SPI|table_num\(6) & 
-- (\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux8~16_combout\);

-- Location: LCCOMB_X13_Y9_N28
\my_SPI|Mux8~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~17_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux8~15_combout\ & (!\my_SPI|Mux8~16_combout\)) # (!\my_SPI|Mux8~15_combout\ & ((\my_SPI|Mux8~12_combout\))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux8~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux8~16_combout\,
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux8~15_combout\,
	datad => \my_SPI|Mux8~12_combout\,
	combout => \my_SPI|Mux8~17_combout\);

-- Location: LCCOMB_X13_Y9_N18
\my_SPI|Mux8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~18_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(0)) # ((\my_SPI|Mux8~11_combout\)))) # (!\my_SPI|table_num\(2) & (!\my_SPI|table_num\(0) & ((\my_SPI|Mux8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|Mux8~11_combout\,
	datad => \my_SPI|Mux8~17_combout\,
	combout => \my_SPI|Mux8~18_combout\);

-- Location: LCCOMB_X12_Y8_N0
\my_SPI|Mux8~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~19_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(6)) # (\my_SPI|table_num\(5) $ (!\my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(3)))) # 
-- (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux8~19_combout\);

-- Location: LCCOMB_X12_Y8_N14
\my_SPI|Mux8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~20_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|table_num\(5) $ (((\my_SPI|table_num\(6) & \my_SPI|table_num\(3)))))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) $ (!\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux8~20_combout\);

-- Location: LCCOMB_X12_Y8_N12
\my_SPI|Mux8~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~21_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5)) # ((\my_SPI|table_num\(3) & !\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux8~21_combout\);

-- Location: LCCOMB_X12_Y8_N10
\my_SPI|Mux8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~22_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(4))) # (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(4) & (!\my_SPI|Mux8~20_combout\)) # (!\my_SPI|table_num\(4) & ((\my_SPI|Mux8~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux8~20_combout\,
	datad => \my_SPI|Mux8~21_combout\,
	combout => \my_SPI|Mux8~22_combout\);

-- Location: LCCOMB_X12_Y8_N24
\my_SPI|Mux8~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~23_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7) & ((!\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(7) & (\my_SPI|table_num\(3))))) # (!\my_SPI|table_num\(5) & (!\my_SPI|table_num\(7) & 
-- (!\my_SPI|table_num\(3) & \my_SPI|table_num\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux8~23_combout\);

-- Location: LCCOMB_X12_Y8_N22
\my_SPI|Mux8~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~24_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux8~22_combout\ & ((!\my_SPI|Mux8~23_combout\))) # (!\my_SPI|Mux8~22_combout\ & (\my_SPI|Mux8~19_combout\)))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|Mux8~19_combout\,
	datac => \my_SPI|Mux8~23_combout\,
	datad => \my_SPI|Mux8~22_combout\,
	combout => \my_SPI|Mux8~24_combout\);

-- Location: LCCOMB_X13_Y9_N0
\my_SPI|Mux8~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~25_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux8~18_combout\ & (\my_SPI|Mux8~24_combout\)) # (!\my_SPI|Mux8~18_combout\ & ((\my_SPI|Mux8~5_combout\))))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|Mux8~24_combout\,
	datac => \my_SPI|Mux8~5_combout\,
	datad => \my_SPI|Mux8~18_combout\,
	combout => \my_SPI|Mux8~25_combout\);

-- Location: LCCOMB_X13_Y9_N30
\my_SPI|Mux8~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~26_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5) & ((\my_SPI|table_num\(4)) # (\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(3)))))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(3)) # 
-- (\my_SPI|table_num\(4) $ (\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux8~26_combout\);

-- Location: LCCOMB_X13_Y10_N30
\my_SPI|Mux8~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~27_combout\ = (\my_SPI|table_num\(4) & (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(5)) # (!\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(5) & (\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(5) & 
-- ((\my_SPI|table_num\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux8~27_combout\);

-- Location: LCCOMB_X13_Y10_N8
\my_SPI|Mux8~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~28_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5) & (\my_SPI|table_num\(3) $ (!\my_SPI|table_num\(4)))) # (!\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(4)) # (!\my_SPI|table_num\(3)))))) # (!\my_SPI|table_num\(7) & 
-- ((\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(4)) # (!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3)) # (\my_SPI|table_num\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux8~28_combout\);

-- Location: LCCOMB_X13_Y10_N2
\my_SPI|Mux8~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~29_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(1)) # ((\my_SPI|Mux8~27_combout\)))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(1) & (\my_SPI|Mux8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux8~28_combout\,
	datad => \my_SPI|Mux8~27_combout\,
	combout => \my_SPI|Mux8~29_combout\);

-- Location: LCCOMB_X14_Y10_N18
\my_SPI|Mux8~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~30_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3) & (\my_SPI|table_num\(4) & \my_SPI|table_num\(7))) # (!\my_SPI|table_num\(3) & ((!\my_SPI|table_num\(7)))))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(3) & 
-- (\my_SPI|table_num\(4) $ (\my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux8~30_combout\);

-- Location: LCCOMB_X14_Y9_N2
\my_SPI|Mux8~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~31_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|Mux8~29_combout\ & ((!\my_SPI|Mux8~30_combout\))) # (!\my_SPI|Mux8~29_combout\ & (\my_SPI|Mux8~26_combout\)))) # (!\my_SPI|table_num\(1) & (((\my_SPI|Mux8~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux8~26_combout\,
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|Mux8~30_combout\,
	datad => \my_SPI|Mux8~29_combout\,
	combout => \my_SPI|Mux8~31_combout\);

-- Location: LCCOMB_X15_Y9_N28
\my_SPI|Mux8~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~32_combout\ = (\my_SPI|table_num\(6) & (!\my_SPI|table_num\(4) & (!\my_SPI|table_num\(1)))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(4)) # (\my_SPI|table_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux8~32_combout\);

-- Location: LCCOMB_X15_Y9_N14
\my_SPI|Mux8~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~33_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(1) & ((!\my_SPI|table_num\(4)))) # (!\my_SPI|table_num\(1) & (\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(1) & 
-- \my_SPI|table_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux8~33_combout\);

-- Location: LCCOMB_X15_Y9_N12
\my_SPI|Mux8~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~34_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & (!\my_SPI|table_num\(1))) # (!\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(7)))))) # (!\my_SPI|table_num\(4) & (((\my_SPI|table_num\(1) & \my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux8~34_combout\);

-- Location: LCCOMB_X15_Y9_N6
\my_SPI|Mux8~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~35_combout\ = (\my_SPI|table_num\(3) & (\my_SPI|table_num\(5))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(5) & (!\my_SPI|Mux8~33_combout\)) # (!\my_SPI|table_num\(5) & ((!\my_SPI|Mux8~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|Mux8~33_combout\,
	datad => \my_SPI|Mux8~34_combout\,
	combout => \my_SPI|Mux8~35_combout\);

-- Location: LCCOMB_X15_Y9_N24
\my_SPI|Mux8~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~36_combout\ = (\my_SPI|table_num\(1) & ((\my_SPI|table_num\(7)) # ((!\my_SPI|table_num\(6) & \my_SPI|table_num\(4))))) # (!\my_SPI|table_num\(1) & (\my_SPI|table_num\(6) & ((!\my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux8~36_combout\);

-- Location: LCCOMB_X15_Y9_N10
\my_SPI|Mux8~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~37_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|Mux8~35_combout\ & ((!\my_SPI|Mux8~36_combout\))) # (!\my_SPI|Mux8~35_combout\ & (\my_SPI|Mux8~32_combout\)))) # (!\my_SPI|table_num\(3) & (((\my_SPI|Mux8~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|Mux8~32_combout\,
	datac => \my_SPI|Mux8~36_combout\,
	datad => \my_SPI|Mux8~35_combout\,
	combout => \my_SPI|Mux8~37_combout\);

-- Location: LCCOMB_X15_Y9_N4
\my_SPI|Mux8~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~38_combout\ = (\my_SPI|table_num\(6) & (!\my_SPI|table_num\(7) & ((!\my_SPI|table_num\(4)) # (!\my_SPI|table_num\(1))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(1) & ((\my_SPI|table_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux8~38_combout\);

-- Location: LCCOMB_X14_Y9_N20
\my_SPI|Mux8~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~39_combout\ = (\my_SPI|table_num\(7) & (\my_SPI|table_num\(1) & (\my_SPI|table_num\(6) & !\my_SPI|table_num\(4)))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(1) & (!\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(1) & 
-- ((\my_SPI|table_num\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux8~39_combout\);

-- Location: LCCOMB_X14_Y9_N22
\my_SPI|Mux8~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~40_combout\ = (\my_SPI|table_num\(1) & (((\my_SPI|table_num\(6)) # (!\my_SPI|table_num\(4))))) # (!\my_SPI|table_num\(1) & (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(4)) # (!\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux8~40_combout\);

-- Location: LCCOMB_X14_Y9_N16
\my_SPI|Mux8~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~41_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(5)) # ((!\my_SPI|Mux8~39_combout\)))) # (!\my_SPI|table_num\(3) & (!\my_SPI|table_num\(5) & ((\my_SPI|Mux8~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|Mux8~39_combout\,
	datad => \my_SPI|Mux8~40_combout\,
	combout => \my_SPI|Mux8~41_combout\);

-- Location: LCCOMB_X15_Y9_N18
\my_SPI|Mux8~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~42_combout\ = (\my_SPI|table_num\(4) & (!\my_SPI|table_num\(1) & (!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(4),
	combout => \my_SPI|Mux8~42_combout\);

-- Location: LCCOMB_X14_Y9_N30
\my_SPI|Mux8~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~43_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|Mux8~41_combout\ & (!\my_SPI|Mux8~42_combout\)) # (!\my_SPI|Mux8~41_combout\ & ((\my_SPI|Mux8~38_combout\))))) # (!\my_SPI|table_num\(5) & (((\my_SPI|Mux8~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|Mux8~42_combout\,
	datac => \my_SPI|Mux8~41_combout\,
	datad => \my_SPI|Mux8~38_combout\,
	combout => \my_SPI|Mux8~43_combout\);

-- Location: LCCOMB_X14_Y9_N4
\my_SPI|Mux8~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~44_combout\ = (\my_SPI|table_num\(0) & (\my_SPI|table_num\(2))) # (!\my_SPI|table_num\(0) & ((\my_SPI|table_num\(2) & (\my_SPI|Mux8~37_combout\)) # (!\my_SPI|table_num\(2) & ((\my_SPI|Mux8~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|Mux8~37_combout\,
	datad => \my_SPI|Mux8~43_combout\,
	combout => \my_SPI|Mux8~44_combout\);

-- Location: LCCOMB_X15_Y9_N16
\my_SPI|Mux8~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~45_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(5) & (\my_SPI|table_num\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux8~45_combout\);

-- Location: LCCOMB_X15_Y9_N26
\my_SPI|Mux8~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~46_combout\ = (\my_SPI|table_num\(3) & (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(1)) # (!\my_SPI|table_num\(5))))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(7) & (!\my_SPI|table_num\(1) & !\my_SPI|table_num\(5))) # 
-- (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux8~46_combout\);

-- Location: LCCOMB_X15_Y9_N20
\my_SPI|Mux8~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~47_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(7) & (!\my_SPI|table_num\(1))) # (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(1)) # (!\my_SPI|table_num\(5)))))) # (!\my_SPI|table_num\(3) & (\my_SPI|table_num\(7) & 
-- (\my_SPI|table_num\(1) & \my_SPI|table_num\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(5),
	combout => \my_SPI|Mux8~47_combout\);

-- Location: LCCOMB_X15_Y9_N2
\my_SPI|Mux8~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~48_combout\ = (\my_SPI|table_num\(4) & (((\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & (!\my_SPI|Mux8~46_combout\)) # (!\my_SPI|table_num\(6) & ((\my_SPI|Mux8~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|Mux8~46_combout\,
	datac => \my_SPI|Mux8~47_combout\,
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux8~48_combout\);

-- Location: LCCOMB_X15_Y9_N8
\my_SPI|Mux8~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~49_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(3) $ (((!\my_SPI|table_num\(5) & !\my_SPI|table_num\(7)))))) # (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(5) & ((!\my_SPI|table_num\(3)) # (!\my_SPI|table_num\(7)))) # 
-- (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7)) # (\my_SPI|table_num\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(1),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux8~49_combout\);

-- Location: LCCOMB_X15_Y9_N30
\my_SPI|Mux8~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~50_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux8~48_combout\ & ((\my_SPI|Mux8~49_combout\))) # (!\my_SPI|Mux8~48_combout\ & (!\my_SPI|Mux8~45_combout\)))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux8~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux8~45_combout\,
	datab => \my_SPI|Mux8~49_combout\,
	datac => \my_SPI|table_num\(4),
	datad => \my_SPI|Mux8~48_combout\,
	combout => \my_SPI|Mux8~50_combout\);

-- Location: LCCOMB_X14_Y9_N26
\my_SPI|Mux8~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~51_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux8~44_combout\ & (\my_SPI|Mux8~50_combout\)) # (!\my_SPI|Mux8~44_combout\ & ((\my_SPI|Mux8~31_combout\))))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux8~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|Mux8~50_combout\,
	datac => \my_SPI|Mux8~44_combout\,
	datad => \my_SPI|Mux8~31_combout\,
	combout => \my_SPI|Mux8~51_combout\);

-- Location: LCCOMB_X14_Y9_N28
\my_SPI|Mux8~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux8~52_combout\ = (\my_SPI|table_num\(8) & (\my_SPI|Mux8~25_combout\)) # (!\my_SPI|table_num\(8) & ((\my_SPI|Mux8~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(8),
	datac => \my_SPI|Mux8~25_combout\,
	datad => \my_SPI|Mux8~51_combout\,
	combout => \my_SPI|Mux8~52_combout\);

-- Location: LCFF_X14_Y9_N19
\my_SPI|input_register[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register~20_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(2));

-- Location: LCCOMB_X13_Y5_N12
\my_SPI|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~2_combout\ = (\my_SPI|table_num\(2) & (!\my_SPI|table_num\(7) & ((\my_SPI|table_num\(1)) # (!\my_SPI|table_num\(0))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(1) & (!\my_SPI|table_num\(0) & !\my_SPI|table_num\(7))) # 
-- (!\my_SPI|table_num\(1) & ((\my_SPI|table_num\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux9~2_combout\);

-- Location: LCCOMB_X13_Y5_N30
\my_SPI|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~3_combout\ = (\my_SPI|table_num\(7)) # (\my_SPI|table_num\(2) $ (((\my_SPI|table_num\(0) & \my_SPI|table_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(1),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux9~3_combout\);

-- Location: LCCOMB_X13_Y5_N4
\my_SPI|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~4_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|table_num\(0) & ((\my_SPI|table_num\(1)) # (\my_SPI|table_num\(7))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(0) & ((!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(0) & 
-- (\my_SPI|table_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux9~4_combout\);

-- Location: LCCOMB_X13_Y5_N26
\my_SPI|Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~5_combout\ = (\my_SPI|table_num\(4) & (\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & ((\my_SPI|Mux9~3_combout\))) # (!\my_SPI|table_num\(6) & (!\my_SPI|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|Mux9~4_combout\,
	datad => \my_SPI|Mux9~3_combout\,
	combout => \my_SPI|Mux9~5_combout\);

-- Location: LCCOMB_X13_Y5_N20
\my_SPI|Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~6_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|table_num\(1) $ (((\my_SPI|table_num\(0) & !\my_SPI|table_num\(7)))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(0) & ((!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(0) & 
-- (!\my_SPI|table_num\(1) & \my_SPI|table_num\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux9~6_combout\);

-- Location: LCCOMB_X13_Y5_N22
\my_SPI|Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~7_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux9~5_combout\ & ((\my_SPI|Mux9~6_combout\))) # (!\my_SPI|Mux9~5_combout\ & (\my_SPI|Mux9~2_combout\)))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux9~2_combout\,
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux9~6_combout\,
	datad => \my_SPI|Mux9~5_combout\,
	combout => \my_SPI|Mux9~7_combout\);

-- Location: LCCOMB_X13_Y5_N28
\my_SPI|Mux9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~8_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(2) & (\my_SPI|table_num\(0))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(1)) # (!\my_SPI|table_num\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux9~8_combout\);

-- Location: LCCOMB_X13_Y5_N2
\my_SPI|Mux9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~9_combout\ = (\my_SPI|table_num\(1) & (\my_SPI|table_num\(6) $ (((!\my_SPI|table_num\(0) & \my_SPI|table_num\(2)))))) # (!\my_SPI|table_num\(1) & (\my_SPI|table_num\(0) & ((\my_SPI|table_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux9~9_combout\);

-- Location: LCCOMB_X13_Y5_N8
\my_SPI|Mux9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~10_combout\ = (\my_SPI|table_num\(6) & (((\my_SPI|table_num\(1)) # (\my_SPI|table_num\(2))))) # (!\my_SPI|table_num\(6) & (\my_SPI|table_num\(2) $ (((\my_SPI|table_num\(0)) # (\my_SPI|table_num\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(2),
	combout => \my_SPI|Mux9~10_combout\);

-- Location: LCCOMB_X13_Y5_N18
\my_SPI|Mux9~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~11_combout\ = (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(4)) # ((\my_SPI|Mux9~9_combout\)))) # (!\my_SPI|table_num\(7) & (!\my_SPI|table_num\(4) & (!\my_SPI|Mux9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|Mux9~10_combout\,
	datad => \my_SPI|Mux9~9_combout\,
	combout => \my_SPI|Mux9~11_combout\);

-- Location: LCCOMB_X13_Y5_N16
\my_SPI|Mux9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~12_combout\ = (\my_SPI|table_num\(6) & (\my_SPI|table_num\(1) $ (((!\my_SPI|table_num\(2) & !\my_SPI|table_num\(0)))))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(2)) # ((!\my_SPI|table_num\(1) & \my_SPI|table_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(2),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(1),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux9~12_combout\);

-- Location: LCCOMB_X13_Y5_N14
\my_SPI|Mux9~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~13_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|Mux9~11_combout\ & ((!\my_SPI|Mux9~12_combout\))) # (!\my_SPI|Mux9~11_combout\ & (!\my_SPI|Mux9~8_combout\)))) # (!\my_SPI|table_num\(4) & (((\my_SPI|Mux9~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|Mux9~8_combout\,
	datac => \my_SPI|Mux9~12_combout\,
	datad => \my_SPI|Mux9~11_combout\,
	combout => \my_SPI|Mux9~13_combout\);

-- Location: LCCOMB_X13_Y5_N0
\my_SPI|Mux9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~14_combout\ = (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(5) & ((\my_SPI|Mux9~7_combout\))) # (!\my_SPI|table_num\(5) & (\my_SPI|Mux9~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(5),
	datac => \my_SPI|Mux9~13_combout\,
	datad => \my_SPI|Mux9~7_combout\,
	combout => \my_SPI|Mux9~14_combout\);

-- Location: LCCOMB_X14_Y5_N22
\my_SPI|Mux9~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~15_combout\ = (\my_SPI|table_num\(4) & (!\my_SPI|table_num\(1) & (\my_SPI|table_num\(6) $ (\my_SPI|table_num\(2))))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(2) $ (((!\my_SPI|table_num\(6) & \my_SPI|table_num\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux9~15_combout\);

-- Location: LCCOMB_X14_Y5_N20
\my_SPI|Mux9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~16_combout\ = (!\my_SPI|table_num\(8) & (\my_SPI|table_num\(2) & \my_SPI|table_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(8),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux9~16_combout\);

-- Location: LCCOMB_X14_Y5_N30
\my_SPI|Mux9~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~17_combout\ = (\my_SPI|table_num\(0) & ((\my_SPI|Mux9~27_combout\) # ((\my_SPI|Mux9~16_combout\)))) # (!\my_SPI|table_num\(0) & (((\my_SPI|Mux9~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux9~27_combout\,
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|Mux9~16_combout\,
	datad => \my_SPI|Mux9~15_combout\,
	combout => \my_SPI|Mux9~17_combout\);

-- Location: LCCOMB_X14_Y5_N8
\my_SPI|Mux9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~18_combout\ = (\my_SPI|table_num\(4) & (((\my_SPI|table_num\(6) & \my_SPI|table_num\(1))))) # (!\my_SPI|table_num\(4) & (\my_SPI|table_num\(0) $ (((\my_SPI|table_num\(6) & !\my_SPI|table_num\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux9~18_combout\);

-- Location: LCCOMB_X14_Y5_N10
\my_SPI|Mux9~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~19_combout\ = (\my_SPI|table_num\(0) & (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(1)) # (!\my_SPI|table_num\(4))))) # (!\my_SPI|table_num\(0) & (!\my_SPI|table_num\(4) & (!\my_SPI|table_num\(6) & \my_SPI|table_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(6),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux9~19_combout\);

-- Location: LCCOMB_X14_Y5_N16
\my_SPI|Mux9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~20_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|Mux9~18_combout\)) # (!\my_SPI|table_num\(2) & ((!\my_SPI|Mux9~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|Mux9~18_combout\,
	datad => \my_SPI|Mux9~19_combout\,
	combout => \my_SPI|Mux9~20_combout\);

-- Location: LCCOMB_X14_Y5_N2
\my_SPI|Mux9~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~21_combout\ = (\my_SPI|table_num\(5) & (\my_SPI|table_num\(7))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7) & (\my_SPI|Mux9~20_combout\)) # (!\my_SPI|table_num\(7) & ((!\my_SPI|Mux9~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|Mux9~20_combout\,
	datad => \my_SPI|Mux9~29_combout\,
	combout => \my_SPI|Mux9~21_combout\);

-- Location: LCCOMB_X14_Y5_N12
\my_SPI|Mux9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~22_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|table_num\(2) $ (!\my_SPI|table_num\(1))) # (!\my_SPI|table_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux9~22_combout\);

-- Location: LCCOMB_X14_Y5_N14
\my_SPI|Mux9~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~23_combout\ = (\my_SPI|table_num\(2) & ((\my_SPI|table_num\(1) & (!\my_SPI|table_num\(4))) # (!\my_SPI|table_num\(1) & ((!\my_SPI|table_num\(0)))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(4)) # ((\my_SPI|table_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux9~23_combout\);

-- Location: LCCOMB_X14_Y5_N4
\my_SPI|Mux9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~24_combout\ = (\my_SPI|Mux9~22_combout\) # ((!\my_SPI|table_num\(6) & !\my_SPI|Mux9~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|Mux9~23_combout\,
	datad => \my_SPI|Mux9~22_combout\,
	combout => \my_SPI|Mux9~24_combout\);

-- Location: LCCOMB_X14_Y5_N18
\my_SPI|Mux9~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~25_combout\ = (\my_SPI|table_num\(5) & ((\my_SPI|Mux9~21_combout\ & ((\my_SPI|Mux9~24_combout\))) # (!\my_SPI|Mux9~21_combout\ & (\my_SPI|Mux9~17_combout\)))) # (!\my_SPI|table_num\(5) & (((\my_SPI|Mux9~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|Mux9~17_combout\,
	datac => \my_SPI|Mux9~24_combout\,
	datad => \my_SPI|Mux9~21_combout\,
	combout => \my_SPI|Mux9~25_combout\);

-- Location: LCCOMB_X14_Y5_N24
\my_SPI|Mux9~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~26_combout\ = (\my_SPI|Mux9~14_combout\) # ((\my_SPI|table_num\(3) & \my_SPI|Mux9~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datac => \my_SPI|Mux9~14_combout\,
	datad => \my_SPI|Mux9~25_combout\,
	combout => \my_SPI|Mux9~26_combout\);

-- Location: LCCOMB_X13_Y7_N2
\my_SPI|Mux3~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~27_combout\ = (\my_SPI|table_num\(6) & (((!\my_SPI|Mux3~8_combout\)))) # (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(7)) # ((\my_SPI|table_num\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(7),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(5),
	datad => \my_SPI|Mux3~8_combout\,
	combout => \my_SPI|Mux3~27_combout\);

-- Location: LCCOMB_X14_Y8_N30
\my_SPI|Mux4~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux4~52_combout\ = (\my_SPI|table_num\(4) & (((\my_SPI|table_num\(2) & \my_SPI|table_num\(0))) # (!\my_SPI|table_num\(3)))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(2) & (!\my_SPI|table_num\(3) & \my_SPI|table_num\(0))) # 
-- (!\my_SPI|table_num\(2) & (\my_SPI|table_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(2),
	datac => \my_SPI|table_num\(3),
	datad => \my_SPI|table_num\(0),
	combout => \my_SPI|Mux4~52_combout\);

-- Location: LCCOMB_X14_Y5_N6
\my_SPI|Mux9~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~27_combout\ = (\my_SPI|table_num\(4) & ((\my_SPI|table_num\(1) & (!\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(1) & ((!\my_SPI|table_num\(2)))))) # (!\my_SPI|table_num\(4) & ((\my_SPI|table_num\(6) & ((\my_SPI|table_num\(1)))) # 
-- (!\my_SPI|table_num\(6) & ((\my_SPI|table_num\(2)) # (!\my_SPI|table_num\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(4),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux9~27_combout\);

-- Location: LCCOMB_X14_Y9_N18
\my_SPI|input_register~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~20_combout\ = (\my_SPI|input_register[3]~9_combout\ & ((\my_SPI|WideOr1~0_combout\) # ((\my_SPI|LessThan1~0_combout\) # (\my_SPI|bit_number\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~0_combout\,
	datab => \my_SPI|LessThan1~0_combout\,
	datac => \my_SPI|bit_number\(4),
	datad => \my_SPI|input_register[3]~9_combout\,
	combout => \my_SPI|input_register~20_combout\);

-- Location: LCCOMB_X14_Y5_N28
\my_SPI|Mux9~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~28_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|table_num\(1) $ (((!\my_SPI|table_num\(0)) # (!\my_SPI|table_num\(6)))))) # (!\my_SPI|table_num\(2) & ((\my_SPI|table_num\(1) & (!\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(1) & 
-- ((\my_SPI|table_num\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(0),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(1),
	combout => \my_SPI|Mux9~28_combout\);

-- Location: LCCOMB_X14_Y5_N26
\my_SPI|Mux9~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux9~29_combout\ = (\my_SPI|table_num\(6) & ((\my_SPI|Mux9~28_combout\) # ((!\my_SPI|table_num\(4) & !\my_SPI|table_num\(2))))) # (!\my_SPI|table_num\(6) & (!\my_SPI|table_num\(4) & ((\my_SPI|Mux9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(6),
	datab => \my_SPI|table_num\(4),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|Mux9~28_combout\,
	combout => \my_SPI|Mux9~29_combout\);

-- Location: LCCOMB_X12_Y7_N28
\my_SPI|Mux3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~28_combout\ = (\my_SPI|table_num\(3) & ((\my_SPI|table_num\(2) $ (!\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(7) $ (!\my_SPI|table_num\(6))) # (!\my_SPI|table_num\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(3),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(6),
	combout => \my_SPI|Mux3~28_combout\);

-- Location: LCCOMB_X12_Y7_N18
\my_SPI|Mux3~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~29_combout\ = (\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) $ (\my_SPI|table_num\(2) $ (\my_SPI|Mux3~28_combout\)))) # (!\my_SPI|table_num\(5) & (\my_SPI|Mux3~28_combout\ & (\my_SPI|table_num\(6) $ (\my_SPI|table_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|Mux3~28_combout\,
	combout => \my_SPI|Mux3~29_combout\);

-- Location: LCCOMB_X13_Y7_N28
\my_SPI|Mux3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~30_combout\ = (\my_SPI|table_num\(5) & (((\my_SPI|table_num\(2) & !\my_SPI|Mux3~33_combout\)) # (!\my_SPI|table_num\(7)))) # (!\my_SPI|table_num\(5) & ((\my_SPI|table_num\(7)) # ((\my_SPI|Mux3~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(7),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|Mux3~33_combout\,
	combout => \my_SPI|Mux3~30_combout\);

-- Location: LCCOMB_X13_Y7_N18
\my_SPI|Mux3~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~31_combout\ = (\my_SPI|table_num\(3) & (((\my_SPI|Mux3~30_combout\)))) # (!\my_SPI|table_num\(3) & (\my_SPI|Mux3~33_combout\ & ((\my_SPI|table_num\(7)) # (\my_SPI|Mux3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Mux3~33_combout\,
	datab => \my_SPI|table_num\(3),
	datac => \my_SPI|table_num\(7),
	datad => \my_SPI|Mux3~30_combout\,
	combout => \my_SPI|Mux3~31_combout\);

-- Location: LCCOMB_X13_Y7_N8
\my_SPI|Mux3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~32_combout\ = (\my_SPI|table_num\(2) & (\my_SPI|table_num\(7) & ((\my_SPI|table_num\(0)) # (!\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(2) & (((!\my_SPI|table_num\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(0),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|table_num\(2),
	datad => \my_SPI|table_num\(7),
	combout => \my_SPI|Mux3~32_combout\);

-- Location: LCCOMB_X13_Y7_N6
\my_SPI|Mux3~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Mux3~33_combout\ = (\my_SPI|table_num\(3) & (((\my_SPI|table_num\(6))))) # (!\my_SPI|table_num\(3) & ((\my_SPI|table_num\(5) & (\my_SPI|table_num\(6) & !\my_SPI|Mux3~32_combout\)) # (!\my_SPI|table_num\(5) & ((\my_SPI|Mux3~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|table_num\(5),
	datab => \my_SPI|table_num\(6),
	datac => \my_SPI|Mux3~32_combout\,
	datad => \my_SPI|table_num\(3),
	combout => \my_SPI|Mux3~33_combout\);

-- Location: LCCOMB_X13_Y6_N0
\my_SPI|table_num[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|table_num[0]~1_combout\ = !\my_SPI|table_num\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|table_num\(0),
	combout => \my_SPI|table_num[0]~1_combout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_173,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sin_freq[2]~I\ : cycloneii_io
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
	padio => ww_sin_freq(2),
	combout => \sin_freq~combout\(2));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sin_freq[6]~I\ : cycloneii_io
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
	padio => ww_sin_freq(6),
	combout => \sin_freq~combout\(6));

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X1_Y6_N6
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

-- Location: LCCOMB_X1_Y6_N10
\divider|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~4_combout\ = (\divider|counter\(2) & (\divider|Add0~3\ $ (GND))) # (!\divider|counter\(2) & (!\divider|Add0~3\ & VCC))
-- \divider|Add0~5\ = CARRY((\divider|counter\(2) & !\divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(2),
	datad => VCC,
	cin => \divider|Add0~3\,
	combout => \divider|Add0~4_combout\,
	cout => \divider|Add0~5\);

-- Location: LCCOMB_X1_Y6_N28
\divider|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Equal0~0_combout\ = (!\divider|Add0~2_combout\ & (\divider|Add0~0_combout\ & (!\divider|Add0~4_combout\ & !\divider|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~2_combout\,
	datab => \divider|Add0~0_combout\,
	datac => \divider|Add0~4_combout\,
	datad => \divider|Add0~6_combout\,
	combout => \divider|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y6_N2
\divider|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|counter~0_combout\ = (\divider|Add0~0_combout\ & ((!\divider|Equal0~1_combout\) # (!\divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|Add0~0_combout\,
	datac => \divider|Equal0~0_combout\,
	datad => \divider|Equal0~1_combout\,
	combout => \divider|counter~0_combout\);

-- Location: LCFF_X1_Y6_N3
\divider|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(0));

-- Location: LCCOMB_X1_Y6_N8
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

-- Location: LCFF_X1_Y6_N9
\divider|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(1));

-- Location: LCCOMB_X1_Y6_N12
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

-- Location: LCFF_X1_Y6_N13
\divider|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(3));

-- Location: LCCOMB_X1_Y6_N14
\divider|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Add0~8_combout\ = (\divider|counter\(4) & (\divider|Add0~7\ $ (GND))) # (!\divider|counter\(4) & (!\divider|Add0~7\ & VCC))
-- \divider|Add0~9\ = CARRY((\divider|counter\(4) & !\divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divider|counter\(4),
	datad => VCC,
	cin => \divider|Add0~7\,
	combout => \divider|Add0~8_combout\,
	cout => \divider|Add0~9\);

-- Location: LCFF_X1_Y6_N21
\divider|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(7));

-- Location: LCCOMB_X1_Y6_N16
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

-- Location: LCFF_X1_Y6_N17
\divider|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|counter\(5));

-- Location: LCCOMB_X1_Y6_N18
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

-- Location: LCCOMB_X1_Y6_N20
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

-- Location: LCCOMB_X1_Y6_N0
\divider|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|Equal0~1_combout\ = (!\divider|Add0~10_combout\ & (!\divider|Add0~8_combout\ & (!\divider|Add0~14_combout\ & !\divider|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider|Add0~10_combout\,
	datab => \divider|Add0~8_combout\,
	datac => \divider|Add0~14_combout\,
	datad => \divider|Add0~12_combout\,
	combout => \divider|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y6_N26
\divider|out_clk_inner~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divider|out_clk_inner~0_combout\ = \divider|out_clk_inner~regout\ $ (((\divider|Equal0~1_combout\ & \divider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider|Equal0~1_combout\,
	datac => \divider|out_clk_inner~regout\,
	datad => \divider|Equal0~0_combout\,
	combout => \divider|out_clk_inner~0_combout\);

-- Location: LCFF_X1_Y6_N27
\divider|out_clk_inner\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divider|out_clk_inner~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divider|out_clk_inner~regout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sin_freq[7]~I\ : cycloneii_io
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
	padio => ww_sin_freq(7),
	combout => \sin_freq~combout\(7));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sin_freq[4]~I\ : cycloneii_io
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
	padio => ww_sin_freq(4),
	combout => \sin_freq~combout\(4));

-- Location: PIN_170,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sin_freq[1]~I\ : cycloneii_io
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
	padio => ww_sin_freq(1),
	combout => \sin_freq~combout\(1));

-- Location: PIN_175,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sin_freq[0]~I\ : cycloneii_io
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
	padio => ww_sin_freq(0),
	combout => \sin_freq~combout\(0));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sin_freq[3]~I\ : cycloneii_io
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
	padio => ww_sin_freq(3),
	combout => \sin_freq~combout\(3));

-- Location: LCCOMB_X18_Y9_N28
\my_SPI|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Equal2~0_combout\ = (!\sin_freq~combout\(2) & (!\sin_freq~combout\(1) & (!\sin_freq~combout\(0) & !\sin_freq~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_freq~combout\(2),
	datab => \sin_freq~combout\(1),
	datac => \sin_freq~combout\(0),
	datad => \sin_freq~combout\(3),
	combout => \my_SPI|Equal2~0_combout\);

-- Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sin_freq[5]~I\ : cycloneii_io
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
	padio => ww_sin_freq(5),
	combout => \sin_freq~combout\(5));

-- Location: LCCOMB_X20_Y9_N0
\my_SPI|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Equal2~1_combout\ = (!\sin_freq~combout\(6) & (!\sin_freq~combout\(5) & (!\sin_freq~combout\(7) & !\sin_freq~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_freq~combout\(6),
	datab => \sin_freq~combout\(5),
	datac => \sin_freq~combout\(7),
	datad => \sin_freq~combout\(4),
	combout => \my_SPI|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y9_N30
\my_SPI|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Equal2~2_combout\ = (\my_SPI|Equal2~0_combout\ & \my_SPI|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|Equal2~0_combout\,
	datad => \my_SPI|Equal2~1_combout\,
	combout => \my_SPI|Equal2~2_combout\);

-- Location: LCCOMB_X19_Y9_N6
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

-- Location: LCCOMB_X19_Y9_N8
\my_SPI|bit_number[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|bit_number[1]~7_combout\ = (\my_SPI|bit_number\(1) & (!\my_SPI|bit_number[0]~6\)) # (!\my_SPI|bit_number\(1) & ((\my_SPI|bit_number[0]~6\) # (GND)))
-- \my_SPI|bit_number[1]~8\ = CARRY((!\my_SPI|bit_number[0]~6\) # (!\my_SPI|bit_number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(1),
	datad => VCC,
	cin => \my_SPI|bit_number[0]~6\,
	combout => \my_SPI|bit_number[1]~7_combout\,
	cout => \my_SPI|bit_number[1]~8\);

-- Location: LCCOMB_X19_Y9_N10
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

-- Location: LCCOMB_X19_Y9_N12
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

-- Location: LCCOMB_X19_Y9_N14
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

-- Location: LCCOMB_X17_Y9_N4
\my_SPI|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add0~4_combout\ = (\my_SPI|sin_freq_cnt\(2) & ((GND) # (!\my_SPI|Add0~3\))) # (!\my_SPI|sin_freq_cnt\(2) & (\my_SPI|Add0~3\ $ (GND)))
-- \my_SPI|Add0~5\ = CARRY((\my_SPI|sin_freq_cnt\(2)) # (!\my_SPI|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|sin_freq_cnt\(2),
	datad => VCC,
	cin => \my_SPI|Add0~3\,
	combout => \my_SPI|Add0~4_combout\,
	cout => \my_SPI|Add0~5\);

-- Location: LCCOMB_X17_Y9_N6
\my_SPI|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add0~6_combout\ = (\my_SPI|sin_freq_cnt\(3) & (\my_SPI|Add0~5\ & VCC)) # (!\my_SPI|sin_freq_cnt\(3) & (!\my_SPI|Add0~5\))
-- \my_SPI|Add0~7\ = CARRY((!\my_SPI|sin_freq_cnt\(3) & !\my_SPI|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|sin_freq_cnt\(3),
	datad => VCC,
	cin => \my_SPI|Add0~5\,
	combout => \my_SPI|Add0~6_combout\,
	cout => \my_SPI|Add0~7\);

-- Location: LCCOMB_X18_Y9_N6
\my_SPI|hold_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|hold_start~0_combout\ = (!\my_SPI|Add0~0_combout\ & (!\my_SPI|Add0~4_combout\ & (!\my_SPI|Add0~6_combout\ & !\my_SPI|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Add0~0_combout\,
	datab => \my_SPI|Add0~4_combout\,
	datac => \my_SPI|Add0~6_combout\,
	datad => \my_SPI|Add0~2_combout\,
	combout => \my_SPI|hold_start~0_combout\);

-- Location: LCCOMB_X17_Y9_N12
\my_SPI|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add0~12_combout\ = (\my_SPI|sin_freq_cnt\(6) & ((GND) # (!\my_SPI|Add0~11\))) # (!\my_SPI|sin_freq_cnt\(6) & (\my_SPI|Add0~11\ $ (GND)))
-- \my_SPI|Add0~13\ = CARRY((\my_SPI|sin_freq_cnt\(6)) # (!\my_SPI|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|sin_freq_cnt\(6),
	datad => VCC,
	cin => \my_SPI|Add0~11\,
	combout => \my_SPI|Add0~12_combout\,
	cout => \my_SPI|Add0~13\);

-- Location: LCCOMB_X17_Y9_N28
\my_SPI|hold_start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|hold_start~1_combout\ = (!\my_SPI|Add0~10_combout\ & (!\my_SPI|Add0~8_combout\ & (!\my_SPI|Add0~14_combout\ & !\my_SPI|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Add0~10_combout\,
	datab => \my_SPI|Add0~8_combout\,
	datac => \my_SPI|Add0~14_combout\,
	datad => \my_SPI|Add0~12_combout\,
	combout => \my_SPI|hold_start~1_combout\);

-- Location: LCCOMB_X19_Y9_N22
\my_SPI|start_clocks~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start_clocks~2_combout\ = (\my_SPI|start_clocks~1_combout\ & (\my_SPI|Equal2~2_combout\ & (!\my_SPI|WideOr0~combout\ & !\my_SPI|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|start_clocks~1_combout\,
	datab => \my_SPI|Equal2~2_combout\,
	datac => \my_SPI|WideOr0~combout\,
	datad => \my_SPI|Equal1~0_combout\,
	combout => \my_SPI|start_clocks~2_combout\);

-- Location: LCCOMB_X19_Y9_N0
\my_SPI|hold_start~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|hold_start~2_combout\ = (!\my_SPI|start_clocks~2_combout\ & (((!\my_SPI|hold_start~1_combout\) # (!\my_SPI|hold_start~0_combout\)) # (!\my_SPI|WideOr0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr0~combout\,
	datab => \my_SPI|hold_start~0_combout\,
	datac => \my_SPI|hold_start~1_combout\,
	datad => \my_SPI|start_clocks~2_combout\,
	combout => \my_SPI|hold_start~2_combout\);

-- Location: LCCOMB_X19_Y9_N30
\my_SPI|start_clocks~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start_clocks~3_combout\ = (\my_SPI|WideOr0~combout\ & (((\my_SPI|start_clocks\(0) & \my_SPI|hold_start~2_combout\)))) # (!\my_SPI|WideOr0~combout\ & ((\my_SPI|hold_start~regout\) # ((\my_SPI|start_clocks\(0) & \my_SPI|hold_start~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr0~combout\,
	datab => \my_SPI|hold_start~regout\,
	datac => \my_SPI|start_clocks\(0),
	datad => \my_SPI|hold_start~2_combout\,
	combout => \my_SPI|start_clocks~3_combout\);

-- Location: LCFF_X19_Y9_N31
\my_SPI|start_clocks[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|start_clocks~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|start_clocks\(0));

-- Location: LCCOMB_X19_Y9_N24
\my_SPI|hold_start~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|hold_start~3_combout\ = ((\my_SPI|hold_start~regout\ & ((\my_SPI|WideOr0~combout\) # (!\my_SPI|start_clocks\(0))))) # (!\my_SPI|hold_start~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr0~combout\,
	datab => \my_SPI|start_clocks\(0),
	datac => \my_SPI|hold_start~regout\,
	datad => \my_SPI|hold_start~2_combout\,
	combout => \my_SPI|hold_start~3_combout\);

-- Location: LCFF_X19_Y9_N25
\my_SPI|hold_start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|hold_start~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|hold_start~regout\);

-- Location: LCCOMB_X18_Y9_N16
\my_SPI|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|always1~1_combout\ = (!\my_SPI|start~regout\ & !\my_SPI|hold_start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|start~regout\,
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|always1~1_combout\);

-- Location: LCCOMB_X18_Y9_N30
\my_SPI|bit_number[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|bit_number[0]~15_combout\ = (!\my_SPI|hold_start~regout\ & ((!\my_SPI|start~regout\) # (!\my_SPI|bit_number\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|bit_number\(4),
	datac => \my_SPI|start~regout\,
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|bit_number[0]~15_combout\);

-- Location: LCFF_X19_Y9_N15
\my_SPI|bit_number[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[4]~13_combout\,
	sclr => \my_SPI|always1~1_combout\,
	ena => \my_SPI|bit_number[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(4));

-- Location: LCFF_X19_Y9_N9
\my_SPI|bit_number[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[1]~7_combout\,
	sclr => \my_SPI|always1~1_combout\,
	ena => \my_SPI|bit_number[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(1));

-- Location: LCFF_X19_Y9_N11
\my_SPI|bit_number[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[2]~9_combout\,
	sclr => \my_SPI|always1~1_combout\,
	ena => \my_SPI|bit_number[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(2));

-- Location: LCFF_X19_Y9_N13
\my_SPI|bit_number[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[3]~11_combout\,
	sclr => \my_SPI|always1~1_combout\,
	ena => \my_SPI|bit_number[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(3));

-- Location: LCCOMB_X19_Y9_N26
\my_SPI|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|WideOr1~0_combout\ = (!\my_SPI|bit_number\(0) & (!\my_SPI|bit_number\(1) & (!\my_SPI|bit_number\(2) & !\my_SPI|bit_number\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(0),
	datab => \my_SPI|bit_number\(1),
	datac => \my_SPI|bit_number\(2),
	datad => \my_SPI|bit_number\(3),
	combout => \my_SPI|WideOr1~0_combout\);

-- Location: LCCOMB_X19_Y9_N28
\my_SPI|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Equal1~0_combout\ = (\my_SPI|bit_number\(4) & \my_SPI|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|bit_number\(4),
	datad => \my_SPI|WideOr1~0_combout\,
	combout => \my_SPI|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y9_N2
\my_SPI|sin_freq_cnt[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sin_freq_cnt[0]~0_combout\ = ((\my_SPI|Equal2~2_combout\) # ((\my_SPI|WideOr0~combout\) # (\my_SPI|Equal1~0_combout\))) # (!\my_SPI|start_clocks~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|start_clocks~1_combout\,
	datab => \my_SPI|Equal2~2_combout\,
	datac => \my_SPI|WideOr0~combout\,
	datad => \my_SPI|Equal1~0_combout\,
	combout => \my_SPI|sin_freq_cnt[0]~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\my_SPI|sin_freq_cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sin_freq_cnt[0]~1_combout\ = (\my_SPI|Add0~0_combout\ & ((\my_SPI|WideOr0~combout\) # ((\sin_freq~combout\(0) & !\my_SPI|sin_freq_cnt[0]~0_combout\)))) # (!\my_SPI|Add0~0_combout\ & (((\sin_freq~combout\(0) & 
-- !\my_SPI|sin_freq_cnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|Add0~0_combout\,
	datab => \my_SPI|WideOr0~combout\,
	datac => \sin_freq~combout\(0),
	datad => \my_SPI|sin_freq_cnt[0]~0_combout\,
	combout => \my_SPI|sin_freq_cnt[0]~1_combout\);

-- Location: LCFF_X18_Y9_N25
\my_SPI|sin_freq_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|sin_freq_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|sin_freq_cnt\(0));

-- Location: LCCOMB_X17_Y9_N2
\my_SPI|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add0~2_combout\ = (\my_SPI|sin_freq_cnt\(1) & (\my_SPI|Add0~1\ & VCC)) # (!\my_SPI|sin_freq_cnt\(1) & (!\my_SPI|Add0~1\))
-- \my_SPI|Add0~3\ = CARRY((!\my_SPI|sin_freq_cnt\(1) & !\my_SPI|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|sin_freq_cnt\(1),
	datad => VCC,
	cin => \my_SPI|Add0~1\,
	combout => \my_SPI|Add0~2_combout\,
	cout => \my_SPI|Add0~3\);

-- Location: LCCOMB_X19_Y9_N4
\my_SPI|sin_freq_cnt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sin_freq_cnt[1]~2_combout\ = (\my_SPI|WideOr0~combout\ & ((\my_SPI|Add0~2_combout\) # ((\sin_freq~combout\(1) & !\my_SPI|sin_freq_cnt[0]~0_combout\)))) # (!\my_SPI|WideOr0~combout\ & (\sin_freq~combout\(1) & 
-- ((!\my_SPI|sin_freq_cnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr0~combout\,
	datab => \sin_freq~combout\(1),
	datac => \my_SPI|Add0~2_combout\,
	datad => \my_SPI|sin_freq_cnt[0]~0_combout\,
	combout => \my_SPI|sin_freq_cnt[1]~2_combout\);

-- Location: LCFF_X19_Y9_N5
\my_SPI|sin_freq_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|sin_freq_cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|sin_freq_cnt\(1));

-- Location: LCCOMB_X18_Y9_N18
\my_SPI|sin_freq_cnt[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sin_freq_cnt[2]~3_combout\ = (\sin_freq~combout\(2) & (((\my_SPI|WideOr0~combout\ & \my_SPI|Add0~4_combout\)) # (!\my_SPI|sin_freq_cnt[0]~0_combout\))) # (!\sin_freq~combout\(2) & (\my_SPI|WideOr0~combout\ & (\my_SPI|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_freq~combout\(2),
	datab => \my_SPI|WideOr0~combout\,
	datac => \my_SPI|Add0~4_combout\,
	datad => \my_SPI|sin_freq_cnt[0]~0_combout\,
	combout => \my_SPI|sin_freq_cnt[2]~3_combout\);

-- Location: LCFF_X18_Y9_N19
\my_SPI|sin_freq_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|sin_freq_cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|sin_freq_cnt\(2));

-- Location: LCCOMB_X18_Y9_N14
\my_SPI|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|WideOr0~0_combout\ = (\my_SPI|sin_freq_cnt\(3)) # ((\my_SPI|sin_freq_cnt\(2)) # ((\my_SPI|sin_freq_cnt\(0)) # (\my_SPI|sin_freq_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|sin_freq_cnt\(3),
	datab => \my_SPI|sin_freq_cnt\(2),
	datac => \my_SPI|sin_freq_cnt\(0),
	datad => \my_SPI|sin_freq_cnt\(1),
	combout => \my_SPI|WideOr0~0_combout\);

-- Location: LCCOMB_X18_Y9_N0
\my_SPI|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|WideOr0~combout\ = (\my_SPI|WideOr0~0_combout\) # (\my_SPI|WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|WideOr0~0_combout\,
	datad => \my_SPI|WideOr0~1_combout\,
	combout => \my_SPI|WideOr0~combout\);

-- Location: LCCOMB_X18_Y9_N12
\my_SPI|sin_freq_cnt[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sin_freq_cnt[3]~4_combout\ = (\sin_freq~combout\(3) & (((\my_SPI|WideOr0~combout\ & \my_SPI|Add0~6_combout\)) # (!\my_SPI|sin_freq_cnt[0]~0_combout\))) # (!\sin_freq~combout\(3) & (\my_SPI|WideOr0~combout\ & (\my_SPI|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin_freq~combout\(3),
	datab => \my_SPI|WideOr0~combout\,
	datac => \my_SPI|Add0~6_combout\,
	datad => \my_SPI|sin_freq_cnt[0]~0_combout\,
	combout => \my_SPI|sin_freq_cnt[3]~4_combout\);

-- Location: LCFF_X18_Y9_N13
\my_SPI|sin_freq_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|sin_freq_cnt[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|sin_freq_cnt\(3));

-- Location: LCCOMB_X17_Y9_N8
\my_SPI|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add0~8_combout\ = (\my_SPI|sin_freq_cnt\(4) & ((GND) # (!\my_SPI|Add0~7\))) # (!\my_SPI|sin_freq_cnt\(4) & (\my_SPI|Add0~7\ $ (GND)))
-- \my_SPI|Add0~9\ = CARRY((\my_SPI|sin_freq_cnt\(4)) # (!\my_SPI|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|sin_freq_cnt\(4),
	datad => VCC,
	cin => \my_SPI|Add0~7\,
	combout => \my_SPI|Add0~8_combout\,
	cout => \my_SPI|Add0~9\);

-- Location: LCCOMB_X19_Y9_N16
\my_SPI|sin_freq_cnt[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sin_freq_cnt[4]~5_combout\ = (\my_SPI|WideOr0~combout\ & ((\my_SPI|Add0~8_combout\) # ((\sin_freq~combout\(4) & !\my_SPI|sin_freq_cnt[0]~0_combout\)))) # (!\my_SPI|WideOr0~combout\ & (\sin_freq~combout\(4) & 
-- ((!\my_SPI|sin_freq_cnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr0~combout\,
	datab => \sin_freq~combout\(4),
	datac => \my_SPI|Add0~8_combout\,
	datad => \my_SPI|sin_freq_cnt[0]~0_combout\,
	combout => \my_SPI|sin_freq_cnt[4]~5_combout\);

-- Location: LCFF_X19_Y9_N17
\my_SPI|sin_freq_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|sin_freq_cnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|sin_freq_cnt\(4));

-- Location: LCCOMB_X17_Y9_N10
\my_SPI|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add0~10_combout\ = (\my_SPI|sin_freq_cnt\(5) & (\my_SPI|Add0~9\ & VCC)) # (!\my_SPI|sin_freq_cnt\(5) & (!\my_SPI|Add0~9\))
-- \my_SPI|Add0~11\ = CARRY((!\my_SPI|sin_freq_cnt\(5) & !\my_SPI|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|sin_freq_cnt\(5),
	datad => VCC,
	cin => \my_SPI|Add0~9\,
	combout => \my_SPI|Add0~10_combout\,
	cout => \my_SPI|Add0~11\);

-- Location: LCCOMB_X17_Y9_N14
\my_SPI|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|Add0~14_combout\ = \my_SPI|Add0~13\ $ (!\my_SPI|sin_freq_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_SPI|sin_freq_cnt\(7),
	cin => \my_SPI|Add0~13\,
	combout => \my_SPI|Add0~14_combout\);

-- Location: LCCOMB_X19_Y9_N20
\my_SPI|sin_freq_cnt[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sin_freq_cnt[7]~8_combout\ = (\my_SPI|WideOr0~combout\ & ((\my_SPI|Add0~14_combout\) # ((\sin_freq~combout\(7) & !\my_SPI|sin_freq_cnt[0]~0_combout\)))) # (!\my_SPI|WideOr0~combout\ & (\sin_freq~combout\(7) & 
-- ((!\my_SPI|sin_freq_cnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr0~combout\,
	datab => \sin_freq~combout\(7),
	datac => \my_SPI|Add0~14_combout\,
	datad => \my_SPI|sin_freq_cnt[0]~0_combout\,
	combout => \my_SPI|sin_freq_cnt[7]~8_combout\);

-- Location: LCFF_X19_Y9_N21
\my_SPI|sin_freq_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|sin_freq_cnt[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|sin_freq_cnt\(7));

-- Location: LCCOMB_X19_Y9_N18
\my_SPI|sin_freq_cnt[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sin_freq_cnt[5]~6_combout\ = (\my_SPI|WideOr0~combout\ & ((\my_SPI|Add0~10_combout\) # ((\sin_freq~combout\(5) & !\my_SPI|sin_freq_cnt[0]~0_combout\)))) # (!\my_SPI|WideOr0~combout\ & (((\sin_freq~combout\(5) & 
-- !\my_SPI|sin_freq_cnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr0~combout\,
	datab => \my_SPI|Add0~10_combout\,
	datac => \sin_freq~combout\(5),
	datad => \my_SPI|sin_freq_cnt[0]~0_combout\,
	combout => \my_SPI|sin_freq_cnt[5]~6_combout\);

-- Location: LCFF_X19_Y9_N19
\my_SPI|sin_freq_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|sin_freq_cnt[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|sin_freq_cnt\(5));

-- Location: LCCOMB_X17_Y9_N18
\my_SPI|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|WideOr0~1_combout\ = (\my_SPI|sin_freq_cnt\(6)) # ((\my_SPI|sin_freq_cnt\(7)) # ((\my_SPI|sin_freq_cnt\(5)) # (\my_SPI|sin_freq_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|sin_freq_cnt\(6),
	datab => \my_SPI|sin_freq_cnt\(7),
	datac => \my_SPI|sin_freq_cnt\(5),
	datad => \my_SPI|sin_freq_cnt\(4),
	combout => \my_SPI|WideOr0~1_combout\);

-- Location: LCCOMB_X17_Y9_N16
\my_SPI|start_clocks~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start_clocks~0_combout\ = (!\my_SPI|WideOr0~1_combout\ & (!\my_SPI|WideOr0~0_combout\ & !\my_SPI|hold_start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|WideOr0~1_combout\,
	datac => \my_SPI|WideOr0~0_combout\,
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|start_clocks~0_combout\);

-- Location: LCFF_X18_Y9_N9
\my_SPI|update\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|start~1_combout\,
	ena => \my_SPI|start_clocks~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|update~regout\);

-- Location: LCFF_X18_Y9_N23
\my_SPI|inner_ldac\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	sdata => \my_SPI|update~regout\,
	sload => VCC,
	ena => \my_SPI|start_clocks~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|inner_ldac~regout\);

-- Location: LCCOMB_X18_Y9_N8
\my_SPI|start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start~1_combout\ = (\my_SPI|WideOr1~0_combout\ & (\my_SPI|bit_number\(4) & (!\my_SPI|update~regout\ & !\my_SPI|inner_ldac~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~0_combout\,
	datab => \my_SPI|bit_number\(4),
	datac => \my_SPI|update~regout\,
	datad => \my_SPI|inner_ldac~regout\,
	combout => \my_SPI|start~1_combout\);

-- Location: LCCOMB_X18_Y9_N20
\my_SPI|start~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start~2_combout\ = (\my_SPI|start~0_combout\) # ((\my_SPI|start~regout\ & ((!\my_SPI|start~1_combout\) # (!\my_SPI|start_clocks~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|start~0_combout\,
	datab => \my_SPI|start_clocks~0_combout\,
	datac => \my_SPI|start~regout\,
	datad => \my_SPI|start~1_combout\,
	combout => \my_SPI|start~2_combout\);

-- Location: LCFF_X18_Y9_N21
\my_SPI|start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|ALT_INV_out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|start~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|start~regout\);

-- Location: LCCOMB_X17_Y9_N20
\my_SPI|sclk\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sclk~combout\ = (\divider|out_clk_inner~regout\ & \my_SPI|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider|out_clk_inner~regout\,
	datad => \my_SPI|start~regout\,
	combout => \my_SPI|sclk~combout\);

-- Location: CLKCTRL_G0
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

-- Location: LCFF_X19_Y9_N7
\my_SPI|bit_number[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|bit_number[0]~5_combout\,
	sclr => \my_SPI|always1~1_combout\,
	ena => \my_SPI|bit_number[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|bit_number\(0));

-- Location: LCCOMB_X18_Y9_N26
\my_SPI|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|LessThan1~0_combout\ = (\my_SPI|bit_number\(2) & (\my_SPI|bit_number\(1) & (\my_SPI|bit_number\(3) & \my_SPI|bit_number\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(2),
	datab => \my_SPI|bit_number\(1),
	datac => \my_SPI|bit_number\(3),
	datad => \my_SPI|bit_number\(0),
	combout => \my_SPI|LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y9_N0
\my_SPI|input_register~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~14_combout\ = (\my_SPI|bit_number\(4) & (((\my_SPI|input_register\(15))))) # (!\my_SPI|bit_number\(4) & ((\my_SPI|LessThan1~0_combout\ & ((\my_SPI|input_register\(15)))) # (!\my_SPI|LessThan1~0_combout\ & 
-- (\my_SPI|input_register\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|input_register\(14),
	datab => \my_SPI|bit_number\(4),
	datac => \my_SPI|input_register\(15),
	datad => \my_SPI|LessThan1~0_combout\,
	combout => \my_SPI|input_register~14_combout\);

-- Location: LCCOMB_X14_Y9_N0
\my_SPI|input_register~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|input_register~19_combout\ = (\my_SPI|input_register~14_combout\ & ((\my_SPI|bit_number\(4)) # (!\my_SPI|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|WideOr1~0_combout\,
	datab => \my_SPI|input_register~14_combout\,
	datac => \my_SPI|bit_number\(4),
	combout => \my_SPI|input_register~19_combout\);

-- Location: LCCOMB_X14_Y9_N12
\my_SPI|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|always1~0_combout\ = (\my_SPI|start~regout\ & !\my_SPI|hold_start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_SPI|start~regout\,
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|always1~0_combout\);

-- Location: LCFF_X14_Y9_N1
\my_SPI|input_register[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|input_register~19_combout\,
	ena => \my_SPI|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|input_register\(15));

-- Location: LCCOMB_X17_Y9_N22
\my_SPI|start_sync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start_sync~0_combout\ = (\my_SPI|bit_number\(4)) # (\my_SPI|hold_start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|bit_number\(4),
	datad => \my_SPI|hold_start~regout\,
	combout => \my_SPI|start_sync~0_combout\);

-- Location: LCCOMB_X17_Y9_N30
\my_SPI|start_sync~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|start_sync~1_combout\ = (\my_SPI|start~regout\ & ((\my_SPI|start_sync~regout\) # ((\my_SPI|LessThan1~0_combout\ & !\my_SPI|start_sync~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_SPI|LessThan1~0_combout\,
	datab => \my_SPI|start~regout\,
	datac => \my_SPI|start_sync~regout\,
	datad => \my_SPI|start_sync~0_combout\,
	combout => \my_SPI|start_sync~1_combout\);

-- Location: LCFF_X17_Y9_N31
\my_SPI|start_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divider|out_clk_inner~clkctrl_outclk\,
	datain => \my_SPI|start_sync~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \my_SPI|start_sync~regout\);

-- Location: LCCOMB_X17_Y9_N24
\my_SPI|sync\ : cycloneii_lcell_comb
-- Equation(s):
-- \my_SPI|sync~combout\ = (!\my_SPI|start~regout\ & !\my_SPI|start_sync~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_SPI|start~regout\,
	datad => \my_SPI|start_sync~regout\,
	combout => \my_SPI|sync~combout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_182,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_179,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_176,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_165,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


