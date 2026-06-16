-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition"

-- DATE "06/16/2026 09:04:23"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_timer_de2_115 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_timer_de2_115;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_timer_de2_115 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst_sync_keys|sync1[2]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst_fsm|Selector8~0_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.incrementa_s~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst_sync_keys|sync0[2]~0_combout\ : std_logic;
SIGNAL \inst_sync_keys|keys_o[0]~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \inst_sync_keys|sync2[2]~0_combout\ : std_logic;
SIGNAL \inst_fsm|next_state~9_combout\ : std_logic;
SIGNAL \inst_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.idle~q\ : std_logic;
SIGNAL \inst_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \inst_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.decrementa_h~q\ : std_logic;
SIGNAL \inst_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.incrementa_h~q\ : std_logic;
SIGNAL \inst_fsm|Selector1~1_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.ajuste_h~q\ : std_logic;
SIGNAL \inst_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \inst_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.incrementa_m~q\ : std_logic;
SIGNAL \inst_fsm|Selector6~0_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.decrementa_m~q\ : std_logic;
SIGNAL \inst_fsm|Selector4~1_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.ajuste_m~q\ : std_logic;
SIGNAL \inst_fsm|Selector7~3_combout\ : std_logic;
SIGNAL \inst_fsm|Selector7~4_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.ajuste_s~q\ : std_logic;
SIGNAL \inst_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \inst_fsm|state_reg.decrementa_s~q\ : std_logic;
SIGNAL \inst_fsm|Selector7~2_combout\ : std_logic;
SIGNAL \blink1|Add0~0_combout\ : std_logic;
SIGNAL \blink1|Add0~1\ : std_logic;
SIGNAL \blink1|Add0~2_combout\ : std_logic;
SIGNAL \blink1|Add0~3\ : std_logic;
SIGNAL \blink1|Add0~4_combout\ : std_logic;
SIGNAL \blink1|Add0~5\ : std_logic;
SIGNAL \blink1|Add0~6_combout\ : std_logic;
SIGNAL \blink1|Add0~7\ : std_logic;
SIGNAL \blink1|Add0~8_combout\ : std_logic;
SIGNAL \blink1|Add0~9\ : std_logic;
SIGNAL \blink1|Add0~10_combout\ : std_logic;
SIGNAL \blink1|Add0~11\ : std_logic;
SIGNAL \blink1|Add0~12_combout\ : std_logic;
SIGNAL \blink1|Add0~13\ : std_logic;
SIGNAL \blink1|Add0~14_combout\ : std_logic;
SIGNAL \blink1|r_next[7]~11_combout\ : std_logic;
SIGNAL \blink1|Add0~15\ : std_logic;
SIGNAL \blink1|Add0~16_combout\ : std_logic;
SIGNAL \blink1|Add0~17\ : std_logic;
SIGNAL \blink1|Add0~18_combout\ : std_logic;
SIGNAL \blink1|Add0~19\ : std_logic;
SIGNAL \blink1|Add0~20_combout\ : std_logic;
SIGNAL \blink1|Add0~21\ : std_logic;
SIGNAL \blink1|Add0~22_combout\ : std_logic;
SIGNAL \blink1|Add0~23\ : std_logic;
SIGNAL \blink1|Add0~24_combout\ : std_logic;
SIGNAL \blink1|r_next[12]~9_combout\ : std_logic;
SIGNAL \blink1|Add0~25\ : std_logic;
SIGNAL \blink1|Add0~26_combout\ : std_logic;
SIGNAL \blink1|r_next[13]~8_combout\ : std_logic;
SIGNAL \blink1|Add0~27\ : std_logic;
SIGNAL \blink1|Add0~28_combout\ : std_logic;
SIGNAL \blink1|r_next[14]~7_combout\ : std_logic;
SIGNAL \blink1|Add0~35\ : std_logic;
SIGNAL \blink1|Add0~36_combout\ : std_logic;
SIGNAL \blink1|Add0~37\ : std_logic;
SIGNAL \blink1|Add0~38_combout\ : std_logic;
SIGNAL \blink1|r_next[19]~5_combout\ : std_logic;
SIGNAL \blink1|Add0~39\ : std_logic;
SIGNAL \blink1|Add0~40_combout\ : std_logic;
SIGNAL \blink1|r_next[20]~4_combout\ : std_logic;
SIGNAL \blink1|Add0~41\ : std_logic;
SIGNAL \blink1|Add0~42_combout\ : std_logic;
SIGNAL \blink1|r_next[21]~3_combout\ : std_logic;
SIGNAL \blink1|Add0~43\ : std_logic;
SIGNAL \blink1|Add0~44_combout\ : std_logic;
SIGNAL \blink1|r_next[22]~2_combout\ : std_logic;
SIGNAL \blink1|Add0~45\ : std_logic;
SIGNAL \blink1|Add0~46_combout\ : std_logic;
SIGNAL \blink1|r_next[23]~1_combout\ : std_logic;
SIGNAL \blink1|Add0~47\ : std_logic;
SIGNAL \blink1|Add0~48_combout\ : std_logic;
SIGNAL \blink1|Add0~49\ : std_logic;
SIGNAL \blink1|Add0~50_combout\ : std_logic;
SIGNAL \blink1|r_next[25]~0_combout\ : std_logic;
SIGNAL \blink1|Equal0~2_combout\ : std_logic;
SIGNAL \blink1|Equal0~3_combout\ : std_logic;
SIGNAL \blink1|Equal0~0_combout\ : std_logic;
SIGNAL \blink1|Equal0~1_combout\ : std_logic;
SIGNAL \blink1|Equal0~4_combout\ : std_logic;
SIGNAL \blink1|Equal0~7_combout\ : std_logic;
SIGNAL \blink1|Equal0~5_combout\ : std_logic;
SIGNAL \blink1|Equal0~6_combout\ : std_logic;
SIGNAL \blink1|Equal0~8_combout\ : std_logic;
SIGNAL \blink1|Add0~29\ : std_logic;
SIGNAL \blink1|Add0~30_combout\ : std_logic;
SIGNAL \blink1|r_next[15]~10_combout\ : std_logic;
SIGNAL \blink1|Add0~31\ : std_logic;
SIGNAL \blink1|Add0~32_combout\ : std_logic;
SIGNAL \blink1|Add0~33\ : std_logic;
SIGNAL \blink1|Add0~34_combout\ : std_logic;
SIGNAL \blink1|r_next[17]~6_combout\ : std_logic;
SIGNAL \blink1|LessThan0~0_combout\ : std_logic;
SIGNAL \blink1|LessThan0~1_combout\ : std_logic;
SIGNAL \blink1|LessThan0~2_combout\ : std_logic;
SIGNAL \blink1|blink~1_combout\ : std_logic;
SIGNAL \blink1|blink~2_combout\ : std_logic;
SIGNAL \fsm_any_blink~1_combout\ : std_logic;
SIGNAL \fsm_any_blink~0_combout\ : std_logic;
SIGNAL \fsm_any_blink~2_combout\ : std_logic;
SIGNAL \blink1|blink~3_combout\ : std_logic;
SIGNAL \blink1|blink~0_combout\ : std_logic;
SIGNAL \blink1|blink~4_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector28~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector28~1_combout\ : std_logic;
SIGNAL \bin2bcd_min|state_next.done~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|state.done~q\ : std_logic;
SIGNAL \bin2bcd_min|Selector29~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector1~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|state.start~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|state.start~q\ : std_logic;
SIGNAL \bin2bcd_min|Selector1~1_combout\ : std_logic;
SIGNAL \bin2bcd_min|state.shift~q\ : std_logic;
SIGNAL \bin2bcd_sec|Equal0~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector30~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|binary[5]~0_combout\ : std_logic;
SIGNAL \t0|s_reg[0]~3_combout\ : std_logic;
SIGNAL \t0|r_reg[0]~26_combout\ : std_logic;
SIGNAL \t0|s_reg[0]~9_combout\ : std_logic;
SIGNAL \t0|r_reg[0]~27\ : std_logic;
SIGNAL \t0|r_reg[1]~28_combout\ : std_logic;
SIGNAL \t0|r_reg[1]~29\ : std_logic;
SIGNAL \t0|r_reg[2]~30_combout\ : std_logic;
SIGNAL \t0|r_reg[2]~31\ : std_logic;
SIGNAL \t0|r_reg[3]~32_combout\ : std_logic;
SIGNAL \t0|r_reg[3]~33\ : std_logic;
SIGNAL \t0|r_reg[4]~34_combout\ : std_logic;
SIGNAL \t0|r_reg[4]~35\ : std_logic;
SIGNAL \t0|r_reg[5]~36_combout\ : std_logic;
SIGNAL \t0|r_reg[5]~37\ : std_logic;
SIGNAL \t0|r_reg[6]~38_combout\ : std_logic;
SIGNAL \t0|r_reg[6]~39\ : std_logic;
SIGNAL \t0|r_reg[7]~40_combout\ : std_logic;
SIGNAL \t0|r_reg[7]~41\ : std_logic;
SIGNAL \t0|r_reg[8]~42_combout\ : std_logic;
SIGNAL \t0|r_reg[8]~43\ : std_logic;
SIGNAL \t0|r_reg[9]~44_combout\ : std_logic;
SIGNAL \t0|r_reg[9]~45\ : std_logic;
SIGNAL \t0|r_reg[10]~46_combout\ : std_logic;
SIGNAL \t0|r_reg[10]~47\ : std_logic;
SIGNAL \t0|r_reg[11]~48_combout\ : std_logic;
SIGNAL \t0|r_reg[11]~49\ : std_logic;
SIGNAL \t0|r_reg[12]~50_combout\ : std_logic;
SIGNAL \t0|r_reg[12]~51\ : std_logic;
SIGNAL \t0|r_reg[13]~52_combout\ : std_logic;
SIGNAL \t0|r_reg[13]~53\ : std_logic;
SIGNAL \t0|r_reg[14]~54_combout\ : std_logic;
SIGNAL \t0|r_reg[14]~55\ : std_logic;
SIGNAL \t0|r_reg[15]~56_combout\ : std_logic;
SIGNAL \t0|r_reg[15]~57\ : std_logic;
SIGNAL \t0|r_reg[16]~58_combout\ : std_logic;
SIGNAL \t0|r_reg[16]~59\ : std_logic;
SIGNAL \t0|r_reg[17]~60_combout\ : std_logic;
SIGNAL \t0|r_reg[17]~61\ : std_logic;
SIGNAL \t0|r_reg[18]~62_combout\ : std_logic;
SIGNAL \t0|r_reg[18]~63\ : std_logic;
SIGNAL \t0|r_reg[19]~64_combout\ : std_logic;
SIGNAL \t0|r_reg[19]~65\ : std_logic;
SIGNAL \t0|r_reg[20]~66_combout\ : std_logic;
SIGNAL \t0|r_reg[20]~67\ : std_logic;
SIGNAL \t0|r_reg[21]~68_combout\ : std_logic;
SIGNAL \t0|r_reg[21]~69\ : std_logic;
SIGNAL \t0|r_reg[22]~70_combout\ : std_logic;
SIGNAL \t0|r_reg[22]~71\ : std_logic;
SIGNAL \t0|r_reg[23]~72_combout\ : std_logic;
SIGNAL \t0|Equal0~7_combout\ : std_logic;
SIGNAL \t0|Equal0~2_combout\ : std_logic;
SIGNAL \t0|Equal0~0_combout\ : std_logic;
SIGNAL \t0|Equal0~3_combout\ : std_logic;
SIGNAL \t0|Equal0~1_combout\ : std_logic;
SIGNAL \t0|Equal0~4_combout\ : std_logic;
SIGNAL \t0|Equal0~5_combout\ : std_logic;
SIGNAL \t0|r_reg[23]~73\ : std_logic;
SIGNAL \t0|r_reg[24]~74_combout\ : std_logic;
SIGNAL \t0|r_reg[24]~75\ : std_logic;
SIGNAL \t0|r_reg[25]~76_combout\ : std_logic;
SIGNAL \t0|Equal0~6_combout\ : std_logic;
SIGNAL \t0|Equal0~8_combout\ : std_logic;
SIGNAL \inst_fsm|Add3~1\ : std_logic;
SIGNAL \inst_fsm|Add3~2_combout\ : std_logic;
SIGNAL \t0|Add1~6_combout\ : std_logic;
SIGNAL \t0|s_reg[0]~2_combout\ : std_logic;
SIGNAL \inst_fsm|Add3~3\ : std_logic;
SIGNAL \inst_fsm|Add3~5\ : std_logic;
SIGNAL \inst_fsm|Add3~7\ : std_logic;
SIGNAL \inst_fsm|Add3~8_combout\ : std_logic;
SIGNAL \t0|Add1~2_combout\ : std_logic;
SIGNAL \t0|s_next[4]~3_combout\ : std_logic;
SIGNAL \inst_fsm|Add2~1_combout\ : std_logic;
SIGNAL \t0|s_next[4]~4_combout\ : std_logic;
SIGNAL \t0|s_next[4]~5_combout\ : std_logic;
SIGNAL \t0|m_reg[4]~6_combout\ : std_logic;
SIGNAL \t0|m_reg[4]~5_combout\ : std_logic;
SIGNAL \t0|m_reg[4]~3_combout\ : std_logic;
SIGNAL \t0|m_reg[4]~7_combout\ : std_logic;
SIGNAL \inst_fsm|Add2~4_combout\ : std_logic;
SIGNAL \inst_fsm|Add5~1\ : std_logic;
SIGNAL \inst_fsm|Add5~3\ : std_logic;
SIGNAL \inst_fsm|Add5~4_combout\ : std_logic;
SIGNAL \t0|m_reg[4]~2_combout\ : std_logic;
SIGNAL \t0|m_next[2]~6_combout\ : std_logic;
SIGNAL \t0|m_next[2]~7_combout\ : std_logic;
SIGNAL \t0|m_next[2]~8_combout\ : std_logic;
SIGNAL \t0|m_reg[4]~0_combout\ : std_logic;
SIGNAL \t0|m_reg[4]~1_combout\ : std_logic;
SIGNAL \t0|m_reg[4]~8_combout\ : std_logic;
SIGNAL \inst_fsm|Add2~7_combout\ : std_logic;
SIGNAL \inst_fsm|Add3~6_combout\ : std_logic;
SIGNAL \t0|Add1~5_combout\ : std_logic;
SIGNAL \t0|s_next[3]~9_combout\ : std_logic;
SIGNAL \t0|s_next[3]~10_combout\ : std_logic;
SIGNAL \t0|s_next[3]~11_combout\ : std_logic;
SIGNAL \t0|m_en~0_combout\ : std_logic;
SIGNAL \t0|m_en~combout\ : std_logic;
SIGNAL \inst_fsm|Add2~0_combout\ : std_logic;
SIGNAL \t0|s_reg[0]~4_combout\ : std_logic;
SIGNAL \inst_fsm|Add2~2_combout\ : std_logic;
SIGNAL \inst_fsm|Add5~5\ : std_logic;
SIGNAL \inst_fsm|Add5~7\ : std_logic;
SIGNAL \inst_fsm|Add5~9\ : std_logic;
SIGNAL \inst_fsm|Add5~10_combout\ : std_logic;
SIGNAL \t0|m_next[5]~0_combout\ : std_logic;
SIGNAL \t0|m_next[5]~1_combout\ : std_logic;
SIGNAL \t0|m_next[5]~2_combout\ : std_logic;
SIGNAL \t0|s_reg[0]~5_combout\ : std_logic;
SIGNAL \t0|s_reg[0]~6_combout\ : std_logic;
SIGNAL \inst_fsm|Add3~4_combout\ : std_logic;
SIGNAL \t0|Add1~4_combout\ : std_logic;
SIGNAL \t0|s_next[2]~6_combout\ : std_logic;
SIGNAL \t0|s_next[2]~7_combout\ : std_logic;
SIGNAL \t0|s_next[2]~8_combout\ : std_logic;
SIGNAL \t0|Add1~3_combout\ : std_logic;
SIGNAL \inst_fsm|Add2~6_combout\ : std_logic;
SIGNAL \inst_fsm|Add5~6_combout\ : std_logic;
SIGNAL \t0|m_next[3]~15_combout\ : std_logic;
SIGNAL \t0|m_next[3]~16_combout\ : std_logic;
SIGNAL \t0|m_next[3]~17_combout\ : std_logic;
SIGNAL \t0|s_reg[0]~7_combout\ : std_logic;
SIGNAL \t0|s_reg[0]~8_combout\ : std_logic;
SIGNAL \t0|s_reg[0]~10_combout\ : std_logic;
SIGNAL \t0|s_next[1]~12_combout\ : std_logic;
SIGNAL \t0|s_next[1]~13_combout\ : std_logic;
SIGNAL \t0|s_next[1]~14_combout\ : std_logic;
SIGNAL \inst_fsm|Add5~2_combout\ : std_logic;
SIGNAL \inst_fsm|Add2~5_combout\ : std_logic;
SIGNAL \t0|m_next[1]~9_combout\ : std_logic;
SIGNAL \t0|m_next[1]~10_combout\ : std_logic;
SIGNAL \t0|m_next[1]~11_combout\ : std_logic;
SIGNAL \t0|h_en~1_combout\ : std_logic;
SIGNAL \t0|h_en~0_combout\ : std_logic;
SIGNAL \t0|h_en~combout\ : std_logic;
SIGNAL \t0|m_reg[4]~4_combout\ : std_logic;
SIGNAL \inst_fsm|Add5~0_combout\ : std_logic;
SIGNAL \t0|m_next[0]~12_combout\ : std_logic;
SIGNAL \t0|m_next[0]~13_combout\ : std_logic;
SIGNAL \t0|m_next[0]~14_combout\ : std_logic;
SIGNAL \inst_fsm|Add3~0_combout\ : std_logic;
SIGNAL \t0|s_next[0]~15_combout\ : std_logic;
SIGNAL \t0|s_next[0]~16_combout\ : std_logic;
SIGNAL \t0|s_next[0]~17_combout\ : std_logic;
SIGNAL \t0|Add1~0_combout\ : std_logic;
SIGNAL \inst_fsm|Add2~3_combout\ : std_logic;
SIGNAL \inst_fsm|Add5~8_combout\ : std_logic;
SIGNAL \t0|m_next[4]~3_combout\ : std_logic;
SIGNAL \t0|m_next[4]~4_combout\ : std_logic;
SIGNAL \t0|m_next[4]~5_combout\ : std_logic;
SIGNAL \inst_fsm|Add3~9\ : std_logic;
SIGNAL \inst_fsm|Add3~10_combout\ : std_logic;
SIGNAL \t0|Add1~1_combout\ : std_logic;
SIGNAL \t0|s_next[5]~0_combout\ : std_logic;
SIGNAL \t0|s_next[5]~1_combout\ : std_logic;
SIGNAL \t0|s_next[5]~2_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector7~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector6~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector5~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector4~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector3~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector2~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector27~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|bcds_next~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector26~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector24~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector24~1_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector25~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector25~1_combout\ : std_logic;
SIGNAL \secU_blink[2]~2_combout\ : std_logic;
SIGNAL \secU_blink[1]~1_combout\ : std_logic;
SIGNAL \secU_blink[3]~3_combout\ : std_logic;
SIGNAL \secU_blink[0]~0_combout\ : std_logic;
SIGNAL \bcd_secU|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_secU|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_secU|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_secU|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_secU|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_secU|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_secU|Mux0~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector23~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector23~1_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector21~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector21~1_combout\ : std_logic;
SIGNAL \bin2bcd_sec|bcds_next~1_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector22~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector20~0_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector20~1_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector20~2_combout\ : std_logic;
SIGNAL \bin2bcd_sec|Selector20~3_combout\ : std_logic;
SIGNAL \secT_blink[3]~3_combout\ : std_logic;
SIGNAL \secT_blink[2]~2_combout\ : std_logic;
SIGNAL \secT_blink[1]~1_combout\ : std_logic;
SIGNAL \secT_blink[0]~0_combout\ : std_logic;
SIGNAL \bcd_secT|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_secT|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_secT|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_secT|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_secT|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_secT|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_secT|Mux0~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector7~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector6~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector5~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector4~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector3~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector2~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector27~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector24~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector24~1_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector25~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector25~1_combout\ : std_logic;
SIGNAL \bin2bcd_min|bcds_next~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector26~0_combout\ : std_logic;
SIGNAL \minU_blink[1]~1_combout\ : std_logic;
SIGNAL \minU_blink[3]~3_combout\ : std_logic;
SIGNAL \minU_blink[2]~2_combout\ : std_logic;
SIGNAL \minU_blink[0]~0_combout\ : std_logic;
SIGNAL \bcd_minU|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_minU|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_minU|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_minU|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_minU|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_minU|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_minU|Mux0~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector23~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector23~1_combout\ : std_logic;
SIGNAL \bin2bcd_min|bcds_next~1_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector22~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector20~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector20~1_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector20~2_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector20~3_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector21~0_combout\ : std_logic;
SIGNAL \bin2bcd_min|Selector21~1_combout\ : std_logic;
SIGNAL \minT_blink[2]~2_combout\ : std_logic;
SIGNAL \minT_blink[1]~1_combout\ : std_logic;
SIGNAL \minT_blink[0]~0_combout\ : std_logic;
SIGNAL \minT_blink[3]~3_combout\ : std_logic;
SIGNAL \bcd_minT|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_minT|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_minT|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_minT|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_minT|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_minT|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_minT|Mux0~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Equal0~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|state.start~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|state.start~q\ : std_logic;
SIGNAL \bin2bcd_hour|Selector1~1_combout\ : std_logic;
SIGNAL \bin2bcd_hour|state.shift~q\ : std_logic;
SIGNAL \bin2bcd_hour|Selector29~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector28~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector28~1_combout\ : std_logic;
SIGNAL \bin2bcd_hour|state_next.done~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|state.done~q\ : std_logic;
SIGNAL \bin2bcd_hour|Selector27~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector27~1_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector1~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|binary[2]~1_combout\ : std_logic;
SIGNAL \bin2bcd_hour|binary_next~0_combout\ : std_logic;
SIGNAL \t0|h_reg[0]~5_combout\ : std_logic;
SIGNAL \inst_fsm|Add1~0_combout\ : std_logic;
SIGNAL \t0|h_reg[0]~6\ : std_logic;
SIGNAL \t0|h_reg[1]~7_combout\ : std_logic;
SIGNAL \inst_fsm|Add1~1\ : std_logic;
SIGNAL \inst_fsm|Add1~2_combout\ : std_logic;
SIGNAL \t0|h_reg[1]~8\ : std_logic;
SIGNAL \t0|h_reg[2]~9_combout\ : std_logic;
SIGNAL \inst_fsm|Add1~3\ : std_logic;
SIGNAL \inst_fsm|Add1~4_combout\ : std_logic;
SIGNAL \t0|h_next[2]~2_combout\ : std_logic;
SIGNAL \t0|h_en~2_combout\ : std_logic;
SIGNAL \t0|h_reg[0]~15_combout\ : std_logic;
SIGNAL \t0|h_reg[3]~12\ : std_logic;
SIGNAL \t0|h_reg[4]~13_combout\ : std_logic;
SIGNAL \inst_fsm|Add1~5\ : std_logic;
SIGNAL \inst_fsm|Add1~7\ : std_logic;
SIGNAL \inst_fsm|Add1~8_combout\ : std_logic;
SIGNAL \t0|h_next[4]~0_combout\ : std_logic;
SIGNAL \t0|h_reg[0]~19_combout\ : std_logic;
SIGNAL \t0|h_reg[0]~20_combout\ : std_logic;
SIGNAL \t0|h_reg[0]~16_combout\ : std_logic;
SIGNAL \t0|h_reg[0]~17_combout\ : std_logic;
SIGNAL \t0|h_reg[0]~18_combout\ : std_logic;
SIGNAL \t0|h_reg[2]~10\ : std_logic;
SIGNAL \t0|h_reg[3]~11_combout\ : std_logic;
SIGNAL \inst_fsm|Add1~6_combout\ : std_logic;
SIGNAL \t0|h_next[3]~1_combout\ : std_logic;
SIGNAL \t0|h_next[1]~3_combout\ : std_logic;
SIGNAL \inst_fsm|Equal1~0_combout\ : std_logic;
SIGNAL \t0|h_next[0]~4_combout\ : std_logic;
SIGNAL \bin2bcd_hour|binary[0]~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector5~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector4~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector3~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector2~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector26~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|bcds_next~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector25~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector23~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector23~1_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector24~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector24~1_combout\ : std_logic;
SIGNAL \hourU_blink[2]~2_combout\ : std_logic;
SIGNAL \hourU_blink[3]~3_combout\ : std_logic;
SIGNAL \hourU_blink[1]~1_combout\ : std_logic;
SIGNAL \hourU_blink[0]~0_combout\ : std_logic;
SIGNAL \bcd_hourU|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_hourU|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_hourU|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_hourU|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_hourU|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_hourU|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_hourU|Mux0~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector22~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector22~1_combout\ : std_logic;
SIGNAL \hourT_blink[0]~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector19~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector19~1_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector19~2_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector20~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector20~1_combout\ : std_logic;
SIGNAL \bin2bcd_hour|bcds_next~1_combout\ : std_logic;
SIGNAL \bin2bcd_hour|Selector21~0_combout\ : std_logic;
SIGNAL \hourT_blink[1]~1_combout\ : std_logic;
SIGNAL \hourT_blink[3]~3_combout\ : std_logic;
SIGNAL \hourT_blink[2]~2_combout\ : std_logic;
SIGNAL \bcd_hourT|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_hourT|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_hourT|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_hourT|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_hourT|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_hourT|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_hourT|Mux0~0_combout\ : std_logic;
SIGNAL \bin2bcd_hour|shift_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bin2bcd_min|binary\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \bin2bcd_min|shift_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bin2bcd_hour|bcds\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst_sync_keys|sync0\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \t0|r_reg\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \t0|h_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \t0|m_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \bin2bcd_hour|binary\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \blink1|r_reg\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \bin2bcd_sec|bcds_out_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst_sync_keys|sync1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bin2bcd_min|bcds_out_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \bin2bcd_min|bcds\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \bin2bcd_hour|bcds_out_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \t0|s_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_sync_keys|keys_o\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bin2bcd_sec|bcds\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \bin2bcd_sec|binary\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_sync_keys|sync2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bcd_hourT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bcd_hourU|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bcd_minT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bcd_minU|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bcd_secT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bcd_secU|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_CLOCK_50~inputclkctrl_outclk\ <= NOT \CLOCK_50~inputclkctrl_outclk\;
\bcd_hourT|ALT_INV_Mux0~0_combout\ <= NOT \bcd_hourT|Mux0~0_combout\;
\bcd_hourU|ALT_INV_Mux0~0_combout\ <= NOT \bcd_hourU|Mux0~0_combout\;
\bcd_minT|ALT_INV_Mux0~0_combout\ <= NOT \bcd_minT|Mux0~0_combout\;
\bcd_minU|ALT_INV_Mux0~0_combout\ <= NOT \bcd_minU|Mux0~0_combout\;
\bcd_secT|ALT_INV_Mux0~0_combout\ <= NOT \bcd_secT|Mux0~0_combout\;
\bcd_secU|ALT_INV_Mux0~0_combout\ <= NOT \bcd_secU|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secU|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secU|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secU|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secU|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secU|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secU|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secU|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secT|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secT|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secT|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secT|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secT|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secT|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_secT|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minU|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minU|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minU|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minU|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minU|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minU|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minU|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minT|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minT|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minT|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minT|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minT|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minT|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_minT|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourU|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourU|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourU|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourU|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourU|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourU|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourU|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourT|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourT|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourT|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourT|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourT|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourT|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_hourT|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X106_Y32_N0
\inst_sync_keys|sync1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_sync_keys|sync1[2]~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \inst_sync_keys|sync1[2]~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X106_Y32_N1
\inst_sync_keys|sync1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_sync_keys|sync1[2]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sync_keys|sync1\(2));

-- Location: FF_X98_Y32_N29
\inst_sync_keys|sync1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst_sync_keys|sync1\(2),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sync_keys|sync1\(1));

-- Location: FF_X98_Y32_N21
\inst_sync_keys|sync1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst_sync_keys|sync1\(1),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sync_keys|sync1\(0));

-- Location: LCCOMB_X98_Y32_N20
\inst_sync_keys|keys_o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_sync_keys|keys_o\(1) = (!\inst_sync_keys|sync1\(0) & \inst_sync_keys|sync1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_sync_keys|sync1\(0),
	datad => \inst_sync_keys|sync1\(1),
	combout => \inst_sync_keys|keys_o\(1));

-- Location: LCCOMB_X98_Y32_N16
\inst_fsm|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector8~0_combout\ = (\inst_fsm|state_reg.ajuste_s~q\ & (\inst_sync_keys|sync1\(1) & !\inst_sync_keys|sync1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_fsm|state_reg.ajuste_s~q\,
	datac => \inst_sync_keys|sync1\(1),
	datad => \inst_sync_keys|sync1\(0),
	combout => \inst_fsm|Selector8~0_combout\);

-- Location: FF_X98_Y32_N17
\inst_fsm|state_reg.incrementa_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector8~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.incrementa_s~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X99_Y32_N30
\inst_sync_keys|sync0[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_sync_keys|sync0[2]~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \inst_sync_keys|sync0[2]~0_combout\);

-- Location: FF_X99_Y32_N31
\inst_sync_keys|sync0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_sync_keys|sync0[2]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sync_keys|sync0\(2));

-- Location: FF_X99_Y32_N27
\inst_sync_keys|sync0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst_sync_keys|sync0\(2),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sync_keys|sync0\(1));

-- Location: FF_X99_Y32_N21
\inst_sync_keys|sync0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst_sync_keys|sync0\(1),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sync_keys|sync0\(0));

-- Location: LCCOMB_X99_Y32_N20
\inst_sync_keys|keys_o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_sync_keys|keys_o[0]~0_combout\ = (\inst_sync_keys|sync0\(1) & !\inst_sync_keys|sync0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sync_keys|sync0\(1),
	datac => \inst_sync_keys|sync0\(0),
	combout => \inst_sync_keys|keys_o[0]~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X106_Y32_N10
\inst_sync_keys|sync2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_sync_keys|sync2[2]~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \inst_sync_keys|sync2[2]~0_combout\);

-- Location: FF_X106_Y32_N11
\inst_sync_keys|sync2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_sync_keys|sync2[2]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sync_keys|sync2\(2));

-- Location: FF_X98_Y32_N5
\inst_sync_keys|sync2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst_sync_keys|sync2\(2),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sync_keys|sync2\(1));

-- Location: FF_X98_Y32_N27
\inst_sync_keys|sync2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst_sync_keys|sync2\(1),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sync_keys|sync2\(0));

-- Location: LCCOMB_X98_Y32_N4
\inst_fsm|next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|next_state~9_combout\ = (\inst_sync_keys|sync2\(0) & ((\inst_sync_keys|sync1\(0)) # ((!\inst_sync_keys|sync1\(1))))) # (!\inst_sync_keys|sync2\(0) & (!\inst_sync_keys|sync2\(1) & ((\inst_sync_keys|sync1\(0)) # (!\inst_sync_keys|sync1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sync_keys|sync2\(0),
	datab => \inst_sync_keys|sync1\(0),
	datac => \inst_sync_keys|sync2\(1),
	datad => \inst_sync_keys|sync1\(1),
	combout => \inst_fsm|next_state~9_combout\);

-- Location: LCCOMB_X98_Y32_N0
\inst_fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector0~0_combout\ = (\inst_sync_keys|keys_o[0]~0_combout\ & (((!\inst_fsm|state_reg.ajuste_s~q\)) # (!\inst_fsm|next_state~9_combout\))) # (!\inst_sync_keys|keys_o[0]~0_combout\ & (((\inst_fsm|state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sync_keys|keys_o[0]~0_combout\,
	datab => \inst_fsm|next_state~9_combout\,
	datac => \inst_fsm|state_reg.idle~q\,
	datad => \inst_fsm|state_reg.ajuste_s~q\,
	combout => \inst_fsm|Selector0~0_combout\);

-- Location: FF_X98_Y32_N1
\inst_fsm|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.idle~q\);

-- Location: LCCOMB_X98_Y32_N22
\inst_fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector1~0_combout\ = (\inst_sync_keys|keys_o[0]~0_combout\ & (((!\inst_fsm|state_reg.idle~q\)))) # (!\inst_sync_keys|keys_o[0]~0_combout\ & (\inst_fsm|next_state~9_combout\ & (\inst_fsm|state_reg.ajuste_h~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sync_keys|keys_o[0]~0_combout\,
	datab => \inst_fsm|next_state~9_combout\,
	datac => \inst_fsm|state_reg.ajuste_h~q\,
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \inst_fsm|Selector1~0_combout\);

-- Location: LCCOMB_X98_Y32_N2
\inst_fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector3~0_combout\ = (!\inst_sync_keys|keys_o\(1) & (\inst_sync_keys|sync2\(1) & (\inst_fsm|state_reg.ajuste_h~q\ & !\inst_sync_keys|sync2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sync_keys|keys_o\(1),
	datab => \inst_sync_keys|sync2\(1),
	datac => \inst_fsm|state_reg.ajuste_h~q\,
	datad => \inst_sync_keys|sync2\(0),
	combout => \inst_fsm|Selector3~0_combout\);

-- Location: FF_X98_Y32_N3
\inst_fsm|state_reg.decrementa_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector3~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.decrementa_h~q\);

-- Location: LCCOMB_X98_Y32_N24
\inst_fsm|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector2~0_combout\ = (!\inst_sync_keys|sync1\(0) & (\inst_fsm|state_reg.ajuste_h~q\ & \inst_sync_keys|sync1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_sync_keys|sync1\(0),
	datac => \inst_fsm|state_reg.ajuste_h~q\,
	datad => \inst_sync_keys|sync1\(1),
	combout => \inst_fsm|Selector2~0_combout\);

-- Location: FF_X98_Y32_N25
\inst_fsm|state_reg.incrementa_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector2~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.incrementa_h~q\);

-- Location: LCCOMB_X90_Y29_N8
\inst_fsm|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector1~1_combout\ = (\inst_fsm|Selector1~0_combout\) # ((\inst_fsm|state_reg.decrementa_h~q\) # (\inst_fsm|state_reg.incrementa_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_fsm|Selector1~0_combout\,
	datac => \inst_fsm|state_reg.decrementa_h~q\,
	datad => \inst_fsm|state_reg.incrementa_h~q\,
	combout => \inst_fsm|Selector1~1_combout\);

-- Location: FF_X90_Y29_N9
\inst_fsm|state_reg.ajuste_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector1~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.ajuste_h~q\);

-- Location: LCCOMB_X98_Y32_N10
\inst_fsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector4~0_combout\ = (\inst_fsm|next_state~9_combout\ & ((\inst_sync_keys|keys_o[0]~0_combout\ & (\inst_fsm|state_reg.ajuste_h~q\)) # (!\inst_sync_keys|keys_o[0]~0_combout\ & ((\inst_fsm|state_reg.ajuste_m~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.ajuste_h~q\,
	datab => \inst_fsm|next_state~9_combout\,
	datac => \inst_sync_keys|keys_o[0]~0_combout\,
	datad => \inst_fsm|state_reg.ajuste_m~q\,
	combout => \inst_fsm|Selector4~0_combout\);

-- Location: LCCOMB_X98_Y32_N18
\inst_fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector5~0_combout\ = (\inst_fsm|state_reg.ajuste_m~q\ & (\inst_sync_keys|sync1\(1) & !\inst_sync_keys|sync1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.ajuste_m~q\,
	datab => \inst_sync_keys|sync1\(1),
	datad => \inst_sync_keys|sync1\(0),
	combout => \inst_fsm|Selector5~0_combout\);

-- Location: FF_X98_Y32_N19
\inst_fsm|state_reg.incrementa_m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.incrementa_m~q\);

-- Location: LCCOMB_X98_Y32_N6
\inst_fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector6~0_combout\ = (!\inst_sync_keys|sync2\(0) & (\inst_sync_keys|sync2\(1) & (!\inst_sync_keys|keys_o\(1) & \inst_fsm|state_reg.ajuste_m~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sync_keys|sync2\(0),
	datab => \inst_sync_keys|sync2\(1),
	datac => \inst_sync_keys|keys_o\(1),
	datad => \inst_fsm|state_reg.ajuste_m~q\,
	combout => \inst_fsm|Selector6~0_combout\);

-- Location: FF_X98_Y32_N7
\inst_fsm|state_reg.decrementa_m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector6~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.decrementa_m~q\);

-- Location: LCCOMB_X98_Y32_N12
\inst_fsm|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector4~1_combout\ = (\inst_fsm|Selector4~0_combout\) # ((\inst_fsm|state_reg.incrementa_m~q\) # (\inst_fsm|state_reg.decrementa_m~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Selector4~0_combout\,
	datab => \inst_fsm|state_reg.incrementa_m~q\,
	datad => \inst_fsm|state_reg.decrementa_m~q\,
	combout => \inst_fsm|Selector4~1_combout\);

-- Location: FF_X98_Y32_N13
\inst_fsm|state_reg.ajuste_m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector4~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.ajuste_m~q\);

-- Location: LCCOMB_X98_Y32_N14
\inst_fsm|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector7~3_combout\ = (\inst_fsm|next_state~9_combout\ & ((\inst_sync_keys|keys_o[0]~0_combout\ & (\inst_fsm|state_reg.ajuste_m~q\)) # (!\inst_sync_keys|keys_o[0]~0_combout\ & ((\inst_fsm|state_reg.ajuste_s~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.ajuste_m~q\,
	datab => \inst_fsm|state_reg.ajuste_s~q\,
	datac => \inst_sync_keys|keys_o[0]~0_combout\,
	datad => \inst_fsm|next_state~9_combout\,
	combout => \inst_fsm|Selector7~3_combout\);

-- Location: LCCOMB_X99_Y32_N24
\inst_fsm|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector7~4_combout\ = (\inst_fsm|state_reg.decrementa_s~q\) # ((\inst_fsm|state_reg.incrementa_s~q\) # (\inst_fsm|Selector7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_fsm|state_reg.decrementa_s~q\,
	datac => \inst_fsm|state_reg.incrementa_s~q\,
	datad => \inst_fsm|Selector7~3_combout\,
	combout => \inst_fsm|Selector7~4_combout\);

-- Location: FF_X99_Y32_N25
\inst_fsm|state_reg.ajuste_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector7~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.ajuste_s~q\);

-- Location: LCCOMB_X98_Y32_N30
\inst_fsm|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector9~0_combout\ = (!\inst_sync_keys|keys_o\(1) & (\inst_fsm|state_reg.ajuste_s~q\ & (\inst_sync_keys|sync2\(1) & !\inst_sync_keys|sync2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sync_keys|keys_o\(1),
	datab => \inst_fsm|state_reg.ajuste_s~q\,
	datac => \inst_sync_keys|sync2\(1),
	datad => \inst_sync_keys|sync2\(0),
	combout => \inst_fsm|Selector9~0_combout\);

-- Location: FF_X98_Y32_N31
\inst_fsm|state_reg.decrementa_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst_fsm|Selector9~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_fsm|state_reg.decrementa_s~q\);

-- Location: LCCOMB_X100_Y32_N8
\inst_fsm|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Selector7~2_combout\ = (!\inst_fsm|state_reg.decrementa_s~q\ & !\inst_fsm|state_reg.incrementa_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_fsm|state_reg.decrementa_s~q\,
	datad => \inst_fsm|state_reg.incrementa_s~q\,
	combout => \inst_fsm|Selector7~2_combout\);

-- Location: LCCOMB_X111_Y38_N6
\blink1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~0_combout\ = \blink1|r_reg\(0) $ (VCC)
-- \blink1|Add0~1\ = CARRY(\blink1|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(0),
	datad => VCC,
	combout => \blink1|Add0~0_combout\,
	cout => \blink1|Add0~1\);

-- Location: FF_X111_Y38_N7
\blink1|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(0));

-- Location: LCCOMB_X111_Y38_N8
\blink1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~2_combout\ = (\blink1|r_reg\(1) & (!\blink1|Add0~1\)) # (!\blink1|r_reg\(1) & ((\blink1|Add0~1\) # (GND)))
-- \blink1|Add0~3\ = CARRY((!\blink1|Add0~1\) # (!\blink1|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blink1|r_reg\(1),
	datad => VCC,
	cin => \blink1|Add0~1\,
	combout => \blink1|Add0~2_combout\,
	cout => \blink1|Add0~3\);

-- Location: FF_X111_Y38_N9
\blink1|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(1));

-- Location: LCCOMB_X111_Y38_N10
\blink1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~4_combout\ = (\blink1|r_reg\(2) & (\blink1|Add0~3\ $ (GND))) # (!\blink1|r_reg\(2) & (!\blink1|Add0~3\ & VCC))
-- \blink1|Add0~5\ = CARRY((\blink1|r_reg\(2) & !\blink1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(2),
	datad => VCC,
	cin => \blink1|Add0~3\,
	combout => \blink1|Add0~4_combout\,
	cout => \blink1|Add0~5\);

-- Location: FF_X111_Y38_N11
\blink1|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(2));

-- Location: LCCOMB_X111_Y38_N12
\blink1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~6_combout\ = (\blink1|r_reg\(3) & (!\blink1|Add0~5\)) # (!\blink1|r_reg\(3) & ((\blink1|Add0~5\) # (GND)))
-- \blink1|Add0~7\ = CARRY((!\blink1|Add0~5\) # (!\blink1|r_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(3),
	datad => VCC,
	cin => \blink1|Add0~5\,
	combout => \blink1|Add0~6_combout\,
	cout => \blink1|Add0~7\);

-- Location: FF_X111_Y38_N13
\blink1|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(3));

-- Location: LCCOMB_X111_Y38_N14
\blink1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~8_combout\ = (\blink1|r_reg\(4) & (\blink1|Add0~7\ $ (GND))) # (!\blink1|r_reg\(4) & (!\blink1|Add0~7\ & VCC))
-- \blink1|Add0~9\ = CARRY((\blink1|r_reg\(4) & !\blink1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blink1|r_reg\(4),
	datad => VCC,
	cin => \blink1|Add0~7\,
	combout => \blink1|Add0~8_combout\,
	cout => \blink1|Add0~9\);

-- Location: FF_X111_Y38_N15
\blink1|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(4));

-- Location: LCCOMB_X111_Y38_N16
\blink1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~10_combout\ = (\blink1|r_reg\(5) & (!\blink1|Add0~9\)) # (!\blink1|r_reg\(5) & ((\blink1|Add0~9\) # (GND)))
-- \blink1|Add0~11\ = CARRY((!\blink1|Add0~9\) # (!\blink1|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blink1|r_reg\(5),
	datad => VCC,
	cin => \blink1|Add0~9\,
	combout => \blink1|Add0~10_combout\,
	cout => \blink1|Add0~11\);

-- Location: FF_X111_Y38_N17
\blink1|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(5));

-- Location: LCCOMB_X111_Y38_N18
\blink1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~12_combout\ = (\blink1|r_reg\(6) & (\blink1|Add0~11\ $ (GND))) # (!\blink1|r_reg\(6) & (!\blink1|Add0~11\ & VCC))
-- \blink1|Add0~13\ = CARRY((\blink1|r_reg\(6) & !\blink1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blink1|r_reg\(6),
	datad => VCC,
	cin => \blink1|Add0~11\,
	combout => \blink1|Add0~12_combout\,
	cout => \blink1|Add0~13\);

-- Location: FF_X111_Y38_N19
\blink1|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~12_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(6));

-- Location: LCCOMB_X111_Y38_N20
\blink1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~14_combout\ = (\blink1|r_reg\(7) & (!\blink1|Add0~13\)) # (!\blink1|r_reg\(7) & ((\blink1|Add0~13\) # (GND)))
-- \blink1|Add0~15\ = CARRY((!\blink1|Add0~13\) # (!\blink1|r_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(7),
	datad => VCC,
	cin => \blink1|Add0~13\,
	combout => \blink1|Add0~14_combout\,
	cout => \blink1|Add0~15\);

-- Location: LCCOMB_X110_Y38_N16
\blink1|r_next[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[7]~11_combout\ = (\blink1|Add0~14_combout\ & !\blink1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink1|Add0~14_combout\,
	datad => \blink1|Equal0~8_combout\,
	combout => \blink1|r_next[7]~11_combout\);

-- Location: FF_X110_Y38_N17
\blink1|r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[7]~11_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(7));

-- Location: LCCOMB_X111_Y38_N22
\blink1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~16_combout\ = (\blink1|r_reg\(8) & (\blink1|Add0~15\ $ (GND))) # (!\blink1|r_reg\(8) & (!\blink1|Add0~15\ & VCC))
-- \blink1|Add0~17\ = CARRY((\blink1|r_reg\(8) & !\blink1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(8),
	datad => VCC,
	cin => \blink1|Add0~15\,
	combout => \blink1|Add0~16_combout\,
	cout => \blink1|Add0~17\);

-- Location: FF_X111_Y38_N23
\blink1|r_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~16_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(8));

-- Location: LCCOMB_X111_Y38_N24
\blink1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~18_combout\ = (\blink1|r_reg\(9) & (!\blink1|Add0~17\)) # (!\blink1|r_reg\(9) & ((\blink1|Add0~17\) # (GND)))
-- \blink1|Add0~19\ = CARRY((!\blink1|Add0~17\) # (!\blink1|r_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blink1|r_reg\(9),
	datad => VCC,
	cin => \blink1|Add0~17\,
	combout => \blink1|Add0~18_combout\,
	cout => \blink1|Add0~19\);

-- Location: FF_X111_Y38_N25
\blink1|r_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~18_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(9));

-- Location: LCCOMB_X111_Y38_N26
\blink1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~20_combout\ = (\blink1|r_reg\(10) & (\blink1|Add0~19\ $ (GND))) # (!\blink1|r_reg\(10) & (!\blink1|Add0~19\ & VCC))
-- \blink1|Add0~21\ = CARRY((\blink1|r_reg\(10) & !\blink1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(10),
	datad => VCC,
	cin => \blink1|Add0~19\,
	combout => \blink1|Add0~20_combout\,
	cout => \blink1|Add0~21\);

-- Location: FF_X111_Y38_N27
\blink1|r_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~20_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(10));

-- Location: LCCOMB_X111_Y38_N28
\blink1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~22_combout\ = (\blink1|r_reg\(11) & (!\blink1|Add0~21\)) # (!\blink1|r_reg\(11) & ((\blink1|Add0~21\) # (GND)))
-- \blink1|Add0~23\ = CARRY((!\blink1|Add0~21\) # (!\blink1|r_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blink1|r_reg\(11),
	datad => VCC,
	cin => \blink1|Add0~21\,
	combout => \blink1|Add0~22_combout\,
	cout => \blink1|Add0~23\);

-- Location: FF_X111_Y38_N29
\blink1|r_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~22_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(11));

-- Location: LCCOMB_X111_Y38_N30
\blink1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~24_combout\ = (\blink1|r_reg\(12) & (\blink1|Add0~23\ $ (GND))) # (!\blink1|r_reg\(12) & (!\blink1|Add0~23\ & VCC))
-- \blink1|Add0~25\ = CARRY((\blink1|r_reg\(12) & !\blink1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(12),
	datad => VCC,
	cin => \blink1|Add0~23\,
	combout => \blink1|Add0~24_combout\,
	cout => \blink1|Add0~25\);

-- Location: LCCOMB_X110_Y38_N2
\blink1|r_next[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[12]~9_combout\ = (\blink1|Add0~24_combout\ & !\blink1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink1|Add0~24_combout\,
	datad => \blink1|Equal0~8_combout\,
	combout => \blink1|r_next[12]~9_combout\);

-- Location: FF_X110_Y38_N3
\blink1|r_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[12]~9_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(12));

-- Location: LCCOMB_X111_Y37_N0
\blink1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~26_combout\ = (\blink1|r_reg\(13) & (!\blink1|Add0~25\)) # (!\blink1|r_reg\(13) & ((\blink1|Add0~25\) # (GND)))
-- \blink1|Add0~27\ = CARRY((!\blink1|Add0~25\) # (!\blink1|r_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blink1|r_reg\(13),
	datad => VCC,
	cin => \blink1|Add0~25\,
	combout => \blink1|Add0~26_combout\,
	cout => \blink1|Add0~27\);

-- Location: LCCOMB_X110_Y37_N6
\blink1|r_next[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[13]~8_combout\ = (\blink1|Add0~26_combout\ & !\blink1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink1|Add0~26_combout\,
	datad => \blink1|Equal0~8_combout\,
	combout => \blink1|r_next[13]~8_combout\);

-- Location: FF_X110_Y37_N7
\blink1|r_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[13]~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(13));

-- Location: LCCOMB_X111_Y37_N2
\blink1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~28_combout\ = (\blink1|r_reg\(14) & (\blink1|Add0~27\ $ (GND))) # (!\blink1|r_reg\(14) & (!\blink1|Add0~27\ & VCC))
-- \blink1|Add0~29\ = CARRY((\blink1|r_reg\(14) & !\blink1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blink1|r_reg\(14),
	datad => VCC,
	cin => \blink1|Add0~27\,
	combout => \blink1|Add0~28_combout\,
	cout => \blink1|Add0~29\);

-- Location: LCCOMB_X110_Y37_N4
\blink1|r_next[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[14]~7_combout\ = (!\blink1|Equal0~8_combout\ & \blink1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blink1|Equal0~8_combout\,
	datad => \blink1|Add0~28_combout\,
	combout => \blink1|r_next[14]~7_combout\);

-- Location: FF_X110_Y37_N5
\blink1|r_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[14]~7_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(14));

-- Location: LCCOMB_X111_Y37_N8
\blink1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~34_combout\ = (\blink1|r_reg\(17) & (!\blink1|Add0~33\)) # (!\blink1|r_reg\(17) & ((\blink1|Add0~33\) # (GND)))
-- \blink1|Add0~35\ = CARRY((!\blink1|Add0~33\) # (!\blink1|r_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(17),
	datad => VCC,
	cin => \blink1|Add0~33\,
	combout => \blink1|Add0~34_combout\,
	cout => \blink1|Add0~35\);

-- Location: LCCOMB_X111_Y37_N10
\blink1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~36_combout\ = (\blink1|r_reg\(18) & (\blink1|Add0~35\ $ (GND))) # (!\blink1|r_reg\(18) & (!\blink1|Add0~35\ & VCC))
-- \blink1|Add0~37\ = CARRY((\blink1|r_reg\(18) & !\blink1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(18),
	datad => VCC,
	cin => \blink1|Add0~35\,
	combout => \blink1|Add0~36_combout\,
	cout => \blink1|Add0~37\);

-- Location: FF_X111_Y37_N11
\blink1|r_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~36_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(18));

-- Location: LCCOMB_X111_Y37_N12
\blink1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~38_combout\ = (\blink1|r_reg\(19) & (!\blink1|Add0~37\)) # (!\blink1|r_reg\(19) & ((\blink1|Add0~37\) # (GND)))
-- \blink1|Add0~39\ = CARRY((!\blink1|Add0~37\) # (!\blink1|r_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(19),
	datad => VCC,
	cin => \blink1|Add0~37\,
	combout => \blink1|Add0~38_combout\,
	cout => \blink1|Add0~39\);

-- Location: LCCOMB_X110_Y37_N14
\blink1|r_next[19]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[19]~5_combout\ = (\blink1|Add0~38_combout\ & !\blink1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink1|Add0~38_combout\,
	datad => \blink1|Equal0~8_combout\,
	combout => \blink1|r_next[19]~5_combout\);

-- Location: FF_X110_Y37_N15
\blink1|r_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[19]~5_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(19));

-- Location: LCCOMB_X111_Y37_N14
\blink1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~40_combout\ = (\blink1|r_reg\(20) & (\blink1|Add0~39\ $ (GND))) # (!\blink1|r_reg\(20) & (!\blink1|Add0~39\ & VCC))
-- \blink1|Add0~41\ = CARRY((\blink1|r_reg\(20) & !\blink1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(20),
	datad => VCC,
	cin => \blink1|Add0~39\,
	combout => \blink1|Add0~40_combout\,
	cout => \blink1|Add0~41\);

-- Location: LCCOMB_X110_Y37_N12
\blink1|r_next[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[20]~4_combout\ = (\blink1|Add0~40_combout\ & !\blink1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink1|Add0~40_combout\,
	datad => \blink1|Equal0~8_combout\,
	combout => \blink1|r_next[20]~4_combout\);

-- Location: FF_X110_Y37_N13
\blink1|r_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[20]~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(20));

-- Location: LCCOMB_X111_Y37_N16
\blink1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~42_combout\ = (\blink1|r_reg\(21) & (!\blink1|Add0~41\)) # (!\blink1|r_reg\(21) & ((\blink1|Add0~41\) # (GND)))
-- \blink1|Add0~43\ = CARRY((!\blink1|Add0~41\) # (!\blink1|r_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(21),
	datad => VCC,
	cin => \blink1|Add0~41\,
	combout => \blink1|Add0~42_combout\,
	cout => \blink1|Add0~43\);

-- Location: LCCOMB_X110_Y37_N26
\blink1|r_next[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[21]~3_combout\ = (!\blink1|Equal0~8_combout\ & \blink1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blink1|Equal0~8_combout\,
	datad => \blink1|Add0~42_combout\,
	combout => \blink1|r_next[21]~3_combout\);

-- Location: FF_X110_Y37_N27
\blink1|r_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[21]~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(21));

-- Location: LCCOMB_X111_Y37_N18
\blink1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~44_combout\ = (\blink1|r_reg\(22) & (\blink1|Add0~43\ $ (GND))) # (!\blink1|r_reg\(22) & (!\blink1|Add0~43\ & VCC))
-- \blink1|Add0~45\ = CARRY((\blink1|r_reg\(22) & !\blink1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(22),
	datad => VCC,
	cin => \blink1|Add0~43\,
	combout => \blink1|Add0~44_combout\,
	cout => \blink1|Add0~45\);

-- Location: LCCOMB_X110_Y37_N16
\blink1|r_next[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[22]~2_combout\ = (!\blink1|Equal0~8_combout\ & \blink1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blink1|Equal0~8_combout\,
	datad => \blink1|Add0~44_combout\,
	combout => \blink1|r_next[22]~2_combout\);

-- Location: FF_X110_Y37_N17
\blink1|r_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[22]~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(22));

-- Location: LCCOMB_X111_Y37_N20
\blink1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~46_combout\ = (\blink1|r_reg\(23) & (!\blink1|Add0~45\)) # (!\blink1|r_reg\(23) & ((\blink1|Add0~45\) # (GND)))
-- \blink1|Add0~47\ = CARRY((!\blink1|Add0~45\) # (!\blink1|r_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blink1|r_reg\(23),
	datad => VCC,
	cin => \blink1|Add0~45\,
	combout => \blink1|Add0~46_combout\,
	cout => \blink1|Add0~47\);

-- Location: LCCOMB_X111_Y37_N28
\blink1|r_next[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[23]~1_combout\ = (!\blink1|Equal0~8_combout\ & \blink1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink1|Equal0~8_combout\,
	datad => \blink1|Add0~46_combout\,
	combout => \blink1|r_next[23]~1_combout\);

-- Location: FF_X111_Y37_N29
\blink1|r_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[23]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(23));

-- Location: LCCOMB_X111_Y37_N22
\blink1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~48_combout\ = (\blink1|r_reg\(24) & (\blink1|Add0~47\ $ (GND))) # (!\blink1|r_reg\(24) & (!\blink1|Add0~47\ & VCC))
-- \blink1|Add0~49\ = CARRY((\blink1|r_reg\(24) & !\blink1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(24),
	datad => VCC,
	cin => \blink1|Add0~47\,
	combout => \blink1|Add0~48_combout\,
	cout => \blink1|Add0~49\);

-- Location: FF_X111_Y37_N23
\blink1|r_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~48_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(24));

-- Location: LCCOMB_X111_Y37_N24
\blink1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~50_combout\ = \blink1|r_reg\(25) $ (\blink1|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(25),
	cin => \blink1|Add0~49\,
	combout => \blink1|Add0~50_combout\);

-- Location: LCCOMB_X111_Y37_N26
\blink1|r_next[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[25]~0_combout\ = (!\blink1|Equal0~8_combout\ & \blink1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink1|Equal0~8_combout\,
	datad => \blink1|Add0~50_combout\,
	combout => \blink1|r_next[25]~0_combout\);

-- Location: FF_X111_Y37_N27
\blink1|r_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[25]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(25));

-- Location: LCCOMB_X110_Y38_N10
\blink1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Equal0~2_combout\ = (\blink1|r_reg\(14) & (\blink1|r_reg\(13) & (\blink1|r_reg\(25) & \blink1|r_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(14),
	datab => \blink1|r_reg\(13),
	datac => \blink1|r_reg\(25),
	datad => \blink1|r_reg\(12),
	combout => \blink1|Equal0~2_combout\);

-- Location: LCCOMB_X110_Y38_N20
\blink1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Equal0~3_combout\ = (\blink1|r_reg\(17) & (!\blink1|r_reg\(18) & (!\blink1|r_reg\(24) & \blink1|r_reg\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(17),
	datab => \blink1|r_reg\(18),
	datac => \blink1|r_reg\(24),
	datad => \blink1|r_reg\(23),
	combout => \blink1|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y37_N0
\blink1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Equal0~0_combout\ = (\blink1|r_reg\(20) & (\blink1|r_reg\(19) & (\blink1|r_reg\(21) & \blink1|r_reg\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(20),
	datab => \blink1|r_reg\(19),
	datac => \blink1|r_reg\(21),
	datad => \blink1|r_reg\(22),
	combout => \blink1|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y38_N2
\blink1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Equal0~1_combout\ = (!\blink1|r_reg\(8) & (!\blink1|r_reg\(7) & (!\blink1|r_reg\(10) & !\blink1|r_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(8),
	datab => \blink1|r_reg\(7),
	datac => \blink1|r_reg\(10),
	datad => \blink1|r_reg\(9),
	combout => \blink1|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y38_N6
\blink1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Equal0~4_combout\ = (\blink1|Equal0~2_combout\ & (\blink1|Equal0~3_combout\ & (\blink1|Equal0~0_combout\ & \blink1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|Equal0~2_combout\,
	datab => \blink1|Equal0~3_combout\,
	datac => \blink1|Equal0~0_combout\,
	datad => \blink1|Equal0~1_combout\,
	combout => \blink1|Equal0~4_combout\);

-- Location: LCCOMB_X110_Y38_N18
\blink1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Equal0~7_combout\ = (\blink1|r_reg\(1) & \blink1|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink1|r_reg\(1),
	datad => \blink1|r_reg\(0),
	combout => \blink1|Equal0~7_combout\);

-- Location: LCCOMB_X110_Y38_N8
\blink1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Equal0~5_combout\ = (\blink1|r_reg\(15) & (!\blink1|r_reg\(11) & (!\blink1|r_reg\(16) & \blink1|r_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(15),
	datab => \blink1|r_reg\(11),
	datac => \blink1|r_reg\(16),
	datad => \blink1|r_reg\(6),
	combout => \blink1|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y38_N4
\blink1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Equal0~6_combout\ = (\blink1|r_reg\(3) & (\blink1|r_reg\(5) & (\blink1|r_reg\(4) & \blink1|r_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(3),
	datab => \blink1|r_reg\(5),
	datac => \blink1|r_reg\(4),
	datad => \blink1|r_reg\(2),
	combout => \blink1|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y38_N28
\blink1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Equal0~8_combout\ = (\blink1|Equal0~4_combout\ & (\blink1|Equal0~7_combout\ & (\blink1|Equal0~5_combout\ & \blink1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|Equal0~4_combout\,
	datab => \blink1|Equal0~7_combout\,
	datac => \blink1|Equal0~5_combout\,
	datad => \blink1|Equal0~6_combout\,
	combout => \blink1|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y37_N4
\blink1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~30_combout\ = (\blink1|r_reg\(15) & (!\blink1|Add0~29\)) # (!\blink1|r_reg\(15) & ((\blink1|Add0~29\) # (GND)))
-- \blink1|Add0~31\ = CARRY((!\blink1|Add0~29\) # (!\blink1|r_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(15),
	datad => VCC,
	cin => \blink1|Add0~29\,
	combout => \blink1|Add0~30_combout\,
	cout => \blink1|Add0~31\);

-- Location: LCCOMB_X111_Y37_N30
\blink1|r_next[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[15]~10_combout\ = (!\blink1|Equal0~8_combout\ & \blink1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|Equal0~8_combout\,
	datac => \blink1|Add0~30_combout\,
	combout => \blink1|r_next[15]~10_combout\);

-- Location: FF_X111_Y37_N31
\blink1|r_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[15]~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(15));

-- Location: LCCOMB_X111_Y37_N6
\blink1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|Add0~32_combout\ = (\blink1|r_reg\(16) & (\blink1|Add0~31\ $ (GND))) # (!\blink1|r_reg\(16) & (!\blink1|Add0~31\ & VCC))
-- \blink1|Add0~33\ = CARRY((\blink1|r_reg\(16) & !\blink1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(16),
	datad => VCC,
	cin => \blink1|Add0~31\,
	combout => \blink1|Add0~32_combout\,
	cout => \blink1|Add0~33\);

-- Location: FF_X111_Y37_N7
\blink1|r_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|Add0~32_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(16));

-- Location: LCCOMB_X110_Y37_N2
\blink1|r_next[17]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|r_next[17]~6_combout\ = (\blink1|Add0~34_combout\ & !\blink1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blink1|Add0~34_combout\,
	datad => \blink1|Equal0~8_combout\,
	combout => \blink1|r_next[17]~6_combout\);

-- Location: FF_X110_Y37_N3
\blink1|r_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \blink1|r_next[17]~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink1|r_reg\(17));

-- Location: LCCOMB_X110_Y38_N12
\blink1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|LessThan0~0_combout\ = (\blink1|r_reg\(14) & (\blink1|r_reg\(13) & (\blink1|r_reg\(16) & \blink1|r_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(14),
	datab => \blink1|r_reg\(13),
	datac => \blink1|r_reg\(16),
	datad => \blink1|r_reg\(12),
	combout => \blink1|LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y38_N0
\blink1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|LessThan0~1_combout\ = (\blink1|r_reg\(3)) # ((\blink1|r_reg\(5)) # ((\blink1|r_reg\(4)) # (\blink1|r_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(3),
	datab => \blink1|r_reg\(5),
	datac => \blink1|r_reg\(4),
	datad => \blink1|r_reg\(2),
	combout => \blink1|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y38_N22
\blink1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|LessThan0~2_combout\ = (\blink1|r_reg\(0)) # ((\blink1|LessThan0~1_combout\) # (\blink1|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(0),
	datab => \blink1|LessThan0~1_combout\,
	datac => \blink1|r_reg\(1),
	combout => \blink1|LessThan0~2_combout\);

-- Location: LCCOMB_X110_Y38_N26
\blink1|blink~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|blink~1_combout\ = (\blink1|r_reg\(11) & (((\blink1|LessThan0~2_combout\ & \blink1|r_reg\(6))) # (!\blink1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|Equal0~1_combout\,
	datab => \blink1|r_reg\(11),
	datac => \blink1|LessThan0~2_combout\,
	datad => \blink1|r_reg\(6),
	combout => \blink1|blink~1_combout\);

-- Location: LCCOMB_X110_Y38_N4
\blink1|blink~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|blink~2_combout\ = (\blink1|LessThan0~0_combout\ & ((\blink1|blink~1_combout\) # ((\blink1|r_reg\(16) & \blink1|r_reg\(15))))) # (!\blink1|LessThan0~0_combout\ & (\blink1|r_reg\(16) & ((\blink1|r_reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|LessThan0~0_combout\,
	datab => \blink1|r_reg\(16),
	datac => \blink1|blink~1_combout\,
	datad => \blink1|r_reg\(15),
	combout => \blink1|blink~2_combout\);

-- Location: LCCOMB_X98_Y32_N28
\fsm_any_blink~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm_any_blink~1_combout\ = (!\inst_fsm|state_reg.decrementa_m~q\ & (!\inst_fsm|state_reg.incrementa_m~q\ & !\inst_fsm|state_reg.ajuste_m~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.decrementa_m~q\,
	datab => \inst_fsm|state_reg.incrementa_m~q\,
	datad => \inst_fsm|state_reg.ajuste_m~q\,
	combout => \fsm_any_blink~1_combout\);

-- Location: LCCOMB_X90_Y29_N2
\fsm_any_blink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm_any_blink~0_combout\ = (!\inst_fsm|state_reg.decrementa_h~q\ & (!\inst_fsm|state_reg.ajuste_h~q\ & !\inst_fsm|state_reg.incrementa_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_fsm|state_reg.decrementa_h~q\,
	datac => \inst_fsm|state_reg.ajuste_h~q\,
	datad => \inst_fsm|state_reg.incrementa_h~q\,
	combout => \fsm_any_blink~0_combout\);

-- Location: LCCOMB_X102_Y32_N24
\fsm_any_blink~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm_any_blink~2_combout\ = (((\inst_fsm|state_reg.ajuste_s~q\) # (!\inst_fsm|Selector7~2_combout\)) # (!\fsm_any_blink~0_combout\)) # (!\fsm_any_blink~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~1_combout\,
	datab => \fsm_any_blink~0_combout\,
	datac => \inst_fsm|Selector7~2_combout\,
	datad => \inst_fsm|state_reg.ajuste_s~q\,
	combout => \fsm_any_blink~2_combout\);

-- Location: LCCOMB_X110_Y38_N30
\blink1|blink~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|blink~3_combout\ = (\blink1|r_reg\(24) & (\fsm_any_blink~2_combout\ & ((\blink1|r_reg\(17)) # (\blink1|blink~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(17),
	datab => \blink1|blink~2_combout\,
	datac => \blink1|r_reg\(24),
	datad => \fsm_any_blink~2_combout\,
	combout => \blink1|blink~3_combout\);

-- Location: LCCOMB_X110_Y38_N24
\blink1|blink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|blink~0_combout\ = (\fsm_any_blink~2_combout\ & ((\blink1|r_reg\(25)) # ((\blink1|r_reg\(23) & \blink1|r_reg\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|r_reg\(23),
	datab => \blink1|r_reg\(25),
	datac => \blink1|r_reg\(24),
	datad => \fsm_any_blink~2_combout\,
	combout => \blink1|blink~0_combout\);

-- Location: LCCOMB_X110_Y38_N0
\blink1|blink~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink1|blink~4_combout\ = (\blink1|blink~0_combout\) # ((\blink1|blink~3_combout\ & (\blink1|Equal0~0_combout\ & \blink1|r_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink1|blink~3_combout\,
	datab => \blink1|Equal0~0_combout\,
	datac => \blink1|r_reg\(18),
	datad => \blink1|blink~0_combout\,
	combout => \blink1|blink~4_combout\);

-- Location: LCCOMB_X105_Y29_N22
\bin2bcd_min|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector28~0_combout\ = (\bin2bcd_min|shift_counter\(0) & \bin2bcd_min|shift_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|shift_counter\(0),
	datac => \bin2bcd_min|shift_counter\(1),
	combout => \bin2bcd_min|Selector28~0_combout\);

-- Location: LCCOMB_X105_Y29_N12
\bin2bcd_min|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector28~1_combout\ = (\bin2bcd_min|shift_counter\(2) & ((\bin2bcd_min|state.done~q\) # ((!\bin2bcd_min|Selector28~0_combout\ & \bin2bcd_min|state.shift~q\)))) # (!\bin2bcd_min|shift_counter\(2) & (\bin2bcd_min|Selector28~0_combout\ & 
-- (\bin2bcd_min|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|Selector28~0_combout\,
	datab => \bin2bcd_min|state.shift~q\,
	datac => \bin2bcd_min|shift_counter\(2),
	datad => \bin2bcd_min|state.done~q\,
	combout => \bin2bcd_min|Selector28~1_combout\);

-- Location: FF_X105_Y29_N13
\bin2bcd_min|shift_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector28~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|shift_counter\(2));

-- Location: LCCOMB_X105_Y29_N16
\bin2bcd_min|state_next.done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|state_next.done~0_combout\ = (!\bin2bcd_min|shift_counter\(0) & (\bin2bcd_min|shift_counter\(1) & (\bin2bcd_min|state.shift~q\ & \bin2bcd_min|shift_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|shift_counter\(0),
	datab => \bin2bcd_min|shift_counter\(1),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_min|shift_counter\(2),
	combout => \bin2bcd_min|state_next.done~0_combout\);

-- Location: FF_X105_Y29_N17
\bin2bcd_min|state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|state_next.done~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|state.done~q\);

-- Location: LCCOMB_X105_Y29_N30
\bin2bcd_min|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector29~0_combout\ = (\bin2bcd_min|shift_counter\(1) & ((\bin2bcd_min|state.done~q\) # ((!\bin2bcd_min|shift_counter\(0) & \bin2bcd_min|state.shift~q\)))) # (!\bin2bcd_min|shift_counter\(1) & (\bin2bcd_min|shift_counter\(0) & 
-- (\bin2bcd_min|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|shift_counter\(0),
	datab => \bin2bcd_min|state.shift~q\,
	datac => \bin2bcd_min|shift_counter\(1),
	datad => \bin2bcd_min|state.done~q\,
	combout => \bin2bcd_min|Selector29~0_combout\);

-- Location: FF_X105_Y29_N31
\bin2bcd_min|shift_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector29~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|shift_counter\(1));

-- Location: LCCOMB_X105_Y29_N0
\bin2bcd_min|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector1~0_combout\ = (\bin2bcd_min|state.shift~q\ & ((\bin2bcd_min|shift_counter\(0)) # ((!\bin2bcd_min|shift_counter\(2)) # (!\bin2bcd_min|shift_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|shift_counter\(0),
	datab => \bin2bcd_min|shift_counter\(1),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_min|shift_counter\(2),
	combout => \bin2bcd_min|Selector1~0_combout\);

-- Location: LCCOMB_X106_Y29_N22
\bin2bcd_min|state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|state.start~0_combout\ = !\bin2bcd_min|state.done~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_min|state.done~q\,
	combout => \bin2bcd_min|state.start~0_combout\);

-- Location: FF_X106_Y29_N23
\bin2bcd_min|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|state.start~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|state.start~q\);

-- Location: LCCOMB_X105_Y29_N8
\bin2bcd_min|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector1~1_combout\ = (\bin2bcd_min|Selector1~0_combout\) # (!\bin2bcd_min|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_min|Selector1~0_combout\,
	datad => \bin2bcd_min|state.start~q\,
	combout => \bin2bcd_min|Selector1~1_combout\);

-- Location: FF_X105_Y29_N9
\bin2bcd_min|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector1~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|state.shift~q\);

-- Location: LCCOMB_X105_Y29_N2
\bin2bcd_sec|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Equal0~0_combout\ = (\bin2bcd_min|shift_counter\(1) & \bin2bcd_min|shift_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_min|shift_counter\(1),
	datad => \bin2bcd_min|shift_counter\(2),
	combout => \bin2bcd_sec|Equal0~0_combout\);

-- Location: LCCOMB_X105_Y29_N26
\bin2bcd_min|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector30~0_combout\ = (\bin2bcd_min|shift_counter\(0) & (((\bin2bcd_min|state.done~q\)))) # (!\bin2bcd_min|shift_counter\(0) & (\bin2bcd_min|state.shift~q\ & (!\bin2bcd_sec|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|state.shift~q\,
	datab => \bin2bcd_sec|Equal0~0_combout\,
	datac => \bin2bcd_min|shift_counter\(0),
	datad => \bin2bcd_min|state.done~q\,
	combout => \bin2bcd_min|Selector30~0_combout\);

-- Location: FF_X105_Y29_N27
\bin2bcd_min|shift_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector30~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|shift_counter\(0));

-- Location: LCCOMB_X105_Y29_N4
\bin2bcd_sec|binary[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|binary[5]~0_combout\ = (!\bin2bcd_min|state.done~q\ & ((\bin2bcd_min|shift_counter\(0)) # ((!\bin2bcd_min|state.shift~q\) # (!\bin2bcd_sec|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|shift_counter\(0),
	datab => \bin2bcd_sec|Equal0~0_combout\,
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_min|state.done~q\,
	combout => \bin2bcd_sec|binary[5]~0_combout\);

-- Location: LCCOMB_X94_Y32_N0
\t0|s_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_reg[0]~3_combout\ = (\inst_fsm|state_reg.decrementa_m~q\) # (!\inst_fsm|state_reg.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.decrementa_m~q\,
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|s_reg[0]~3_combout\);

-- Location: LCCOMB_X95_Y30_N6
\t0|r_reg[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[0]~26_combout\ = \t0|r_reg\(0) $ (VCC)
-- \t0|r_reg[0]~27\ = CARRY(\t0|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(0),
	datad => VCC,
	combout => \t0|r_reg[0]~26_combout\,
	cout => \t0|r_reg[0]~27\);

-- Location: LCCOMB_X95_Y33_N28
\t0|s_reg[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_reg[0]~9_combout\ = (\inst_fsm|state_reg.idle~q\) # (!\t0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~8_combout\,
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|s_reg[0]~9_combout\);

-- Location: FF_X95_Y30_N7
\t0|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[0]~26_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(0));

-- Location: LCCOMB_X95_Y30_N8
\t0|r_reg[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[1]~28_combout\ = (\t0|r_reg\(1) & (!\t0|r_reg[0]~27\)) # (!\t0|r_reg\(1) & ((\t0|r_reg[0]~27\) # (GND)))
-- \t0|r_reg[1]~29\ = CARRY((!\t0|r_reg[0]~27\) # (!\t0|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(1),
	datad => VCC,
	cin => \t0|r_reg[0]~27\,
	combout => \t0|r_reg[1]~28_combout\,
	cout => \t0|r_reg[1]~29\);

-- Location: FF_X95_Y30_N9
\t0|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[1]~28_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(1));

-- Location: LCCOMB_X95_Y30_N10
\t0|r_reg[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[2]~30_combout\ = (\t0|r_reg\(2) & (\t0|r_reg[1]~29\ $ (GND))) # (!\t0|r_reg\(2) & (!\t0|r_reg[1]~29\ & VCC))
-- \t0|r_reg[2]~31\ = CARRY((\t0|r_reg\(2) & !\t0|r_reg[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(2),
	datad => VCC,
	cin => \t0|r_reg[1]~29\,
	combout => \t0|r_reg[2]~30_combout\,
	cout => \t0|r_reg[2]~31\);

-- Location: FF_X95_Y30_N11
\t0|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[2]~30_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(2));

-- Location: LCCOMB_X95_Y30_N12
\t0|r_reg[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[3]~32_combout\ = (\t0|r_reg\(3) & (!\t0|r_reg[2]~31\)) # (!\t0|r_reg\(3) & ((\t0|r_reg[2]~31\) # (GND)))
-- \t0|r_reg[3]~33\ = CARRY((!\t0|r_reg[2]~31\) # (!\t0|r_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(3),
	datad => VCC,
	cin => \t0|r_reg[2]~31\,
	combout => \t0|r_reg[3]~32_combout\,
	cout => \t0|r_reg[3]~33\);

-- Location: FF_X95_Y30_N13
\t0|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[3]~32_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(3));

-- Location: LCCOMB_X95_Y30_N14
\t0|r_reg[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[4]~34_combout\ = (\t0|r_reg\(4) & (\t0|r_reg[3]~33\ $ (GND))) # (!\t0|r_reg\(4) & (!\t0|r_reg[3]~33\ & VCC))
-- \t0|r_reg[4]~35\ = CARRY((\t0|r_reg\(4) & !\t0|r_reg[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(4),
	datad => VCC,
	cin => \t0|r_reg[3]~33\,
	combout => \t0|r_reg[4]~34_combout\,
	cout => \t0|r_reg[4]~35\);

-- Location: FF_X95_Y30_N15
\t0|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[4]~34_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(4));

-- Location: LCCOMB_X95_Y30_N16
\t0|r_reg[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[5]~36_combout\ = (\t0|r_reg\(5) & (!\t0|r_reg[4]~35\)) # (!\t0|r_reg\(5) & ((\t0|r_reg[4]~35\) # (GND)))
-- \t0|r_reg[5]~37\ = CARRY((!\t0|r_reg[4]~35\) # (!\t0|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(5),
	datad => VCC,
	cin => \t0|r_reg[4]~35\,
	combout => \t0|r_reg[5]~36_combout\,
	cout => \t0|r_reg[5]~37\);

-- Location: FF_X95_Y30_N17
\t0|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[5]~36_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(5));

-- Location: LCCOMB_X95_Y30_N18
\t0|r_reg[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[6]~38_combout\ = (\t0|r_reg\(6) & (\t0|r_reg[5]~37\ $ (GND))) # (!\t0|r_reg\(6) & (!\t0|r_reg[5]~37\ & VCC))
-- \t0|r_reg[6]~39\ = CARRY((\t0|r_reg\(6) & !\t0|r_reg[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(6),
	datad => VCC,
	cin => \t0|r_reg[5]~37\,
	combout => \t0|r_reg[6]~38_combout\,
	cout => \t0|r_reg[6]~39\);

-- Location: FF_X95_Y30_N19
\t0|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[6]~38_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(6));

-- Location: LCCOMB_X95_Y30_N20
\t0|r_reg[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[7]~40_combout\ = (\t0|r_reg\(7) & (!\t0|r_reg[6]~39\)) # (!\t0|r_reg\(7) & ((\t0|r_reg[6]~39\) # (GND)))
-- \t0|r_reg[7]~41\ = CARRY((!\t0|r_reg[6]~39\) # (!\t0|r_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(7),
	datad => VCC,
	cin => \t0|r_reg[6]~39\,
	combout => \t0|r_reg[7]~40_combout\,
	cout => \t0|r_reg[7]~41\);

-- Location: FF_X95_Y30_N21
\t0|r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[7]~40_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(7));

-- Location: LCCOMB_X95_Y30_N22
\t0|r_reg[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[8]~42_combout\ = (\t0|r_reg\(8) & (\t0|r_reg[7]~41\ $ (GND))) # (!\t0|r_reg\(8) & (!\t0|r_reg[7]~41\ & VCC))
-- \t0|r_reg[8]~43\ = CARRY((\t0|r_reg\(8) & !\t0|r_reg[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(8),
	datad => VCC,
	cin => \t0|r_reg[7]~41\,
	combout => \t0|r_reg[8]~42_combout\,
	cout => \t0|r_reg[8]~43\);

-- Location: FF_X95_Y30_N23
\t0|r_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[8]~42_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(8));

-- Location: LCCOMB_X95_Y30_N24
\t0|r_reg[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[9]~44_combout\ = (\t0|r_reg\(9) & (!\t0|r_reg[8]~43\)) # (!\t0|r_reg\(9) & ((\t0|r_reg[8]~43\) # (GND)))
-- \t0|r_reg[9]~45\ = CARRY((!\t0|r_reg[8]~43\) # (!\t0|r_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(9),
	datad => VCC,
	cin => \t0|r_reg[8]~43\,
	combout => \t0|r_reg[9]~44_combout\,
	cout => \t0|r_reg[9]~45\);

-- Location: FF_X95_Y30_N25
\t0|r_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[9]~44_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(9));

-- Location: LCCOMB_X95_Y30_N26
\t0|r_reg[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[10]~46_combout\ = (\t0|r_reg\(10) & (\t0|r_reg[9]~45\ $ (GND))) # (!\t0|r_reg\(10) & (!\t0|r_reg[9]~45\ & VCC))
-- \t0|r_reg[10]~47\ = CARRY((\t0|r_reg\(10) & !\t0|r_reg[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(10),
	datad => VCC,
	cin => \t0|r_reg[9]~45\,
	combout => \t0|r_reg[10]~46_combout\,
	cout => \t0|r_reg[10]~47\);

-- Location: FF_X95_Y30_N27
\t0|r_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[10]~46_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(10));

-- Location: LCCOMB_X95_Y30_N28
\t0|r_reg[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[11]~48_combout\ = (\t0|r_reg\(11) & (!\t0|r_reg[10]~47\)) # (!\t0|r_reg\(11) & ((\t0|r_reg[10]~47\) # (GND)))
-- \t0|r_reg[11]~49\ = CARRY((!\t0|r_reg[10]~47\) # (!\t0|r_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(11),
	datad => VCC,
	cin => \t0|r_reg[10]~47\,
	combout => \t0|r_reg[11]~48_combout\,
	cout => \t0|r_reg[11]~49\);

-- Location: FF_X95_Y30_N29
\t0|r_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[11]~48_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(11));

-- Location: LCCOMB_X95_Y30_N30
\t0|r_reg[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[12]~50_combout\ = (\t0|r_reg\(12) & (\t0|r_reg[11]~49\ $ (GND))) # (!\t0|r_reg\(12) & (!\t0|r_reg[11]~49\ & VCC))
-- \t0|r_reg[12]~51\ = CARRY((\t0|r_reg\(12) & !\t0|r_reg[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(12),
	datad => VCC,
	cin => \t0|r_reg[11]~49\,
	combout => \t0|r_reg[12]~50_combout\,
	cout => \t0|r_reg[12]~51\);

-- Location: FF_X95_Y30_N31
\t0|r_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[12]~50_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(12));

-- Location: LCCOMB_X95_Y29_N0
\t0|r_reg[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[13]~52_combout\ = (\t0|r_reg\(13) & (!\t0|r_reg[12]~51\)) # (!\t0|r_reg\(13) & ((\t0|r_reg[12]~51\) # (GND)))
-- \t0|r_reg[13]~53\ = CARRY((!\t0|r_reg[12]~51\) # (!\t0|r_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(13),
	datad => VCC,
	cin => \t0|r_reg[12]~51\,
	combout => \t0|r_reg[13]~52_combout\,
	cout => \t0|r_reg[13]~53\);

-- Location: FF_X95_Y29_N1
\t0|r_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[13]~52_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(13));

-- Location: LCCOMB_X95_Y29_N2
\t0|r_reg[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[14]~54_combout\ = (\t0|r_reg\(14) & (\t0|r_reg[13]~53\ $ (GND))) # (!\t0|r_reg\(14) & (!\t0|r_reg[13]~53\ & VCC))
-- \t0|r_reg[14]~55\ = CARRY((\t0|r_reg\(14) & !\t0|r_reg[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(14),
	datad => VCC,
	cin => \t0|r_reg[13]~53\,
	combout => \t0|r_reg[14]~54_combout\,
	cout => \t0|r_reg[14]~55\);

-- Location: FF_X95_Y29_N3
\t0|r_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[14]~54_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(14));

-- Location: LCCOMB_X95_Y29_N4
\t0|r_reg[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[15]~56_combout\ = (\t0|r_reg\(15) & (!\t0|r_reg[14]~55\)) # (!\t0|r_reg\(15) & ((\t0|r_reg[14]~55\) # (GND)))
-- \t0|r_reg[15]~57\ = CARRY((!\t0|r_reg[14]~55\) # (!\t0|r_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(15),
	datad => VCC,
	cin => \t0|r_reg[14]~55\,
	combout => \t0|r_reg[15]~56_combout\,
	cout => \t0|r_reg[15]~57\);

-- Location: FF_X95_Y29_N5
\t0|r_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[15]~56_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(15));

-- Location: LCCOMB_X95_Y29_N6
\t0|r_reg[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[16]~58_combout\ = (\t0|r_reg\(16) & (\t0|r_reg[15]~57\ $ (GND))) # (!\t0|r_reg\(16) & (!\t0|r_reg[15]~57\ & VCC))
-- \t0|r_reg[16]~59\ = CARRY((\t0|r_reg\(16) & !\t0|r_reg[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(16),
	datad => VCC,
	cin => \t0|r_reg[15]~57\,
	combout => \t0|r_reg[16]~58_combout\,
	cout => \t0|r_reg[16]~59\);

-- Location: FF_X95_Y29_N7
\t0|r_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[16]~58_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(16));

-- Location: LCCOMB_X95_Y29_N8
\t0|r_reg[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[17]~60_combout\ = (\t0|r_reg\(17) & (!\t0|r_reg[16]~59\)) # (!\t0|r_reg\(17) & ((\t0|r_reg[16]~59\) # (GND)))
-- \t0|r_reg[17]~61\ = CARRY((!\t0|r_reg[16]~59\) # (!\t0|r_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(17),
	datad => VCC,
	cin => \t0|r_reg[16]~59\,
	combout => \t0|r_reg[17]~60_combout\,
	cout => \t0|r_reg[17]~61\);

-- Location: FF_X95_Y29_N9
\t0|r_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[17]~60_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(17));

-- Location: LCCOMB_X95_Y29_N10
\t0|r_reg[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[18]~62_combout\ = (\t0|r_reg\(18) & (\t0|r_reg[17]~61\ $ (GND))) # (!\t0|r_reg\(18) & (!\t0|r_reg[17]~61\ & VCC))
-- \t0|r_reg[18]~63\ = CARRY((\t0|r_reg\(18) & !\t0|r_reg[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(18),
	datad => VCC,
	cin => \t0|r_reg[17]~61\,
	combout => \t0|r_reg[18]~62_combout\,
	cout => \t0|r_reg[18]~63\);

-- Location: FF_X95_Y29_N11
\t0|r_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[18]~62_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(18));

-- Location: LCCOMB_X95_Y29_N12
\t0|r_reg[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[19]~64_combout\ = (\t0|r_reg\(19) & (!\t0|r_reg[18]~63\)) # (!\t0|r_reg\(19) & ((\t0|r_reg[18]~63\) # (GND)))
-- \t0|r_reg[19]~65\ = CARRY((!\t0|r_reg[18]~63\) # (!\t0|r_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(19),
	datad => VCC,
	cin => \t0|r_reg[18]~63\,
	combout => \t0|r_reg[19]~64_combout\,
	cout => \t0|r_reg[19]~65\);

-- Location: FF_X95_Y29_N13
\t0|r_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[19]~64_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(19));

-- Location: LCCOMB_X95_Y29_N14
\t0|r_reg[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[20]~66_combout\ = (\t0|r_reg\(20) & (\t0|r_reg[19]~65\ $ (GND))) # (!\t0|r_reg\(20) & (!\t0|r_reg[19]~65\ & VCC))
-- \t0|r_reg[20]~67\ = CARRY((\t0|r_reg\(20) & !\t0|r_reg[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(20),
	datad => VCC,
	cin => \t0|r_reg[19]~65\,
	combout => \t0|r_reg[20]~66_combout\,
	cout => \t0|r_reg[20]~67\);

-- Location: FF_X95_Y29_N15
\t0|r_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[20]~66_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(20));

-- Location: LCCOMB_X95_Y29_N16
\t0|r_reg[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[21]~68_combout\ = (\t0|r_reg\(21) & (!\t0|r_reg[20]~67\)) # (!\t0|r_reg\(21) & ((\t0|r_reg[20]~67\) # (GND)))
-- \t0|r_reg[21]~69\ = CARRY((!\t0|r_reg[20]~67\) # (!\t0|r_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(21),
	datad => VCC,
	cin => \t0|r_reg[20]~67\,
	combout => \t0|r_reg[21]~68_combout\,
	cout => \t0|r_reg[21]~69\);

-- Location: FF_X95_Y29_N17
\t0|r_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[21]~68_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(21));

-- Location: LCCOMB_X95_Y29_N18
\t0|r_reg[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[22]~70_combout\ = (\t0|r_reg\(22) & (\t0|r_reg[21]~69\ $ (GND))) # (!\t0|r_reg\(22) & (!\t0|r_reg[21]~69\ & VCC))
-- \t0|r_reg[22]~71\ = CARRY((\t0|r_reg\(22) & !\t0|r_reg[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(22),
	datad => VCC,
	cin => \t0|r_reg[21]~69\,
	combout => \t0|r_reg[22]~70_combout\,
	cout => \t0|r_reg[22]~71\);

-- Location: FF_X95_Y29_N19
\t0|r_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[22]~70_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(22));

-- Location: LCCOMB_X95_Y29_N20
\t0|r_reg[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[23]~72_combout\ = (\t0|r_reg\(23) & (!\t0|r_reg[22]~71\)) # (!\t0|r_reg\(23) & ((\t0|r_reg[22]~71\) # (GND)))
-- \t0|r_reg[23]~73\ = CARRY((!\t0|r_reg[22]~71\) # (!\t0|r_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(23),
	datad => VCC,
	cin => \t0|r_reg[22]~71\,
	combout => \t0|r_reg[23]~72_combout\,
	cout => \t0|r_reg[23]~73\);

-- Location: FF_X95_Y29_N21
\t0|r_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[23]~72_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(23));

-- Location: LCCOMB_X95_Y29_N30
\t0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~7_combout\ = (((!\t0|r_reg\(21)) # (!\t0|r_reg\(20))) # (!\t0|r_reg\(22))) # (!\t0|r_reg\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(23),
	datab => \t0|r_reg\(22),
	datac => \t0|r_reg\(20),
	datad => \t0|r_reg\(21),
	combout => \t0|Equal0~7_combout\);

-- Location: LCCOMB_X95_Y30_N4
\t0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~2_combout\ = (\t0|r_reg\(10)) # ((\t0|r_reg\(9)) # ((\t0|r_reg\(8)) # (\t0|r_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(10),
	datab => \t0|r_reg\(9),
	datac => \t0|r_reg\(8),
	datad => \t0|r_reg\(11),
	combout => \t0|Equal0~2_combout\);

-- Location: LCCOMB_X95_Y30_N0
\t0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~0_combout\ = (((!\t0|r_reg\(0)) # (!\t0|r_reg\(1))) # (!\t0|r_reg\(3))) # (!\t0|r_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(2),
	datab => \t0|r_reg\(3),
	datac => \t0|r_reg\(1),
	datad => \t0|r_reg\(0),
	combout => \t0|Equal0~0_combout\);

-- Location: LCCOMB_X95_Y29_N26
\t0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~3_combout\ = (((!\t0|r_reg\(14)) # (!\t0|r_reg\(15))) # (!\t0|r_reg\(13))) # (!\t0|r_reg\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(12),
	datab => \t0|r_reg\(13),
	datac => \t0|r_reg\(15),
	datad => \t0|r_reg\(14),
	combout => \t0|Equal0~3_combout\);

-- Location: LCCOMB_X95_Y30_N2
\t0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~1_combout\ = (((\t0|r_reg\(7)) # (!\t0|r_reg\(4))) # (!\t0|r_reg\(6))) # (!\t0|r_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(5),
	datab => \t0|r_reg\(6),
	datac => \t0|r_reg\(4),
	datad => \t0|r_reg\(7),
	combout => \t0|Equal0~1_combout\);

-- Location: LCCOMB_X94_Y30_N24
\t0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~4_combout\ = (\t0|Equal0~2_combout\) # ((\t0|Equal0~0_combout\) # ((\t0|Equal0~3_combout\) # (\t0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~2_combout\,
	datab => \t0|Equal0~0_combout\,
	datac => \t0|Equal0~3_combout\,
	datad => \t0|Equal0~1_combout\,
	combout => \t0|Equal0~4_combout\);

-- Location: LCCOMB_X95_Y29_N28
\t0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~5_combout\ = (\t0|r_reg\(18)) # (((\t0|r_reg\(16)) # (!\t0|r_reg\(17))) # (!\t0|r_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(18),
	datab => \t0|r_reg\(19),
	datac => \t0|r_reg\(17),
	datad => \t0|r_reg\(16),
	combout => \t0|Equal0~5_combout\);

-- Location: LCCOMB_X95_Y29_N22
\t0|r_reg[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[24]~74_combout\ = (\t0|r_reg\(24) & (\t0|r_reg[23]~73\ $ (GND))) # (!\t0|r_reg\(24) & (!\t0|r_reg[23]~73\ & VCC))
-- \t0|r_reg[24]~75\ = CARRY((\t0|r_reg\(24) & !\t0|r_reg[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|r_reg\(24),
	datad => VCC,
	cin => \t0|r_reg[23]~73\,
	combout => \t0|r_reg[24]~74_combout\,
	cout => \t0|r_reg[24]~75\);

-- Location: FF_X95_Y29_N23
\t0|r_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[24]~74_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(24));

-- Location: LCCOMB_X95_Y29_N24
\t0|r_reg[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|r_reg[25]~76_combout\ = \t0|r_reg[24]~75\ $ (\t0|r_reg\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t0|r_reg\(25),
	cin => \t0|r_reg[24]~75\,
	combout => \t0|r_reg[25]~76_combout\);

-- Location: FF_X95_Y29_N25
\t0|r_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|r_reg[25]~76_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|r_reg\(25));

-- Location: LCCOMB_X94_Y29_N0
\t0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~6_combout\ = (\t0|r_reg\(24)) # (!\t0|r_reg\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|r_reg\(25),
	datad => \t0|r_reg\(24),
	combout => \t0|Equal0~6_combout\);

-- Location: LCCOMB_X94_Y30_N4
\t0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~8_combout\ = (\t0|Equal0~7_combout\) # ((\t0|Equal0~4_combout\) # ((\t0|Equal0~5_combout\) # (\t0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~7_combout\,
	datab => \t0|Equal0~4_combout\,
	datac => \t0|Equal0~5_combout\,
	datad => \t0|Equal0~6_combout\,
	combout => \t0|Equal0~8_combout\);

-- Location: LCCOMB_X94_Y32_N20
\inst_fsm|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add3~0_combout\ = \t0|m_reg\(0) $ (VCC)
-- \inst_fsm|Add3~1\ = CARRY(\t0|m_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg\(0),
	datad => VCC,
	combout => \inst_fsm|Add3~0_combout\,
	cout => \inst_fsm|Add3~1\);

-- Location: LCCOMB_X94_Y32_N22
\inst_fsm|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add3~2_combout\ = (\t0|m_reg\(1) & (\inst_fsm|Add3~1\ & VCC)) # (!\t0|m_reg\(1) & (!\inst_fsm|Add3~1\))
-- \inst_fsm|Add3~3\ = CARRY((!\t0|m_reg\(1) & !\inst_fsm|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg\(1),
	datad => VCC,
	cin => \inst_fsm|Add3~1\,
	combout => \inst_fsm|Add3~2_combout\,
	cout => \inst_fsm|Add3~3\);

-- Location: LCCOMB_X95_Y32_N12
\t0|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~6_combout\ = \t0|s_reg\(0) $ (\t0|s_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(0),
	datad => \t0|s_reg\(1),
	combout => \t0|Add1~6_combout\);

-- Location: LCCOMB_X98_Y32_N8
\t0|s_reg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_reg[0]~2_combout\ = (\inst_fsm|state_reg.idle~q\ & ((\inst_fsm|state_reg.decrementa_m~q\) # (\inst_fsm|state_reg.incrementa_m~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.decrementa_m~q\,
	datab => \inst_fsm|state_reg.incrementa_m~q\,
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|s_reg[0]~2_combout\);

-- Location: LCCOMB_X94_Y32_N24
\inst_fsm|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add3~4_combout\ = (\t0|m_reg\(2) & ((GND) # (!\inst_fsm|Add3~3\))) # (!\t0|m_reg\(2) & (\inst_fsm|Add3~3\ $ (GND)))
-- \inst_fsm|Add3~5\ = CARRY((\t0|m_reg\(2)) # (!\inst_fsm|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(2),
	datad => VCC,
	cin => \inst_fsm|Add3~3\,
	combout => \inst_fsm|Add3~4_combout\,
	cout => \inst_fsm|Add3~5\);

-- Location: LCCOMB_X94_Y32_N26
\inst_fsm|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add3~6_combout\ = (\t0|m_reg\(3) & (\inst_fsm|Add3~5\ & VCC)) # (!\t0|m_reg\(3) & (!\inst_fsm|Add3~5\))
-- \inst_fsm|Add3~7\ = CARRY((!\t0|m_reg\(3) & !\inst_fsm|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(3),
	datad => VCC,
	cin => \inst_fsm|Add3~5\,
	combout => \inst_fsm|Add3~6_combout\,
	cout => \inst_fsm|Add3~7\);

-- Location: LCCOMB_X94_Y32_N28
\inst_fsm|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add3~8_combout\ = (\t0|m_reg\(4) & ((GND) # (!\inst_fsm|Add3~7\))) # (!\t0|m_reg\(4) & (\inst_fsm|Add3~7\ $ (GND)))
-- \inst_fsm|Add3~9\ = CARRY((\t0|m_reg\(4)) # (!\inst_fsm|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg\(4),
	datad => VCC,
	cin => \inst_fsm|Add3~7\,
	combout => \inst_fsm|Add3~8_combout\,
	cout => \inst_fsm|Add3~9\);

-- Location: LCCOMB_X96_Y32_N8
\t0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~2_combout\ = \t0|s_reg\(4) $ (\t0|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t0|s_reg\(4),
	datad => \t0|Add1~0_combout\,
	combout => \t0|Add1~2_combout\);

-- Location: LCCOMB_X95_Y32_N30
\t0|s_next[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[4]~3_combout\ = (\t0|s_reg[0]~2_combout\ & ((\inst_fsm|Add3~8_combout\) # ((!\t0|s_reg[0]~10_combout\)))) # (!\t0|s_reg[0]~2_combout\ & (((\t0|Add1~2_combout\ & \t0|s_reg[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg[0]~2_combout\,
	datab => \inst_fsm|Add3~8_combout\,
	datac => \t0|Add1~2_combout\,
	datad => \t0|s_reg[0]~10_combout\,
	combout => \t0|s_next[4]~3_combout\);

-- Location: LCCOMB_X96_Y32_N6
\inst_fsm|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add2~1_combout\ = (\t0|m_reg\(0) & (\t0|m_reg\(3) & (\t0|m_reg\(2) & \t0|m_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(0),
	datab => \t0|m_reg\(3),
	datac => \t0|m_reg\(2),
	datad => \t0|m_reg\(1),
	combout => \inst_fsm|Add2~1_combout\);

-- Location: LCCOMB_X96_Y32_N10
\t0|s_next[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[4]~4_combout\ = (\t0|s_reg[0]~3_combout\ & (((\t0|s_next[4]~3_combout\)))) # (!\t0|s_reg[0]~3_combout\ & (\t0|m_reg\(4) $ (((\t0|s_next[4]~3_combout\ & \inst_fsm|Add2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg[0]~3_combout\,
	datab => \t0|m_reg\(4),
	datac => \t0|s_next[4]~3_combout\,
	datad => \inst_fsm|Add2~1_combout\,
	combout => \t0|s_next[4]~4_combout\);

-- Location: LCCOMB_X95_Y32_N2
\t0|s_next[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[4]~5_combout\ = (\t0|s_next[4]~4_combout\ & !\t0|s_reg[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t0|s_next[4]~4_combout\,
	datad => \t0|s_reg[0]~6_combout\,
	combout => \t0|s_next[4]~5_combout\);

-- Location: FF_X95_Y32_N3
\t0|s_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_next[4]~5_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_reg\(4));

-- Location: LCCOMB_X97_Y33_N18
\t0|m_reg[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_reg[4]~6_combout\ = (\t0|s_reg\(2)) # ((\t0|s_reg\(1)) # ((\t0|s_reg\(3)) # (\t0|s_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(2),
	datab => \t0|s_reg\(1),
	datac => \t0|s_reg\(3),
	datad => \t0|s_reg\(4),
	combout => \t0|m_reg[4]~6_combout\);

-- Location: LCCOMB_X96_Y33_N4
\t0|m_reg[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_reg[4]~5_combout\ = ((\t0|s_reg\(5)) # ((!\inst_fsm|state_reg.decrementa_s~q\ & !\inst_fsm|state_reg.incrementa_s~q\))) # (!\inst_fsm|state_reg.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.decrementa_s~q\,
	datab => \inst_fsm|state_reg.idle~q\,
	datac => \inst_fsm|state_reg.incrementa_s~q\,
	datad => \t0|s_reg\(5),
	combout => \t0|m_reg[4]~5_combout\);

-- Location: LCCOMB_X96_Y33_N0
\t0|m_reg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_reg[4]~3_combout\ = (\inst_fsm|state_reg.decrementa_s~q\) # (!\inst_fsm|state_reg.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_fsm|state_reg.decrementa_s~q\,
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|m_reg[4]~3_combout\);

-- Location: LCCOMB_X96_Y33_N30
\t0|m_reg[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_reg[4]~7_combout\ = (\t0|m_reg[4]~3_combout\ & ((\t0|m_reg[4]~6_combout\) # ((\t0|m_reg[4]~5_combout\) # (\t0|s_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg[4]~6_combout\,
	datab => \t0|m_reg[4]~5_combout\,
	datac => \t0|s_reg\(0),
	datad => \t0|m_reg[4]~3_combout\,
	combout => \t0|m_reg[4]~7_combout\);

-- Location: LCCOMB_X95_Y33_N20
\inst_fsm|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add2~4_combout\ = \t0|m_reg\(2) $ (((\t0|m_reg\(1) & \t0|m_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(1),
	datab => \t0|m_reg\(0),
	datac => \t0|m_reg\(2),
	combout => \inst_fsm|Add2~4_combout\);

-- Location: LCCOMB_X97_Y33_N4
\inst_fsm|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add5~0_combout\ = \t0|s_reg\(0) $ (VCC)
-- \inst_fsm|Add5~1\ = CARRY(\t0|s_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_reg\(0),
	datad => VCC,
	combout => \inst_fsm|Add5~0_combout\,
	cout => \inst_fsm|Add5~1\);

-- Location: LCCOMB_X97_Y33_N6
\inst_fsm|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add5~2_combout\ = (\t0|s_reg\(1) & (\inst_fsm|Add5~1\ & VCC)) # (!\t0|s_reg\(1) & (!\inst_fsm|Add5~1\))
-- \inst_fsm|Add5~3\ = CARRY((!\t0|s_reg\(1) & !\inst_fsm|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_reg\(1),
	datad => VCC,
	cin => \inst_fsm|Add5~1\,
	combout => \inst_fsm|Add5~2_combout\,
	cout => \inst_fsm|Add5~3\);

-- Location: LCCOMB_X97_Y33_N8
\inst_fsm|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add5~4_combout\ = (\t0|s_reg\(2) & ((GND) # (!\inst_fsm|Add5~3\))) # (!\t0|s_reg\(2) & (\inst_fsm|Add5~3\ $ (GND)))
-- \inst_fsm|Add5~5\ = CARRY((\t0|s_reg\(2)) # (!\inst_fsm|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(2),
	datad => VCC,
	cin => \inst_fsm|Add5~3\,
	combout => \inst_fsm|Add5~4_combout\,
	cout => \inst_fsm|Add5~5\);

-- Location: LCCOMB_X97_Y33_N24
\t0|m_reg[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_reg[4]~2_combout\ = (\inst_fsm|state_reg.idle~q\ & ((\inst_fsm|state_reg.incrementa_s~q\) # (\inst_fsm|state_reg.decrementa_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_fsm|state_reg.incrementa_s~q\,
	datac => \inst_fsm|state_reg.idle~q\,
	datad => \inst_fsm|state_reg.decrementa_s~q\,
	combout => \t0|m_reg[4]~2_combout\);

-- Location: LCCOMB_X96_Y33_N12
\t0|m_next[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[2]~6_combout\ = (\t0|m_reg[4]~7_combout\ & ((\t0|m_reg[4]~2_combout\ & ((\inst_fsm|Add5~4_combout\))) # (!\t0|m_reg[4]~2_combout\ & (\inst_fsm|Add2~4_combout\)))) # (!\t0|m_reg[4]~7_combout\ & (((!\t0|m_reg[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg[4]~7_combout\,
	datab => \inst_fsm|Add2~4_combout\,
	datac => \inst_fsm|Add5~4_combout\,
	datad => \t0|m_reg[4]~2_combout\,
	combout => \t0|m_next[2]~6_combout\);

-- Location: LCCOMB_X96_Y33_N6
\t0|m_next[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[2]~7_combout\ = \t0|s_reg\(2) $ (((!\t0|m_next[2]~6_combout\ & (\t0|s_reg\(0) & \t0|s_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_next[2]~6_combout\,
	datab => \t0|s_reg\(0),
	datac => \t0|s_reg\(2),
	datad => \t0|s_reg\(1),
	combout => \t0|m_next[2]~7_combout\);

-- Location: LCCOMB_X95_Y33_N4
\t0|m_next[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[2]~8_combout\ = (!\t0|m_reg[4]~4_combout\ & ((\t0|m_reg[4]~3_combout\ & ((\t0|m_next[2]~6_combout\))) # (!\t0|m_reg[4]~3_combout\ & (\t0|m_next[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_next[2]~7_combout\,
	datab => \t0|m_next[2]~6_combout\,
	datac => \t0|m_reg[4]~3_combout\,
	datad => \t0|m_reg[4]~4_combout\,
	combout => \t0|m_next[2]~8_combout\);

-- Location: LCCOMB_X95_Y32_N28
\t0|m_reg[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_reg[4]~0_combout\ = (\t0|s_reg\(0) & (\t0|s_reg\(1) & (\t0|s_reg\(5) & \t0|s_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(0),
	datab => \t0|s_reg\(1),
	datac => \t0|s_reg\(5),
	datad => \t0|s_reg\(4),
	combout => \t0|m_reg[4]~0_combout\);

-- Location: LCCOMB_X95_Y33_N14
\t0|m_reg[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_reg[4]~1_combout\ = (\t0|s_reg\(3) & (\t0|m_reg[4]~0_combout\ & !\t0|s_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(3),
	datab => \t0|m_reg[4]~0_combout\,
	datac => \t0|s_reg\(2),
	combout => \t0|m_reg[4]~1_combout\);

-- Location: LCCOMB_X95_Y33_N16
\t0|m_reg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_reg[4]~8_combout\ = (\inst_fsm|state_reg.idle~q\) # ((!\t0|Equal0~8_combout\ & \t0|m_reg[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~8_combout\,
	datac => \t0|m_reg[4]~1_combout\,
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|m_reg[4]~8_combout\);

-- Location: FF_X95_Y33_N5
\t0|m_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|m_next[2]~8_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|m_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|m_reg\(2));

-- Location: LCCOMB_X94_Y32_N6
\inst_fsm|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add2~7_combout\ = (\t0|m_reg\(2) & (\t0|m_reg\(0) & \t0|m_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(2),
	datab => \t0|m_reg\(0),
	datac => \t0|m_reg\(1),
	combout => \inst_fsm|Add2~7_combout\);

-- Location: LCCOMB_X95_Y32_N18
\t0|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~5_combout\ = \t0|s_reg\(3) $ (((\t0|s_reg\(1) & (\t0|s_reg\(2) & \t0|s_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(3),
	datab => \t0|s_reg\(1),
	datac => \t0|s_reg\(2),
	datad => \t0|s_reg\(0),
	combout => \t0|Add1~5_combout\);

-- Location: LCCOMB_X94_Y32_N16
\t0|s_next[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[3]~9_combout\ = (\t0|s_reg[0]~2_combout\ & ((\inst_fsm|Add3~6_combout\) # ((!\t0|s_reg[0]~10_combout\)))) # (!\t0|s_reg[0]~2_combout\ & (((\t0|Add1~5_combout\ & \t0|s_reg[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add3~6_combout\,
	datab => \t0|Add1~5_combout\,
	datac => \t0|s_reg[0]~2_combout\,
	datad => \t0|s_reg[0]~10_combout\,
	combout => \t0|s_next[3]~9_combout\);

-- Location: LCCOMB_X94_Y32_N2
\t0|s_next[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[3]~10_combout\ = (\t0|s_reg[0]~3_combout\ & (((\t0|s_next[3]~9_combout\)))) # (!\t0|s_reg[0]~3_combout\ & (\t0|m_reg\(3) $ (((\inst_fsm|Add2~7_combout\ & \t0|s_next[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add2~7_combout\,
	datab => \t0|s_next[3]~9_combout\,
	datac => \t0|s_reg[0]~3_combout\,
	datad => \t0|m_reg\(3),
	combout => \t0|s_next[3]~10_combout\);

-- Location: LCCOMB_X95_Y32_N6
\t0|s_next[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[3]~11_combout\ = (\t0|s_next[3]~10_combout\ & !\t0|s_reg[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_next[3]~10_combout\,
	datad => \t0|s_reg[0]~6_combout\,
	combout => \t0|s_next[3]~11_combout\);

-- Location: FF_X95_Y32_N7
\t0|s_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_next[3]~11_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_reg\(3));

-- Location: LCCOMB_X95_Y32_N22
\t0|m_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_en~0_combout\ = (((\t0|s_reg\(2)) # (\t0|Equal0~7_combout\)) # (!\t0|m_reg[4]~0_combout\)) # (!\t0|s_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(3),
	datab => \t0|m_reg[4]~0_combout\,
	datac => \t0|s_reg\(2),
	datad => \t0|Equal0~7_combout\,
	combout => \t0|m_en~0_combout\);

-- Location: LCCOMB_X94_Y30_N26
\t0|m_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_en~combout\ = (\t0|Equal0~6_combout\) # ((\t0|Equal0~4_combout\) # ((\t0|Equal0~5_combout\) # (\t0|m_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~6_combout\,
	datab => \t0|Equal0~4_combout\,
	datac => \t0|Equal0~5_combout\,
	datad => \t0|m_en~0_combout\,
	combout => \t0|m_en~combout\);

-- Location: LCCOMB_X96_Y32_N16
\inst_fsm|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add2~0_combout\ = (\t0|m_reg\(1) & \t0|m_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(1),
	datac => \t0|m_reg\(0),
	combout => \inst_fsm|Add2~0_combout\);

-- Location: LCCOMB_X96_Y32_N26
\t0|s_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_reg[0]~4_combout\ = (!\t0|s_reg[0]~3_combout\ & (\t0|m_reg\(4) & (\t0|m_reg\(2) & \inst_fsm|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg[0]~3_combout\,
	datab => \t0|m_reg\(4),
	datac => \t0|m_reg\(2),
	datad => \inst_fsm|Add2~0_combout\,
	combout => \t0|s_reg[0]~4_combout\);

-- Location: LCCOMB_X96_Y32_N30
\inst_fsm|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add2~2_combout\ = \t0|m_reg\(5) $ (((\t0|m_reg\(4) & \inst_fsm|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(5),
	datab => \t0|m_reg\(4),
	datad => \inst_fsm|Add2~1_combout\,
	combout => \inst_fsm|Add2~2_combout\);

-- Location: LCCOMB_X97_Y33_N10
\inst_fsm|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add5~6_combout\ = (\t0|s_reg\(3) & (\inst_fsm|Add5~5\ & VCC)) # (!\t0|s_reg\(3) & (!\inst_fsm|Add5~5\))
-- \inst_fsm|Add5~7\ = CARRY((!\t0|s_reg\(3) & !\inst_fsm|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(3),
	datad => VCC,
	cin => \inst_fsm|Add5~5\,
	combout => \inst_fsm|Add5~6_combout\,
	cout => \inst_fsm|Add5~7\);

-- Location: LCCOMB_X97_Y33_N12
\inst_fsm|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add5~8_combout\ = (\t0|s_reg\(4) & ((GND) # (!\inst_fsm|Add5~7\))) # (!\t0|s_reg\(4) & (\inst_fsm|Add5~7\ $ (GND)))
-- \inst_fsm|Add5~9\ = CARRY((\t0|s_reg\(4)) # (!\inst_fsm|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_reg\(4),
	datad => VCC,
	cin => \inst_fsm|Add5~7\,
	combout => \inst_fsm|Add5~8_combout\,
	cout => \inst_fsm|Add5~9\);

-- Location: LCCOMB_X97_Y33_N14
\inst_fsm|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add5~10_combout\ = \inst_fsm|Add5~9\ $ (!\t0|s_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t0|s_reg\(5),
	cin => \inst_fsm|Add5~9\,
	combout => \inst_fsm|Add5~10_combout\);

-- Location: LCCOMB_X96_Y33_N16
\t0|m_next[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[5]~0_combout\ = (\t0|m_reg[4]~7_combout\ & ((\t0|m_reg[4]~2_combout\ & ((\inst_fsm|Add5~10_combout\))) # (!\t0|m_reg[4]~2_combout\ & (\inst_fsm|Add2~2_combout\)))) # (!\t0|m_reg[4]~7_combout\ & (((\t0|m_reg[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg[4]~7_combout\,
	datab => \inst_fsm|Add2~2_combout\,
	datac => \inst_fsm|Add5~10_combout\,
	datad => \t0|m_reg[4]~2_combout\,
	combout => \t0|m_next[5]~0_combout\);

-- Location: LCCOMB_X95_Y33_N6
\t0|m_next[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[5]~1_combout\ = (\t0|m_next[5]~0_combout\ & ((\t0|m_reg[4]~3_combout\) # ((\t0|Add1~0_combout\ & \t0|s_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add1~0_combout\,
	datab => \t0|m_reg[4]~3_combout\,
	datac => \t0|s_reg\(4),
	datad => \t0|m_next[5]~0_combout\,
	combout => \t0|m_next[5]~1_combout\);

-- Location: LCCOMB_X95_Y33_N24
\t0|m_next[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[5]~2_combout\ = (!\t0|m_reg[4]~4_combout\ & (\t0|m_next[5]~1_combout\ $ (((\t0|s_reg\(5) & !\t0|m_reg[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(5),
	datab => \t0|m_reg[4]~4_combout\,
	datac => \t0|m_reg[4]~3_combout\,
	datad => \t0|m_next[5]~1_combout\,
	combout => \t0|m_next[5]~2_combout\);

-- Location: FF_X95_Y33_N25
\t0|m_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|m_next[5]~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|m_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|m_reg\(5));

-- Location: LCCOMB_X96_Y32_N4
\t0|s_reg[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_reg[0]~5_combout\ = (\t0|s_reg[0]~4_combout\ & (!\t0|m_reg\(3) & (\t0|s_reg[0]~2_combout\ & !\t0|m_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg[0]~4_combout\,
	datab => \t0|m_reg\(3),
	datac => \t0|s_reg[0]~2_combout\,
	datad => \t0|m_reg\(5),
	combout => \t0|s_reg[0]~5_combout\);

-- Location: LCCOMB_X95_Y32_N0
\t0|s_reg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_reg[0]~6_combout\ = (\t0|s_reg[0]~5_combout\) # ((!\t0|m_en~combout\ & (\t0|s_reg[0]~3_combout\ & !\t0|s_reg[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_en~combout\,
	datab => \t0|s_reg[0]~5_combout\,
	datac => \t0|s_reg[0]~3_combout\,
	datad => \t0|s_reg[0]~2_combout\,
	combout => \t0|s_reg[0]~6_combout\);

-- Location: LCCOMB_X96_Y32_N14
\t0|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~4_combout\ = \t0|s_reg\(2) $ (((\t0|s_reg\(0) & \t0|s_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(0),
	datab => \t0|s_reg\(2),
	datad => \t0|s_reg\(1),
	combout => \t0|Add1~4_combout\);

-- Location: LCCOMB_X95_Y32_N16
\t0|s_next[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[2]~6_combout\ = (\t0|s_reg[0]~2_combout\ & (\inst_fsm|Add3~4_combout\ & ((\t0|s_reg[0]~10_combout\)))) # (!\t0|s_reg[0]~2_combout\ & (((\t0|Add1~4_combout\) # (!\t0|s_reg[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg[0]~2_combout\,
	datab => \inst_fsm|Add3~4_combout\,
	datac => \t0|Add1~4_combout\,
	datad => \t0|s_reg[0]~10_combout\,
	combout => \t0|s_next[2]~6_combout\);

-- Location: LCCOMB_X96_Y32_N24
\t0|s_next[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[2]~7_combout\ = (\t0|s_reg[0]~3_combout\ & (\t0|s_next[2]~6_combout\)) # (!\t0|s_reg[0]~3_combout\ & (\t0|m_reg\(2) $ (((!\t0|s_next[2]~6_combout\ & \inst_fsm|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_next[2]~6_combout\,
	datab => \inst_fsm|Add2~0_combout\,
	datac => \t0|m_reg\(2),
	datad => \t0|s_reg[0]~3_combout\,
	combout => \t0|s_next[2]~7_combout\);

-- Location: LCCOMB_X95_Y32_N4
\t0|s_next[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[2]~8_combout\ = (!\t0|s_reg[0]~6_combout\ & \t0|s_next[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_reg[0]~6_combout\,
	datad => \t0|s_next[2]~7_combout\,
	combout => \t0|s_next[2]~8_combout\);

-- Location: FF_X95_Y32_N5
\t0|s_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_next[2]~8_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_reg\(2));

-- Location: LCCOMB_X96_Y33_N10
\t0|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~3_combout\ = (\t0|s_reg\(2) & (\t0|s_reg\(0) & \t0|s_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(2),
	datac => \t0|s_reg\(0),
	datad => \t0|s_reg\(1),
	combout => \t0|Add1~3_combout\);

-- Location: LCCOMB_X95_Y33_N8
\inst_fsm|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add2~6_combout\ = \t0|m_reg\(3) $ (((\t0|m_reg\(2) & (\t0|m_reg\(0) & \t0|m_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(3),
	datab => \t0|m_reg\(2),
	datac => \t0|m_reg\(0),
	datad => \t0|m_reg\(1),
	combout => \inst_fsm|Add2~6_combout\);

-- Location: LCCOMB_X96_Y33_N20
\t0|m_next[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[3]~15_combout\ = (\t0|m_reg[4]~7_combout\ & ((\t0|m_reg[4]~2_combout\ & ((\inst_fsm|Add5~6_combout\))) # (!\t0|m_reg[4]~2_combout\ & (\inst_fsm|Add2~6_combout\)))) # (!\t0|m_reg[4]~7_combout\ & (((\t0|m_reg[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add2~6_combout\,
	datab => \inst_fsm|Add5~6_combout\,
	datac => \t0|m_reg[4]~7_combout\,
	datad => \t0|m_reg[4]~2_combout\,
	combout => \t0|m_next[3]~15_combout\);

-- Location: LCCOMB_X96_Y33_N22
\t0|m_next[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[3]~16_combout\ = (\t0|m_reg[4]~3_combout\ & (((\t0|m_next[3]~15_combout\)))) # (!\t0|m_reg[4]~3_combout\ & (\t0|s_reg\(3) $ (((\t0|Add1~3_combout\ & \t0|m_next[3]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add1~3_combout\,
	datab => \t0|m_next[3]~15_combout\,
	datac => \t0|s_reg\(3),
	datad => \t0|m_reg[4]~3_combout\,
	combout => \t0|m_next[3]~16_combout\);

-- Location: LCCOMB_X95_Y33_N26
\t0|m_next[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[3]~17_combout\ = (!\t0|m_reg[4]~4_combout\ & \t0|m_next[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg[4]~4_combout\,
	datad => \t0|m_next[3]~16_combout\,
	combout => \t0|m_next[3]~17_combout\);

-- Location: FF_X95_Y33_N27
\t0|m_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|m_next[3]~17_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|m_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|m_reg\(3));

-- Location: LCCOMB_X94_Y32_N10
\t0|s_reg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_reg[0]~7_combout\ = (\t0|m_reg\(2)) # ((\t0|m_reg\(0)) # ((\t0|m_reg\(1)) # (\t0|m_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(2),
	datab => \t0|m_reg\(0),
	datac => \t0|m_reg\(1),
	datad => \t0|m_reg\(4),
	combout => \t0|s_reg[0]~7_combout\);

-- Location: LCCOMB_X94_Y32_N4
\t0|s_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_reg[0]~8_combout\ = (\t0|m_reg\(3)) # ((\t0|s_reg[0]~7_combout\) # ((\t0|m_reg\(5)) # (!\t0|s_reg[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(3),
	datab => \t0|s_reg[0]~7_combout\,
	datac => \t0|s_reg[0]~2_combout\,
	datad => \t0|m_reg\(5),
	combout => \t0|s_reg[0]~8_combout\);

-- Location: LCCOMB_X94_Y32_N18
\t0|s_reg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_reg[0]~10_combout\ = (\t0|s_reg[0]~8_combout\ & ((\inst_fsm|state_reg.decrementa_m~q\) # (!\inst_fsm|state_reg.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.decrementa_m~q\,
	datac => \t0|s_reg[0]~8_combout\,
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|s_reg[0]~10_combout\);

-- Location: LCCOMB_X94_Y32_N12
\t0|s_next[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[1]~12_combout\ = (\t0|s_reg[0]~2_combout\ & ((\inst_fsm|Add3~2_combout\) # ((!\t0|s_reg[0]~10_combout\)))) # (!\t0|s_reg[0]~2_combout\ & (((\t0|Add1~6_combout\ & \t0|s_reg[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add3~2_combout\,
	datab => \t0|Add1~6_combout\,
	datac => \t0|s_reg[0]~2_combout\,
	datad => \t0|s_reg[0]~10_combout\,
	combout => \t0|s_next[1]~12_combout\);

-- Location: LCCOMB_X95_Y32_N14
\t0|s_next[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[1]~13_combout\ = (\t0|s_reg[0]~3_combout\ & (\t0|s_next[1]~12_combout\)) # (!\t0|s_reg[0]~3_combout\ & (\t0|m_reg\(1) $ (((\t0|s_next[1]~12_combout\ & \t0|m_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_next[1]~12_combout\,
	datab => \t0|s_reg[0]~3_combout\,
	datac => \t0|m_reg\(1),
	datad => \t0|m_reg\(0),
	combout => \t0|s_next[1]~13_combout\);

-- Location: LCCOMB_X95_Y32_N24
\t0|s_next[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[1]~14_combout\ = (\t0|s_next[1]~13_combout\ & !\t0|s_reg[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t0|s_next[1]~13_combout\,
	datad => \t0|s_reg[0]~6_combout\,
	combout => \t0|s_next[1]~14_combout\);

-- Location: FF_X95_Y32_N25
\t0|s_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_next[1]~14_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_reg\(1));

-- Location: LCCOMB_X95_Y33_N22
\inst_fsm|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add2~5_combout\ = \t0|m_reg\(0) $ (\t0|m_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg\(0),
	datac => \t0|m_reg\(1),
	combout => \inst_fsm|Add2~5_combout\);

-- Location: LCCOMB_X96_Y33_N24
\t0|m_next[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[1]~9_combout\ = (\t0|m_reg[4]~7_combout\ & ((\t0|m_reg[4]~2_combout\ & (\inst_fsm|Add5~2_combout\)) # (!\t0|m_reg[4]~2_combout\ & ((\inst_fsm|Add2~5_combout\))))) # (!\t0|m_reg[4]~7_combout\ & (((\t0|m_reg[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add5~2_combout\,
	datab => \inst_fsm|Add2~5_combout\,
	datac => \t0|m_reg[4]~7_combout\,
	datad => \t0|m_reg[4]~2_combout\,
	combout => \t0|m_next[1]~9_combout\);

-- Location: LCCOMB_X96_Y33_N18
\t0|m_next[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[1]~10_combout\ = (\t0|m_reg[4]~3_combout\ & (((\t0|m_next[1]~9_combout\)))) # (!\t0|m_reg[4]~3_combout\ & (\t0|s_reg\(1) $ (((\t0|m_next[1]~9_combout\ & \t0|s_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(1),
	datab => \t0|m_next[1]~9_combout\,
	datac => \t0|s_reg\(0),
	datad => \t0|m_reg[4]~3_combout\,
	combout => \t0|m_next[1]~10_combout\);

-- Location: LCCOMB_X95_Y33_N30
\t0|m_next[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[1]~11_combout\ = (!\t0|m_reg[4]~4_combout\ & \t0|m_next[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg[4]~4_combout\,
	datad => \t0|m_next[1]~10_combout\,
	combout => \t0|m_next[1]~11_combout\);

-- Location: FF_X95_Y33_N31
\t0|m_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|m_next[1]~11_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|m_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|m_reg\(1));

-- Location: LCCOMB_X95_Y33_N2
\t0|h_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_en~1_combout\ = ((\t0|m_reg\(2)) # ((\t0|s_reg\(2)) # (!\t0|m_reg\(3)))) # (!\t0|m_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(1),
	datab => \t0|m_reg\(2),
	datac => \t0|m_reg\(3),
	datad => \t0|s_reg\(2),
	combout => \t0|h_en~1_combout\);

-- Location: LCCOMB_X95_Y33_N0
\t0|h_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_en~0_combout\ = (((!\t0|m_reg\(4)) # (!\t0|s_reg\(3))) # (!\t0|m_reg\(0))) # (!\t0|m_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(5),
	datab => \t0|m_reg\(0),
	datac => \t0|s_reg\(3),
	datad => \t0|m_reg\(4),
	combout => \t0|h_en~0_combout\);

-- Location: LCCOMB_X95_Y33_N12
\t0|h_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_en~combout\ = (\t0|Equal0~8_combout\) # ((\t0|h_en~1_combout\) # ((\t0|h_en~0_combout\) # (!\t0|m_reg[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~8_combout\,
	datab => \t0|h_en~1_combout\,
	datac => \t0|h_en~0_combout\,
	datad => \t0|m_reg[4]~0_combout\,
	combout => \t0|h_en~combout\);

-- Location: LCCOMB_X96_Y33_N26
\t0|m_reg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_reg[4]~4_combout\ = (\t0|m_reg[4]~3_combout\ & (!\t0|h_en~combout\ & ((!\t0|m_reg[4]~2_combout\)))) # (!\t0|m_reg[4]~3_combout\ & (((\t0|m_reg[4]~1_combout\ & \t0|m_reg[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|h_en~combout\,
	datab => \t0|m_reg[4]~3_combout\,
	datac => \t0|m_reg[4]~1_combout\,
	datad => \t0|m_reg[4]~2_combout\,
	combout => \t0|m_reg[4]~4_combout\);

-- Location: LCCOMB_X96_Y33_N28
\t0|m_next[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[0]~12_combout\ = (\t0|m_reg[4]~7_combout\ & ((\t0|m_reg[4]~2_combout\ & ((\inst_fsm|Add5~0_combout\))) # (!\t0|m_reg[4]~2_combout\ & (!\t0|m_reg\(0))))) # (!\t0|m_reg[4]~7_combout\ & (\t0|m_reg[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg[4]~7_combout\,
	datab => \t0|m_reg[4]~2_combout\,
	datac => \t0|m_reg\(0),
	datad => \inst_fsm|Add5~0_combout\,
	combout => \t0|m_next[0]~12_combout\);

-- Location: LCCOMB_X96_Y33_N14
\t0|m_next[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[0]~13_combout\ = \t0|m_next[0]~12_combout\ $ (((!\inst_fsm|state_reg.decrementa_s~q\ & (\t0|s_reg\(0) & \inst_fsm|state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.decrementa_s~q\,
	datab => \t0|m_next[0]~12_combout\,
	datac => \t0|s_reg\(0),
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|m_next[0]~13_combout\);

-- Location: LCCOMB_X96_Y33_N8
\t0|m_next[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[0]~14_combout\ = (!\t0|m_reg[4]~4_combout\ & \t0|m_next[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg[4]~4_combout\,
	datac => \t0|m_next[0]~13_combout\,
	combout => \t0|m_next[0]~14_combout\);

-- Location: FF_X95_Y33_N9
\t0|m_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \t0|m_next[0]~14_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \t0|m_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|m_reg\(0));

-- Location: LCCOMB_X94_Y32_N14
\t0|s_next[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[0]~15_combout\ = (\t0|s_reg[0]~2_combout\ & (((\inst_fsm|Add3~0_combout\) # (!\t0|s_reg[0]~10_combout\)))) # (!\t0|s_reg[0]~2_combout\ & (!\t0|s_reg\(0) & ((\t0|s_reg[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(0),
	datab => \inst_fsm|Add3~0_combout\,
	datac => \t0|s_reg[0]~2_combout\,
	datad => \t0|s_reg[0]~10_combout\,
	combout => \t0|s_next[0]~15_combout\);

-- Location: LCCOMB_X94_Y32_N8
\t0|s_next[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[0]~16_combout\ = \t0|s_next[0]~15_combout\ $ (((!\inst_fsm|state_reg.decrementa_m~q\ & (\t0|m_reg\(0) & \inst_fsm|state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.decrementa_m~q\,
	datab => \t0|m_reg\(0),
	datac => \t0|s_next[0]~15_combout\,
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|s_next[0]~16_combout\);

-- Location: LCCOMB_X95_Y32_N10
\t0|s_next[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[0]~17_combout\ = (\t0|s_next[0]~16_combout\ & !\t0|s_reg[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_next[0]~16_combout\,
	datad => \t0|s_reg[0]~6_combout\,
	combout => \t0|s_next[0]~17_combout\);

-- Location: FF_X95_Y32_N11
\t0|s_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_next[0]~17_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_reg\(0));

-- Location: LCCOMB_X96_Y32_N0
\t0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~0_combout\ = (\t0|s_reg\(0) & (\t0|s_reg\(3) & (\t0|s_reg\(2) & \t0|s_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(0),
	datab => \t0|s_reg\(3),
	datac => \t0|s_reg\(2),
	datad => \t0|s_reg\(1),
	combout => \t0|Add1~0_combout\);

-- Location: LCCOMB_X96_Y32_N12
\inst_fsm|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add2~3_combout\ = \t0|m_reg\(4) $ (\inst_fsm|Add2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg\(4),
	datad => \inst_fsm|Add2~1_combout\,
	combout => \inst_fsm|Add2~3_combout\);

-- Location: LCCOMB_X96_Y33_N2
\t0|m_next[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[4]~3_combout\ = (\t0|m_reg[4]~7_combout\ & ((\t0|m_reg[4]~2_combout\ & ((\inst_fsm|Add5~8_combout\))) # (!\t0|m_reg[4]~2_combout\ & (\inst_fsm|Add2~3_combout\)))) # (!\t0|m_reg[4]~7_combout\ & (((\t0|m_reg[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add2~3_combout\,
	datab => \inst_fsm|Add5~8_combout\,
	datac => \t0|m_reg[4]~7_combout\,
	datad => \t0|m_reg[4]~2_combout\,
	combout => \t0|m_next[4]~3_combout\);

-- Location: LCCOMB_X95_Y33_N10
\t0|m_next[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[4]~4_combout\ = (\t0|m_reg[4]~3_combout\ & (((\t0|m_next[4]~3_combout\)))) # (!\t0|m_reg[4]~3_combout\ & (\t0|s_reg\(4) $ (((\t0|Add1~0_combout\ & \t0|m_next[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Add1~0_combout\,
	datab => \t0|m_reg[4]~3_combout\,
	datac => \t0|s_reg\(4),
	datad => \t0|m_next[4]~3_combout\,
	combout => \t0|m_next[4]~4_combout\);

-- Location: LCCOMB_X95_Y33_N18
\t0|m_next[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|m_next[4]~5_combout\ = (\t0|m_next[4]~4_combout\ & !\t0|m_reg[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_next[4]~4_combout\,
	datad => \t0|m_reg[4]~4_combout\,
	combout => \t0|m_next[4]~5_combout\);

-- Location: FF_X95_Y33_N19
\t0|m_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|m_next[4]~5_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|m_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|m_reg\(4));

-- Location: LCCOMB_X94_Y32_N30
\inst_fsm|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add3~10_combout\ = \inst_fsm|Add3~9\ $ (!\t0|m_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t0|m_reg\(5),
	cin => \inst_fsm|Add3~9\,
	combout => \inst_fsm|Add3~10_combout\);

-- Location: LCCOMB_X96_Y32_N18
\t0|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~1_combout\ = \t0|s_reg\(5) $ (((\t0|s_reg\(4) & \t0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(5),
	datab => \t0|s_reg\(4),
	datad => \t0|Add1~0_combout\,
	combout => \t0|Add1~1_combout\);

-- Location: LCCOMB_X95_Y32_N26
\t0|s_next[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[5]~0_combout\ = (\t0|s_reg[0]~2_combout\ & ((\inst_fsm|Add3~10_combout\) # ((!\t0|s_reg[0]~10_combout\)))) # (!\t0|s_reg[0]~2_combout\ & (((\t0|Add1~1_combout\ & \t0|s_reg[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg[0]~2_combout\,
	datab => \inst_fsm|Add3~10_combout\,
	datac => \t0|Add1~1_combout\,
	datad => \t0|s_reg[0]~10_combout\,
	combout => \t0|s_next[5]~0_combout\);

-- Location: LCCOMB_X96_Y32_N20
\t0|s_next[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[5]~1_combout\ = (\t0|s_next[5]~0_combout\ & ((\t0|s_reg[0]~3_combout\) # ((\t0|m_reg\(4) & \inst_fsm|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg[0]~3_combout\,
	datab => \t0|m_reg\(4),
	datac => \t0|s_next[5]~0_combout\,
	datad => \inst_fsm|Add2~1_combout\,
	combout => \t0|s_next[5]~1_combout\);

-- Location: LCCOMB_X95_Y32_N8
\t0|s_next[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|s_next[5]~2_combout\ = (!\t0|s_reg[0]~6_combout\ & (\t0|s_next[5]~1_combout\ $ (((!\t0|s_reg[0]~3_combout\ & \t0|m_reg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_next[5]~1_combout\,
	datab => \t0|s_reg[0]~3_combout\,
	datac => \t0|m_reg\(5),
	datad => \t0|s_reg[0]~6_combout\,
	combout => \t0|s_next[5]~2_combout\);

-- Location: FF_X95_Y32_N9
\t0|s_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|s_next[5]~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \t0|s_reg[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|s_reg\(5));

-- Location: LCCOMB_X97_Y32_N22
\bin2bcd_sec|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector7~0_combout\ = (\t0|s_reg\(0) & !\bin2bcd_min|state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(0),
	datac => \bin2bcd_min|state.shift~q\,
	combout => \bin2bcd_sec|Selector7~0_combout\);

-- Location: FF_X97_Y32_N23
\bin2bcd_sec|binary[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector7~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|binary\(0));

-- Location: LCCOMB_X97_Y32_N26
\bin2bcd_sec|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector6~0_combout\ = (\bin2bcd_min|state.shift~q\ & (\bin2bcd_sec|binary\(0))) # (!\bin2bcd_min|state.shift~q\ & ((\t0|s_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|binary\(0),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \t0|s_reg\(1),
	combout => \bin2bcd_sec|Selector6~0_combout\);

-- Location: FF_X97_Y32_N27
\bin2bcd_sec|binary[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector6~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|binary\(1));

-- Location: LCCOMB_X97_Y32_N30
\bin2bcd_sec|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector5~0_combout\ = (\bin2bcd_min|state.shift~q\ & (\bin2bcd_sec|binary\(1))) # (!\bin2bcd_min|state.shift~q\ & ((\t0|s_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|binary\(1),
	datab => \t0|s_reg\(2),
	datac => \bin2bcd_min|state.shift~q\,
	combout => \bin2bcd_sec|Selector5~0_combout\);

-- Location: FF_X97_Y32_N31
\bin2bcd_sec|binary[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|binary\(2));

-- Location: LCCOMB_X97_Y32_N10
\bin2bcd_sec|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector4~0_combout\ = (\bin2bcd_min|state.shift~q\ & ((\bin2bcd_sec|binary\(2)))) # (!\bin2bcd_min|state.shift~q\ & (\t0|s_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|state.shift~q\,
	datab => \t0|s_reg\(3),
	datac => \bin2bcd_sec|binary\(2),
	combout => \bin2bcd_sec|Selector4~0_combout\);

-- Location: FF_X97_Y32_N11
\bin2bcd_sec|binary[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector4~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|binary\(3));

-- Location: LCCOMB_X97_Y32_N6
\bin2bcd_sec|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector3~0_combout\ = (\bin2bcd_min|state.shift~q\ & ((\bin2bcd_sec|binary\(3)))) # (!\bin2bcd_min|state.shift~q\ & (\t0|s_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|s_reg\(4),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_sec|binary\(3),
	combout => \bin2bcd_sec|Selector3~0_combout\);

-- Location: FF_X97_Y32_N7
\bin2bcd_sec|binary[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector3~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|binary\(4));

-- Location: LCCOMB_X97_Y32_N18
\bin2bcd_sec|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector2~0_combout\ = (\bin2bcd_min|state.shift~q\ & ((\bin2bcd_sec|binary\(4)))) # (!\bin2bcd_min|state.shift~q\ & (\t0|s_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|s_reg\(5),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_sec|binary\(4),
	combout => \bin2bcd_sec|Selector2~0_combout\);

-- Location: FF_X97_Y32_N19
\bin2bcd_sec|binary[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector2~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|binary\(5));

-- Location: LCCOMB_X97_Y32_N8
\bin2bcd_sec|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector27~0_combout\ = (\bin2bcd_sec|binary[5]~0_combout\ & (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_sec|binary\(5))))) # (!\bin2bcd_sec|binary[5]~0_combout\ & ((\bin2bcd_sec|bcds\(0)) # ((\bin2bcd_min|Selector1~0_combout\ & 
-- \bin2bcd_sec|binary\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|binary[5]~0_combout\,
	datab => \bin2bcd_min|Selector1~0_combout\,
	datac => \bin2bcd_sec|bcds\(0),
	datad => \bin2bcd_sec|binary\(5),
	combout => \bin2bcd_sec|Selector27~0_combout\);

-- Location: FF_X97_Y32_N9
\bin2bcd_sec|bcds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector27~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds\(0));

-- Location: LCCOMB_X102_Y32_N14
\bin2bcd_sec|bcds_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|bcds_next~0_combout\ = (\bin2bcd_sec|bcds\(0) & (!\bin2bcd_sec|bcds\(3) & (!\bin2bcd_sec|bcds\(2)))) # (!\bin2bcd_sec|bcds\(0) & ((\bin2bcd_sec|bcds\(3)) # ((\bin2bcd_sec|bcds\(2) & \bin2bcd_sec|bcds\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|bcds\(0),
	datab => \bin2bcd_sec|bcds\(3),
	datac => \bin2bcd_sec|bcds\(2),
	datad => \bin2bcd_sec|bcds\(1),
	combout => \bin2bcd_sec|bcds_next~0_combout\);

-- Location: LCCOMB_X103_Y32_N28
\bin2bcd_sec|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector26~0_combout\ = (\bin2bcd_sec|binary[5]~0_combout\ & (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_sec|bcds_next~0_combout\)))) # (!\bin2bcd_sec|binary[5]~0_combout\ & ((\bin2bcd_sec|bcds\(1)) # ((\bin2bcd_min|Selector1~0_combout\ & 
-- \bin2bcd_sec|bcds_next~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|binary[5]~0_combout\,
	datab => \bin2bcd_min|Selector1~0_combout\,
	datac => \bin2bcd_sec|bcds\(1),
	datad => \bin2bcd_sec|bcds_next~0_combout\,
	combout => \bin2bcd_sec|Selector26~0_combout\);

-- Location: FF_X103_Y32_N29
\bin2bcd_sec|bcds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector26~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds\(1));

-- Location: LCCOMB_X102_Y32_N20
\bin2bcd_sec|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector24~0_combout\ = (\bin2bcd_sec|bcds\(2) & (!\bin2bcd_sec|bcds\(0) & ((!\bin2bcd_sec|bcds\(1))))) # (!\bin2bcd_sec|bcds\(2) & (\bin2bcd_sec|bcds\(3) & ((\bin2bcd_sec|bcds\(0)) # (\bin2bcd_sec|bcds\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|bcds\(0),
	datab => \bin2bcd_sec|bcds\(3),
	datac => \bin2bcd_sec|bcds\(2),
	datad => \bin2bcd_sec|bcds\(1),
	combout => \bin2bcd_sec|Selector24~0_combout\);

-- Location: LCCOMB_X102_Y32_N8
\bin2bcd_sec|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector24~1_combout\ = (\bin2bcd_sec|binary[5]~0_combout\ & (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_sec|Selector24~0_combout\)))) # (!\bin2bcd_sec|binary[5]~0_combout\ & ((\bin2bcd_sec|bcds\(3)) # ((\bin2bcd_min|Selector1~0_combout\ 
-- & \bin2bcd_sec|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|binary[5]~0_combout\,
	datab => \bin2bcd_min|Selector1~0_combout\,
	datac => \bin2bcd_sec|bcds\(3),
	datad => \bin2bcd_sec|Selector24~0_combout\,
	combout => \bin2bcd_sec|Selector24~1_combout\);

-- Location: FF_X102_Y32_N9
\bin2bcd_sec|bcds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector24~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds\(3));

-- Location: LCCOMB_X102_Y32_N16
\bin2bcd_sec|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector25~0_combout\ = (\bin2bcd_sec|bcds\(0) & (((\bin2bcd_sec|bcds\(1))))) # (!\bin2bcd_sec|bcds\(0) & ((\bin2bcd_sec|bcds\(3) & ((!\bin2bcd_sec|bcds\(1)))) # (!\bin2bcd_sec|bcds\(3) & (!\bin2bcd_sec|bcds\(2) & \bin2bcd_sec|bcds\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|bcds\(0),
	datab => \bin2bcd_sec|bcds\(3),
	datac => \bin2bcd_sec|bcds\(2),
	datad => \bin2bcd_sec|bcds\(1),
	combout => \bin2bcd_sec|Selector25~0_combout\);

-- Location: LCCOMB_X102_Y32_N30
\bin2bcd_sec|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector25~1_combout\ = (\bin2bcd_sec|binary[5]~0_combout\ & (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_sec|Selector25~0_combout\)))) # (!\bin2bcd_sec|binary[5]~0_combout\ & ((\bin2bcd_sec|bcds\(2)) # ((\bin2bcd_min|Selector1~0_combout\ 
-- & \bin2bcd_sec|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|binary[5]~0_combout\,
	datab => \bin2bcd_min|Selector1~0_combout\,
	datac => \bin2bcd_sec|bcds\(2),
	datad => \bin2bcd_sec|Selector25~0_combout\,
	combout => \bin2bcd_sec|Selector25~1_combout\);

-- Location: FF_X102_Y32_N31
\bin2bcd_sec|bcds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector25~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds\(2));

-- Location: FF_X102_Y32_N3
\bin2bcd_sec|bcds_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_sec|bcds\(2),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds_out_reg\(2));

-- Location: LCCOMB_X102_Y32_N2
\secU_blink[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \secU_blink[2]~2_combout\ = (\bin2bcd_sec|bcds_out_reg\(2)) # ((\blink1|blink~4_combout\ & ((\inst_fsm|state_reg.ajuste_s~q\) # (!\inst_fsm|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Selector7~2_combout\,
	datab => \blink1|blink~4_combout\,
	datac => \bin2bcd_sec|bcds_out_reg\(2),
	datad => \inst_fsm|state_reg.ajuste_s~q\,
	combout => \secU_blink[2]~2_combout\);

-- Location: FF_X102_Y32_N27
\bin2bcd_sec|bcds_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_sec|bcds\(1),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds_out_reg\(1));

-- Location: LCCOMB_X102_Y32_N26
\secU_blink[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \secU_blink[1]~1_combout\ = (\bin2bcd_sec|bcds_out_reg\(1)) # ((\blink1|blink~4_combout\ & ((\inst_fsm|state_reg.ajuste_s~q\) # (!\inst_fsm|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Selector7~2_combout\,
	datab => \blink1|blink~4_combout\,
	datac => \bin2bcd_sec|bcds_out_reg\(1),
	datad => \inst_fsm|state_reg.ajuste_s~q\,
	combout => \secU_blink[1]~1_combout\);

-- Location: FF_X102_Y32_N19
\bin2bcd_sec|bcds_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_sec|bcds\(3),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds_out_reg\(3));

-- Location: LCCOMB_X102_Y32_N18
\secU_blink[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \secU_blink[3]~3_combout\ = (\bin2bcd_sec|bcds_out_reg\(3)) # ((\blink1|blink~4_combout\ & ((\inst_fsm|state_reg.ajuste_s~q\) # (!\inst_fsm|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Selector7~2_combout\,
	datab => \blink1|blink~4_combout\,
	datac => \bin2bcd_sec|bcds_out_reg\(3),
	datad => \inst_fsm|state_reg.ajuste_s~q\,
	combout => \secU_blink[3]~3_combout\);

-- Location: FF_X102_Y32_N29
\bin2bcd_sec|bcds_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_sec|bcds\(0),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds_out_reg\(0));

-- Location: LCCOMB_X102_Y32_N28
\secU_blink[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \secU_blink[0]~0_combout\ = (\bin2bcd_sec|bcds_out_reg\(0)) # ((\blink1|blink~4_combout\ & ((\inst_fsm|state_reg.ajuste_s~q\) # (!\inst_fsm|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Selector7~2_combout\,
	datab => \blink1|blink~4_combout\,
	datac => \bin2bcd_sec|bcds_out_reg\(0),
	datad => \inst_fsm|state_reg.ajuste_s~q\,
	combout => \secU_blink[0]~0_combout\);

-- Location: LCCOMB_X101_Y32_N0
\bcd_secU|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secU|Mux6~0_combout\ = (\secU_blink[2]~2_combout\ & (((\secU_blink[3]~3_combout\) # (!\secU_blink[0]~0_combout\)))) # (!\secU_blink[2]~2_combout\ & ((\secU_blink[1]~1_combout\ & (\secU_blink[3]~3_combout\)) # (!\secU_blink[1]~1_combout\ & 
-- (!\secU_blink[3]~3_combout\ & \secU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secU_blink[2]~2_combout\,
	datab => \secU_blink[1]~1_combout\,
	datac => \secU_blink[3]~3_combout\,
	datad => \secU_blink[0]~0_combout\,
	combout => \bcd_secU|Mux6~0_combout\);

-- Location: LCCOMB_X102_Y32_N0
\bcd_secU|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secU|Mux5~0_combout\ = (\secU_blink[3]~3_combout\ & ((\secU_blink[1]~1_combout\) # ((\secU_blink[2]~2_combout\)))) # (!\secU_blink[3]~3_combout\ & (\secU_blink[2]~2_combout\ & (\secU_blink[1]~1_combout\ $ (\secU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secU_blink[1]~1_combout\,
	datab => \secU_blink[3]~3_combout\,
	datac => \secU_blink[2]~2_combout\,
	datad => \secU_blink[0]~0_combout\,
	combout => \bcd_secU|Mux5~0_combout\);

-- Location: LCCOMB_X101_Y32_N18
\bcd_secU|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secU|Mux4~0_combout\ = (\secU_blink[2]~2_combout\ & (((\secU_blink[3]~3_combout\)))) # (!\secU_blink[2]~2_combout\ & (\secU_blink[1]~1_combout\ & ((\secU_blink[3]~3_combout\) # (!\secU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secU_blink[2]~2_combout\,
	datab => \secU_blink[1]~1_combout\,
	datac => \secU_blink[3]~3_combout\,
	datad => \secU_blink[0]~0_combout\,
	combout => \bcd_secU|Mux4~0_combout\);

-- Location: LCCOMB_X102_Y32_N6
\bcd_secU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secU|Mux3~0_combout\ = (\secU_blink[2]~2_combout\ & ((\secU_blink[3]~3_combout\) # (\secU_blink[1]~1_combout\ $ (!\secU_blink[0]~0_combout\)))) # (!\secU_blink[2]~2_combout\ & ((\secU_blink[1]~1_combout\ & (\secU_blink[3]~3_combout\)) # 
-- (!\secU_blink[1]~1_combout\ & ((\secU_blink[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secU_blink[1]~1_combout\,
	datab => \secU_blink[3]~3_combout\,
	datac => \secU_blink[2]~2_combout\,
	datad => \secU_blink[0]~0_combout\,
	combout => \bcd_secU|Mux3~0_combout\);

-- Location: LCCOMB_X102_Y32_N22
\bcd_secU|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secU|Mux2~0_combout\ = (\secU_blink[0]~0_combout\) # ((\secU_blink[1]~1_combout\ & (\secU_blink[3]~3_combout\)) # (!\secU_blink[1]~1_combout\ & ((\secU_blink[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secU_blink[1]~1_combout\,
	datab => \secU_blink[3]~3_combout\,
	datac => \secU_blink[2]~2_combout\,
	datad => \secU_blink[0]~0_combout\,
	combout => \bcd_secU|Mux2~0_combout\);

-- Location: LCCOMB_X102_Y32_N4
\bcd_secU|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secU|Mux1~0_combout\ = (\secU_blink[2]~2_combout\ & ((\secU_blink[3]~3_combout\) # ((\secU_blink[1]~1_combout\ & \secU_blink[0]~0_combout\)))) # (!\secU_blink[2]~2_combout\ & ((\secU_blink[1]~1_combout\) # ((!\secU_blink[3]~3_combout\ & 
-- \secU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secU_blink[1]~1_combout\,
	datab => \secU_blink[3]~3_combout\,
	datac => \secU_blink[2]~2_combout\,
	datad => \secU_blink[0]~0_combout\,
	combout => \bcd_secU|Mux1~0_combout\);

-- Location: LCCOMB_X102_Y32_N10
\bcd_secU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secU|Mux0~0_combout\ = (\secU_blink[1]~1_combout\ & (((!\secU_blink[0]~0_combout\) # (!\secU_blink[2]~2_combout\)))) # (!\secU_blink[1]~1_combout\ & ((\secU_blink[3]~3_combout\) # ((\secU_blink[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secU_blink[1]~1_combout\,
	datab => \secU_blink[3]~3_combout\,
	datac => \secU_blink[2]~2_combout\,
	datad => \secU_blink[0]~0_combout\,
	combout => \bcd_secU|Mux0~0_combout\);

-- Location: LCCOMB_X102_Y32_N12
\bin2bcd_sec|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector23~0_combout\ = \bin2bcd_sec|bcds\(3) $ (((\bin2bcd_sec|bcds\(2) & ((\bin2bcd_sec|bcds\(0)) # (\bin2bcd_sec|bcds\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|bcds\(0),
	datab => \bin2bcd_sec|bcds\(3),
	datac => \bin2bcd_sec|bcds\(2),
	datad => \bin2bcd_sec|bcds\(1),
	combout => \bin2bcd_sec|Selector23~0_combout\);

-- Location: LCCOMB_X103_Y32_N24
\bin2bcd_sec|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector23~1_combout\ = (\bin2bcd_sec|binary[5]~0_combout\ & (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_sec|Selector23~0_combout\)))) # (!\bin2bcd_sec|binary[5]~0_combout\ & ((\bin2bcd_sec|bcds\(4)) # ((\bin2bcd_min|Selector1~0_combout\ 
-- & \bin2bcd_sec|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|binary[5]~0_combout\,
	datab => \bin2bcd_min|Selector1~0_combout\,
	datac => \bin2bcd_sec|bcds\(4),
	datad => \bin2bcd_sec|Selector23~0_combout\,
	combout => \bin2bcd_sec|Selector23~1_combout\);

-- Location: FF_X103_Y32_N25
\bin2bcd_sec|bcds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector23~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds\(4));

-- Location: LCCOMB_X103_Y32_N20
\bin2bcd_sec|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector21~0_combout\ = (\bin2bcd_sec|bcds\(7) & ((\bin2bcd_sec|bcds\(5) $ (!\bin2bcd_sec|bcds\(4))))) # (!\bin2bcd_sec|bcds\(7) & (\bin2bcd_sec|bcds\(5) & ((\bin2bcd_sec|bcds\(4)) # (!\bin2bcd_sec|bcds\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|bcds\(7),
	datab => \bin2bcd_sec|bcds\(6),
	datac => \bin2bcd_sec|bcds\(5),
	datad => \bin2bcd_sec|bcds\(4),
	combout => \bin2bcd_sec|Selector21~0_combout\);

-- Location: LCCOMB_X103_Y32_N8
\bin2bcd_sec|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector21~1_combout\ = (\bin2bcd_sec|binary[5]~0_combout\ & (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_sec|Selector21~0_combout\)))) # (!\bin2bcd_sec|binary[5]~0_combout\ & ((\bin2bcd_sec|bcds\(6)) # ((\bin2bcd_min|Selector1~0_combout\ 
-- & \bin2bcd_sec|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|binary[5]~0_combout\,
	datab => \bin2bcd_min|Selector1~0_combout\,
	datac => \bin2bcd_sec|bcds\(6),
	datad => \bin2bcd_sec|Selector21~0_combout\,
	combout => \bin2bcd_sec|Selector21~1_combout\);

-- Location: FF_X103_Y32_N9
\bin2bcd_sec|bcds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector21~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds\(6));

-- Location: LCCOMB_X103_Y32_N16
\bin2bcd_sec|bcds_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|bcds_next~1_combout\ = (\bin2bcd_sec|bcds\(7) & (((!\bin2bcd_sec|bcds\(4))))) # (!\bin2bcd_sec|bcds\(7) & ((\bin2bcd_sec|bcds\(6) & (\bin2bcd_sec|bcds\(5) & !\bin2bcd_sec|bcds\(4))) # (!\bin2bcd_sec|bcds\(6) & ((\bin2bcd_sec|bcds\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|bcds\(7),
	datab => \bin2bcd_sec|bcds\(6),
	datac => \bin2bcd_sec|bcds\(5),
	datad => \bin2bcd_sec|bcds\(4),
	combout => \bin2bcd_sec|bcds_next~1_combout\);

-- Location: LCCOMB_X103_Y32_N22
\bin2bcd_sec|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector22~0_combout\ = (\bin2bcd_sec|binary[5]~0_combout\ & (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_sec|bcds_next~1_combout\)))) # (!\bin2bcd_sec|binary[5]~0_combout\ & ((\bin2bcd_sec|bcds\(5)) # ((\bin2bcd_min|Selector1~0_combout\ & 
-- \bin2bcd_sec|bcds_next~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|binary[5]~0_combout\,
	datab => \bin2bcd_min|Selector1~0_combout\,
	datac => \bin2bcd_sec|bcds\(5),
	datad => \bin2bcd_sec|bcds_next~1_combout\,
	combout => \bin2bcd_sec|Selector22~0_combout\);

-- Location: FF_X103_Y32_N23
\bin2bcd_sec|bcds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector22~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds\(5));

-- Location: LCCOMB_X103_Y32_N10
\bin2bcd_sec|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector20~0_combout\ = (!\bin2bcd_sec|bcds\(4) & !\bin2bcd_sec|bcds\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_sec|bcds\(4),
	datac => \bin2bcd_sec|bcds\(5),
	combout => \bin2bcd_sec|Selector20~0_combout\);

-- Location: LCCOMB_X103_Y32_N12
\bin2bcd_sec|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector20~1_combout\ = (\bin2bcd_sec|Selector20~0_combout\ & (!\bin2bcd_min|shift_counter\(0) & ((\bin2bcd_sec|Equal0~0_combout\)))) # (!\bin2bcd_sec|Selector20~0_combout\ & (((!\bin2bcd_min|shift_counter\(0) & 
-- \bin2bcd_sec|Equal0~0_combout\)) # (!\bin2bcd_sec|bcds\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|Selector20~0_combout\,
	datab => \bin2bcd_min|shift_counter\(0),
	datac => \bin2bcd_sec|bcds\(6),
	datad => \bin2bcd_sec|Equal0~0_combout\,
	combout => \bin2bcd_sec|Selector20~1_combout\);

-- Location: LCCOMB_X103_Y32_N18
\bin2bcd_sec|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector20~2_combout\ = (\bin2bcd_sec|bcds\(7) & ((\bin2bcd_min|state.done~q\) # ((\bin2bcd_min|state.shift~q\ & \bin2bcd_sec|Selector20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|bcds\(7),
	datab => \bin2bcd_min|state.done~q\,
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_sec|Selector20~1_combout\,
	combout => \bin2bcd_sec|Selector20~2_combout\);

-- Location: LCCOMB_X103_Y32_N26
\bin2bcd_sec|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_sec|Selector20~3_combout\ = (\bin2bcd_sec|Selector20~2_combout\) # ((\bin2bcd_sec|Selector20~0_combout\ & (\bin2bcd_sec|bcds\(6) & \bin2bcd_min|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_sec|Selector20~0_combout\,
	datab => \bin2bcd_sec|bcds\(6),
	datac => \bin2bcd_min|Selector1~0_combout\,
	datad => \bin2bcd_sec|Selector20~2_combout\,
	combout => \bin2bcd_sec|Selector20~3_combout\);

-- Location: FF_X103_Y32_N27
\bin2bcd_sec|bcds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_sec|Selector20~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds\(7));

-- Location: FF_X103_Y32_N31
\bin2bcd_sec|bcds_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_sec|bcds\(7),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds_out_reg\(7));

-- Location: LCCOMB_X103_Y32_N30
\secT_blink[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \secT_blink[3]~3_combout\ = (\bin2bcd_sec|bcds_out_reg\(7)) # ((\blink1|blink~4_combout\ & ((\inst_fsm|state_reg.ajuste_s~q\) # (!\inst_fsm|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Selector7~2_combout\,
	datab => \inst_fsm|state_reg.ajuste_s~q\,
	datac => \bin2bcd_sec|bcds_out_reg\(7),
	datad => \blink1|blink~4_combout\,
	combout => \secT_blink[3]~3_combout\);

-- Location: FF_X103_Y32_N5
\bin2bcd_sec|bcds_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_sec|bcds\(6),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds_out_reg\(6));

-- Location: LCCOMB_X103_Y32_N4
\secT_blink[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \secT_blink[2]~2_combout\ = (\bin2bcd_sec|bcds_out_reg\(6)) # ((\blink1|blink~4_combout\ & ((\inst_fsm|state_reg.ajuste_s~q\) # (!\inst_fsm|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Selector7~2_combout\,
	datab => \inst_fsm|state_reg.ajuste_s~q\,
	datac => \bin2bcd_sec|bcds_out_reg\(6),
	datad => \blink1|blink~4_combout\,
	combout => \secT_blink[2]~2_combout\);

-- Location: FF_X103_Y32_N7
\bin2bcd_sec|bcds_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_sec|bcds\(5),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds_out_reg\(5));

-- Location: LCCOMB_X103_Y32_N6
\secT_blink[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \secT_blink[1]~1_combout\ = (\bin2bcd_sec|bcds_out_reg\(5)) # ((\blink1|blink~4_combout\ & ((\inst_fsm|state_reg.ajuste_s~q\) # (!\inst_fsm|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Selector7~2_combout\,
	datab => \inst_fsm|state_reg.ajuste_s~q\,
	datac => \bin2bcd_sec|bcds_out_reg\(5),
	datad => \blink1|blink~4_combout\,
	combout => \secT_blink[1]~1_combout\);

-- Location: FF_X103_Y32_N15
\bin2bcd_sec|bcds_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_sec|bcds\(4),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_sec|bcds_out_reg\(4));

-- Location: LCCOMB_X103_Y32_N14
\secT_blink[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \secT_blink[0]~0_combout\ = (\bin2bcd_sec|bcds_out_reg\(4)) # ((\blink1|blink~4_combout\ & ((\inst_fsm|state_reg.ajuste_s~q\) # (!\inst_fsm|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Selector7~2_combout\,
	datab => \inst_fsm|state_reg.ajuste_s~q\,
	datac => \bin2bcd_sec|bcds_out_reg\(4),
	datad => \blink1|blink~4_combout\,
	combout => \secT_blink[0]~0_combout\);

-- Location: LCCOMB_X111_Y32_N24
\bcd_secT|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secT|Mux6~0_combout\ = (\secT_blink[3]~3_combout\ & ((\secT_blink[2]~2_combout\) # ((\secT_blink[1]~1_combout\)))) # (!\secT_blink[3]~3_combout\ & ((\secT_blink[2]~2_combout\ & ((!\secT_blink[0]~0_combout\))) # (!\secT_blink[2]~2_combout\ & 
-- (!\secT_blink[1]~1_combout\ & \secT_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secT_blink[3]~3_combout\,
	datab => \secT_blink[2]~2_combout\,
	datac => \secT_blink[1]~1_combout\,
	datad => \secT_blink[0]~0_combout\,
	combout => \bcd_secT|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y32_N26
\bcd_secT|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secT|Mux5~0_combout\ = (\secT_blink[3]~3_combout\ & ((\secT_blink[2]~2_combout\) # ((\secT_blink[1]~1_combout\)))) # (!\secT_blink[3]~3_combout\ & (\secT_blink[2]~2_combout\ & (\secT_blink[1]~1_combout\ $ (\secT_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secT_blink[3]~3_combout\,
	datab => \secT_blink[2]~2_combout\,
	datac => \secT_blink[1]~1_combout\,
	datad => \secT_blink[0]~0_combout\,
	combout => \bcd_secT|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y32_N12
\bcd_secT|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secT|Mux4~0_combout\ = (\secT_blink[2]~2_combout\ & (\secT_blink[3]~3_combout\)) # (!\secT_blink[2]~2_combout\ & (\secT_blink[1]~1_combout\ & ((\secT_blink[3]~3_combout\) # (!\secT_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secT_blink[3]~3_combout\,
	datab => \secT_blink[2]~2_combout\,
	datac => \secT_blink[1]~1_combout\,
	datad => \secT_blink[0]~0_combout\,
	combout => \bcd_secT|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y32_N14
\bcd_secT|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secT|Mux3~0_combout\ = (\secT_blink[2]~2_combout\ & ((\secT_blink[3]~3_combout\) # (\secT_blink[1]~1_combout\ $ (!\secT_blink[0]~0_combout\)))) # (!\secT_blink[2]~2_combout\ & ((\secT_blink[1]~1_combout\ & (\secT_blink[3]~3_combout\)) # 
-- (!\secT_blink[1]~1_combout\ & ((\secT_blink[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secT_blink[3]~3_combout\,
	datab => \secT_blink[2]~2_combout\,
	datac => \secT_blink[1]~1_combout\,
	datad => \secT_blink[0]~0_combout\,
	combout => \bcd_secT|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y32_N0
\bcd_secT|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secT|Mux2~0_combout\ = (\secT_blink[0]~0_combout\) # ((\secT_blink[1]~1_combout\ & (\secT_blink[3]~3_combout\)) # (!\secT_blink[1]~1_combout\ & ((\secT_blink[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secT_blink[3]~3_combout\,
	datab => \secT_blink[2]~2_combout\,
	datac => \secT_blink[1]~1_combout\,
	datad => \secT_blink[0]~0_combout\,
	combout => \bcd_secT|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y32_N10
\bcd_secT|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secT|Mux1~0_combout\ = (\secT_blink[2]~2_combout\ & ((\secT_blink[3]~3_combout\) # ((\secT_blink[1]~1_combout\ & \secT_blink[0]~0_combout\)))) # (!\secT_blink[2]~2_combout\ & ((\secT_blink[1]~1_combout\) # ((!\secT_blink[3]~3_combout\ & 
-- \secT_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secT_blink[3]~3_combout\,
	datab => \secT_blink[2]~2_combout\,
	datac => \secT_blink[1]~1_combout\,
	datad => \secT_blink[0]~0_combout\,
	combout => \bcd_secT|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y32_N4
\bcd_secT|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_secT|Mux0~0_combout\ = (\secT_blink[2]~2_combout\ & (((!\secT_blink[0]~0_combout\) # (!\secT_blink[1]~1_combout\)))) # (!\secT_blink[2]~2_combout\ & ((\secT_blink[3]~3_combout\) # ((\secT_blink[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \secT_blink[3]~3_combout\,
	datab => \secT_blink[2]~2_combout\,
	datac => \secT_blink[1]~1_combout\,
	datad => \secT_blink[0]~0_combout\,
	combout => \bcd_secT|Mux0~0_combout\);

-- Location: LCCOMB_X97_Y32_N16
\bin2bcd_min|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector7~0_combout\ = (!\bin2bcd_min|state.shift~q\ & \t0|m_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_min|state.shift~q\,
	datad => \t0|m_reg\(0),
	combout => \bin2bcd_min|Selector7~0_combout\);

-- Location: FF_X97_Y32_N17
\bin2bcd_min|binary[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector7~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|binary\(0));

-- Location: LCCOMB_X97_Y32_N28
\bin2bcd_min|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector6~0_combout\ = (\bin2bcd_min|state.shift~q\ & ((\bin2bcd_min|binary\(0)))) # (!\bin2bcd_min|state.shift~q\ & (\t0|m_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(1),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_min|binary\(0),
	combout => \bin2bcd_min|Selector6~0_combout\);

-- Location: FF_X97_Y32_N29
\bin2bcd_min|binary[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector6~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|binary\(1));

-- Location: LCCOMB_X97_Y32_N0
\bin2bcd_min|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector5~0_combout\ = (\bin2bcd_min|state.shift~q\ & ((\bin2bcd_min|binary\(1)))) # (!\bin2bcd_min|state.shift~q\ & (\t0|m_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg\(2),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_min|binary\(1),
	combout => \bin2bcd_min|Selector5~0_combout\);

-- Location: FF_X97_Y32_N1
\bin2bcd_min|binary[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|binary\(2));

-- Location: LCCOMB_X97_Y32_N20
\bin2bcd_min|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector4~0_combout\ = (\bin2bcd_min|state.shift~q\ & ((\bin2bcd_min|binary\(2)))) # (!\bin2bcd_min|state.shift~q\ & (\t0|m_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg\(3),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_min|binary\(2),
	combout => \bin2bcd_min|Selector4~0_combout\);

-- Location: FF_X97_Y32_N21
\bin2bcd_min|binary[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector4~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|binary\(3));

-- Location: LCCOMB_X97_Y32_N24
\bin2bcd_min|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector3~0_combout\ = (\bin2bcd_min|state.shift~q\ & ((\bin2bcd_min|binary\(3)))) # (!\bin2bcd_min|state.shift~q\ & (\t0|m_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg\(4),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_min|binary\(3),
	combout => \bin2bcd_min|Selector3~0_combout\);

-- Location: FF_X97_Y32_N25
\bin2bcd_min|binary[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector3~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|binary\(4));

-- Location: LCCOMB_X97_Y32_N4
\bin2bcd_min|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector2~0_combout\ = (\bin2bcd_min|state.shift~q\ & ((\bin2bcd_min|binary\(4)))) # (!\bin2bcd_min|state.shift~q\ & (\t0|m_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|m_reg\(5),
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_min|binary\(4),
	combout => \bin2bcd_min|Selector2~0_combout\);

-- Location: FF_X97_Y32_N5
\bin2bcd_min|binary[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector2~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_sec|binary[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|binary\(5));

-- Location: LCCOMB_X106_Y29_N8
\bin2bcd_min|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector27~0_combout\ = (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_min|binary\(5)) # ((!\bin2bcd_sec|binary[5]~0_combout\ & \bin2bcd_min|bcds\(0))))) # (!\bin2bcd_min|Selector1~0_combout\ & (!\bin2bcd_sec|binary[5]~0_combout\ & 
-- (\bin2bcd_min|bcds\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|Selector1~0_combout\,
	datab => \bin2bcd_sec|binary[5]~0_combout\,
	datac => \bin2bcd_min|bcds\(0),
	datad => \bin2bcd_min|binary\(5),
	combout => \bin2bcd_min|Selector27~0_combout\);

-- Location: FF_X106_Y29_N9
\bin2bcd_min|bcds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector27~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds\(0));

-- Location: LCCOMB_X106_Y29_N16
\bin2bcd_min|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector24~0_combout\ = (\bin2bcd_min|bcds\(2) & (!\bin2bcd_min|bcds\(0) & ((!\bin2bcd_min|bcds\(1))))) # (!\bin2bcd_min|bcds\(2) & (\bin2bcd_min|bcds\(3) & ((\bin2bcd_min|bcds\(0)) # (\bin2bcd_min|bcds\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(2),
	datab => \bin2bcd_min|bcds\(0),
	datac => \bin2bcd_min|bcds\(3),
	datad => \bin2bcd_min|bcds\(1),
	combout => \bin2bcd_min|Selector24~0_combout\);

-- Location: LCCOMB_X106_Y29_N14
\bin2bcd_min|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector24~1_combout\ = (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_min|Selector24~0_combout\) # ((!\bin2bcd_sec|binary[5]~0_combout\ & \bin2bcd_min|bcds\(3))))) # (!\bin2bcd_min|Selector1~0_combout\ & (!\bin2bcd_sec|binary[5]~0_combout\ 
-- & (\bin2bcd_min|bcds\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|Selector1~0_combout\,
	datab => \bin2bcd_sec|binary[5]~0_combout\,
	datac => \bin2bcd_min|bcds\(3),
	datad => \bin2bcd_min|Selector24~0_combout\,
	combout => \bin2bcd_min|Selector24~1_combout\);

-- Location: FF_X106_Y29_N15
\bin2bcd_min|bcds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector24~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds\(3));

-- Location: LCCOMB_X106_Y29_N24
\bin2bcd_min|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector25~0_combout\ = (\bin2bcd_min|bcds\(0) & (((\bin2bcd_min|bcds\(1))))) # (!\bin2bcd_min|bcds\(0) & ((\bin2bcd_min|bcds\(3) & ((!\bin2bcd_min|bcds\(1)))) # (!\bin2bcd_min|bcds\(3) & (!\bin2bcd_min|bcds\(2) & \bin2bcd_min|bcds\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(2),
	datab => \bin2bcd_min|bcds\(0),
	datac => \bin2bcd_min|bcds\(3),
	datad => \bin2bcd_min|bcds\(1),
	combout => \bin2bcd_min|Selector25~0_combout\);

-- Location: LCCOMB_X106_Y29_N12
\bin2bcd_min|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector25~1_combout\ = (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_min|Selector25~0_combout\) # ((!\bin2bcd_sec|binary[5]~0_combout\ & \bin2bcd_min|bcds\(2))))) # (!\bin2bcd_min|Selector1~0_combout\ & (!\bin2bcd_sec|binary[5]~0_combout\ 
-- & (\bin2bcd_min|bcds\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|Selector1~0_combout\,
	datab => \bin2bcd_sec|binary[5]~0_combout\,
	datac => \bin2bcd_min|bcds\(2),
	datad => \bin2bcd_min|Selector25~0_combout\,
	combout => \bin2bcd_min|Selector25~1_combout\);

-- Location: FF_X106_Y29_N13
\bin2bcd_min|bcds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector25~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds\(2));

-- Location: LCCOMB_X106_Y29_N28
\bin2bcd_min|bcds_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|bcds_next~0_combout\ = (\bin2bcd_min|bcds\(2) & (!\bin2bcd_min|bcds\(0) & ((\bin2bcd_min|bcds\(3)) # (\bin2bcd_min|bcds\(1))))) # (!\bin2bcd_min|bcds\(2) & (\bin2bcd_min|bcds\(0) $ ((\bin2bcd_min|bcds\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(2),
	datab => \bin2bcd_min|bcds\(0),
	datac => \bin2bcd_min|bcds\(3),
	datad => \bin2bcd_min|bcds\(1),
	combout => \bin2bcd_min|bcds_next~0_combout\);

-- Location: LCCOMB_X106_Y29_N26
\bin2bcd_min|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector26~0_combout\ = (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_min|bcds_next~0_combout\) # ((!\bin2bcd_sec|binary[5]~0_combout\ & \bin2bcd_min|bcds\(1))))) # (!\bin2bcd_min|Selector1~0_combout\ & (!\bin2bcd_sec|binary[5]~0_combout\ & 
-- (\bin2bcd_min|bcds\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|Selector1~0_combout\,
	datab => \bin2bcd_sec|binary[5]~0_combout\,
	datac => \bin2bcd_min|bcds\(1),
	datad => \bin2bcd_min|bcds_next~0_combout\,
	combout => \bin2bcd_min|Selector26~0_combout\);

-- Location: FF_X106_Y29_N27
\bin2bcd_min|bcds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector26~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds\(1));

-- Location: FF_X106_Y29_N1
\bin2bcd_min|bcds_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_min|bcds\(1),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds_out_reg\(1));

-- Location: LCCOMB_X106_Y29_N0
\minU_blink[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minU_blink[1]~1_combout\ = (\bin2bcd_min|bcds_out_reg\(1)) # ((!\fsm_any_blink~1_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~1_combout\,
	datac => \bin2bcd_min|bcds_out_reg\(1),
	datad => \blink1|blink~4_combout\,
	combout => \minU_blink[1]~1_combout\);

-- Location: FF_X106_Y29_N31
\bin2bcd_min|bcds_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_min|bcds\(3),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds_out_reg\(3));

-- Location: LCCOMB_X106_Y29_N30
\minU_blink[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minU_blink[3]~3_combout\ = (\bin2bcd_min|bcds_out_reg\(3)) # ((!\fsm_any_blink~1_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~1_combout\,
	datac => \bin2bcd_min|bcds_out_reg\(3),
	datad => \blink1|blink~4_combout\,
	combout => \minU_blink[3]~3_combout\);

-- Location: FF_X106_Y29_N7
\bin2bcd_min|bcds_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_min|bcds\(2),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds_out_reg\(2));

-- Location: LCCOMB_X106_Y29_N6
\minU_blink[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minU_blink[2]~2_combout\ = (\bin2bcd_min|bcds_out_reg\(2)) # ((!\fsm_any_blink~1_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~1_combout\,
	datac => \bin2bcd_min|bcds_out_reg\(2),
	datad => \blink1|blink~4_combout\,
	combout => \minU_blink[2]~2_combout\);

-- Location: FF_X106_Y29_N3
\bin2bcd_min|bcds_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_min|bcds\(0),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds_out_reg\(0));

-- Location: LCCOMB_X106_Y29_N2
\minU_blink[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minU_blink[0]~0_combout\ = (\bin2bcd_min|bcds_out_reg\(0)) # ((!\fsm_any_blink~1_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~1_combout\,
	datac => \bin2bcd_min|bcds_out_reg\(0),
	datad => \blink1|blink~4_combout\,
	combout => \minU_blink[0]~0_combout\);

-- Location: LCCOMB_X114_Y19_N8
\bcd_minU|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minU|Mux6~0_combout\ = (\minU_blink[1]~1_combout\ & ((\minU_blink[3]~3_combout\) # ((\minU_blink[2]~2_combout\ & !\minU_blink[0]~0_combout\)))) # (!\minU_blink[1]~1_combout\ & (\minU_blink[2]~2_combout\ $ (((!\minU_blink[3]~3_combout\ & 
-- \minU_blink[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minU_blink[1]~1_combout\,
	datab => \minU_blink[3]~3_combout\,
	datac => \minU_blink[2]~2_combout\,
	datad => \minU_blink[0]~0_combout\,
	combout => \bcd_minU|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y19_N18
\bcd_minU|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minU|Mux5~0_combout\ = (\minU_blink[3]~3_combout\ & ((\minU_blink[1]~1_combout\) # ((\minU_blink[2]~2_combout\)))) # (!\minU_blink[3]~3_combout\ & (\minU_blink[2]~2_combout\ & (\minU_blink[1]~1_combout\ $ (\minU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minU_blink[1]~1_combout\,
	datab => \minU_blink[3]~3_combout\,
	datac => \minU_blink[2]~2_combout\,
	datad => \minU_blink[0]~0_combout\,
	combout => \bcd_minU|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y19_N4
\bcd_minU|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minU|Mux4~0_combout\ = (\minU_blink[2]~2_combout\ & (((\minU_blink[3]~3_combout\)))) # (!\minU_blink[2]~2_combout\ & (\minU_blink[1]~1_combout\ & ((\minU_blink[3]~3_combout\) # (!\minU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minU_blink[1]~1_combout\,
	datab => \minU_blink[3]~3_combout\,
	datac => \minU_blink[2]~2_combout\,
	datad => \minU_blink[0]~0_combout\,
	combout => \bcd_minU|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\bcd_minU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minU|Mux3~0_combout\ = (\minU_blink[2]~2_combout\ & ((\minU_blink[3]~3_combout\) # (\minU_blink[1]~1_combout\ $ (!\minU_blink[0]~0_combout\)))) # (!\minU_blink[2]~2_combout\ & ((\minU_blink[1]~1_combout\ & (\minU_blink[3]~3_combout\)) # 
-- (!\minU_blink[1]~1_combout\ & ((\minU_blink[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minU_blink[1]~1_combout\,
	datab => \minU_blink[3]~3_combout\,
	datac => \minU_blink[2]~2_combout\,
	datad => \minU_blink[0]~0_combout\,
	combout => \bcd_minU|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y19_N24
\bcd_minU|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minU|Mux2~0_combout\ = (\minU_blink[0]~0_combout\) # ((\minU_blink[1]~1_combout\ & (\minU_blink[3]~3_combout\)) # (!\minU_blink[1]~1_combout\ & ((\minU_blink[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minU_blink[1]~1_combout\,
	datab => \minU_blink[3]~3_combout\,
	datac => \minU_blink[2]~2_combout\,
	datad => \minU_blink[0]~0_combout\,
	combout => \bcd_minU|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y19_N10
\bcd_minU|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minU|Mux1~0_combout\ = (\minU_blink[2]~2_combout\ & ((\minU_blink[3]~3_combout\) # ((\minU_blink[1]~1_combout\ & \minU_blink[0]~0_combout\)))) # (!\minU_blink[2]~2_combout\ & ((\minU_blink[1]~1_combout\) # ((!\minU_blink[3]~3_combout\ & 
-- \minU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minU_blink[1]~1_combout\,
	datab => \minU_blink[3]~3_combout\,
	datac => \minU_blink[2]~2_combout\,
	datad => \minU_blink[0]~0_combout\,
	combout => \bcd_minU|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y19_N28
\bcd_minU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minU|Mux0~0_combout\ = (\minU_blink[1]~1_combout\ & (((!\minU_blink[0]~0_combout\) # (!\minU_blink[2]~2_combout\)))) # (!\minU_blink[1]~1_combout\ & ((\minU_blink[3]~3_combout\) # ((\minU_blink[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minU_blink[1]~1_combout\,
	datab => \minU_blink[3]~3_combout\,
	datac => \minU_blink[2]~2_combout\,
	datad => \minU_blink[0]~0_combout\,
	combout => \bcd_minU|Mux0~0_combout\);

-- Location: LCCOMB_X106_Y29_N10
\bin2bcd_min|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector23~0_combout\ = \bin2bcd_min|bcds\(3) $ (((\bin2bcd_min|bcds\(2) & ((\bin2bcd_min|bcds\(0)) # (\bin2bcd_min|bcds\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(2),
	datab => \bin2bcd_min|bcds\(0),
	datac => \bin2bcd_min|bcds\(3),
	datad => \bin2bcd_min|bcds\(1),
	combout => \bin2bcd_min|Selector23~0_combout\);

-- Location: LCCOMB_X106_Y29_N4
\bin2bcd_min|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector23~1_combout\ = (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_min|Selector23~0_combout\) # ((!\bin2bcd_sec|binary[5]~0_combout\ & \bin2bcd_min|bcds\(4))))) # (!\bin2bcd_min|Selector1~0_combout\ & (!\bin2bcd_sec|binary[5]~0_combout\ 
-- & (\bin2bcd_min|bcds\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|Selector1~0_combout\,
	datab => \bin2bcd_sec|binary[5]~0_combout\,
	datac => \bin2bcd_min|bcds\(4),
	datad => \bin2bcd_min|Selector23~0_combout\,
	combout => \bin2bcd_min|Selector23~1_combout\);

-- Location: FF_X106_Y29_N5
\bin2bcd_min|bcds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector23~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds\(4));

-- Location: LCCOMB_X105_Y29_N14
\bin2bcd_min|bcds_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|bcds_next~1_combout\ = (\bin2bcd_min|bcds\(7) & (((!\bin2bcd_min|bcds\(4))))) # (!\bin2bcd_min|bcds\(7) & ((\bin2bcd_min|bcds\(6) & (\bin2bcd_min|bcds\(5) & !\bin2bcd_min|bcds\(4))) # (!\bin2bcd_min|bcds\(6) & ((\bin2bcd_min|bcds\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(7),
	datab => \bin2bcd_min|bcds\(5),
	datac => \bin2bcd_min|bcds\(6),
	datad => \bin2bcd_min|bcds\(4),
	combout => \bin2bcd_min|bcds_next~1_combout\);

-- Location: LCCOMB_X105_Y29_N10
\bin2bcd_min|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector22~0_combout\ = (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_min|bcds_next~1_combout\) # ((!\bin2bcd_sec|binary[5]~0_combout\ & \bin2bcd_min|bcds\(5))))) # (!\bin2bcd_min|Selector1~0_combout\ & (!\bin2bcd_sec|binary[5]~0_combout\ & 
-- (\bin2bcd_min|bcds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|Selector1~0_combout\,
	datab => \bin2bcd_sec|binary[5]~0_combout\,
	datac => \bin2bcd_min|bcds\(5),
	datad => \bin2bcd_min|bcds_next~1_combout\,
	combout => \bin2bcd_min|Selector22~0_combout\);

-- Location: FF_X105_Y29_N11
\bin2bcd_min|bcds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector22~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds\(5));

-- Location: LCCOMB_X106_Y29_N18
\bin2bcd_min|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector20~0_combout\ = (!\bin2bcd_min|bcds\(5) & !\bin2bcd_min|bcds\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(5),
	datac => \bin2bcd_min|bcds\(4),
	combout => \bin2bcd_min|Selector20~0_combout\);

-- Location: LCCOMB_X105_Y29_N18
\bin2bcd_min|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector20~1_combout\ = (\bin2bcd_min|bcds\(6) & (\bin2bcd_sec|Equal0~0_combout\ & (!\bin2bcd_min|shift_counter\(0)))) # (!\bin2bcd_min|bcds\(6) & (((\bin2bcd_sec|Equal0~0_combout\ & !\bin2bcd_min|shift_counter\(0))) # 
-- (!\bin2bcd_min|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(6),
	datab => \bin2bcd_sec|Equal0~0_combout\,
	datac => \bin2bcd_min|shift_counter\(0),
	datad => \bin2bcd_min|Selector20~0_combout\,
	combout => \bin2bcd_min|Selector20~1_combout\);

-- Location: LCCOMB_X105_Y29_N20
\bin2bcd_min|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector20~2_combout\ = (\bin2bcd_min|bcds\(7) & ((\bin2bcd_min|state.done~q\) # ((\bin2bcd_min|Selector20~1_combout\ & \bin2bcd_min|state.shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(7),
	datab => \bin2bcd_min|Selector20~1_combout\,
	datac => \bin2bcd_min|state.shift~q\,
	datad => \bin2bcd_min|state.done~q\,
	combout => \bin2bcd_min|Selector20~2_combout\);

-- Location: LCCOMB_X105_Y29_N6
\bin2bcd_min|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector20~3_combout\ = (\bin2bcd_min|Selector20~2_combout\) # ((\bin2bcd_min|bcds\(6) & (\bin2bcd_min|Selector1~0_combout\ & \bin2bcd_min|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(6),
	datab => \bin2bcd_min|Selector20~2_combout\,
	datac => \bin2bcd_min|Selector1~0_combout\,
	datad => \bin2bcd_min|Selector20~0_combout\,
	combout => \bin2bcd_min|Selector20~3_combout\);

-- Location: FF_X105_Y29_N7
\bin2bcd_min|bcds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector20~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds\(7));

-- Location: LCCOMB_X105_Y29_N24
\bin2bcd_min|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector21~0_combout\ = (\bin2bcd_min|bcds\(7) & (\bin2bcd_min|bcds\(5) $ (((!\bin2bcd_min|bcds\(4)))))) # (!\bin2bcd_min|bcds\(7) & (\bin2bcd_min|bcds\(5) & ((\bin2bcd_min|bcds\(4)) # (!\bin2bcd_min|bcds\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|bcds\(7),
	datab => \bin2bcd_min|bcds\(5),
	datac => \bin2bcd_min|bcds\(6),
	datad => \bin2bcd_min|bcds\(4),
	combout => \bin2bcd_min|Selector21~0_combout\);

-- Location: LCCOMB_X105_Y29_N28
\bin2bcd_min|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_min|Selector21~1_combout\ = (\bin2bcd_min|Selector1~0_combout\ & ((\bin2bcd_min|Selector21~0_combout\) # ((!\bin2bcd_sec|binary[5]~0_combout\ & \bin2bcd_min|bcds\(6))))) # (!\bin2bcd_min|Selector1~0_combout\ & (!\bin2bcd_sec|binary[5]~0_combout\ 
-- & (\bin2bcd_min|bcds\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_min|Selector1~0_combout\,
	datab => \bin2bcd_sec|binary[5]~0_combout\,
	datac => \bin2bcd_min|bcds\(6),
	datad => \bin2bcd_min|Selector21~0_combout\,
	combout => \bin2bcd_min|Selector21~1_combout\);

-- Location: FF_X105_Y29_N29
\bin2bcd_min|bcds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_min|Selector21~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds\(6));

-- Location: FF_X105_Y27_N11
\bin2bcd_min|bcds_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_min|bcds\(6),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds_out_reg\(6));

-- Location: LCCOMB_X105_Y27_N10
\minT_blink[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minT_blink[2]~2_combout\ = (\bin2bcd_min|bcds_out_reg\(6)) # ((\blink1|blink~4_combout\ & !\fsm_any_blink~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blink1|blink~4_combout\,
	datac => \bin2bcd_min|bcds_out_reg\(6),
	datad => \fsm_any_blink~1_combout\,
	combout => \minT_blink[2]~2_combout\);

-- Location: FF_X105_Y27_N1
\bin2bcd_min|bcds_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_min|bcds\(5),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds_out_reg\(5));

-- Location: LCCOMB_X105_Y27_N0
\minT_blink[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minT_blink[1]~1_combout\ = (\bin2bcd_min|bcds_out_reg\(5)) # ((\blink1|blink~4_combout\ & !\fsm_any_blink~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blink1|blink~4_combout\,
	datac => \bin2bcd_min|bcds_out_reg\(5),
	datad => \fsm_any_blink~1_combout\,
	combout => \minT_blink[1]~1_combout\);

-- Location: FF_X106_Y29_N21
\bin2bcd_min|bcds_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_min|bcds\(4),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds_out_reg\(4));

-- Location: LCCOMB_X106_Y29_N20
\minT_blink[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minT_blink[0]~0_combout\ = (\bin2bcd_min|bcds_out_reg\(4)) # ((!\fsm_any_blink~1_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~1_combout\,
	datac => \bin2bcd_min|bcds_out_reg\(4),
	datad => \blink1|blink~4_combout\,
	combout => \minT_blink[0]~0_combout\);

-- Location: FF_X105_Y27_N13
\bin2bcd_min|bcds_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_min|bcds\(7),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_min|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_min|bcds_out_reg\(7));

-- Location: LCCOMB_X105_Y27_N12
\minT_blink[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minT_blink[3]~3_combout\ = (\bin2bcd_min|bcds_out_reg\(7)) # ((\blink1|blink~4_combout\ & !\fsm_any_blink~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blink1|blink~4_combout\,
	datac => \bin2bcd_min|bcds_out_reg\(7),
	datad => \fsm_any_blink~1_combout\,
	combout => \minT_blink[3]~3_combout\);

-- Location: LCCOMB_X105_Y27_N30
\bcd_minT|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minT|Mux6~0_combout\ = (\minT_blink[2]~2_combout\ & (((\minT_blink[3]~3_combout\) # (!\minT_blink[0]~0_combout\)))) # (!\minT_blink[2]~2_combout\ & ((\minT_blink[1]~1_combout\ & ((\minT_blink[3]~3_combout\))) # (!\minT_blink[1]~1_combout\ & 
-- (\minT_blink[0]~0_combout\ & !\minT_blink[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minT_blink[2]~2_combout\,
	datab => \minT_blink[1]~1_combout\,
	datac => \minT_blink[0]~0_combout\,
	datad => \minT_blink[3]~3_combout\,
	combout => \bcd_minT|Mux6~0_combout\);

-- Location: LCCOMB_X105_Y27_N24
\bcd_minT|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minT|Mux5~0_combout\ = (\minT_blink[2]~2_combout\ & ((\minT_blink[3]~3_combout\) # (\minT_blink[1]~1_combout\ $ (\minT_blink[0]~0_combout\)))) # (!\minT_blink[2]~2_combout\ & (\minT_blink[1]~1_combout\ & ((\minT_blink[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minT_blink[2]~2_combout\,
	datab => \minT_blink[1]~1_combout\,
	datac => \minT_blink[0]~0_combout\,
	datad => \minT_blink[3]~3_combout\,
	combout => \bcd_minT|Mux5~0_combout\);

-- Location: LCCOMB_X105_Y27_N26
\bcd_minT|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minT|Mux4~0_combout\ = (\minT_blink[2]~2_combout\ & (((\minT_blink[3]~3_combout\)))) # (!\minT_blink[2]~2_combout\ & (\minT_blink[1]~1_combout\ & ((\minT_blink[3]~3_combout\) # (!\minT_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minT_blink[2]~2_combout\,
	datab => \minT_blink[1]~1_combout\,
	datac => \minT_blink[0]~0_combout\,
	datad => \minT_blink[3]~3_combout\,
	combout => \bcd_minT|Mux4~0_combout\);

-- Location: LCCOMB_X105_Y27_N28
\bcd_minT|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minT|Mux3~0_combout\ = (\minT_blink[2]~2_combout\ & ((\minT_blink[3]~3_combout\) # (\minT_blink[1]~1_combout\ $ (!\minT_blink[0]~0_combout\)))) # (!\minT_blink[2]~2_combout\ & ((\minT_blink[1]~1_combout\ & ((\minT_blink[3]~3_combout\))) # 
-- (!\minT_blink[1]~1_combout\ & (\minT_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minT_blink[2]~2_combout\,
	datab => \minT_blink[1]~1_combout\,
	datac => \minT_blink[0]~0_combout\,
	datad => \minT_blink[3]~3_combout\,
	combout => \bcd_minT|Mux3~0_combout\);

-- Location: LCCOMB_X105_Y27_N22
\bcd_minT|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minT|Mux2~0_combout\ = (\minT_blink[0]~0_combout\) # ((\minT_blink[1]~1_combout\ & ((\minT_blink[3]~3_combout\))) # (!\minT_blink[1]~1_combout\ & (\minT_blink[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minT_blink[2]~2_combout\,
	datab => \minT_blink[1]~1_combout\,
	datac => \minT_blink[0]~0_combout\,
	datad => \minT_blink[3]~3_combout\,
	combout => \bcd_minT|Mux2~0_combout\);

-- Location: LCCOMB_X105_Y27_N16
\bcd_minT|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minT|Mux1~0_combout\ = (\minT_blink[2]~2_combout\ & ((\minT_blink[3]~3_combout\) # ((\minT_blink[1]~1_combout\ & \minT_blink[0]~0_combout\)))) # (!\minT_blink[2]~2_combout\ & ((\minT_blink[1]~1_combout\) # ((\minT_blink[0]~0_combout\ & 
-- !\minT_blink[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minT_blink[2]~2_combout\,
	datab => \minT_blink[1]~1_combout\,
	datac => \minT_blink[0]~0_combout\,
	datad => \minT_blink[3]~3_combout\,
	combout => \bcd_minT|Mux1~0_combout\);

-- Location: LCCOMB_X105_Y27_N18
\bcd_minT|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_minT|Mux0~0_combout\ = (\minT_blink[2]~2_combout\ & (((!\minT_blink[0]~0_combout\)) # (!\minT_blink[1]~1_combout\))) # (!\minT_blink[2]~2_combout\ & ((\minT_blink[1]~1_combout\) # ((\minT_blink[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minT_blink[2]~2_combout\,
	datab => \minT_blink[1]~1_combout\,
	datac => \minT_blink[0]~0_combout\,
	datad => \minT_blink[3]~3_combout\,
	combout => \bcd_minT|Mux0~0_combout\);

-- Location: LCCOMB_X89_Y29_N16
\bin2bcd_hour|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Equal0~0_combout\ = (\bin2bcd_hour|shift_counter\(2) & (!\bin2bcd_hour|shift_counter\(1) & \bin2bcd_hour|shift_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|shift_counter\(2),
	datab => \bin2bcd_hour|shift_counter\(1),
	datac => \bin2bcd_hour|shift_counter\(0),
	combout => \bin2bcd_hour|Equal0~0_combout\);

-- Location: LCCOMB_X89_Y29_N28
\bin2bcd_hour|state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|state.start~0_combout\ = !\bin2bcd_hour|state.done~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2bcd_hour|state.done~q\,
	combout => \bin2bcd_hour|state.start~0_combout\);

-- Location: FF_X89_Y29_N29
\bin2bcd_hour|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|state.start~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|state.start~q\);

-- Location: LCCOMB_X89_Y29_N6
\bin2bcd_hour|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector1~1_combout\ = (\bin2bcd_hour|Selector1~0_combout\) # (!\bin2bcd_hour|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_hour|state.start~q\,
	datac => \bin2bcd_hour|Selector1~0_combout\,
	combout => \bin2bcd_hour|Selector1~1_combout\);

-- Location: FF_X89_Y29_N7
\bin2bcd_hour|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector1~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|state.shift~q\);

-- Location: LCCOMB_X89_Y29_N4
\bin2bcd_hour|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector29~0_combout\ = (\bin2bcd_hour|shift_counter\(0) & ((\bin2bcd_hour|state.done~q\) # ((\bin2bcd_hour|Equal0~0_combout\ & \bin2bcd_hour|state.shift~q\)))) # (!\bin2bcd_hour|shift_counter\(0) & (((\bin2bcd_hour|state.shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|state.done~q\,
	datab => \bin2bcd_hour|Equal0~0_combout\,
	datac => \bin2bcd_hour|shift_counter\(0),
	datad => \bin2bcd_hour|state.shift~q\,
	combout => \bin2bcd_hour|Selector29~0_combout\);

-- Location: FF_X89_Y29_N5
\bin2bcd_hour|shift_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector29~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|shift_counter\(0));

-- Location: LCCOMB_X89_Y29_N22
\bin2bcd_hour|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector28~0_combout\ = (\bin2bcd_hour|shift_counter\(0) & ((\bin2bcd_hour|shift_counter\(1)) # (!\bin2bcd_hour|shift_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|shift_counter\(2),
	datab => \bin2bcd_hour|shift_counter\(1),
	datac => \bin2bcd_hour|shift_counter\(0),
	combout => \bin2bcd_hour|Selector28~0_combout\);

-- Location: LCCOMB_X89_Y29_N24
\bin2bcd_hour|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector28~1_combout\ = (\bin2bcd_hour|shift_counter\(1) & ((\bin2bcd_hour|state.done~q\) # ((!\bin2bcd_hour|Selector28~0_combout\ & \bin2bcd_hour|state.shift~q\)))) # (!\bin2bcd_hour|shift_counter\(1) & (\bin2bcd_hour|Selector28~0_combout\ 
-- & ((\bin2bcd_hour|state.shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Selector28~0_combout\,
	datab => \bin2bcd_hour|state.done~q\,
	datac => \bin2bcd_hour|shift_counter\(1),
	datad => \bin2bcd_hour|state.shift~q\,
	combout => \bin2bcd_hour|Selector28~1_combout\);

-- Location: FF_X89_Y29_N25
\bin2bcd_hour|shift_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector28~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|shift_counter\(1));

-- Location: LCCOMB_X89_Y29_N2
\bin2bcd_hour|state_next.done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|state_next.done~0_combout\ = (\bin2bcd_hour|shift_counter\(2) & (!\bin2bcd_hour|shift_counter\(1) & (\bin2bcd_hour|shift_counter\(0) & \bin2bcd_hour|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|shift_counter\(2),
	datab => \bin2bcd_hour|shift_counter\(1),
	datac => \bin2bcd_hour|shift_counter\(0),
	datad => \bin2bcd_hour|state.shift~q\,
	combout => \bin2bcd_hour|state_next.done~0_combout\);

-- Location: FF_X89_Y29_N3
\bin2bcd_hour|state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|state_next.done~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|state.done~q\);

-- Location: LCCOMB_X89_Y29_N0
\bin2bcd_hour|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector27~0_combout\ = (\bin2bcd_hour|shift_counter\(1) & \bin2bcd_hour|shift_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2bcd_hour|shift_counter\(1),
	datac => \bin2bcd_hour|shift_counter\(0),
	combout => \bin2bcd_hour|Selector27~0_combout\);

-- Location: LCCOMB_X89_Y29_N26
\bin2bcd_hour|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector27~1_combout\ = (\bin2bcd_hour|shift_counter\(2) & ((\bin2bcd_hour|state.done~q\) # ((!\bin2bcd_hour|Selector27~0_combout\ & \bin2bcd_hour|state.shift~q\)))) # (!\bin2bcd_hour|shift_counter\(2) & 
-- (((\bin2bcd_hour|Selector27~0_combout\ & \bin2bcd_hour|state.shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|state.done~q\,
	datab => \bin2bcd_hour|Selector27~0_combout\,
	datac => \bin2bcd_hour|shift_counter\(2),
	datad => \bin2bcd_hour|state.shift~q\,
	combout => \bin2bcd_hour|Selector27~1_combout\);

-- Location: FF_X89_Y29_N27
\bin2bcd_hour|shift_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector27~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|shift_counter\(2));

-- Location: LCCOMB_X89_Y29_N14
\bin2bcd_hour|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector1~0_combout\ = (\bin2bcd_hour|state.shift~q\ & (((\bin2bcd_hour|shift_counter\(1)) # (!\bin2bcd_hour|shift_counter\(0))) # (!\bin2bcd_hour|shift_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|shift_counter\(2),
	datab => \bin2bcd_hour|shift_counter\(1),
	datac => \bin2bcd_hour|shift_counter\(0),
	datad => \bin2bcd_hour|state.shift~q\,
	combout => \bin2bcd_hour|Selector1~0_combout\);

-- Location: LCCOMB_X89_Y27_N10
\bin2bcd_hour|binary[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|binary[2]~1_combout\ = (!\bin2bcd_hour|state.done~q\ & ((!\bin2bcd_hour|Equal0~0_combout\) # (!\bin2bcd_hour|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|state.done~q\,
	datac => \bin2bcd_hour|state.shift~q\,
	datad => \bin2bcd_hour|Equal0~0_combout\,
	combout => \bin2bcd_hour|binary[2]~1_combout\);

-- Location: LCCOMB_X89_Y29_N30
\bin2bcd_hour|binary_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|binary_next~0_combout\ = (\bin2bcd_hour|shift_counter\(2) & (\bin2bcd_hour|binary\(0) & (\bin2bcd_hour|shift_counter\(0) & !\bin2bcd_hour|shift_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|shift_counter\(2),
	datab => \bin2bcd_hour|binary\(0),
	datac => \bin2bcd_hour|shift_counter\(0),
	datad => \bin2bcd_hour|shift_counter\(1),
	combout => \bin2bcd_hour|binary_next~0_combout\);

-- Location: LCCOMB_X91_Y29_N10
\t0|h_reg[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[0]~5_combout\ = \t0|h_reg\(0) $ (VCC)
-- \t0|h_reg[0]~6\ = CARRY(\t0|h_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|h_reg\(0),
	datad => VCC,
	combout => \t0|h_reg[0]~5_combout\,
	cout => \t0|h_reg[0]~6\);

-- Location: LCCOMB_X90_Y29_N14
\inst_fsm|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add1~0_combout\ = \t0|h_reg\(0) $ (VCC)
-- \inst_fsm|Add1~1\ = CARRY(\t0|h_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|h_reg\(0),
	datad => VCC,
	combout => \inst_fsm|Add1~0_combout\,
	cout => \inst_fsm|Add1~1\);

-- Location: LCCOMB_X91_Y29_N12
\t0|h_reg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[1]~7_combout\ = (\t0|h_reg\(1) & (!\t0|h_reg[0]~6\)) # (!\t0|h_reg\(1) & ((\t0|h_reg[0]~6\) # (GND)))
-- \t0|h_reg[1]~8\ = CARRY((!\t0|h_reg[0]~6\) # (!\t0|h_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|h_reg\(1),
	datad => VCC,
	cin => \t0|h_reg[0]~6\,
	combout => \t0|h_reg[1]~7_combout\,
	cout => \t0|h_reg[1]~8\);

-- Location: LCCOMB_X90_Y29_N16
\inst_fsm|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add1~2_combout\ = (\t0|h_reg\(1) & (\inst_fsm|Add1~1\ & VCC)) # (!\t0|h_reg\(1) & (!\inst_fsm|Add1~1\))
-- \inst_fsm|Add1~3\ = CARRY((!\t0|h_reg\(1) & !\inst_fsm|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|h_reg\(1),
	datad => VCC,
	cin => \inst_fsm|Add1~1\,
	combout => \inst_fsm|Add1~2_combout\,
	cout => \inst_fsm|Add1~3\);

-- Location: LCCOMB_X91_Y29_N14
\t0|h_reg[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[2]~9_combout\ = (\t0|h_reg\(2) & (\t0|h_reg[1]~8\ $ (GND))) # (!\t0|h_reg\(2) & (!\t0|h_reg[1]~8\ & VCC))
-- \t0|h_reg[2]~10\ = CARRY((\t0|h_reg\(2) & !\t0|h_reg[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|h_reg\(2),
	datad => VCC,
	cin => \t0|h_reg[1]~8\,
	combout => \t0|h_reg[2]~9_combout\,
	cout => \t0|h_reg[2]~10\);

-- Location: LCCOMB_X90_Y29_N18
\inst_fsm|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add1~4_combout\ = (\t0|h_reg\(2) & ((GND) # (!\inst_fsm|Add1~3\))) # (!\t0|h_reg\(2) & (\inst_fsm|Add1~3\ $ (GND)))
-- \inst_fsm|Add1~5\ = CARRY((\t0|h_reg\(2)) # (!\inst_fsm|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|h_reg\(2),
	datad => VCC,
	cin => \inst_fsm|Add1~3\,
	combout => \inst_fsm|Add1~4_combout\,
	cout => \inst_fsm|Add1~5\);

-- Location: LCCOMB_X91_Y29_N26
\t0|h_next[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_next[2]~2_combout\ = (\inst_fsm|state_reg.decrementa_h~q\ & ((\inst_fsm|Add1~4_combout\) # ((!\inst_fsm|Equal1~0_combout\ & !\t0|h_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add1~4_combout\,
	datab => \inst_fsm|Equal1~0_combout\,
	datac => \inst_fsm|state_reg.decrementa_h~q\,
	datad => \t0|h_reg\(3),
	combout => \t0|h_next[2]~2_combout\);

-- Location: LCCOMB_X95_Y32_N20
\t0|h_en~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_en~2_combout\ = (((!\t0|m_reg\(0)) # (!\t0|m_reg\(5))) # (!\t0|m_reg\(1))) # (!\t0|m_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(4),
	datab => \t0|m_reg\(1),
	datac => \t0|m_reg\(5),
	datad => \t0|m_reg\(0),
	combout => \t0|h_en~2_combout\);

-- Location: LCCOMB_X91_Y29_N20
\t0|h_reg[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[0]~15_combout\ = ((\t0|h_reg\(3)) # ((!\t0|h_reg\(0)) # (!\t0|h_reg\(2)))) # (!\t0|h_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|h_reg\(1),
	datab => \t0|h_reg\(3),
	datac => \t0|h_reg\(2),
	datad => \t0|h_reg\(0),
	combout => \t0|h_reg[0]~15_combout\);

-- Location: LCCOMB_X91_Y29_N16
\t0|h_reg[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[3]~11_combout\ = (\t0|h_reg\(3) & (!\t0|h_reg[2]~10\)) # (!\t0|h_reg\(3) & ((\t0|h_reg[2]~10\) # (GND)))
-- \t0|h_reg[3]~12\ = CARRY((!\t0|h_reg[2]~10\) # (!\t0|h_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|h_reg\(3),
	datad => VCC,
	cin => \t0|h_reg[2]~10\,
	combout => \t0|h_reg[3]~11_combout\,
	cout => \t0|h_reg[3]~12\);

-- Location: LCCOMB_X91_Y29_N18
\t0|h_reg[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[4]~13_combout\ = \t0|h_reg\(4) $ (!\t0|h_reg[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|h_reg\(4),
	cin => \t0|h_reg[3]~12\,
	combout => \t0|h_reg[4]~13_combout\);

-- Location: LCCOMB_X90_Y29_N20
\inst_fsm|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add1~6_combout\ = (\t0|h_reg\(3) & (\inst_fsm|Add1~5\ & VCC)) # (!\t0|h_reg\(3) & (!\inst_fsm|Add1~5\))
-- \inst_fsm|Add1~7\ = CARRY((!\t0|h_reg\(3) & !\inst_fsm|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|h_reg\(3),
	datad => VCC,
	cin => \inst_fsm|Add1~5\,
	combout => \inst_fsm|Add1~6_combout\,
	cout => \inst_fsm|Add1~7\);

-- Location: LCCOMB_X90_Y29_N22
\inst_fsm|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Add1~8_combout\ = \t0|h_reg\(4) $ (\inst_fsm|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|h_reg\(4),
	cin => \inst_fsm|Add1~7\,
	combout => \inst_fsm|Add1~8_combout\);

-- Location: LCCOMB_X91_Y29_N2
\t0|h_next[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_next[4]~0_combout\ = (\inst_fsm|state_reg.decrementa_h~q\ & ((\inst_fsm|Add1~8_combout\) # ((!\inst_fsm|Equal1~0_combout\ & !\t0|h_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add1~8_combout\,
	datab => \inst_fsm|Equal1~0_combout\,
	datac => \inst_fsm|state_reg.decrementa_h~q\,
	datad => \t0|h_reg\(3),
	combout => \t0|h_next[4]~0_combout\);

-- Location: LCCOMB_X91_Y29_N22
\t0|h_reg[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[0]~19_combout\ = (\t0|m_reg\(3) & (!\t0|m_en~combout\ & (!\t0|h_en~2_combout\ & !\t0|m_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(3),
	datab => \t0|m_en~combout\,
	datac => \t0|h_en~2_combout\,
	datad => \t0|m_reg\(2),
	combout => \t0|h_reg[0]~19_combout\);

-- Location: LCCOMB_X92_Y29_N0
\t0|h_reg[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[0]~20_combout\ = (\inst_fsm|state_reg.idle~q\ & ((\inst_fsm|state_reg.decrementa_h~q\) # ((\inst_fsm|state_reg.incrementa_h~q\)))) # (!\inst_fsm|state_reg.idle~q\ & (((\t0|h_reg[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.decrementa_h~q\,
	datab => \t0|h_reg[0]~19_combout\,
	datac => \inst_fsm|state_reg.idle~q\,
	datad => \inst_fsm|state_reg.incrementa_h~q\,
	combout => \t0|h_reg[0]~20_combout\);

-- Location: FF_X91_Y29_N19
\t0|h_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|h_reg[4]~13_combout\,
	asdata => \t0|h_next[4]~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \t0|h_reg[0]~18_combout\,
	ena => \t0|h_reg[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|h_reg\(4));

-- Location: LCCOMB_X91_Y29_N6
\t0|h_reg[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[0]~16_combout\ = (\t0|h_reg[0]~15_combout\) # (((!\t0|m_reg\(3) & !\inst_fsm|state_reg.idle~q\)) # (!\t0|h_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|m_reg\(3),
	datab => \t0|h_reg[0]~15_combout\,
	datac => \t0|h_reg\(4),
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|h_reg[0]~16_combout\);

-- Location: LCCOMB_X91_Y29_N0
\t0|h_reg[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[0]~17_combout\ = (\t0|h_reg[0]~16_combout\ & (((!\inst_fsm|state_reg.idle~q\) # (!\inst_fsm|state_reg.decrementa_h~q\)))) # (!\t0|h_reg[0]~16_combout\ & (\t0|m_reg\(2) & ((!\inst_fsm|state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|h_reg[0]~16_combout\,
	datab => \t0|m_reg\(2),
	datac => \inst_fsm|state_reg.decrementa_h~q\,
	datad => \inst_fsm|state_reg.idle~q\,
	combout => \t0|h_reg[0]~17_combout\);

-- Location: LCCOMB_X91_Y29_N28
\t0|h_reg[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_reg[0]~18_combout\ = (!\t0|h_reg[0]~17_combout\ & ((\inst_fsm|state_reg.idle~q\) # ((!\t0|m_en~combout\ & !\t0|h_en~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|state_reg.idle~q\,
	datab => \t0|m_en~combout\,
	datac => \t0|h_en~2_combout\,
	datad => \t0|h_reg[0]~17_combout\,
	combout => \t0|h_reg[0]~18_combout\);

-- Location: FF_X91_Y29_N15
\t0|h_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|h_reg[2]~9_combout\,
	asdata => \t0|h_next[2]~2_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \t0|h_reg[0]~18_combout\,
	ena => \t0|h_reg[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|h_reg\(2));

-- Location: LCCOMB_X91_Y29_N8
\t0|h_next[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_next[3]~1_combout\ = (\inst_fsm|Add1~6_combout\ & (\inst_fsm|state_reg.decrementa_h~q\ & ((\inst_fsm|Equal1~0_combout\) # (\t0|h_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add1~6_combout\,
	datab => \inst_fsm|Equal1~0_combout\,
	datac => \inst_fsm|state_reg.decrementa_h~q\,
	datad => \t0|h_reg\(3),
	combout => \t0|h_next[3]~1_combout\);

-- Location: FF_X91_Y29_N17
\t0|h_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|h_reg[3]~11_combout\,
	asdata => \t0|h_next[3]~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \t0|h_reg[0]~18_combout\,
	ena => \t0|h_reg[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|h_reg\(3));

-- Location: LCCOMB_X91_Y29_N4
\t0|h_next[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_next[1]~3_combout\ = (\inst_fsm|state_reg.decrementa_h~q\ & ((\inst_fsm|Add1~2_combout\) # ((!\inst_fsm|Equal1~0_combout\ & !\t0|h_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add1~2_combout\,
	datab => \inst_fsm|Equal1~0_combout\,
	datac => \inst_fsm|state_reg.decrementa_h~q\,
	datad => \t0|h_reg\(3),
	combout => \t0|h_next[1]~3_combout\);

-- Location: FF_X91_Y29_N13
\t0|h_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|h_reg[1]~7_combout\,
	asdata => \t0|h_next[1]~3_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \t0|h_reg[0]~18_combout\,
	ena => \t0|h_reg[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|h_reg\(1));

-- Location: LCCOMB_X91_Y29_N24
\inst_fsm|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_fsm|Equal1~0_combout\ = (\t0|h_reg\(1)) # ((\t0|h_reg\(4)) # ((\t0|h_reg\(2)) # (\t0|h_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|h_reg\(1),
	datab => \t0|h_reg\(4),
	datac => \t0|h_reg\(2),
	datad => \t0|h_reg\(0),
	combout => \inst_fsm|Equal1~0_combout\);

-- Location: LCCOMB_X91_Y29_N30
\t0|h_next[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|h_next[0]~4_combout\ = (\inst_fsm|state_reg.decrementa_h~q\ & ((\inst_fsm|Add1~0_combout\) # ((!\inst_fsm|Equal1~0_combout\ & !\t0|h_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_fsm|Add1~0_combout\,
	datab => \inst_fsm|Equal1~0_combout\,
	datac => \inst_fsm|state_reg.decrementa_h~q\,
	datad => \t0|h_reg\(3),
	combout => \t0|h_next[0]~4_combout\);

-- Location: FF_X91_Y29_N11
\t0|h_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \t0|h_reg[0]~5_combout\,
	asdata => \t0|h_next[0]~4_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \t0|h_reg[0]~18_combout\,
	ena => \t0|h_reg[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|h_reg\(0));

-- Location: LCCOMB_X89_Y29_N8
\bin2bcd_hour|binary[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|binary[0]~0_combout\ = (\bin2bcd_hour|state.shift~q\ & (\bin2bcd_hour|binary_next~0_combout\)) # (!\bin2bcd_hour|state.shift~q\ & ((\t0|h_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|binary_next~0_combout\,
	datab => \t0|h_reg\(0),
	datad => \bin2bcd_hour|state.shift~q\,
	combout => \bin2bcd_hour|binary[0]~0_combout\);

-- Location: FF_X89_Y29_N9
\bin2bcd_hour|binary[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|binary[0]~0_combout\,
	asdata => \bin2bcd_hour|binary\(0),
	clrn => \KEY[0]~input_o\,
	sload => \bin2bcd_hour|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|binary\(0));

-- Location: LCCOMB_X89_Y29_N20
\bin2bcd_hour|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector5~0_combout\ = (\bin2bcd_hour|state.shift~q\ & (\bin2bcd_hour|binary\(0))) # (!\bin2bcd_hour|state.shift~q\ & ((\t0|h_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|state.shift~q\,
	datac => \bin2bcd_hour|binary\(0),
	datad => \t0|h_reg\(1),
	combout => \bin2bcd_hour|Selector5~0_combout\);

-- Location: FF_X89_Y29_N21
\bin2bcd_hour|binary[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_hour|binary[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|binary\(1));

-- Location: LCCOMB_X89_Y29_N18
\bin2bcd_hour|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector4~0_combout\ = (\bin2bcd_hour|state.shift~q\ & (\bin2bcd_hour|binary\(1))) # (!\bin2bcd_hour|state.shift~q\ & ((\t0|h_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|state.shift~q\,
	datab => \bin2bcd_hour|binary\(1),
	datac => \t0|h_reg\(2),
	combout => \bin2bcd_hour|Selector4~0_combout\);

-- Location: FF_X89_Y29_N19
\bin2bcd_hour|binary[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector4~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_hour|binary[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|binary\(2));

-- Location: LCCOMB_X89_Y29_N10
\bin2bcd_hour|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector3~0_combout\ = (\bin2bcd_hour|state.shift~q\ & (\bin2bcd_hour|binary\(2))) # (!\bin2bcd_hour|state.shift~q\ & ((\t0|h_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|state.shift~q\,
	datab => \bin2bcd_hour|binary\(2),
	datad => \t0|h_reg\(3),
	combout => \bin2bcd_hour|Selector3~0_combout\);

-- Location: FF_X89_Y29_N11
\bin2bcd_hour|binary[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector3~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_hour|binary[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|binary\(3));

-- Location: LCCOMB_X89_Y29_N12
\bin2bcd_hour|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector2~0_combout\ = (\bin2bcd_hour|state.shift~q\ & (\bin2bcd_hour|binary\(3))) # (!\bin2bcd_hour|state.shift~q\ & ((\t0|h_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|binary\(3),
	datab => \t0|h_reg\(4),
	datad => \bin2bcd_hour|state.shift~q\,
	combout => \bin2bcd_hour|Selector2~0_combout\);

-- Location: FF_X89_Y29_N13
\bin2bcd_hour|binary[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector2~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \bin2bcd_hour|binary[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|binary\(4));

-- Location: LCCOMB_X90_Y29_N28
\bin2bcd_hour|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector26~0_combout\ = (\bin2bcd_hour|Selector1~0_combout\ & ((\bin2bcd_hour|binary\(4)) # ((!\bin2bcd_hour|binary[2]~1_combout\ & \bin2bcd_hour|bcds\(0))))) # (!\bin2bcd_hour|Selector1~0_combout\ & (!\bin2bcd_hour|binary[2]~1_combout\ & 
-- (\bin2bcd_hour|bcds\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Selector1~0_combout\,
	datab => \bin2bcd_hour|binary[2]~1_combout\,
	datac => \bin2bcd_hour|bcds\(0),
	datad => \bin2bcd_hour|binary\(4),
	combout => \bin2bcd_hour|Selector26~0_combout\);

-- Location: FF_X90_Y29_N29
\bin2bcd_hour|bcds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector26~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds\(0));

-- Location: LCCOMB_X90_Y29_N24
\bin2bcd_hour|bcds_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|bcds_next~0_combout\ = (\bin2bcd_hour|bcds\(3) & (!\bin2bcd_hour|bcds\(0))) # (!\bin2bcd_hour|bcds\(3) & ((\bin2bcd_hour|bcds\(0) & (!\bin2bcd_hour|bcds\(2))) # (!\bin2bcd_hour|bcds\(0) & (\bin2bcd_hour|bcds\(2) & \bin2bcd_hour|bcds\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|bcds\(3),
	datab => \bin2bcd_hour|bcds\(0),
	datac => \bin2bcd_hour|bcds\(2),
	datad => \bin2bcd_hour|bcds\(1),
	combout => \bin2bcd_hour|bcds_next~0_combout\);

-- Location: LCCOMB_X90_Y29_N6
\bin2bcd_hour|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector25~0_combout\ = (\bin2bcd_hour|Selector1~0_combout\ & ((\bin2bcd_hour|bcds_next~0_combout\) # ((!\bin2bcd_hour|binary[2]~1_combout\ & \bin2bcd_hour|bcds\(1))))) # (!\bin2bcd_hour|Selector1~0_combout\ & 
-- (!\bin2bcd_hour|binary[2]~1_combout\ & (\bin2bcd_hour|bcds\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Selector1~0_combout\,
	datab => \bin2bcd_hour|binary[2]~1_combout\,
	datac => \bin2bcd_hour|bcds\(1),
	datad => \bin2bcd_hour|bcds_next~0_combout\,
	combout => \bin2bcd_hour|Selector25~0_combout\);

-- Location: FF_X90_Y29_N7
\bin2bcd_hour|bcds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector25~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds\(1));

-- Location: LCCOMB_X90_Y29_N12
\bin2bcd_hour|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector23~0_combout\ = (\bin2bcd_hour|bcds\(2) & (((!\bin2bcd_hour|bcds\(0) & !\bin2bcd_hour|bcds\(1))))) # (!\bin2bcd_hour|bcds\(2) & (\bin2bcd_hour|bcds\(3) & ((\bin2bcd_hour|bcds\(0)) # (\bin2bcd_hour|bcds\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|bcds\(3),
	datab => \bin2bcd_hour|bcds\(0),
	datac => \bin2bcd_hour|bcds\(2),
	datad => \bin2bcd_hour|bcds\(1),
	combout => \bin2bcd_hour|Selector23~0_combout\);

-- Location: LCCOMB_X90_Y29_N26
\bin2bcd_hour|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector23~1_combout\ = (\bin2bcd_hour|Selector1~0_combout\ & ((\bin2bcd_hour|Selector23~0_combout\) # ((!\bin2bcd_hour|binary[2]~1_combout\ & \bin2bcd_hour|bcds\(3))))) # (!\bin2bcd_hour|Selector1~0_combout\ & 
-- (!\bin2bcd_hour|binary[2]~1_combout\ & (\bin2bcd_hour|bcds\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Selector1~0_combout\,
	datab => \bin2bcd_hour|binary[2]~1_combout\,
	datac => \bin2bcd_hour|bcds\(3),
	datad => \bin2bcd_hour|Selector23~0_combout\,
	combout => \bin2bcd_hour|Selector23~1_combout\);

-- Location: FF_X90_Y29_N27
\bin2bcd_hour|bcds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector23~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds\(3));

-- Location: LCCOMB_X90_Y29_N10
\bin2bcd_hour|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector24~0_combout\ = (\bin2bcd_hour|bcds\(3) & (\bin2bcd_hour|bcds\(0) $ (((!\bin2bcd_hour|bcds\(1)))))) # (!\bin2bcd_hour|bcds\(3) & (\bin2bcd_hour|bcds\(1) & ((\bin2bcd_hour|bcds\(0)) # (!\bin2bcd_hour|bcds\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|bcds\(3),
	datab => \bin2bcd_hour|bcds\(0),
	datac => \bin2bcd_hour|bcds\(2),
	datad => \bin2bcd_hour|bcds\(1),
	combout => \bin2bcd_hour|Selector24~0_combout\);

-- Location: LCCOMB_X90_Y29_N0
\bin2bcd_hour|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector24~1_combout\ = (\bin2bcd_hour|Selector1~0_combout\ & ((\bin2bcd_hour|Selector24~0_combout\) # ((!\bin2bcd_hour|binary[2]~1_combout\ & \bin2bcd_hour|bcds\(2))))) # (!\bin2bcd_hour|Selector1~0_combout\ & 
-- (!\bin2bcd_hour|binary[2]~1_combout\ & (\bin2bcd_hour|bcds\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Selector1~0_combout\,
	datab => \bin2bcd_hour|binary[2]~1_combout\,
	datac => \bin2bcd_hour|bcds\(2),
	datad => \bin2bcd_hour|Selector24~0_combout\,
	combout => \bin2bcd_hour|Selector24~1_combout\);

-- Location: FF_X90_Y29_N1
\bin2bcd_hour|bcds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector24~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds\(2));

-- Location: FF_X89_Y27_N31
\bin2bcd_hour|bcds_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_hour|bcds\(2),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_hour|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds_out_reg\(2));

-- Location: LCCOMB_X89_Y27_N30
\hourU_blink[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourU_blink[2]~2_combout\ = (\bin2bcd_hour|bcds_out_reg\(2)) # ((!\fsm_any_blink~0_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~0_combout\,
	datac => \bin2bcd_hour|bcds_out_reg\(2),
	datad => \blink1|blink~4_combout\,
	combout => \hourU_blink[2]~2_combout\);

-- Location: FF_X89_Y27_N19
\bin2bcd_hour|bcds_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_hour|bcds\(3),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_hour|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds_out_reg\(3));

-- Location: LCCOMB_X89_Y27_N18
\hourU_blink[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourU_blink[3]~3_combout\ = (\bin2bcd_hour|bcds_out_reg\(3)) # ((!\fsm_any_blink~0_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~0_combout\,
	datac => \bin2bcd_hour|bcds_out_reg\(3),
	datad => \blink1|blink~4_combout\,
	combout => \hourU_blink[3]~3_combout\);

-- Location: FF_X89_Y27_N23
\bin2bcd_hour|bcds_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_hour|bcds\(1),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_hour|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds_out_reg\(1));

-- Location: LCCOMB_X89_Y27_N22
\hourU_blink[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourU_blink[1]~1_combout\ = (\bin2bcd_hour|bcds_out_reg\(1)) # ((!\fsm_any_blink~0_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~0_combout\,
	datac => \bin2bcd_hour|bcds_out_reg\(1),
	datad => \blink1|blink~4_combout\,
	combout => \hourU_blink[1]~1_combout\);

-- Location: FF_X89_Y27_N9
\bin2bcd_hour|bcds_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_hour|bcds\(0),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_hour|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds_out_reg\(0));

-- Location: LCCOMB_X89_Y27_N8
\hourU_blink[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourU_blink[0]~0_combout\ = (\bin2bcd_hour|bcds_out_reg\(0)) # ((!\fsm_any_blink~0_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~0_combout\,
	datac => \bin2bcd_hour|bcds_out_reg\(0),
	datad => \blink1|blink~4_combout\,
	combout => \hourU_blink[0]~0_combout\);

-- Location: LCCOMB_X83_Y4_N24
\bcd_hourU|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourU|Mux6~0_combout\ = (\hourU_blink[2]~2_combout\ & ((\hourU_blink[3]~3_combout\) # ((!\hourU_blink[0]~0_combout\)))) # (!\hourU_blink[2]~2_combout\ & ((\hourU_blink[3]~3_combout\ & (\hourU_blink[1]~1_combout\)) # (!\hourU_blink[3]~3_combout\ & 
-- (!\hourU_blink[1]~1_combout\ & \hourU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourU_blink[2]~2_combout\,
	datab => \hourU_blink[3]~3_combout\,
	datac => \hourU_blink[1]~1_combout\,
	datad => \hourU_blink[0]~0_combout\,
	combout => \bcd_hourU|Mux6~0_combout\);

-- Location: LCCOMB_X83_Y4_N2
\bcd_hourU|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourU|Mux5~0_combout\ = (\hourU_blink[2]~2_combout\ & ((\hourU_blink[3]~3_combout\) # (\hourU_blink[1]~1_combout\ $ (\hourU_blink[0]~0_combout\)))) # (!\hourU_blink[2]~2_combout\ & (\hourU_blink[3]~3_combout\ & (\hourU_blink[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourU_blink[2]~2_combout\,
	datab => \hourU_blink[3]~3_combout\,
	datac => \hourU_blink[1]~1_combout\,
	datad => \hourU_blink[0]~0_combout\,
	combout => \bcd_hourU|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y4_N28
\bcd_hourU|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourU|Mux4~0_combout\ = (\hourU_blink[2]~2_combout\ & (\hourU_blink[3]~3_combout\)) # (!\hourU_blink[2]~2_combout\ & (\hourU_blink[1]~1_combout\ & ((\hourU_blink[3]~3_combout\) # (!\hourU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourU_blink[2]~2_combout\,
	datab => \hourU_blink[3]~3_combout\,
	datac => \hourU_blink[1]~1_combout\,
	datad => \hourU_blink[0]~0_combout\,
	combout => \bcd_hourU|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y4_N14
\bcd_hourU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourU|Mux3~0_combout\ = (\hourU_blink[2]~2_combout\ & ((\hourU_blink[3]~3_combout\) # (\hourU_blink[1]~1_combout\ $ (!\hourU_blink[0]~0_combout\)))) # (!\hourU_blink[2]~2_combout\ & ((\hourU_blink[1]~1_combout\ & (\hourU_blink[3]~3_combout\)) # 
-- (!\hourU_blink[1]~1_combout\ & ((\hourU_blink[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourU_blink[2]~2_combout\,
	datab => \hourU_blink[3]~3_combout\,
	datac => \hourU_blink[1]~1_combout\,
	datad => \hourU_blink[0]~0_combout\,
	combout => \bcd_hourU|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y4_N16
\bcd_hourU|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourU|Mux2~0_combout\ = (\hourU_blink[0]~0_combout\) # ((\hourU_blink[1]~1_combout\ & ((\hourU_blink[3]~3_combout\))) # (!\hourU_blink[1]~1_combout\ & (\hourU_blink[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourU_blink[2]~2_combout\,
	datab => \hourU_blink[3]~3_combout\,
	datac => \hourU_blink[1]~1_combout\,
	datad => \hourU_blink[0]~0_combout\,
	combout => \bcd_hourU|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y4_N26
\bcd_hourU|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourU|Mux1~0_combout\ = (\hourU_blink[2]~2_combout\ & ((\hourU_blink[3]~3_combout\) # ((\hourU_blink[1]~1_combout\ & \hourU_blink[0]~0_combout\)))) # (!\hourU_blink[2]~2_combout\ & ((\hourU_blink[1]~1_combout\) # ((!\hourU_blink[3]~3_combout\ & 
-- \hourU_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourU_blink[2]~2_combout\,
	datab => \hourU_blink[3]~3_combout\,
	datac => \hourU_blink[1]~1_combout\,
	datad => \hourU_blink[0]~0_combout\,
	combout => \bcd_hourU|Mux1~0_combout\);

-- Location: LCCOMB_X83_Y4_N12
\bcd_hourU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourU|Mux0~0_combout\ = (\hourU_blink[2]~2_combout\ & (((!\hourU_blink[0]~0_combout\) # (!\hourU_blink[1]~1_combout\)))) # (!\hourU_blink[2]~2_combout\ & ((\hourU_blink[3]~3_combout\) # ((\hourU_blink[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourU_blink[2]~2_combout\,
	datab => \hourU_blink[3]~3_combout\,
	datac => \hourU_blink[1]~1_combout\,
	datad => \hourU_blink[0]~0_combout\,
	combout => \bcd_hourU|Mux0~0_combout\);

-- Location: LCCOMB_X90_Y29_N30
\bin2bcd_hour|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector22~0_combout\ = \bin2bcd_hour|bcds\(3) $ (((\bin2bcd_hour|bcds\(2) & ((\bin2bcd_hour|bcds\(0)) # (\bin2bcd_hour|bcds\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|bcds\(3),
	datab => \bin2bcd_hour|bcds\(0),
	datac => \bin2bcd_hour|bcds\(2),
	datad => \bin2bcd_hour|bcds\(1),
	combout => \bin2bcd_hour|Selector22~0_combout\);

-- Location: LCCOMB_X90_Y29_N4
\bin2bcd_hour|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector22~1_combout\ = (\bin2bcd_hour|Selector22~0_combout\ & ((\bin2bcd_hour|Selector1~0_combout\) # ((!\bin2bcd_hour|binary[2]~1_combout\ & \bin2bcd_hour|bcds\(4))))) # (!\bin2bcd_hour|Selector22~0_combout\ & 
-- (!\bin2bcd_hour|binary[2]~1_combout\ & (\bin2bcd_hour|bcds\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Selector22~0_combout\,
	datab => \bin2bcd_hour|binary[2]~1_combout\,
	datac => \bin2bcd_hour|bcds\(4),
	datad => \bin2bcd_hour|Selector1~0_combout\,
	combout => \bin2bcd_hour|Selector22~1_combout\);

-- Location: FF_X90_Y29_N5
\bin2bcd_hour|bcds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector22~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds\(4));

-- Location: FF_X89_Y27_N7
\bin2bcd_hour|bcds_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_hour|bcds\(4),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_hour|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds_out_reg\(4));

-- Location: LCCOMB_X89_Y27_N6
\hourT_blink[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourT_blink[0]~0_combout\ = (\bin2bcd_hour|bcds_out_reg\(4)) # ((!\fsm_any_blink~0_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~0_combout\,
	datac => \bin2bcd_hour|bcds_out_reg\(4),
	datad => \blink1|blink~4_combout\,
	combout => \hourT_blink[0]~0_combout\);

-- Location: LCCOMB_X89_Y27_N16
\bin2bcd_hour|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector19~0_combout\ = (\bin2bcd_hour|bcds\(5) & (!\bin2bcd_hour|bcds\(6))) # (!\bin2bcd_hour|bcds\(5) & ((\bin2bcd_hour|bcds\(6) & (\bin2bcd_hour|Selector1~0_combout\ & !\bin2bcd_hour|bcds\(4))) # (!\bin2bcd_hour|bcds\(6) & 
-- ((\bin2bcd_hour|bcds\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|bcds\(5),
	datab => \bin2bcd_hour|bcds\(6),
	datac => \bin2bcd_hour|Selector1~0_combout\,
	datad => \bin2bcd_hour|bcds\(4),
	combout => \bin2bcd_hour|Selector19~0_combout\);

-- Location: LCCOMB_X89_Y27_N12
\bin2bcd_hour|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector19~1_combout\ = (\bin2bcd_hour|state.done~q\) # ((\bin2bcd_hour|state.shift~q\ & ((\bin2bcd_hour|Equal0~0_combout\) # (\bin2bcd_hour|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Equal0~0_combout\,
	datab => \bin2bcd_hour|state.done~q\,
	datac => \bin2bcd_hour|state.shift~q\,
	datad => \bin2bcd_hour|Selector19~0_combout\,
	combout => \bin2bcd_hour|Selector19~1_combout\);

-- Location: LCCOMB_X89_Y27_N4
\bin2bcd_hour|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector19~2_combout\ = (\bin2bcd_hour|Selector19~1_combout\ & ((\bin2bcd_hour|bcds\(7)) # ((\bin2bcd_hour|bcds\(6) & \bin2bcd_hour|Selector19~0_combout\)))) # (!\bin2bcd_hour|Selector19~1_combout\ & (\bin2bcd_hour|bcds\(6) & 
-- ((\bin2bcd_hour|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Selector19~1_combout\,
	datab => \bin2bcd_hour|bcds\(6),
	datac => \bin2bcd_hour|bcds\(7),
	datad => \bin2bcd_hour|Selector19~0_combout\,
	combout => \bin2bcd_hour|Selector19~2_combout\);

-- Location: FF_X89_Y27_N5
\bin2bcd_hour|bcds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector19~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds\(7));

-- Location: LCCOMB_X89_Y27_N28
\bin2bcd_hour|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector20~0_combout\ = (\bin2bcd_hour|bcds\(5) & ((\bin2bcd_hour|bcds\(4)) # ((!\bin2bcd_hour|bcds\(6) & !\bin2bcd_hour|bcds\(7))))) # (!\bin2bcd_hour|bcds\(5) & (((\bin2bcd_hour|bcds\(7) & !\bin2bcd_hour|bcds\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|bcds\(5),
	datab => \bin2bcd_hour|bcds\(6),
	datac => \bin2bcd_hour|bcds\(7),
	datad => \bin2bcd_hour|bcds\(4),
	combout => \bin2bcd_hour|Selector20~0_combout\);

-- Location: LCCOMB_X89_Y27_N26
\bin2bcd_hour|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector20~1_combout\ = (\bin2bcd_hour|Selector1~0_combout\ & ((\bin2bcd_hour|Selector20~0_combout\) # ((!\bin2bcd_hour|binary[2]~1_combout\ & \bin2bcd_hour|bcds\(6))))) # (!\bin2bcd_hour|Selector1~0_combout\ & 
-- (!\bin2bcd_hour|binary[2]~1_combout\ & (\bin2bcd_hour|bcds\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Selector1~0_combout\,
	datab => \bin2bcd_hour|binary[2]~1_combout\,
	datac => \bin2bcd_hour|bcds\(6),
	datad => \bin2bcd_hour|Selector20~0_combout\,
	combout => \bin2bcd_hour|Selector20~1_combout\);

-- Location: FF_X89_Y27_N27
\bin2bcd_hour|bcds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector20~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds\(6));

-- Location: LCCOMB_X89_Y27_N20
\bin2bcd_hour|bcds_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|bcds_next~1_combout\ = (\bin2bcd_hour|bcds\(6) & (!\bin2bcd_hour|bcds\(4) & ((\bin2bcd_hour|bcds\(5)) # (\bin2bcd_hour|bcds\(7))))) # (!\bin2bcd_hour|bcds\(6) & ((\bin2bcd_hour|bcds\(7) $ (\bin2bcd_hour|bcds\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|bcds\(5),
	datab => \bin2bcd_hour|bcds\(6),
	datac => \bin2bcd_hour|bcds\(7),
	datad => \bin2bcd_hour|bcds\(4),
	combout => \bin2bcd_hour|bcds_next~1_combout\);

-- Location: LCCOMB_X89_Y27_N14
\bin2bcd_hour|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2bcd_hour|Selector21~0_combout\ = (\bin2bcd_hour|Selector1~0_combout\ & ((\bin2bcd_hour|bcds_next~1_combout\) # ((!\bin2bcd_hour|binary[2]~1_combout\ & \bin2bcd_hour|bcds\(5))))) # (!\bin2bcd_hour|Selector1~0_combout\ & 
-- (!\bin2bcd_hour|binary[2]~1_combout\ & (\bin2bcd_hour|bcds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2bcd_hour|Selector1~0_combout\,
	datab => \bin2bcd_hour|binary[2]~1_combout\,
	datac => \bin2bcd_hour|bcds\(5),
	datad => \bin2bcd_hour|bcds_next~1_combout\,
	combout => \bin2bcd_hour|Selector21~0_combout\);

-- Location: FF_X89_Y27_N15
\bin2bcd_hour|bcds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	d => \bin2bcd_hour|Selector21~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds\(5));

-- Location: FF_X89_Y27_N25
\bin2bcd_hour|bcds_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_hour|bcds\(5),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_hour|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds_out_reg\(5));

-- Location: LCCOMB_X89_Y27_N24
\hourT_blink[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourT_blink[1]~1_combout\ = (\bin2bcd_hour|bcds_out_reg\(5)) # ((!\fsm_any_blink~0_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~0_combout\,
	datac => \bin2bcd_hour|bcds_out_reg\(5),
	datad => \blink1|blink~4_combout\,
	combout => \hourT_blink[1]~1_combout\);

-- Location: FF_X89_Y27_N3
\bin2bcd_hour|bcds_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_hour|bcds\(7),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_hour|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds_out_reg\(7));

-- Location: LCCOMB_X89_Y27_N2
\hourT_blink[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourT_blink[3]~3_combout\ = (\bin2bcd_hour|bcds_out_reg\(7)) # ((!\fsm_any_blink~0_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~0_combout\,
	datac => \bin2bcd_hour|bcds_out_reg\(7),
	datad => \blink1|blink~4_combout\,
	combout => \hourT_blink[3]~3_combout\);

-- Location: FF_X89_Y27_N1
\bin2bcd_hour|bcds_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK_50~inputclkctrl_outclk\,
	asdata => \bin2bcd_hour|bcds\(6),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \bin2bcd_hour|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin2bcd_hour|bcds_out_reg\(6));

-- Location: LCCOMB_X89_Y27_N0
\hourT_blink[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hourT_blink[2]~2_combout\ = (\bin2bcd_hour|bcds_out_reg\(6)) # ((!\fsm_any_blink~0_combout\ & \blink1|blink~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_any_blink~0_combout\,
	datac => \bin2bcd_hour|bcds_out_reg\(6),
	datad => \blink1|blink~4_combout\,
	combout => \hourT_blink[2]~2_combout\);

-- Location: LCCOMB_X86_Y4_N16
\bcd_hourT|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourT|Mux6~0_combout\ = (\hourT_blink[0]~0_combout\ & (\hourT_blink[3]~3_combout\ $ (((!\hourT_blink[1]~1_combout\ & !\hourT_blink[2]~2_combout\))))) # (!\hourT_blink[0]~0_combout\ & ((\hourT_blink[2]~2_combout\) # ((\hourT_blink[1]~1_combout\ & 
-- \hourT_blink[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourT_blink[0]~0_combout\,
	datab => \hourT_blink[1]~1_combout\,
	datac => \hourT_blink[3]~3_combout\,
	datad => \hourT_blink[2]~2_combout\,
	combout => \bcd_hourT|Mux6~0_combout\);

-- Location: LCCOMB_X86_Y4_N2
\bcd_hourT|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourT|Mux5~0_combout\ = (\hourT_blink[3]~3_combout\ & (((\hourT_blink[1]~1_combout\) # (\hourT_blink[2]~2_combout\)))) # (!\hourT_blink[3]~3_combout\ & (\hourT_blink[2]~2_combout\ & (\hourT_blink[0]~0_combout\ $ (\hourT_blink[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourT_blink[0]~0_combout\,
	datab => \hourT_blink[1]~1_combout\,
	datac => \hourT_blink[3]~3_combout\,
	datad => \hourT_blink[2]~2_combout\,
	combout => \bcd_hourT|Mux5~0_combout\);

-- Location: LCCOMB_X86_Y4_N12
\bcd_hourT|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourT|Mux4~0_combout\ = (\hourT_blink[2]~2_combout\ & (((\hourT_blink[3]~3_combout\)))) # (!\hourT_blink[2]~2_combout\ & (\hourT_blink[1]~1_combout\ & ((\hourT_blink[3]~3_combout\) # (!\hourT_blink[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourT_blink[0]~0_combout\,
	datab => \hourT_blink[1]~1_combout\,
	datac => \hourT_blink[3]~3_combout\,
	datad => \hourT_blink[2]~2_combout\,
	combout => \bcd_hourT|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y4_N6
\bcd_hourT|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourT|Mux3~0_combout\ = (\hourT_blink[0]~0_combout\ & ((\hourT_blink[3]~3_combout\) # (\hourT_blink[1]~1_combout\ $ (!\hourT_blink[2]~2_combout\)))) # (!\hourT_blink[0]~0_combout\ & ((\hourT_blink[1]~1_combout\ & (\hourT_blink[3]~3_combout\)) # 
-- (!\hourT_blink[1]~1_combout\ & ((\hourT_blink[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourT_blink[0]~0_combout\,
	datab => \hourT_blink[1]~1_combout\,
	datac => \hourT_blink[3]~3_combout\,
	datad => \hourT_blink[2]~2_combout\,
	combout => \bcd_hourT|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y4_N8
\bcd_hourT|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourT|Mux2~0_combout\ = (\hourT_blink[0]~0_combout\) # ((\hourT_blink[1]~1_combout\ & (\hourT_blink[3]~3_combout\)) # (!\hourT_blink[1]~1_combout\ & ((\hourT_blink[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourT_blink[0]~0_combout\,
	datab => \hourT_blink[1]~1_combout\,
	datac => \hourT_blink[3]~3_combout\,
	datad => \hourT_blink[2]~2_combout\,
	combout => \bcd_hourT|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y4_N26
\bcd_hourT|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourT|Mux1~0_combout\ = (\hourT_blink[0]~0_combout\ & ((\hourT_blink[1]~1_combout\) # (\hourT_blink[3]~3_combout\ $ (!\hourT_blink[2]~2_combout\)))) # (!\hourT_blink[0]~0_combout\ & ((\hourT_blink[2]~2_combout\ & ((\hourT_blink[3]~3_combout\))) # 
-- (!\hourT_blink[2]~2_combout\ & (\hourT_blink[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourT_blink[0]~0_combout\,
	datab => \hourT_blink[1]~1_combout\,
	datac => \hourT_blink[3]~3_combout\,
	datad => \hourT_blink[2]~2_combout\,
	combout => \bcd_hourT|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y4_N20
\bcd_hourT|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hourT|Mux0~0_combout\ = (\hourT_blink[1]~1_combout\ & (((!\hourT_blink[2]~2_combout\)) # (!\hourT_blink[0]~0_combout\))) # (!\hourT_blink[1]~1_combout\ & (((\hourT_blink[3]~3_combout\) # (\hourT_blink[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hourT_blink[0]~0_combout\,
	datab => \hourT_blink[1]~1_combout\,
	datac => \hourT_blink[3]~3_combout\,
	datad => \hourT_blink[2]~2_combout\,
	combout => \bcd_hourT|Mux0~0_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


