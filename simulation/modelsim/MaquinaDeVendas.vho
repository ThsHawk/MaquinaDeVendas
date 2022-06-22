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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "06/17/2022 22:50:44"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MaquinaDeVendas IS
    PORT (
	moeda25 : IN std_logic;
	moeda50 : IN std_logic;
	moeda1 : IN std_logic;
	sw_agua : IN std_logic;
	sw_refi : IN std_logic;
	sw_salg : IN std_logic;
	sw_choc : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END MaquinaDeVendas;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[7]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[7]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[7]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sw_refi	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_agua	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_salg	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_choc	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- moeda1	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- moeda25	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- moeda50	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaDeVendas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_moeda25 : std_logic;
SIGNAL ww_moeda50 : std_logic;
SIGNAL ww_moeda1 : std_logic;
SIGNAL ww_sw_agua : std_logic;
SIGNAL ww_sw_refi : std_logic;
SIGNAL ww_sw_salg : std_logic;
SIGNAL ww_sw_choc : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \sw_refi~input_o\ : std_logic;
SIGNAL \sw_agua~input_o\ : std_logic;
SIGNAL \sw_salg~input_o\ : std_logic;
SIGNAL \sw_choc~input_o\ : std_logic;
SIGNAL \sub|mux_sub|process_0~2_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \sub|mux_sub|seletorOUT[0]~0_combout\ : std_logic;
SIGNAL \moeda50~input_o\ : std_logic;
SIGNAL \moeda1~input_o\ : std_logic;
SIGNAL \moeda25~input_o\ : std_logic;
SIGNAL \memoria|memoria[4]~4_combout\ : std_logic;
SIGNAL \sub|mux_sub|process_0~5_combout\ : std_logic;
SIGNAL \mostrador|Mux13~0_combout\ : std_logic;
SIGNAL \memoria|memoria[4]~7_combout\ : std_logic;
SIGNAL \sum|sum_025c|resto~0_combout\ : std_logic;
SIGNAL \sub|mux_sub|process_0~4_combout\ : std_logic;
SIGNAL \memoria|memoria[4]~6_combout\ : std_logic;
SIGNAL \cmp_produto|agua~0_combout\ : std_logic;
SIGNAL \memoria|mux_sub_add|Mux0~1_combout\ : std_logic;
SIGNAL \mostrador|Mux6~1_combout\ : std_logic;
SIGNAL \mostrador|Display1[0]~6_combout\ : std_logic;
SIGNAL \memoria|mux_sub_add|Mux0~0_combout\ : std_logic;
SIGNAL \memoria|mux_sub_add|Mux0~3_combout\ : std_logic;
SIGNAL \memoria|mux_sub_add|Mux0~4_combout\ : std_logic;
SIGNAL \memoria|mux_sub_add|Mux0~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \memoria|memoria[4]~13_combout\ : std_logic;
SIGNAL \sub|mux_sub|process_0~7_combout\ : std_logic;
SIGNAL \memoria|memoria[4]~5_combout\ : std_logic;
SIGNAL \mostrador|Mux1~0_combout\ : std_logic;
SIGNAL \memoria|mux_sub_add|Mux1~0_combout\ : std_logic;
SIGNAL \memoria|mux_sub_add|Mux1~1_combout\ : std_logic;
SIGNAL \memoria|mux_sub_add|Mux1~2_combout\ : std_logic;
SIGNAL \memoria|mux_sub_add|Mux1~3_combout\ : std_logic;
SIGNAL \mostrador|Display1[5]~4_combout\ : std_logic;
SIGNAL \sub|mux_sub|process_0~6_combout\ : std_logic;
SIGNAL \sum|mux_sum|Equal0~0_combout\ : std_logic;
SIGNAL \mostrador|Display1[1]~5_combout\ : std_logic;
SIGNAL \memoria|memoria[0]~11_combout\ : std_logic;
SIGNAL \memoria|memoria[0]~12_combout\ : std_logic;
SIGNAL \memoria|memoria[1]~8_combout\ : std_logic;
SIGNAL \memoria|memoria[1]~9_combout\ : std_logic;
SIGNAL \memoria|memoria[1]~10_combout\ : std_logic;
SIGNAL \sub|mux_sub|dinheiroOUT~2_combout\ : std_logic;
SIGNAL \sub|mux_sub|dinheiroOUT~4_combout\ : std_logic;
SIGNAL \memoria|memoria[3]~0_combout\ : std_logic;
SIGNAL \sum|mux_sum|dinheiroOUT[3]~4_combout\ : std_logic;
SIGNAL \sum|mux_sum|Equal1~0_combout\ : std_logic;
SIGNAL \sum|mux_sum|dinheiroOUT[3]~0_combout\ : std_logic;
SIGNAL \sum|mux_sum|dinheiroOUT[3]~5_combout\ : std_logic;
SIGNAL \sub|mux_sub|dinheiroOUT~3_combout\ : std_logic;
SIGNAL \memoria|memoria[2]~1_combout\ : std_logic;
SIGNAL \sum|mux_sum|dinheiroOUT[2]~1_combout\ : std_logic;
SIGNAL \sum|mux_sum|dinheiroOUT[2]~2_combout\ : std_logic;
SIGNAL \sum|mux_sum|dinheiroOUT[2]~3_combout\ : std_logic;
SIGNAL \sub|mux_sub|process_0~3_combout\ : std_logic;
SIGNAL \mostrador|Display0[3]~0_combout\ : std_logic;
SIGNAL \mostrador|Mux0~0_combout\ : std_logic;
SIGNAL \mostrador|Mux0~1_combout\ : std_logic;
SIGNAL \mostrador|Display0[2]~1_combout\ : std_logic;
SIGNAL \mostrador|Display0[2]~2_combout\ : std_logic;
SIGNAL \mostrador|Display0[3]~3_combout\ : std_logic;
SIGNAL \mostrador|Display0[3]~4_combout\ : std_logic;
SIGNAL \mostrador|Display0[4]~5_combout\ : std_logic;
SIGNAL \mostrador|Display0[4]~6_combout\ : std_logic;
SIGNAL \mostrador|Display0[5]~7_combout\ : std_logic;
SIGNAL \mostrador|Display0[6]~8_combout\ : std_logic;
SIGNAL \mostrador|Mux6~0_combout\ : std_logic;
SIGNAL \mostrador|Display1[0]~7_combout\ : std_logic;
SIGNAL \mostrador|Display1[0]~23_combout\ : std_logic;
SIGNAL \mostrador|Mux7~0_combout\ : std_logic;
SIGNAL \mostrador|Display1[1]~8_combout\ : std_logic;
SIGNAL \mostrador|Mux6~2_combout\ : std_logic;
SIGNAL \mostrador|Mux6~3_combout\ : std_logic;
SIGNAL \mostrador|Mux6~4_combout\ : std_logic;
SIGNAL \mostrador|Display1[2]~9_combout\ : std_logic;
SIGNAL \mostrador|Mux5~0_combout\ : std_logic;
SIGNAL \mostrador|Display1[3]~10_combout\ : std_logic;
SIGNAL \mostrador|Display1[3]~11_combout\ : std_logic;
SIGNAL \mostrador|Display1[3]~12_combout\ : std_logic;
SIGNAL \mostrador|Display1[4]~15_combout\ : std_logic;
SIGNAL \mostrador|Display1[4]~14_combout\ : std_logic;
SIGNAL \mostrador|Display1[4]~16_combout\ : std_logic;
SIGNAL \mostrador|Display3[1]~2_combout\ : std_logic;
SIGNAL \mostrador|Display1[4]~13_combout\ : std_logic;
SIGNAL \mostrador|Display1[4]~17_combout\ : std_logic;
SIGNAL \mostrador|Display1[5]~18_combout\ : std_logic;
SIGNAL \mostrador|Display1[5]~19_combout\ : std_logic;
SIGNAL \mostrador|Display1[5]~20_combout\ : std_logic;
SIGNAL \mostrador|Mux2~0_combout\ : std_logic;
SIGNAL \mostrador|Display1[6]~21_combout\ : std_logic;
SIGNAL \mostrador|Mux1~1_combout\ : std_logic;
SIGNAL \mostrador|Mux1~2_combout\ : std_logic;
SIGNAL \mostrador|Mux1~3_combout\ : std_logic;
SIGNAL \mostrador|Display1[7]~22_combout\ : std_logic;
SIGNAL \mostrador|Mux14~0_combout\ : std_logic;
SIGNAL \mostrador|Display2[1]~0_combout\ : std_logic;
SIGNAL \mostrador|Display2[1]~1_combout\ : std_logic;
SIGNAL \mostrador|Display3[1]~3_combout\ : std_logic;
SIGNAL \mostrador|Display2[2]~2_combout\ : std_logic;
SIGNAL \mostrador|Display2[3]~3_combout\ : std_logic;
SIGNAL \mostrador|Display2[4]~4_combout\ : std_logic;
SIGNAL \mostrador|Display2[4]~5_combout\ : std_logic;
SIGNAL \mostrador|Display2[5]~6_combout\ : std_logic;
SIGNAL \mostrador|Display2[5]~7_combout\ : std_logic;
SIGNAL \mostrador|Display2[6]~8_combout\ : std_logic;
SIGNAL \mostrador|Display2[6]~9_combout\ : std_logic;
SIGNAL \mostrador|Display2[7]~10_combout\ : std_logic;
SIGNAL \mostrador|Display3[1]~4_combout\ : std_logic;
SIGNAL \mostrador|Display3[3]~5_combout\ : std_logic;
SIGNAL \mostrador|Display1~24_combout\ : std_logic;
SIGNAL \mostrador|Display3[5]~7_combout\ : std_logic;
SIGNAL \mostrador|Display3[6]~6_combout\ : std_logic;
SIGNAL \sub|mux_sub|seletorOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \memoria|memoria\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sum|sum_050c|dinheiroOUT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sub|sub_salg|dinheiroOUT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sub|sub_refi|dinheiroOUT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sum|sum_025c|dinheiroOUT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sum|sum_100c|dinheiroOUT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sub|sub_agua|dinheiroOUT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mostrador|ALT_INV_Display1[1]~8_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_moeda25 <= moeda25;
ww_moeda50 <= moeda50;
ww_moeda1 <= moeda1;
ww_sw_agua <= sw_agua;
ww_sw_refi <= sw_refi;
ww_sw_salg <= sw_salg;
ww_sw_choc <= sw_choc;
ww_clk <= clk;
ww_rst <= rst;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\mostrador|ALT_INV_Display1[1]~8_combout\ <= NOT \mostrador|Display1[1]~8_combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y37_N9
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display0[3]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display0[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display0[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display0[4]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display0[5]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display0[6]~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display0[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display1[0]~23_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|ALT_INV_Display1[1]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display1[2]~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display1[3]~12_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display1[4]~17_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display1[5]~20_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display1[6]~21_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display1[7]~22_combout\,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display2[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display2[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display2[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display2[4]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display2[5]~7_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display2[6]~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display2[7]~10_combout\,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display3[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sub|mux_sub|process_0~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display3[3]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display1[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display3[5]~7_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display3[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mostrador|Display0[5]~7_combout\,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\sw_refi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_refi,
	o => \sw_refi~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\sw_agua~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_agua,
	o => \sw_agua~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\sw_salg~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_salg,
	o => \sw_salg~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\sw_choc~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_choc,
	o => \sw_choc~input_o\);

-- Location: LCCOMB_X58_Y53_N16
\sub|mux_sub|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|process_0~2_combout\ = (\sw_refi~input_o\ & (!\sw_agua~input_o\ & (!\sw_salg~input_o\ & !\sw_choc~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_refi~input_o\,
	datab => \sw_agua~input_o\,
	datac => \sw_salg~input_o\,
	datad => \sw_choc~input_o\,
	combout => \sub|mux_sub|process_0~2_combout\);

-- Location: IOIBUF_X46_Y54_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X58_Y53_N4
\sub|mux_sub|seletorOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|seletorOUT[0]~0_combout\ = (!\sw_refi~input_o\ & (\sw_agua~input_o\ & (!\sw_salg~input_o\ & !\sw_choc~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_refi~input_o\,
	datab => \sw_agua~input_o\,
	datac => \sw_salg~input_o\,
	datad => \sw_choc~input_o\,
	combout => \sub|mux_sub|seletorOUT[0]~0_combout\);

-- Location: IOIBUF_X54_Y54_N15
\moeda50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_moeda50,
	o => \moeda50~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\moeda1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_moeda1,
	o => \moeda1~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\moeda25~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_moeda25,
	o => \moeda25~input_o\);

-- Location: LCCOMB_X64_Y50_N24
\memoria|memoria[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[4]~4_combout\ = \mostrador|Display0[3]~0_combout\ $ (((\moeda25~input_o\ & ((\moeda50~input_o\) # (\moeda1~input_o\))) # (!\moeda25~input_o\ & (\moeda50~input_o\ $ (!\moeda1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda25~input_o\,
	datab => \moeda50~input_o\,
	datac => \moeda1~input_o\,
	datad => \mostrador|Display0[3]~0_combout\,
	combout => \memoria|memoria[4]~4_combout\);

-- Location: LCCOMB_X58_Y53_N22
\sub|mux_sub|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|process_0~5_combout\ = (!\sw_refi~input_o\ & (!\sw_agua~input_o\ & (!\sw_salg~input_o\ & \sw_choc~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_refi~input_o\,
	datab => \sw_agua~input_o\,
	datac => \sw_salg~input_o\,
	datad => \sw_choc~input_o\,
	combout => \sub|mux_sub|process_0~5_combout\);

-- Location: LCCOMB_X65_Y50_N30
\mostrador|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux13~0_combout\ = (\memoria|memoria\(1) & (\memoria|memoria\(3) & \memoria|memoria\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoria|memoria\(1),
	datac => \memoria|memoria\(3),
	datad => \memoria|memoria\(2),
	combout => \mostrador|Mux13~0_combout\);

-- Location: LCCOMB_X64_Y50_N26
\memoria|memoria[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[4]~7_combout\ = (\mostrador|Display0[3]~0_combout\ & (((\moeda50~input_o\) # (\moeda1~input_o\)) # (!\moeda25~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda25~input_o\,
	datab => \moeda50~input_o\,
	datac => \moeda1~input_o\,
	datad => \mostrador|Display0[3]~0_combout\,
	combout => \memoria|memoria[4]~7_combout\);

-- Location: LCCOMB_X66_Y50_N10
\sum|sum_100c|dinheiroOUT[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|sum_100c|dinheiroOUT\(4) = \memoria|memoria\(4) $ (((\memoria|memoria\(3) & \memoria|memoria\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(4),
	combout => \sum|sum_100c|dinheiroOUT\(4));

-- Location: LCCOMB_X66_Y50_N12
\sub|sub_salg|dinheiroOUT[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|sub_salg|dinheiroOUT\(4) = \memoria|memoria\(4) $ ((((!\memoria|memoria\(1)) # (!\memoria|memoria\(3))) # (!\memoria|memoria\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(1),
	datad => \memoria|memoria\(4),
	combout => \sub|sub_salg|dinheiroOUT\(4));

-- Location: LCCOMB_X63_Y50_N28
\sum|sum_025c|resto~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|sum_025c|resto~0_combout\ = (\memoria|memoria\(1) & (\memoria|memoria\(0) & (\memoria|memoria\(2) & \memoria|memoria\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(1),
	datab => \memoria|memoria\(0),
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(3),
	combout => \sum|sum_025c|resto~0_combout\);

-- Location: LCCOMB_X64_Y50_N8
\sum|sum_025c|dinheiroOUT[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|sum_025c|dinheiroOUT\(4) = \memoria|memoria\(4) $ (\sum|sum_025c|resto~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(4),
	datad => \sum|sum_025c|resto~0_combout\,
	combout => \sum|sum_025c|dinheiroOUT\(4));

-- Location: LCCOMB_X66_Y50_N2
\sub|sub_agua|dinheiroOUT[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|sub_agua|dinheiroOUT\(4) = \memoria|memoria\(4) $ (((!\memoria|memoria\(3) & ((!\memoria|memoria\(1)) # (!\memoria|memoria\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(1),
	datad => \memoria|memoria\(4),
	combout => \sub|sub_agua|dinheiroOUT\(4));

-- Location: LCCOMB_X58_Y53_N10
\sub|mux_sub|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|process_0~4_combout\ = (!\sw_refi~input_o\ & (!\sw_agua~input_o\ & (\sw_salg~input_o\ & !\sw_choc~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_refi~input_o\,
	datab => \sw_agua~input_o\,
	datac => \sw_salg~input_o\,
	datad => \sw_choc~input_o\,
	combout => \sub|mux_sub|process_0~4_combout\);

-- Location: LCCOMB_X64_Y50_N12
\memoria|memoria[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[4]~6_combout\ = ((!\moeda25~input_o\ & (\moeda50~input_o\ & !\moeda1~input_o\))) # (!\mostrador|Display0[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda25~input_o\,
	datab => \moeda50~input_o\,
	datac => \moeda1~input_o\,
	datad => \mostrador|Display0[3]~0_combout\,
	combout => \memoria|memoria[4]~6_combout\);

-- Location: LCCOMB_X65_Y50_N4
\cmp_produto|agua~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp_produto|agua~0_combout\ = (\memoria|memoria\(1) & \memoria|memoria\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoria|memoria\(1),
	datad => \memoria|memoria\(2),
	combout => \cmp_produto|agua~0_combout\);

-- Location: LCCOMB_X64_Y50_N14
\sum|sum_050c|dinheiroOUT[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|sum_050c|dinheiroOUT\(5) = \memoria|memoria\(5) $ (((\memoria|memoria\(3) & (\memoria|memoria\(4) & \cmp_produto|agua~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(5),
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(4),
	datad => \cmp_produto|agua~0_combout\,
	combout => \sum|sum_050c|dinheiroOUT\(5));

-- Location: LCCOMB_X63_Y50_N10
\sum|sum_025c|dinheiroOUT[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|sum_025c|dinheiroOUT\(5) = \memoria|memoria\(5) $ (((\memoria|memoria\(4) & \sum|sum_025c|resto~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoria|memoria\(4),
	datac => \memoria|memoria\(5),
	datad => \sum|sum_025c|resto~0_combout\,
	combout => \sum|sum_025c|dinheiroOUT\(5));

-- Location: LCCOMB_X63_Y50_N6
\sum|sum_100c|dinheiroOUT[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|sum_100c|dinheiroOUT\(5) = \memoria|memoria\(5) $ (((\memoria|memoria\(3) & (\memoria|memoria\(2) & \memoria|memoria\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(5),
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(4),
	combout => \sum|sum_100c|dinheiroOUT\(5));

-- Location: LCCOMB_X64_Y50_N4
\memoria|mux_sub_add|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|mux_sub_add|Mux0~1_combout\ = (\memoria|memoria[4]~7_combout\ & (((\sum|sum_100c|dinheiroOUT\(5)) # (\memoria|memoria[4]~6_combout\)))) # (!\memoria|memoria[4]~7_combout\ & (\sum|sum_025c|dinheiroOUT\(5) & ((!\memoria|memoria[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|sum_025c|dinheiroOUT\(5),
	datab => \sum|sum_100c|dinheiroOUT\(5),
	datac => \memoria|memoria[4]~7_combout\,
	datad => \memoria|memoria[4]~6_combout\,
	combout => \memoria|mux_sub_add|Mux0~1_combout\);

-- Location: LCCOMB_X64_Y50_N2
\sub|sub_refi|dinheiroOUT[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|sub_refi|dinheiroOUT\(5) = \memoria|memoria\(5) $ (((!\memoria|memoria\(4) & ((!\memoria|memoria\(2)) # (!\memoria|memoria\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(4),
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(5),
	combout => \sub|sub_refi|dinheiroOUT\(5));

-- Location: LCCOMB_X64_Y50_N30
\mostrador|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux6~1_combout\ = \memoria|memoria\(4) $ (\memoria|memoria\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(4),
	datad => \memoria|memoria\(5),
	combout => \mostrador|Mux6~1_combout\);

-- Location: LCCOMB_X65_Y50_N10
\mostrador|Display1[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[0]~6_combout\ = (\sub|mux_sub|seletorOUT\(0)) # (\sub|mux_sub|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub|mux_sub|seletorOUT\(0),
	datad => \sub|mux_sub|process_0~3_combout\,
	combout => \mostrador|Display1[0]~6_combout\);

-- Location: LCCOMB_X65_Y50_N2
\memoria|mux_sub_add|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|mux_sub_add|Mux0~0_combout\ = (\memoria|memoria[4]~5_combout\ & (((\mostrador|Display1[0]~6_combout\)))) # (!\memoria|memoria[4]~5_combout\ & ((\mostrador|Display1[0]~6_combout\ & (\sub|sub_refi|dinheiroOUT\(5))) # 
-- (!\mostrador|Display1[0]~6_combout\ & ((!\mostrador|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|sub_refi|dinheiroOUT\(5),
	datab => \mostrador|Mux6~1_combout\,
	datac => \memoria|memoria[4]~5_combout\,
	datad => \mostrador|Display1[0]~6_combout\,
	combout => \memoria|mux_sub_add|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y50_N16
\memoria|mux_sub_add|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|mux_sub_add|Mux0~3_combout\ = (!\memoria|memoria\(4) & ((\cmp_produto|agua~0_combout\ & (!\memoria|memoria\(3) & !\memoria|mux_sub_add|Mux0~0_combout\)) # (!\cmp_produto|agua~0_combout\ & ((!\memoria|mux_sub_add|Mux0~0_combout\) # 
-- (!\memoria|memoria\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(4),
	datab => \cmp_produto|agua~0_combout\,
	datac => \memoria|memoria\(3),
	datad => \memoria|mux_sub_add|Mux0~0_combout\,
	combout => \memoria|mux_sub_add|Mux0~3_combout\);

-- Location: LCCOMB_X65_Y50_N18
\memoria|mux_sub_add|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|mux_sub_add|Mux0~4_combout\ = (\memoria|memoria[4]~5_combout\ & (\memoria|memoria\(5) $ (((\memoria|mux_sub_add|Mux0~3_combout\))))) # (!\memoria|memoria[4]~5_combout\ & (((\memoria|mux_sub_add|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria[4]~5_combout\,
	datab => \memoria|memoria\(5),
	datac => \memoria|mux_sub_add|Mux0~0_combout\,
	datad => \memoria|mux_sub_add|Mux0~3_combout\,
	combout => \memoria|mux_sub_add|Mux0~4_combout\);

-- Location: LCCOMB_X64_Y50_N20
\memoria|mux_sub_add|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|mux_sub_add|Mux0~2_combout\ = (\memoria|memoria[4]~6_combout\ & ((\memoria|mux_sub_add|Mux0~1_combout\ & (\sum|sum_050c|dinheiroOUT\(5))) # (!\memoria|mux_sub_add|Mux0~1_combout\ & ((\memoria|mux_sub_add|Mux0~4_combout\))))) # 
-- (!\memoria|memoria[4]~6_combout\ & (((\memoria|mux_sub_add|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria[4]~6_combout\,
	datab => \sum|sum_050c|dinheiroOUT\(5),
	datac => \memoria|mux_sub_add|Mux0~1_combout\,
	datad => \memoria|mux_sub_add|Mux0~4_combout\,
	combout => \memoria|mux_sub_add|Mux0~2_combout\);

-- Location: IOIBUF_X69_Y54_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X64_Y50_N10
\memoria|memoria[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[4]~13_combout\ = \mostrador|Display0[3]~0_combout\ $ (((\moeda25~input_o\ & ((\moeda50~input_o\) # (\moeda1~input_o\))) # (!\moeda25~input_o\ & (\moeda50~input_o\ $ (!\moeda1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda25~input_o\,
	datab => \moeda50~input_o\,
	datac => \moeda1~input_o\,
	datad => \mostrador|Display0[3]~0_combout\,
	combout => \memoria|memoria[4]~13_combout\);

-- Location: FF_X64_Y50_N21
\memoria|memoria[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memoria|mux_sub_add|Mux0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \memoria|memoria[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria|memoria\(5));

-- Location: LCCOMB_X65_Y50_N14
\sub|mux_sub|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|process_0~7_combout\ = (\sub|mux_sub|process_0~4_combout\ & ((\memoria|memoria\(4)) # ((\mostrador|Mux13~0_combout\) # (\memoria|memoria\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(4),
	datab => \sub|mux_sub|process_0~4_combout\,
	datac => \mostrador|Mux13~0_combout\,
	datad => \memoria|memoria\(5),
	combout => \sub|mux_sub|process_0~7_combout\);

-- Location: LCCOMB_X65_Y50_N8
\memoria|memoria[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[4]~5_combout\ = (\sub|mux_sub|seletorOUT\(0)) # ((\sub|mux_sub|process_0~7_combout\ & !\sub|mux_sub|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub|mux_sub|process_0~7_combout\,
	datac => \sub|mux_sub|seletorOUT\(0),
	datad => \sub|mux_sub|process_0~3_combout\,
	combout => \memoria|memoria[4]~5_combout\);

-- Location: LCCOMB_X66_Y50_N18
\mostrador|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux1~0_combout\ = (\memoria|memoria\(3) & \memoria|memoria\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoria|memoria\(3),
	datad => \memoria|memoria\(2),
	combout => \mostrador|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y50_N24
\memoria|mux_sub_add|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|mux_sub_add|Mux1~0_combout\ = (\memoria|memoria[4]~5_combout\ & (((\mostrador|Display1[0]~6_combout\)))) # (!\memoria|memoria[4]~5_combout\ & (\memoria|memoria\(4) $ (((!\mostrador|Display1[0]~6_combout\) # (!\mostrador|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(4),
	datab => \mostrador|Mux1~0_combout\,
	datac => \memoria|memoria[4]~5_combout\,
	datad => \mostrador|Display1[0]~6_combout\,
	combout => \memoria|mux_sub_add|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y50_N22
\memoria|mux_sub_add|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|mux_sub_add|Mux1~1_combout\ = (\memoria|memoria[4]~5_combout\ & ((\memoria|mux_sub_add|Mux1~0_combout\ & (\sub|sub_agua|dinheiroOUT\(4))) # (!\memoria|mux_sub_add|Mux1~0_combout\ & ((\sub|sub_salg|dinheiroOUT\(4)))))) # 
-- (!\memoria|memoria[4]~5_combout\ & (((\memoria|mux_sub_add|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|sub_agua|dinheiroOUT\(4),
	datab => \sub|sub_salg|dinheiroOUT\(4),
	datac => \memoria|memoria[4]~5_combout\,
	datad => \memoria|mux_sub_add|Mux1~0_combout\,
	combout => \memoria|mux_sub_add|Mux1~1_combout\);

-- Location: LCCOMB_X65_Y50_N28
\memoria|mux_sub_add|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|mux_sub_add|Mux1~2_combout\ = (\memoria|memoria[4]~7_combout\ & (((\memoria|memoria[4]~6_combout\)))) # (!\memoria|memoria[4]~7_combout\ & ((\memoria|memoria[4]~6_combout\ & ((\memoria|mux_sub_add|Mux1~1_combout\))) # 
-- (!\memoria|memoria[4]~6_combout\ & (\sum|sum_025c|dinheiroOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria[4]~7_combout\,
	datab => \sum|sum_025c|dinheiroOUT\(4),
	datac => \memoria|mux_sub_add|Mux1~1_combout\,
	datad => \memoria|memoria[4]~6_combout\,
	combout => \memoria|mux_sub_add|Mux1~2_combout\);

-- Location: LCCOMB_X65_Y50_N12
\memoria|mux_sub_add|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|mux_sub_add|Mux1~3_combout\ = (\memoria|memoria[4]~7_combout\ & ((\memoria|mux_sub_add|Mux1~2_combout\ & ((!\sub|sub_salg|dinheiroOUT\(4)))) # (!\memoria|mux_sub_add|Mux1~2_combout\ & (\sum|sum_100c|dinheiroOUT\(4))))) # 
-- (!\memoria|memoria[4]~7_combout\ & (((\memoria|mux_sub_add|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria[4]~7_combout\,
	datab => \sum|sum_100c|dinheiroOUT\(4),
	datac => \sub|sub_salg|dinheiroOUT\(4),
	datad => \memoria|mux_sub_add|Mux1~2_combout\,
	combout => \memoria|mux_sub_add|Mux1~3_combout\);

-- Location: FF_X65_Y50_N13
\memoria|memoria[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memoria|mux_sub_add|Mux1~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \memoria|memoria[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria|memoria\(4));

-- Location: LCCOMB_X65_Y50_N6
\mostrador|Display1[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[5]~4_combout\ = (!\memoria|memoria\(4) & !\memoria|memoria\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(4),
	datad => \memoria|memoria\(5),
	combout => \mostrador|Display1[5]~4_combout\);

-- Location: LCCOMB_X65_Y50_N0
\sub|mux_sub|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|process_0~6_combout\ = (\sub|mux_sub|process_0~5_combout\ & (((\memoria|memoria\(0) & \mostrador|Mux13~0_combout\)) # (!\mostrador|Display1[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(0),
	datab => \sub|mux_sub|process_0~5_combout\,
	datac => \mostrador|Mux13~0_combout\,
	datad => \mostrador|Display1[5]~4_combout\,
	combout => \sub|mux_sub|process_0~6_combout\);

-- Location: LCCOMB_X63_Y50_N18
\sum|mux_sum|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|mux_sum|Equal0~0_combout\ = (\moeda50~input_o\) # ((\moeda1~input_o\) # (!\moeda25~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda50~input_o\,
	datab => \moeda1~input_o\,
	datac => \moeda25~input_o\,
	combout => \sum|mux_sum|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y50_N16
\mostrador|Display1[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[1]~5_combout\ = (!\sub|mux_sub|process_0~3_combout\ & !\sub|mux_sub|process_0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~3_combout\,
	datac => \sub|mux_sub|process_0~7_combout\,
	combout => \mostrador|Display1[1]~5_combout\);

-- Location: LCCOMB_X64_Y50_N28
\memoria|memoria[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[0]~11_combout\ = (\sub|mux_sub|process_0~6_combout\) # ((!\sub|mux_sub|seletorOUT\(0) & (!\sum|mux_sum|Equal0~0_combout\ & \mostrador|Display1[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~6_combout\,
	datab => \sub|mux_sub|seletorOUT\(0),
	datac => \sum|mux_sum|Equal0~0_combout\,
	datad => \mostrador|Display1[1]~5_combout\,
	combout => \memoria|memoria[0]~11_combout\);

-- Location: LCCOMB_X64_Y50_N0
\memoria|memoria[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[0]~12_combout\ = \memoria|memoria\(0) $ (((\memoria|memoria[4]~4_combout\ & \memoria|memoria[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoria|memoria[4]~4_combout\,
	datac => \memoria|memoria\(0),
	datad => \memoria|memoria[0]~11_combout\,
	combout => \memoria|memoria[0]~12_combout\);

-- Location: FF_X64_Y50_N1
\memoria|memoria[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memoria|memoria[0]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria|memoria\(0));

-- Location: LCCOMB_X63_Y50_N16
\memoria|memoria[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[1]~8_combout\ = (!\moeda1~input_o\ & ((\moeda50~input_o\ & ((!\moeda25~input_o\))) # (!\moeda50~input_o\ & (\memoria|memoria\(0) & \moeda25~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda50~input_o\,
	datab => \moeda1~input_o\,
	datac => \memoria|memoria\(0),
	datad => \moeda25~input_o\,
	combout => \memoria|memoria[1]~8_combout\);

-- Location: LCCOMB_X64_Y50_N22
\memoria|memoria[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[1]~9_combout\ = (\mostrador|Display0[3]~0_combout\ & (\memoria|memoria[1]~8_combout\)) # (!\mostrador|Display0[3]~0_combout\ & (((\sub|mux_sub|process_0~7_combout\) # (\sub|mux_sub|seletorOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria[1]~8_combout\,
	datab => \mostrador|Display0[3]~0_combout\,
	datac => \sub|mux_sub|process_0~7_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \memoria|memoria[1]~9_combout\);

-- Location: LCCOMB_X64_Y50_N6
\memoria|memoria[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[1]~10_combout\ = \memoria|memoria\(1) $ (((\memoria|memoria[1]~9_combout\ & \memoria|memoria[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria[1]~9_combout\,
	datab => \memoria|memoria[4]~4_combout\,
	datac => \memoria|memoria\(1),
	combout => \memoria|memoria[1]~10_combout\);

-- Location: FF_X64_Y50_N7
\memoria|memoria[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memoria|memoria[1]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria|memoria\(1));

-- Location: LCCOMB_X66_Y50_N14
\sub|sub_salg|dinheiroOUT[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|sub_salg|dinheiroOUT\(3) = \memoria|memoria\(3) $ (((!\memoria|memoria\(2)) # (!\memoria|memoria\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(1),
	datad => \memoria|memoria\(2),
	combout => \sub|sub_salg|dinheiroOUT\(3));

-- Location: LCCOMB_X66_Y50_N24
\sub|mux_sub|dinheiroOUT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|dinheiroOUT~2_combout\ = (!\sub|mux_sub|process_0~3_combout\ & (\memoria|memoria\(3) $ (((\cmp_produto|agua~0_combout\ & \sub|mux_sub|process_0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~3_combout\,
	datab => \memoria|memoria\(3),
	datac => \cmp_produto|agua~0_combout\,
	datad => \sub|mux_sub|process_0~7_combout\,
	combout => \sub|mux_sub|dinheiroOUT~2_combout\);

-- Location: LCCOMB_X66_Y50_N16
\sub|mux_sub|dinheiroOUT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|dinheiroOUT~4_combout\ = (\sub|mux_sub|dinheiroOUT~2_combout\) # ((\sub|mux_sub|process_0~3_combout\ & (\memoria|memoria\(2) $ (\memoria|memoria\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(3),
	datac => \sub|mux_sub|process_0~3_combout\,
	datad => \sub|mux_sub|dinheiroOUT~2_combout\,
	combout => \sub|mux_sub|dinheiroOUT~4_combout\);

-- Location: LCCOMB_X66_Y50_N8
\memoria|memoria[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[3]~0_combout\ = (\sub|mux_sub|seletorOUT\(0) & (\sub|sub_salg|dinheiroOUT\(3))) # (!\sub|mux_sub|seletorOUT\(0) & ((\sub|mux_sub|dinheiroOUT~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|seletorOUT\(0),
	datab => \sub|sub_salg|dinheiroOUT\(3),
	datad => \sub|mux_sub|dinheiroOUT~4_combout\,
	combout => \memoria|memoria[3]~0_combout\);

-- Location: LCCOMB_X63_Y50_N22
\sum|mux_sum|dinheiroOUT[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|mux_sum|dinheiroOUT[3]~4_combout\ = (\moeda50~input_o\ & (!\moeda1~input_o\ & ((\moeda25~input_o\)))) # (!\moeda50~input_o\ & (!\moeda25~input_o\ & ((\memoria|memoria\(2)) # (!\moeda1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda50~input_o\,
	datab => \moeda1~input_o\,
	datac => \memoria|memoria\(2),
	datad => \moeda25~input_o\,
	combout => \sum|mux_sum|dinheiroOUT[3]~4_combout\);

-- Location: LCCOMB_X66_Y50_N28
\sum|sum_025c|dinheiroOUT[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|sum_025c|dinheiroOUT\(3) = \memoria|memoria\(3) $ (((\memoria|memoria\(2) & (\memoria|memoria\(1) & \memoria|memoria\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(1),
	datad => \memoria|memoria\(0),
	combout => \sum|sum_025c|dinheiroOUT\(3));

-- Location: LCCOMB_X63_Y50_N12
\sum|mux_sum|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|mux_sum|Equal1~0_combout\ = (\moeda50~input_o\ & (!\moeda1~input_o\ & !\moeda25~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda50~input_o\,
	datab => \moeda1~input_o\,
	datac => \moeda25~input_o\,
	combout => \sum|mux_sum|Equal1~0_combout\);

-- Location: LCCOMB_X66_Y50_N6
\sum|mux_sum|dinheiroOUT[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|mux_sum|dinheiroOUT[3]~0_combout\ = (\sum|mux_sum|Equal0~0_combout\ & (((!\sub|sub_salg|dinheiroOUT\(3) & \sum|mux_sum|Equal1~0_combout\)))) # (!\sum|mux_sum|Equal0~0_combout\ & ((\sum|sum_025c|dinheiroOUT\(3)) # ((!\sub|sub_salg|dinheiroOUT\(3) & 
-- \sum|mux_sum|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|mux_sum|Equal0~0_combout\,
	datab => \sum|sum_025c|dinheiroOUT\(3),
	datac => \sub|sub_salg|dinheiroOUT\(3),
	datad => \sum|mux_sum|Equal1~0_combout\,
	combout => \sum|mux_sum|dinheiroOUT[3]~0_combout\);

-- Location: LCCOMB_X66_Y50_N30
\sum|mux_sum|dinheiroOUT[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|mux_sum|dinheiroOUT[3]~5_combout\ = (\sum|mux_sum|dinheiroOUT[3]~0_combout\) # ((\moeda1~input_o\ & (\memoria|memoria\(3) $ (\sum|mux_sum|dinheiroOUT[3]~4_combout\))) # (!\moeda1~input_o\ & (\memoria|memoria\(3) & 
-- \sum|mux_sum|dinheiroOUT[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda1~input_o\,
	datab => \memoria|memoria\(3),
	datac => \sum|mux_sum|dinheiroOUT[3]~4_combout\,
	datad => \sum|mux_sum|dinheiroOUT[3]~0_combout\,
	combout => \sum|mux_sum|dinheiroOUT[3]~5_combout\);

-- Location: FF_X66_Y50_N9
\memoria|memoria[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memoria|memoria[3]~0_combout\,
	asdata => \sum|mux_sum|dinheiroOUT[3]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \mostrador|Display0[3]~0_combout\,
	ena => \memoria|memoria[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria|memoria\(3));

-- Location: LCCOMB_X65_Y50_N26
\sub|mux_sub|seletorOUT[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|seletorOUT\(0) = (\sub|mux_sub|seletorOUT[0]~0_combout\ & ((\memoria|memoria\(3)) # ((\cmp_produto|agua~0_combout\) # (!\mostrador|Display1[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|seletorOUT[0]~0_combout\,
	datab => \memoria|memoria\(3),
	datac => \cmp_produto|agua~0_combout\,
	datad => \mostrador|Display1[5]~4_combout\,
	combout => \sub|mux_sub|seletorOUT\(0));

-- Location: LCCOMB_X67_Y50_N24
\sum|sum_050c|dinheiroOUT[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|sum_050c|dinheiroOUT\(2) = \memoria|memoria\(2) $ (\memoria|memoria\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(1),
	combout => \sum|sum_050c|dinheiroOUT\(2));

-- Location: LCCOMB_X66_Y50_N0
\sub|mux_sub|dinheiroOUT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|dinheiroOUT~3_combout\ = \memoria|memoria\(2) $ (((\sub|mux_sub|process_0~3_combout\) # ((\memoria|memoria\(1) & \sub|mux_sub|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(1),
	datac => \sub|mux_sub|process_0~3_combout\,
	datad => \sub|mux_sub|process_0~7_combout\,
	combout => \sub|mux_sub|dinheiroOUT~3_combout\);

-- Location: LCCOMB_X66_Y50_N26
\memoria|memoria[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memoria|memoria[2]~1_combout\ = (\sub|mux_sub|seletorOUT\(0) & (\sum|sum_050c|dinheiroOUT\(2))) # (!\sub|mux_sub|seletorOUT\(0) & ((\sub|mux_sub|dinheiroOUT~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|seletorOUT\(0),
	datab => \sum|sum_050c|dinheiroOUT\(2),
	datad => \sub|mux_sub|dinheiroOUT~3_combout\,
	combout => \memoria|memoria[2]~1_combout\);

-- Location: LCCOMB_X63_Y50_N8
\sum|mux_sum|dinheiroOUT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|mux_sum|dinheiroOUT[2]~1_combout\ = (\moeda1~input_o\ & (\memoria|memoria\(2) $ (((!\moeda50~input_o\ & !\moeda25~input_o\))))) # (!\moeda1~input_o\ & (\memoria|memoria\(2) & (\moeda50~input_o\ $ (!\moeda25~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moeda50~input_o\,
	datab => \moeda1~input_o\,
	datac => \memoria|memoria\(2),
	datad => \moeda25~input_o\,
	combout => \sum|mux_sum|dinheiroOUT[2]~1_combout\);

-- Location: LCCOMB_X66_Y50_N22
\sum|mux_sum|dinheiroOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|mux_sum|dinheiroOUT[2]~2_combout\ = (!\sum|mux_sum|Equal0~0_combout\ & (\memoria|memoria\(2) $ (((\memoria|memoria\(1) & \memoria|memoria\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(1),
	datac => \sum|mux_sum|Equal0~0_combout\,
	datad => \memoria|memoria\(0),
	combout => \sum|mux_sum|dinheiroOUT[2]~2_combout\);

-- Location: LCCOMB_X66_Y50_N4
\sum|mux_sum|dinheiroOUT[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sum|mux_sum|dinheiroOUT[2]~3_combout\ = (\sum|mux_sum|dinheiroOUT[2]~1_combout\) # ((\sum|mux_sum|dinheiroOUT[2]~2_combout\) # ((\sum|mux_sum|Equal1~0_combout\ & \sum|sum_050c|dinheiroOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|mux_sum|Equal1~0_combout\,
	datab => \sum|mux_sum|dinheiroOUT[2]~1_combout\,
	datac => \sum|mux_sum|dinheiroOUT[2]~2_combout\,
	datad => \sum|sum_050c|dinheiroOUT\(2),
	combout => \sum|mux_sum|dinheiroOUT[2]~3_combout\);

-- Location: FF_X66_Y50_N27
\memoria|memoria[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \memoria|memoria[2]~1_combout\,
	asdata => \sum|mux_sum|dinheiroOUT[2]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \mostrador|Display0[3]~0_combout\,
	ena => \memoria|memoria[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria|memoria\(2));

-- Location: LCCOMB_X65_Y50_N20
\sub|mux_sub|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sub|mux_sub|process_0~3_combout\ = (\sub|mux_sub|process_0~2_combout\ & (((\memoria|memoria\(2) & \memoria|memoria\(3))) # (!\mostrador|Display1[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~2_combout\,
	datab => \memoria|memoria\(2),
	datac => \memoria|memoria\(3),
	datad => \mostrador|Display1[5]~4_combout\,
	combout => \sub|mux_sub|process_0~3_combout\);

-- Location: LCCOMB_X64_Y50_N18
\mostrador|Display0[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display0[3]~0_combout\ = (!\sub|mux_sub|process_0~3_combout\ & (!\sub|mux_sub|process_0~7_combout\ & (!\sub|mux_sub|process_0~6_combout\ & !\sub|mux_sub|seletorOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~3_combout\,
	datab => \sub|mux_sub|process_0~7_combout\,
	datac => \sub|mux_sub|process_0~6_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display0[3]~0_combout\);

-- Location: LCCOMB_X63_Y50_N4
\mostrador|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux0~0_combout\ = (\memoria|memoria\(2) & (\memoria|memoria\(3) & ((\memoria|memoria\(1)) # (\memoria|memoria\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(1),
	datab => \memoria|memoria\(2),
	datac => \memoria|memoria\(0),
	datad => \memoria|memoria\(3),
	combout => \mostrador|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y50_N2
\mostrador|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux0~1_combout\ = (\memoria|memoria\(5) & ((\memoria|memoria\(4) & ((!\mostrador|Mux0~0_combout\))) # (!\memoria|memoria\(4) & (\memoria|memoria\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(3),
	datab => \mostrador|Mux0~0_combout\,
	datac => \memoria|memoria\(5),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Mux0~1_combout\);

-- Location: LCCOMB_X69_Y50_N28
\mostrador|Display0[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display0[2]~1_combout\ = (\sub|mux_sub|process_0~6_combout\) # ((\mostrador|Mux0~1_combout\ & (!\sub|mux_sub|process_0~7_combout\ & !\sub|mux_sub|seletorOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~6_combout\,
	datab => \mostrador|Mux0~1_combout\,
	datac => \sub|mux_sub|process_0~7_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display0[2]~1_combout\);

-- Location: LCCOMB_X69_Y50_N18
\mostrador|Display0[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display0[2]~2_combout\ = (\sub|mux_sub|process_0~3_combout\) # (\mostrador|Display0[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub|mux_sub|process_0~3_combout\,
	datad => \mostrador|Display0[2]~1_combout\,
	combout => \mostrador|Display0[2]~2_combout\);

-- Location: LCCOMB_X69_Y50_N24
\mostrador|Display0[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display0[3]~3_combout\ = (\sub|mux_sub|seletorOUT\(0)) # ((\sub|mux_sub|process_0~3_combout\) # (!\sub|mux_sub|process_0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub|mux_sub|seletorOUT\(0),
	datac => \sub|mux_sub|process_0~7_combout\,
	datad => \sub|mux_sub|process_0~3_combout\,
	combout => \mostrador|Display0[3]~3_combout\);

-- Location: LCCOMB_X69_Y50_N10
\mostrador|Display0[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display0[3]~4_combout\ = ((\mostrador|Mux0~1_combout\ & \mostrador|Display0[3]~0_combout\)) # (!\mostrador|Display0[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mostrador|Display0[3]~3_combout\,
	datac => \mostrador|Mux0~1_combout\,
	datad => \mostrador|Display0[3]~0_combout\,
	combout => \mostrador|Display0[3]~4_combout\);

-- Location: LCCOMB_X69_Y50_N20
\mostrador|Display0[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display0[4]~5_combout\ = (\mostrador|Mux0~1_combout\ & !\sub|mux_sub|process_0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mostrador|Mux0~1_combout\,
	datac => \sub|mux_sub|process_0~6_combout\,
	combout => \mostrador|Display0[4]~5_combout\);

-- Location: LCCOMB_X69_Y50_N22
\mostrador|Display0[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display0[4]~6_combout\ = (\mostrador|Display0[3]~3_combout\ & (((\sub|mux_sub|seletorOUT\(0)) # (\mostrador|Display0[4]~5_combout\)) # (!\mostrador|Display1[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display1[1]~5_combout\,
	datab => \sub|mux_sub|seletorOUT\(0),
	datac => \mostrador|Display0[4]~5_combout\,
	datad => \mostrador|Display0[3]~3_combout\,
	combout => \mostrador|Display0[4]~6_combout\);

-- Location: LCCOMB_X69_Y50_N8
\mostrador|Display0[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display0[5]~7_combout\ = (!\sub|mux_sub|seletorOUT\(0) & ((\sub|mux_sub|process_0~6_combout\) # (\sub|mux_sub|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub|mux_sub|process_0~6_combout\,
	datac => \sub|mux_sub|process_0~3_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display0[5]~7_combout\);

-- Location: LCCOMB_X69_Y50_N26
\mostrador|Display0[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display0[6]~8_combout\ = (!\sub|mux_sub|seletorOUT\(0) & ((\sub|mux_sub|process_0~7_combout\) # ((\sub|mux_sub|process_0~6_combout\) # (\sub|mux_sub|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~7_combout\,
	datab => \sub|mux_sub|seletorOUT\(0),
	datac => \sub|mux_sub|process_0~6_combout\,
	datad => \sub|mux_sub|process_0~3_combout\,
	combout => \mostrador|Display0[6]~8_combout\);

-- Location: LCCOMB_X67_Y50_N16
\mostrador|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux6~0_combout\ = (\memoria|memoria\(5) & \memoria|memoria\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoria|memoria\(5),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y50_N26
\mostrador|Display1[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[0]~7_combout\ = (!\sub|mux_sub|process_0~7_combout\ & (!\sub|mux_sub|process_0~6_combout\ & ((!\mostrador|Mux0~0_combout\) # (!\mostrador|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~7_combout\,
	datab => \mostrador|Mux6~0_combout\,
	datac => \sub|mux_sub|process_0~6_combout\,
	datad => \mostrador|Mux0~0_combout\,
	combout => \mostrador|Display1[0]~7_combout\);

-- Location: LCCOMB_X69_Y50_N6
\mostrador|Display1[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[0]~23_combout\ = ((\sub|mux_sub|process_0~3_combout\) # (\sub|mux_sub|seletorOUT\(0))) # (!\mostrador|Display1[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mostrador|Display1[0]~7_combout\,
	datac => \sub|mux_sub|process_0~3_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display1[0]~23_combout\);

-- Location: LCCOMB_X67_Y50_N0
\mostrador|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux7~0_combout\ = (\memoria|memoria\(4) & (((\memoria|memoria\(5)) # (!\memoria|memoria\(3))) # (!\memoria|memoria\(2)))) # (!\memoria|memoria\(4) & ((\memoria|memoria\(5) $ (\memoria|memoria\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(5),
	datac => \memoria|memoria\(3),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Mux7~0_combout\);

-- Location: LCCOMB_X67_Y50_N22
\mostrador|Display1[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[1]~8_combout\ = (\sub|mux_sub|seletorOUT\(0)) # ((\sub|mux_sub|process_0~6_combout\) # ((\mostrador|Mux7~0_combout\) # (!\mostrador|Display1[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|seletorOUT\(0),
	datab => \sub|mux_sub|process_0~6_combout\,
	datac => \mostrador|Display1[1]~5_combout\,
	datad => \mostrador|Mux7~0_combout\,
	combout => \mostrador|Display1[1]~8_combout\);

-- Location: LCCOMB_X63_Y50_N20
\mostrador|Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux6~2_combout\ = (\memoria|memoria\(3) & ((\memoria|memoria\(2)) # ((!\memoria|memoria\(5) & !\memoria|memoria\(4))))) # (!\memoria|memoria\(3) & (\memoria|memoria\(5) & (!\memoria|memoria\(2) & \memoria|memoria\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(3),
	datab => \memoria|memoria\(5),
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Mux6~2_combout\);

-- Location: LCCOMB_X67_Y50_N4
\mostrador|Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux6~3_combout\ = (!\memoria|memoria\(1) & (\memoria|memoria\(5) & (!\memoria|memoria\(0) & \memoria|memoria\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(1),
	datab => \memoria|memoria\(5),
	datac => \memoria|memoria\(0),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Mux6~3_combout\);

-- Location: LCCOMB_X66_Y50_N20
\mostrador|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux6~4_combout\ = (\memoria|memoria\(2) & ((\mostrador|Mux6~2_combout\ & (!\mostrador|Mux6~3_combout\)) # (!\mostrador|Mux6~2_combout\ & ((!\mostrador|Mux6~1_combout\))))) # (!\memoria|memoria\(2) & (\mostrador|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \mostrador|Mux6~2_combout\,
	datac => \mostrador|Mux6~3_combout\,
	datad => \mostrador|Mux6~1_combout\,
	combout => \mostrador|Mux6~4_combout\);

-- Location: LCCOMB_X69_Y50_N4
\mostrador|Display1[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[2]~9_combout\ = (\mostrador|Mux6~4_combout\ & (\mostrador|Display1[1]~5_combout\ & (!\sub|mux_sub|process_0~6_combout\ & !\sub|mux_sub|seletorOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Mux6~4_combout\,
	datab => \mostrador|Display1[1]~5_combout\,
	datac => \sub|mux_sub|process_0~6_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display1[2]~9_combout\);

-- Location: LCCOMB_X63_Y50_N24
\mostrador|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux5~0_combout\ = (\memoria|memoria\(5) & (\memoria|memoria\(3) & ((\memoria|memoria\(1)) # (\memoria|memoria\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(1),
	datab => \memoria|memoria\(0),
	datac => \memoria|memoria\(5),
	datad => \memoria|memoria\(3),
	combout => \mostrador|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y50_N30
\mostrador|Display1[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[3]~10_combout\ = (!\memoria|memoria\(2) & (\memoria|memoria\(4) & (\memoria|memoria\(3) $ (!\memoria|memoria\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(3),
	datab => \memoria|memoria\(5),
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Display1[3]~10_combout\);

-- Location: LCCOMB_X63_Y50_N14
\mostrador|Display1[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[3]~11_combout\ = (\mostrador|Display1[3]~10_combout\) # ((\memoria|memoria\(2) & ((!\memoria|memoria\(4)) # (!\mostrador|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \mostrador|Mux5~0_combout\,
	datac => \mostrador|Display1[3]~10_combout\,
	datad => \memoria|memoria\(4),
	combout => \mostrador|Display1[3]~11_combout\);

-- Location: LCCOMB_X69_Y50_N14
\mostrador|Display1[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[3]~12_combout\ = (\mostrador|Display1[3]~11_combout\ & (!\sub|mux_sub|process_0~6_combout\ & (\mostrador|Display1[1]~5_combout\ & !\sub|mux_sub|seletorOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display1[3]~11_combout\,
	datab => \sub|mux_sub|process_0~6_combout\,
	datac => \mostrador|Display1[1]~5_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display1[3]~12_combout\);

-- Location: LCCOMB_X67_Y50_N12
\mostrador|Display1[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[4]~15_combout\ = (\memoria|memoria\(2) & \memoria|memoria\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Display1[4]~15_combout\);

-- Location: LCCOMB_X67_Y50_N18
\mostrador|Display1[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[4]~14_combout\ = (\memoria|memoria\(2) & (((\memoria|memoria\(0)) # (\memoria|memoria\(1))) # (!\memoria|memoria\(4)))) # (!\memoria|memoria\(2) & (\memoria|memoria\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(4),
	datac => \memoria|memoria\(0),
	datad => \memoria|memoria\(1),
	combout => \mostrador|Display1[4]~14_combout\);

-- Location: LCCOMB_X67_Y50_N14
\mostrador|Display1[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[4]~16_combout\ = (\mostrador|Display1[4]~15_combout\ & (\memoria|memoria\(3) & ((\mostrador|Display1[4]~14_combout\) # (!\memoria|memoria\(5))))) # (!\mostrador|Display1[4]~15_combout\ & (\mostrador|Display1[4]~14_combout\ & 
-- (\memoria|memoria\(5) $ (!\memoria|memoria\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display1[4]~15_combout\,
	datab => \memoria|memoria\(5),
	datac => \memoria|memoria\(3),
	datad => \mostrador|Display1[4]~14_combout\,
	combout => \mostrador|Display1[4]~16_combout\);

-- Location: LCCOMB_X69_Y47_N30
\mostrador|Display3[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display3[1]~2_combout\ = (\sub|mux_sub|process_0~6_combout\) # ((\sub|mux_sub|seletorOUT\(0)) # ((\sub|mux_sub|process_0~3_combout\) # (\sub|mux_sub|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~6_combout\,
	datab => \sub|mux_sub|seletorOUT\(0),
	datac => \sub|mux_sub|process_0~3_combout\,
	datad => \sub|mux_sub|process_0~7_combout\,
	combout => \mostrador|Display3[1]~2_combout\);

-- Location: LCCOMB_X69_Y47_N0
\mostrador|Display1[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[4]~13_combout\ = (\sub|mux_sub|seletorOUT\(0)) # ((!\sub|mux_sub|process_0~6_combout\ & (!\sub|mux_sub|process_0~3_combout\ & !\sub|mux_sub|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~6_combout\,
	datab => \sub|mux_sub|seletorOUT\(0),
	datac => \sub|mux_sub|process_0~3_combout\,
	datad => \sub|mux_sub|process_0~7_combout\,
	combout => \mostrador|Display1[4]~13_combout\);

-- Location: LCCOMB_X69_Y47_N20
\mostrador|Display1[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[4]~17_combout\ = (\mostrador|Display1[4]~16_combout\ & (((!\sub|mux_sub|process_0~3_combout\ & !\mostrador|Display1[4]~13_combout\)) # (!\mostrador|Display3[1]~2_combout\))) # (!\mostrador|Display1[4]~16_combout\ & 
-- (!\sub|mux_sub|process_0~3_combout\ & ((!\mostrador|Display1[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display1[4]~16_combout\,
	datab => \sub|mux_sub|process_0~3_combout\,
	datac => \mostrador|Display3[1]~2_combout\,
	datad => \mostrador|Display1[4]~13_combout\,
	combout => \mostrador|Display1[4]~17_combout\);

-- Location: LCCOMB_X63_Y50_N0
\mostrador|Display1[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[5]~18_combout\ = (!\memoria|memoria\(2) & ((\memoria|memoria\(3) & (!\memoria|memoria\(5) & !\memoria|memoria\(4))) # (!\memoria|memoria\(3) & (\memoria|memoria\(5) & \memoria|memoria\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(3),
	datab => \memoria|memoria\(5),
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Display1[5]~18_combout\);

-- Location: LCCOMB_X63_Y51_N4
\mostrador|Display1[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[5]~19_combout\ = (\mostrador|Display1[5]~18_combout\) # ((\memoria|memoria\(4) & (\memoria|memoria\(2) & \mostrador|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(4),
	datab => \memoria|memoria\(2),
	datac => \mostrador|Mux5~0_combout\,
	datad => \mostrador|Display1[5]~18_combout\,
	combout => \mostrador|Display1[5]~19_combout\);

-- Location: LCCOMB_X69_Y47_N6
\mostrador|Display1[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[5]~20_combout\ = (\mostrador|Display1[5]~19_combout\ & (((\sub|mux_sub|process_0~3_combout\ & !\mostrador|Display1[4]~13_combout\)) # (!\mostrador|Display3[1]~2_combout\))) # (!\mostrador|Display1[5]~19_combout\ & 
-- (\sub|mux_sub|process_0~3_combout\ & ((!\mostrador|Display1[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display1[5]~19_combout\,
	datab => \sub|mux_sub|process_0~3_combout\,
	datac => \mostrador|Display3[1]~2_combout\,
	datad => \mostrador|Display1[4]~13_combout\,
	combout => \mostrador|Display1[5]~20_combout\);

-- Location: LCCOMB_X67_Y50_N8
\mostrador|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux2~0_combout\ = (\memoria|memoria\(4) & ((\memoria|memoria\(2) & (\memoria|memoria\(5) $ (!\memoria|memoria\(3)))) # (!\memoria|memoria\(2) & (!\memoria|memoria\(5) & \memoria|memoria\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(5),
	datac => \memoria|memoria\(3),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y47_N4
\mostrador|Display1[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[6]~21_combout\ = (\mostrador|Display3[1]~2_combout\ & ((\mostrador|Display1[4]~13_combout\) # ((!\sub|mux_sub|process_0~7_combout\)))) # (!\mostrador|Display3[1]~2_combout\ & (\mostrador|Mux2~0_combout\ & 
-- ((\mostrador|Display1[4]~13_combout\) # (!\sub|mux_sub|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display3[1]~2_combout\,
	datab => \mostrador|Display1[4]~13_combout\,
	datac => \mostrador|Mux2~0_combout\,
	datad => \sub|mux_sub|process_0~7_combout\,
	combout => \mostrador|Display1[6]~21_combout\);

-- Location: LCCOMB_X67_Y50_N10
\mostrador|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux1~1_combout\ = (\memoria|memoria\(5) & (((\memoria|memoria\(4))))) # (!\memoria|memoria\(5) & (!\memoria|memoria\(3) & (\memoria|memoria\(2) $ (\memoria|memoria\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(2),
	datab => \memoria|memoria\(4),
	datac => \memoria|memoria\(3),
	datad => \memoria|memoria\(5),
	combout => \mostrador|Mux1~1_combout\);

-- Location: LCCOMB_X67_Y50_N20
\mostrador|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux1~2_combout\ = (\memoria|memoria\(3) & ((\memoria|memoria\(0)) # ((\memoria|memoria\(1)) # (!\memoria|memoria\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(0),
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(1),
	combout => \mostrador|Mux1~2_combout\);

-- Location: LCCOMB_X67_Y50_N2
\mostrador|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux1~3_combout\ = (\mostrador|Mux1~1_combout\ & (((\mostrador|Mux1~2_combout\)) # (!\memoria|memoria\(5)))) # (!\mostrador|Mux1~1_combout\ & (\memoria|memoria\(5) & (\mostrador|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Mux1~1_combout\,
	datab => \memoria|memoria\(5),
	datac => \mostrador|Mux1~0_combout\,
	datad => \mostrador|Mux1~2_combout\,
	combout => \mostrador|Mux1~3_combout\);

-- Location: LCCOMB_X67_Y50_N28
\mostrador|Display1[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1[7]~22_combout\ = (!\sub|mux_sub|seletorOUT\(0) & (\mostrador|Display1[1]~5_combout\ & ((\mostrador|Mux1~3_combout\) # (\sub|mux_sub|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|seletorOUT\(0),
	datab => \mostrador|Mux1~3_combout\,
	datac => \mostrador|Display1[1]~5_combout\,
	datad => \sub|mux_sub|process_0~6_combout\,
	combout => \mostrador|Display1[7]~22_combout\);

-- Location: LCCOMB_X67_Y50_N30
\mostrador|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Mux14~0_combout\ = (\memoria|memoria\(0) & (((\memoria|memoria\(3) & \memoria|memoria\(2))) # (!\memoria|memoria\(1)))) # (!\memoria|memoria\(0) & (((\memoria|memoria\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(0),
	datab => \memoria|memoria\(3),
	datac => \memoria|memoria\(2),
	datad => \memoria|memoria\(1),
	combout => \mostrador|Mux14~0_combout\);

-- Location: LCCOMB_X69_Y47_N22
\mostrador|Display2[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[1]~0_combout\ = (\mostrador|Mux6~0_combout\ & (!\mostrador|Mux14~0_combout\)) # (!\mostrador|Mux6~0_combout\ & ((\memoria|memoria\(1) $ (!\memoria|memoria\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Mux14~0_combout\,
	datab => \mostrador|Mux6~0_combout\,
	datac => \memoria|memoria\(1),
	datad => \memoria|memoria\(0),
	combout => \mostrador|Display2[1]~0_combout\);

-- Location: LCCOMB_X69_Y47_N12
\mostrador|Display2[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[1]~1_combout\ = (\mostrador|Display2[1]~0_combout\ & ((\mostrador|Display1[4]~13_combout\) # ((\sub|mux_sub|process_0~7_combout\)))) # (!\mostrador|Display2[1]~0_combout\ & (\mostrador|Display3[1]~2_combout\ & 
-- ((\mostrador|Display1[4]~13_combout\) # (\sub|mux_sub|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display2[1]~0_combout\,
	datab => \mostrador|Display1[4]~13_combout\,
	datac => \mostrador|Display3[1]~2_combout\,
	datad => \sub|mux_sub|process_0~7_combout\,
	combout => \mostrador|Display2[1]~1_combout\);

-- Location: LCCOMB_X63_Y50_N26
\mostrador|Display3[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display3[1]~3_combout\ = (!\memoria|memoria\(0) & (((!\memoria|memoria\(4)) # (!\mostrador|Mux13~0_combout\)) # (!\memoria|memoria\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(5),
	datab => \mostrador|Mux13~0_combout\,
	datac => \memoria|memoria\(0),
	datad => \memoria|memoria\(4),
	combout => \mostrador|Display3[1]~3_combout\);

-- Location: LCCOMB_X69_Y50_N16
\mostrador|Display2[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[2]~2_combout\ = (\mostrador|Display1[1]~5_combout\ & (!\sub|mux_sub|seletorOUT\(0) & ((\sub|mux_sub|process_0~6_combout\) # (!\mostrador|Display3[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display3[1]~3_combout\,
	datab => \sub|mux_sub|process_0~6_combout\,
	datac => \mostrador|Display1[1]~5_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display2[2]~2_combout\);

-- Location: LCCOMB_X69_Y47_N14
\mostrador|Display2[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[3]~3_combout\ = (\memoria|memoria\(1) & (!\mostrador|Display3[1]~2_combout\ & ((!\mostrador|Mux6~0_combout\) # (!\mostrador|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Mux1~0_combout\,
	datab => \memoria|memoria\(1),
	datac => \mostrador|Display3[1]~2_combout\,
	datad => \mostrador|Mux6~0_combout\,
	combout => \mostrador|Display2[3]~3_combout\);

-- Location: LCCOMB_X69_Y47_N28
\mostrador|Display2[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[4]~4_combout\ = (\memoria|memoria\(0) & ((\memoria|memoria\(1)) # ((\mostrador|Mux6~0_combout\ & \mostrador|Mux1~0_combout\)))) # (!\memoria|memoria\(0) & (\mostrador|Mux6~0_combout\ & (\memoria|memoria\(1) & 
-- \mostrador|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(0),
	datab => \mostrador|Mux6~0_combout\,
	datac => \memoria|memoria\(1),
	datad => \mostrador|Mux1~0_combout\,
	combout => \mostrador|Display2[4]~4_combout\);

-- Location: LCCOMB_X69_Y47_N10
\mostrador|Display2[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[4]~5_combout\ = (\mostrador|Display3[1]~2_combout\ & (!\mostrador|Display1[4]~13_combout\ & (\sub|mux_sub|process_0~3_combout\))) # (!\mostrador|Display3[1]~2_combout\ & ((\mostrador|Display2[4]~4_combout\) # 
-- ((!\mostrador|Display1[4]~13_combout\ & \sub|mux_sub|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display3[1]~2_combout\,
	datab => \mostrador|Display1[4]~13_combout\,
	datac => \sub|mux_sub|process_0~3_combout\,
	datad => \mostrador|Display2[4]~4_combout\,
	combout => \mostrador|Display2[4]~5_combout\);

-- Location: LCCOMB_X69_Y47_N24
\mostrador|Display2[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[5]~6_combout\ = (\memoria|memoria\(1) & (((\mostrador|Mux6~0_combout\ & \mostrador|Mux1~0_combout\)))) # (!\memoria|memoria\(1) & (\memoria|memoria\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(0),
	datab => \mostrador|Mux6~0_combout\,
	datac => \memoria|memoria\(1),
	datad => \mostrador|Mux1~0_combout\,
	combout => \mostrador|Display2[5]~6_combout\);

-- Location: LCCOMB_X69_Y47_N26
\mostrador|Display2[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[5]~7_combout\ = (!\sub|mux_sub|seletorOUT\(0) & (((\mostrador|Display2[5]~6_combout\ & !\sub|mux_sub|process_0~6_combout\)) # (!\mostrador|Display1[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display1[1]~5_combout\,
	datab => \mostrador|Display2[5]~6_combout\,
	datac => \sub|mux_sub|process_0~6_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display2[5]~7_combout\);

-- Location: LCCOMB_X69_Y47_N16
\mostrador|Display2[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[6]~8_combout\ = (\memoria|memoria\(0) & (\mostrador|Mux6~0_combout\ & ((\mostrador|Mux1~0_combout\)))) # (!\memoria|memoria\(0) & (((\memoria|memoria\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(0),
	datab => \mostrador|Mux6~0_combout\,
	datac => \memoria|memoria\(1),
	datad => \mostrador|Mux1~0_combout\,
	combout => \mostrador|Display2[6]~8_combout\);

-- Location: LCCOMB_X69_Y47_N18
\mostrador|Display2[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[6]~9_combout\ = (!\sub|mux_sub|seletorOUT\(0) & (((\mostrador|Display2[6]~8_combout\) # (\sub|mux_sub|process_0~6_combout\)) # (!\mostrador|Display1[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display1[1]~5_combout\,
	datab => \mostrador|Display2[6]~8_combout\,
	datac => \sub|mux_sub|process_0~6_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display2[6]~9_combout\);

-- Location: LCCOMB_X69_Y50_N2
\mostrador|Display2[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display2[7]~10_combout\ = (\sub|mux_sub|seletorOUT\(0)) # ((!\mostrador|Display1[0]~7_combout\ & !\sub|mux_sub|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mostrador|Display1[0]~7_combout\,
	datac => \sub|mux_sub|process_0~3_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display2[7]~10_combout\);

-- Location: LCCOMB_X69_Y47_N8
\mostrador|Display3[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display3[1]~4_combout\ = (\mostrador|Display3[1]~3_combout\ & (((\sub|mux_sub|process_0~3_combout\ & !\mostrador|Display1[4]~13_combout\)) # (!\mostrador|Display3[1]~2_combout\))) # (!\mostrador|Display3[1]~3_combout\ & 
-- (\sub|mux_sub|process_0~3_combout\ & ((!\mostrador|Display1[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display3[1]~3_combout\,
	datab => \sub|mux_sub|process_0~3_combout\,
	datac => \mostrador|Display3[1]~2_combout\,
	datad => \mostrador|Display1[4]~13_combout\,
	combout => \mostrador|Display3[1]~4_combout\);

-- Location: LCCOMB_X69_Y47_N2
\mostrador|Display3[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display3[3]~5_combout\ = (\memoria|memoria\(0) & (!\mostrador|Display3[1]~2_combout\ & ((!\mostrador|Mux1~0_combout\) # (!\mostrador|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(0),
	datab => \mostrador|Mux6~0_combout\,
	datac => \mostrador|Display3[1]~2_combout\,
	datad => \mostrador|Mux1~0_combout\,
	combout => \mostrador|Display3[3]~5_combout\);

-- Location: LCCOMB_X67_Y50_N6
\mostrador|Display1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display1~24_combout\ = (\sub|mux_sub|process_0~6_combout\) # ((\memoria|memoria\(5) & (\memoria|memoria\(4) & \mostrador|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria|memoria\(5),
	datab => \memoria|memoria\(4),
	datac => \sub|mux_sub|process_0~6_combout\,
	datad => \mostrador|Mux0~0_combout\,
	combout => \mostrador|Display1~24_combout\);

-- Location: LCCOMB_X69_Y50_N12
\mostrador|Display3[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display3[5]~7_combout\ = (!\sub|mux_sub|seletorOUT\(0) & ((\sub|mux_sub|process_0~3_combout\) # ((!\sub|mux_sub|process_0~7_combout\ & \mostrador|Display1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub|mux_sub|process_0~3_combout\,
	datab => \sub|mux_sub|seletorOUT\(0),
	datac => \sub|mux_sub|process_0~7_combout\,
	datad => \mostrador|Display1~24_combout\,
	combout => \mostrador|Display3[5]~7_combout\);

-- Location: LCCOMB_X69_Y50_N0
\mostrador|Display3[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mostrador|Display3[6]~6_combout\ = (!\sub|mux_sub|seletorOUT\(0) & (((\sub|mux_sub|process_0~6_combout\) # (!\mostrador|Display1[1]~5_combout\)) # (!\mostrador|Display3[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mostrador|Display3[1]~3_combout\,
	datab => \sub|mux_sub|process_0~6_combout\,
	datac => \mostrador|Display1[1]~5_combout\,
	datad => \sub|mux_sub|seletorOUT\(0),
	combout => \mostrador|Display3[6]~6_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;
END structure;


