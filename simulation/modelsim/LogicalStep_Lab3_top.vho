-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "06/27/2025 13:01:02"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
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
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

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

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab3_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HVAC_INST|clk_divider:counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \MUX_INST|mux_temp[3]~1_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \MUX_INST|mux_temp[2]~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \MUX_INST|mux_temp[0]~2_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \MUX_INST|mux_temp[1]~3_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~2_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~4_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~6_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~8_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~10_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~12_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~14_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~16_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~18_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~20_cout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~21_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[11]~22\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \HVAC_INST|clk_divider:counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \Compx4_inst|A_less_B_bus~1_combout\ : std_logic;
SIGNAL \Compx4_inst|bit3|A_greater_B~combout\ : std_logic;
SIGNAL \Compx4_inst|A_greater_B_bus~3_combout\ : std_logic;
SIGNAL \Compx4_inst|bit2|A_equal_B~0_combout\ : std_logic;
SIGNAL \Compx4_inst|A_greater_B_bus~2_combout\ : std_logic;
SIGNAL \Compx4_inst|A_greater_B_bus~0_combout\ : std_logic;
SIGNAL \Compx4_inst|A_greater_B_bus~1_combout\ : std_logic;
SIGNAL \Compx4_inst|A_greater_B_bus~4_combout\ : std_logic;
SIGNAL \HVAC_INST|cnt~1_combout\ : std_logic;
SIGNAL \HVAC_INST|cnt~2_combout\ : std_logic;
SIGNAL \HVAC_INST|cnt~3_combout\ : std_logic;
SIGNAL \HVAC_INST|cnt~4_combout\ : std_logic;
SIGNAL \HVAC_INST|counter:cnt[3]~q\ : std_logic;
SIGNAL \Compx4_inst|bit3|A_equal_B~0_combout\ : std_logic;
SIGNAL \Compx4_inst|A_less_B_bus~0_combout\ : std_logic;
SIGNAL \Compx4_inst|A_less_B_bus~2_combout\ : std_logic;
SIGNAL \HVAC_INST|Add2~0_combout\ : std_logic;
SIGNAL \HVAC_INST|cnt~6_combout\ : std_logic;
SIGNAL \HVAC_INST|cnt~7_combout\ : std_logic;
SIGNAL \HVAC_INST|counter:cnt[2]~q\ : std_logic;
SIGNAL \HVAC_INST|cnt~0_combout\ : std_logic;
SIGNAL \HVAC_INST|cnt~5_combout\ : std_logic;
SIGNAL \HVAC_INST|cnt~8_combout\ : std_logic;
SIGNAL \HVAC_INST|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \HVAC_INST|counter:cnt[0]~q\ : std_logic;
SIGNAL \Compx4_inst|A_equal_B_bus~combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \energy_monitor_inst|blower~0_combout\ : std_logic;
SIGNAL \HVAC_INST|counter:cnt[1]~0_combout\ : std_logic;
SIGNAL \HVAC_INST|counter:cnt[1]~1_combout\ : std_logic;
SIGNAL \HVAC_INST|counter:cnt[1]~q\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \energy_monitor_inst|furnace~0_combout\ : std_logic;
SIGNAL \energy_monitor_inst|at_temp~0_combout\ : std_logic;
SIGNAL \tester_inst|TEST_PASS~5_combout\ : std_logic;
SIGNAL \tester_inst|TEST_PASS~6_combout\ : std_logic;
SIGNAL \tester_inst|TEST_PASS~7_combout\ : std_logic;
SIGNAL \tester_inst|TEST_PASS~0_combout\ : std_logic;
SIGNAL \tester_inst|TEST_PASS~1_combout\ : std_logic;
SIGNAL \tester_inst|TEST_PASS~2_combout\ : std_logic;
SIGNAL \tester_inst|TEST_PASS~3_combout\ : std_logic;
SIGNAL \tester_inst|TEST_PASS~4_combout\ : std_logic;
SIGNAL \tester_inst|TEST_PASS~8_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_pb_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[3]~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \energy_monitor_inst|ALT_INV_furnace~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkin_50 <= clkin_50;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\HVAC_INST|clk_divider:counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \HVAC_INST|clk_divider:counter[23]~q\);
\ALT_INV_pb_n[1]~input_o\ <= NOT \pb_n[1]~input_o\;
\ALT_INV_pb_n[0]~input_o\ <= NOT \pb_n[0]~input_o\;
\ALT_INV_pb_n[3]~input_o\ <= NOT \pb_n[3]~input_o\;
\inst3|ALT_INV_DOUT[4]~4_combout\ <= NOT \inst3|DOUT[4]~4_combout\;
\inst3|ALT_INV_DOUT[3]~3_combout\ <= NOT \inst3|DOUT[3]~3_combout\;
\inst3|ALT_INV_DOUT[2]~2_combout\ <= NOT \inst3|DOUT[2]~2_combout\;
\inst3|ALT_INV_DOUT[0]~0_combout\ <= NOT \inst3|DOUT[0]~0_combout\;
\energy_monitor_inst|ALT_INV_furnace~0_combout\ <= NOT \energy_monitor_inst|furnace~0_combout\;
\inst3|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \inst3|clk_proc:COUNT[10]~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y24_N20
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

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \energy_monitor_inst|ALT_INV_furnace~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \energy_monitor_inst|at_temp~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Compx4_inst|A_less_B_bus~2_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \energy_monitor_inst|blower~0_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tester_inst|TEST_PASS~8_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[3]~input_o\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y9_N2
\inst3|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[0]~0_combout\ = !\inst3|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clk_proc:COUNT[0]~q\,
	combout => \inst3|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X13_Y9_N3
\inst3|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X12_Y9_N10
\inst3|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[1]~1_combout\ = (\inst3|clk_proc:COUNT[1]~q\ & (\inst3|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\inst3|clk_proc:COUNT[1]~q\ & (\inst3|clk_proc:COUNT[0]~q\ & VCC))
-- \inst3|clk_proc:COUNT[1]~2\ = CARRY((\inst3|clk_proc:COUNT[1]~q\ & \inst3|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[1]~q\,
	datab => \inst3|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \inst3|clk_proc:COUNT[1]~1_combout\,
	cout => \inst3|clk_proc:COUNT[1]~2\);

-- Location: FF_X13_Y9_N7
\inst3|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X12_Y9_N12
\inst3|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[2]~1_combout\ = (\inst3|clk_proc:COUNT[2]~q\ & (!\inst3|clk_proc:COUNT[1]~2\)) # (!\inst3|clk_proc:COUNT[2]~q\ & ((\inst3|clk_proc:COUNT[1]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[2]~2\ = CARRY((!\inst3|clk_proc:COUNT[1]~2\) # (!\inst3|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[1]~2\,
	combout => \inst3|clk_proc:COUNT[2]~1_combout\,
	cout => \inst3|clk_proc:COUNT[2]~2\);

-- Location: FF_X12_Y9_N13
\inst3|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X12_Y9_N14
\inst3|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[3]~1_combout\ = (\inst3|clk_proc:COUNT[3]~q\ & (\inst3|clk_proc:COUNT[2]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[3]~q\ & (!\inst3|clk_proc:COUNT[2]~2\ & VCC))
-- \inst3|clk_proc:COUNT[3]~2\ = CARRY((\inst3|clk_proc:COUNT[3]~q\ & !\inst3|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[2]~2\,
	combout => \inst3|clk_proc:COUNT[3]~1_combout\,
	cout => \inst3|clk_proc:COUNT[3]~2\);

-- Location: FF_X13_Y9_N5
\inst3|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X12_Y9_N16
\inst3|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[4]~1_combout\ = (\inst3|clk_proc:COUNT[4]~q\ & (!\inst3|clk_proc:COUNT[3]~2\)) # (!\inst3|clk_proc:COUNT[4]~q\ & ((\inst3|clk_proc:COUNT[3]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[4]~2\ = CARRY((!\inst3|clk_proc:COUNT[3]~2\) # (!\inst3|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[3]~2\,
	combout => \inst3|clk_proc:COUNT[4]~1_combout\,
	cout => \inst3|clk_proc:COUNT[4]~2\);

-- Location: FF_X12_Y9_N17
\inst3|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X12_Y9_N18
\inst3|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[5]~1_combout\ = (\inst3|clk_proc:COUNT[5]~q\ & (\inst3|clk_proc:COUNT[4]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[5]~q\ & (!\inst3|clk_proc:COUNT[4]~2\ & VCC))
-- \inst3|clk_proc:COUNT[5]~2\ = CARRY((\inst3|clk_proc:COUNT[5]~q\ & !\inst3|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[4]~2\,
	combout => \inst3|clk_proc:COUNT[5]~1_combout\,
	cout => \inst3|clk_proc:COUNT[5]~2\);

-- Location: FF_X12_Y9_N19
\inst3|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X12_Y9_N20
\inst3|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[6]~1_combout\ = (\inst3|clk_proc:COUNT[6]~q\ & (!\inst3|clk_proc:COUNT[5]~2\)) # (!\inst3|clk_proc:COUNT[6]~q\ & ((\inst3|clk_proc:COUNT[5]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[6]~2\ = CARRY((!\inst3|clk_proc:COUNT[5]~2\) # (!\inst3|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[5]~2\,
	combout => \inst3|clk_proc:COUNT[6]~1_combout\,
	cout => \inst3|clk_proc:COUNT[6]~2\);

-- Location: FF_X12_Y9_N21
\inst3|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X12_Y9_N22
\inst3|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[7]~1_combout\ = (\inst3|clk_proc:COUNT[7]~q\ & (\inst3|clk_proc:COUNT[6]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[7]~q\ & (!\inst3|clk_proc:COUNT[6]~2\ & VCC))
-- \inst3|clk_proc:COUNT[7]~2\ = CARRY((\inst3|clk_proc:COUNT[7]~q\ & !\inst3|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[6]~2\,
	combout => \inst3|clk_proc:COUNT[7]~1_combout\,
	cout => \inst3|clk_proc:COUNT[7]~2\);

-- Location: FF_X12_Y9_N23
\inst3|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X12_Y9_N24
\inst3|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[8]~1_combout\ = (\inst3|clk_proc:COUNT[8]~q\ & (!\inst3|clk_proc:COUNT[7]~2\)) # (!\inst3|clk_proc:COUNT[8]~q\ & ((\inst3|clk_proc:COUNT[7]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[8]~2\ = CARRY((!\inst3|clk_proc:COUNT[7]~2\) # (!\inst3|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[7]~2\,
	combout => \inst3|clk_proc:COUNT[8]~1_combout\,
	cout => \inst3|clk_proc:COUNT[8]~2\);

-- Location: FF_X12_Y9_N25
\inst3|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X12_Y9_N26
\inst3|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[9]~1_combout\ = (\inst3|clk_proc:COUNT[9]~q\ & (\inst3|clk_proc:COUNT[8]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[9]~q\ & (!\inst3|clk_proc:COUNT[8]~2\ & VCC))
-- \inst3|clk_proc:COUNT[9]~2\ = CARRY((\inst3|clk_proc:COUNT[9]~q\ & !\inst3|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[8]~2\,
	combout => \inst3|clk_proc:COUNT[9]~1_combout\,
	cout => \inst3|clk_proc:COUNT[9]~2\);

-- Location: FF_X12_Y9_N27
\inst3|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X12_Y9_N28
\inst3|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~1_combout\ = \inst3|clk_proc:COUNT[9]~2\ $ (\inst3|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|clk_proc:COUNT[10]~q\,
	cin => \inst3|clk_proc:COUNT[9]~2\,
	combout => \inst3|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X12_Y9_N29
\inst3|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[10]~q\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X10_Y8_N22
\MUX_INST|mux_temp[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX_INST|mux_temp[3]~1_combout\ = (\pb_n[3]~input_o\ & ((\sw[3]~input_o\))) # (!\pb_n[3]~input_o\ & (\sw[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \pb_n[3]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \MUX_INST|mux_temp[3]~1_combout\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X10_Y8_N0
\MUX_INST|mux_temp[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX_INST|mux_temp[2]~0_combout\ = (\pb_n[3]~input_o\ & ((\sw[2]~input_o\))) # (!\pb_n[3]~input_o\ & (\sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[3]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \MUX_INST|mux_temp[2]~0_combout\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X10_Y8_N20
\MUX_INST|mux_temp[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX_INST|mux_temp[0]~2_combout\ = (\pb_n[3]~input_o\ & (\sw[0]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \pb_n[3]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \MUX_INST|mux_temp[0]~2_combout\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X10_Y8_N30
\MUX_INST|mux_temp[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX_INST|mux_temp[1]~3_combout\ = (\pb_n[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \pb_n[3]~input_o\,
	combout => \MUX_INST|mux_temp[1]~3_combout\);

-- Location: LCCOMB_X12_Y8_N14
\inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\MUX_INST|mux_temp[3]~1_combout\ & ((\MUX_INST|mux_temp[0]~2_combout\ & ((\MUX_INST|mux_temp[1]~3_combout\))) # (!\MUX_INST|mux_temp[0]~2_combout\ & (\MUX_INST|mux_temp[2]~0_combout\)))) # (!\MUX_INST|mux_temp[3]~1_combout\ & 
-- (\MUX_INST|mux_temp[2]~0_combout\ & (\MUX_INST|mux_temp[0]~2_combout\ $ (\MUX_INST|mux_temp[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_INST|mux_temp[3]~1_combout\,
	datab => \MUX_INST|mux_temp[2]~0_combout\,
	datac => \MUX_INST|mux_temp[0]~2_combout\,
	datad => \MUX_INST|mux_temp[1]~3_combout\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y9_N10
\HVAC_INST|clk_divider:counter[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~2_cout\ = CARRY((\inst3|clk_proc:COUNT[1]~q\ & \inst3|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[1]~q\,
	datab => \inst3|clk_proc:COUNT[0]~q\,
	datad => VCC,
	cout => \HVAC_INST|clk_divider:counter[11]~2_cout\);

-- Location: LCCOMB_X13_Y9_N12
\HVAC_INST|clk_divider:counter[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~4_cout\ = CARRY((!\HVAC_INST|clk_divider:counter[11]~2_cout\) # (!\inst3|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~2_cout\,
	cout => \HVAC_INST|clk_divider:counter[11]~4_cout\);

-- Location: LCCOMB_X13_Y9_N14
\HVAC_INST|clk_divider:counter[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~6_cout\ = CARRY((\inst3|clk_proc:COUNT[3]~q\ & !\HVAC_INST|clk_divider:counter[11]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~4_cout\,
	cout => \HVAC_INST|clk_divider:counter[11]~6_cout\);

-- Location: LCCOMB_X13_Y9_N16
\HVAC_INST|clk_divider:counter[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~8_cout\ = CARRY((!\HVAC_INST|clk_divider:counter[11]~6_cout\) # (!\inst3|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~6_cout\,
	cout => \HVAC_INST|clk_divider:counter[11]~8_cout\);

-- Location: LCCOMB_X13_Y9_N18
\HVAC_INST|clk_divider:counter[11]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~10_cout\ = CARRY((\inst3|clk_proc:COUNT[5]~q\ & !\HVAC_INST|clk_divider:counter[11]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~8_cout\,
	cout => \HVAC_INST|clk_divider:counter[11]~10_cout\);

-- Location: LCCOMB_X13_Y9_N20
\HVAC_INST|clk_divider:counter[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~12_cout\ = CARRY((!\HVAC_INST|clk_divider:counter[11]~10_cout\) # (!\inst3|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~10_cout\,
	cout => \HVAC_INST|clk_divider:counter[11]~12_cout\);

-- Location: LCCOMB_X13_Y9_N22
\HVAC_INST|clk_divider:counter[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~14_cout\ = CARRY((\inst3|clk_proc:COUNT[7]~q\ & !\HVAC_INST|clk_divider:counter[11]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~12_cout\,
	cout => \HVAC_INST|clk_divider:counter[11]~14_cout\);

-- Location: LCCOMB_X13_Y9_N24
\HVAC_INST|clk_divider:counter[11]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~16_cout\ = CARRY((!\HVAC_INST|clk_divider:counter[11]~14_cout\) # (!\inst3|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~14_cout\,
	cout => \HVAC_INST|clk_divider:counter[11]~16_cout\);

-- Location: LCCOMB_X13_Y9_N26
\HVAC_INST|clk_divider:counter[11]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~18_cout\ = CARRY((\inst3|clk_proc:COUNT[9]~q\ & !\HVAC_INST|clk_divider:counter[11]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~16_cout\,
	cout => \HVAC_INST|clk_divider:counter[11]~18_cout\);

-- Location: LCCOMB_X13_Y9_N28
\HVAC_INST|clk_divider:counter[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~20_cout\ = CARRY((!\HVAC_INST|clk_divider:counter[11]~18_cout\) # (!\inst3|clk_proc:COUNT[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~18_cout\,
	cout => \HVAC_INST|clk_divider:counter[11]~20_cout\);

-- Location: LCCOMB_X13_Y9_N30
\HVAC_INST|clk_divider:counter[11]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[11]~21_combout\ = (\HVAC_INST|clk_divider:counter[11]~q\ & (\HVAC_INST|clk_divider:counter[11]~20_cout\ $ (GND))) # (!\HVAC_INST|clk_divider:counter[11]~q\ & (!\HVAC_INST|clk_divider:counter[11]~20_cout\ & VCC))
-- \HVAC_INST|clk_divider:counter[11]~22\ = CARRY((\HVAC_INST|clk_divider:counter[11]~q\ & !\HVAC_INST|clk_divider:counter[11]~20_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~20_cout\,
	combout => \HVAC_INST|clk_divider:counter[11]~21_combout\,
	cout => \HVAC_INST|clk_divider:counter[11]~22\);

-- Location: FF_X13_Y9_N31
\HVAC_INST|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X13_Y8_N0
\HVAC_INST|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[12]~1_combout\ = (\HVAC_INST|clk_divider:counter[12]~q\ & (!\HVAC_INST|clk_divider:counter[11]~22\)) # (!\HVAC_INST|clk_divider:counter[12]~q\ & ((\HVAC_INST|clk_divider:counter[11]~22\) # (GND)))
-- \HVAC_INST|clk_divider:counter[12]~2\ = CARRY((!\HVAC_INST|clk_divider:counter[11]~22\) # (!\HVAC_INST|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[11]~22\,
	combout => \HVAC_INST|clk_divider:counter[12]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[12]~2\);

-- Location: FF_X13_Y8_N1
\HVAC_INST|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X13_Y8_N2
\HVAC_INST|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[13]~1_combout\ = (\HVAC_INST|clk_divider:counter[13]~q\ & (\HVAC_INST|clk_divider:counter[12]~2\ $ (GND))) # (!\HVAC_INST|clk_divider:counter[13]~q\ & (!\HVAC_INST|clk_divider:counter[12]~2\ & VCC))
-- \HVAC_INST|clk_divider:counter[13]~2\ = CARRY((\HVAC_INST|clk_divider:counter[13]~q\ & !\HVAC_INST|clk_divider:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[12]~2\,
	combout => \HVAC_INST|clk_divider:counter[13]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[13]~2\);

-- Location: FF_X13_Y8_N3
\HVAC_INST|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X13_Y8_N4
\HVAC_INST|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[14]~1_combout\ = (\HVAC_INST|clk_divider:counter[14]~q\ & (!\HVAC_INST|clk_divider:counter[13]~2\)) # (!\HVAC_INST|clk_divider:counter[14]~q\ & ((\HVAC_INST|clk_divider:counter[13]~2\) # (GND)))
-- \HVAC_INST|clk_divider:counter[14]~2\ = CARRY((!\HVAC_INST|clk_divider:counter[13]~2\) # (!\HVAC_INST|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[13]~2\,
	combout => \HVAC_INST|clk_divider:counter[14]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[14]~2\);

-- Location: FF_X13_Y8_N5
\HVAC_INST|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X13_Y8_N6
\HVAC_INST|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[15]~1_combout\ = (\HVAC_INST|clk_divider:counter[15]~q\ & (\HVAC_INST|clk_divider:counter[14]~2\ $ (GND))) # (!\HVAC_INST|clk_divider:counter[15]~q\ & (!\HVAC_INST|clk_divider:counter[14]~2\ & VCC))
-- \HVAC_INST|clk_divider:counter[15]~2\ = CARRY((\HVAC_INST|clk_divider:counter[15]~q\ & !\HVAC_INST|clk_divider:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[14]~2\,
	combout => \HVAC_INST|clk_divider:counter[15]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[15]~2\);

-- Location: FF_X13_Y8_N7
\HVAC_INST|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X13_Y8_N8
\HVAC_INST|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[16]~1_combout\ = (\HVAC_INST|clk_divider:counter[16]~q\ & (!\HVAC_INST|clk_divider:counter[15]~2\)) # (!\HVAC_INST|clk_divider:counter[16]~q\ & ((\HVAC_INST|clk_divider:counter[15]~2\) # (GND)))
-- \HVAC_INST|clk_divider:counter[16]~2\ = CARRY((!\HVAC_INST|clk_divider:counter[15]~2\) # (!\HVAC_INST|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[15]~2\,
	combout => \HVAC_INST|clk_divider:counter[16]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[16]~2\);

-- Location: FF_X13_Y8_N9
\HVAC_INST|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X13_Y8_N10
\HVAC_INST|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[17]~1_combout\ = (\HVAC_INST|clk_divider:counter[17]~q\ & (\HVAC_INST|clk_divider:counter[16]~2\ $ (GND))) # (!\HVAC_INST|clk_divider:counter[17]~q\ & (!\HVAC_INST|clk_divider:counter[16]~2\ & VCC))
-- \HVAC_INST|clk_divider:counter[17]~2\ = CARRY((\HVAC_INST|clk_divider:counter[17]~q\ & !\HVAC_INST|clk_divider:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[16]~2\,
	combout => \HVAC_INST|clk_divider:counter[17]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[17]~2\);

-- Location: FF_X13_Y8_N11
\HVAC_INST|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X13_Y8_N12
\HVAC_INST|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[18]~1_combout\ = (\HVAC_INST|clk_divider:counter[18]~q\ & (!\HVAC_INST|clk_divider:counter[17]~2\)) # (!\HVAC_INST|clk_divider:counter[18]~q\ & ((\HVAC_INST|clk_divider:counter[17]~2\) # (GND)))
-- \HVAC_INST|clk_divider:counter[18]~2\ = CARRY((!\HVAC_INST|clk_divider:counter[17]~2\) # (!\HVAC_INST|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[17]~2\,
	combout => \HVAC_INST|clk_divider:counter[18]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[18]~2\);

-- Location: FF_X13_Y8_N13
\HVAC_INST|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X13_Y8_N14
\HVAC_INST|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[19]~1_combout\ = (\HVAC_INST|clk_divider:counter[19]~q\ & (\HVAC_INST|clk_divider:counter[18]~2\ $ (GND))) # (!\HVAC_INST|clk_divider:counter[19]~q\ & (!\HVAC_INST|clk_divider:counter[18]~2\ & VCC))
-- \HVAC_INST|clk_divider:counter[19]~2\ = CARRY((\HVAC_INST|clk_divider:counter[19]~q\ & !\HVAC_INST|clk_divider:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[18]~2\,
	combout => \HVAC_INST|clk_divider:counter[19]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[19]~2\);

-- Location: FF_X13_Y8_N15
\HVAC_INST|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X13_Y8_N16
\HVAC_INST|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[20]~1_combout\ = (\HVAC_INST|clk_divider:counter[20]~q\ & (!\HVAC_INST|clk_divider:counter[19]~2\)) # (!\HVAC_INST|clk_divider:counter[20]~q\ & ((\HVAC_INST|clk_divider:counter[19]~2\) # (GND)))
-- \HVAC_INST|clk_divider:counter[20]~2\ = CARRY((!\HVAC_INST|clk_divider:counter[19]~2\) # (!\HVAC_INST|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[19]~2\,
	combout => \HVAC_INST|clk_divider:counter[20]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[20]~2\);

-- Location: FF_X13_Y8_N17
\HVAC_INST|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X13_Y8_N18
\HVAC_INST|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[21]~1_combout\ = (\HVAC_INST|clk_divider:counter[21]~q\ & (\HVAC_INST|clk_divider:counter[20]~2\ $ (GND))) # (!\HVAC_INST|clk_divider:counter[21]~q\ & (!\HVAC_INST|clk_divider:counter[20]~2\ & VCC))
-- \HVAC_INST|clk_divider:counter[21]~2\ = CARRY((\HVAC_INST|clk_divider:counter[21]~q\ & !\HVAC_INST|clk_divider:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[20]~2\,
	combout => \HVAC_INST|clk_divider:counter[21]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[21]~2\);

-- Location: FF_X13_Y8_N19
\HVAC_INST|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X13_Y8_N20
\HVAC_INST|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[22]~1_combout\ = (\HVAC_INST|clk_divider:counter[22]~q\ & (!\HVAC_INST|clk_divider:counter[21]~2\)) # (!\HVAC_INST|clk_divider:counter[22]~q\ & ((\HVAC_INST|clk_divider:counter[21]~2\) # (GND)))
-- \HVAC_INST|clk_divider:counter[22]~2\ = CARRY((!\HVAC_INST|clk_divider:counter[21]~2\) # (!\HVAC_INST|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \HVAC_INST|clk_divider:counter[21]~2\,
	combout => \HVAC_INST|clk_divider:counter[22]~1_combout\,
	cout => \HVAC_INST|clk_divider:counter[22]~2\);

-- Location: FF_X13_Y8_N21
\HVAC_INST|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X13_Y8_N22
\HVAC_INST|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|clk_divider:counter[23]~1_combout\ = \HVAC_INST|clk_divider:counter[23]~q\ $ (!\HVAC_INST|clk_divider:counter[22]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|clk_divider:counter[23]~q\,
	cin => \HVAC_INST|clk_divider:counter[22]~2\,
	combout => \HVAC_INST|clk_divider:counter[23]~1_combout\);

-- Location: FF_X13_Y8_N23
\HVAC_INST|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \HVAC_INST|clk_divider:counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|clk_divider:counter[23]~q\);

-- Location: CLKCTRL_G0
\HVAC_INST|clk_divider:counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \HVAC_INST|clk_divider:counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \HVAC_INST|clk_divider:counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X9_Y0_N22
\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

-- Location: LCCOMB_X11_Y8_N4
\Compx4_inst|A_less_B_bus~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|A_less_B_bus~1_combout\ = (\MUX_INST|mux_temp[1]~3_combout\ & (!\MUX_INST|mux_temp[0]~2_combout\ & (!\HVAC_INST|counter:cnt[1]~q\ & !\HVAC_INST|counter:cnt[0]~q\))) # (!\MUX_INST|mux_temp[1]~3_combout\ & (((!\MUX_INST|mux_temp[0]~2_combout\ & 
-- !\HVAC_INST|counter:cnt[0]~q\)) # (!\HVAC_INST|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_INST|mux_temp[0]~2_combout\,
	datab => \MUX_INST|mux_temp[1]~3_combout\,
	datac => \HVAC_INST|counter:cnt[1]~q\,
	datad => \HVAC_INST|counter:cnt[0]~q\,
	combout => \Compx4_inst|A_less_B_bus~1_combout\);

-- Location: LCCOMB_X10_Y8_N16
\Compx4_inst|bit3|A_greater_B\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|bit3|A_greater_B~combout\ = (!\HVAC_INST|counter:cnt[3]~q\ & ((\pb_n[3]~input_o\ & (\sw[3]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \pb_n[3]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \HVAC_INST|counter:cnt[3]~q\,
	combout => \Compx4_inst|bit3|A_greater_B~combout\);

-- Location: LCCOMB_X10_Y8_N18
\Compx4_inst|A_greater_B_bus~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|A_greater_B_bus~3_combout\ = (\HVAC_INST|counter:cnt[0]~q\ & ((\pb_n[3]~input_o\ & ((\sw[0]~input_o\))) # (!\pb_n[3]~input_o\ & (\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \pb_n[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \HVAC_INST|counter:cnt[0]~q\,
	combout => \Compx4_inst|A_greater_B_bus~3_combout\);

-- Location: LCCOMB_X11_Y8_N8
\Compx4_inst|bit2|A_equal_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|bit2|A_equal_B~0_combout\ = \HVAC_INST|counter:cnt[2]~q\ $ (((\pb_n[3]~input_o\ & (!\sw[2]~input_o\)) # (!\pb_n[3]~input_o\ & ((!\sw[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \HVAC_INST|counter:cnt[2]~q\,
	combout => \Compx4_inst|bit2|A_equal_B~0_combout\);

-- Location: LCCOMB_X11_Y8_N22
\Compx4_inst|A_greater_B_bus~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|A_greater_B_bus~2_combout\ = (!\Compx4_inst|bit3|A_equal_B~0_combout\ & (!\Compx4_inst|bit2|A_equal_B~0_combout\ & (\HVAC_INST|counter:cnt[1]~q\ $ (\MUX_INST|mux_temp[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[1]~q\,
	datab => \MUX_INST|mux_temp[1]~3_combout\,
	datac => \Compx4_inst|bit3|A_equal_B~0_combout\,
	datad => \Compx4_inst|bit2|A_equal_B~0_combout\,
	combout => \Compx4_inst|A_greater_B_bus~2_combout\);

-- Location: LCCOMB_X10_Y8_N8
\Compx4_inst|A_greater_B_bus~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|A_greater_B_bus~0_combout\ = (\HVAC_INST|counter:cnt[1]~q\ & ((\pb_n[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \pb_n[3]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \HVAC_INST|counter:cnt[1]~q\,
	combout => \Compx4_inst|A_greater_B_bus~0_combout\);

-- Location: LCCOMB_X11_Y8_N12
\Compx4_inst|A_greater_B_bus~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|A_greater_B_bus~1_combout\ = (\Compx4_inst|bit3|A_equal_B~0_combout\) # ((\HVAC_INST|counter:cnt[2]~q\ & (!\MUX_INST|mux_temp[2]~0_combout\ & !\Compx4_inst|A_greater_B_bus~0_combout\)) # (!\HVAC_INST|counter:cnt[2]~q\ & 
-- ((!\Compx4_inst|A_greater_B_bus~0_combout\) # (!\MUX_INST|mux_temp[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[2]~q\,
	datab => \MUX_INST|mux_temp[2]~0_combout\,
	datac => \Compx4_inst|bit3|A_equal_B~0_combout\,
	datad => \Compx4_inst|A_greater_B_bus~0_combout\,
	combout => \Compx4_inst|A_greater_B_bus~1_combout\);

-- Location: LCCOMB_X11_Y8_N0
\Compx4_inst|A_greater_B_bus~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|A_greater_B_bus~4_combout\ = (!\Compx4_inst|bit3|A_greater_B~combout\ & (\Compx4_inst|A_greater_B_bus~1_combout\ & ((!\Compx4_inst|A_greater_B_bus~2_combout\) # (!\Compx4_inst|A_greater_B_bus~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Compx4_inst|bit3|A_greater_B~combout\,
	datab => \Compx4_inst|A_greater_B_bus~3_combout\,
	datac => \Compx4_inst|A_greater_B_bus~2_combout\,
	datad => \Compx4_inst|A_greater_B_bus~1_combout\,
	combout => \Compx4_inst|A_greater_B_bus~4_combout\);

-- Location: LCCOMB_X11_Y8_N2
\HVAC_INST|cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|cnt~1_combout\ = (\HVAC_INST|counter:cnt[3]~q\) # ((\HVAC_INST|cnt~0_combout\ & (!\Compx4_inst|A_less_B_bus~2_combout\ & !\Compx4_inst|A_greater_B_bus~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[3]~q\,
	datab => \HVAC_INST|cnt~0_combout\,
	datac => \Compx4_inst|A_less_B_bus~2_combout\,
	datad => \Compx4_inst|A_greater_B_bus~4_combout\,
	combout => \HVAC_INST|cnt~1_combout\);

-- Location: LCCOMB_X11_Y8_N20
\HVAC_INST|cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|cnt~2_combout\ = (\Compx4_inst|A_less_B_bus~2_combout\) # ((\Compx4_inst|A_greater_B_bus~4_combout\) # ((\HVAC_INST|counter:cnt[3]~q\ & \HVAC_INST|cnt~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[3]~q\,
	datab => \HVAC_INST|cnt~0_combout\,
	datac => \Compx4_inst|A_less_B_bus~2_combout\,
	datad => \Compx4_inst|A_greater_B_bus~4_combout\,
	combout => \HVAC_INST|cnt~2_combout\);

-- Location: LCCOMB_X11_Y8_N18
\HVAC_INST|cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|cnt~3_combout\ = (\HVAC_INST|counter:cnt[2]~q\ & (\HVAC_INST|counter:cnt[0]~q\ & (\HVAC_INST|counter:cnt[1]~q\ & \HVAC_INST|cnt~2_combout\))) # (!\HVAC_INST|counter:cnt[2]~q\ & (!\HVAC_INST|counter:cnt[0]~q\ & (!\HVAC_INST|counter:cnt[1]~q\ & 
-- !\HVAC_INST|cnt~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[2]~q\,
	datab => \HVAC_INST|counter:cnt[0]~q\,
	datac => \HVAC_INST|counter:cnt[1]~q\,
	datad => \HVAC_INST|cnt~2_combout\,
	combout => \HVAC_INST|cnt~3_combout\);

-- Location: LCCOMB_X11_Y8_N28
\HVAC_INST|cnt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|cnt~4_combout\ = (\HVAC_INST|cnt~1_combout\ & ((!\HVAC_INST|cnt~3_combout\) # (!\Compx4_inst|A_less_B_bus~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Compx4_inst|A_less_B_bus~2_combout\,
	datac => \HVAC_INST|cnt~1_combout\,
	datad => \HVAC_INST|cnt~3_combout\,
	combout => \HVAC_INST|cnt~4_combout\);

-- Location: FF_X11_Y8_N29
\HVAC_INST|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC_INST|clk_divider:counter[23]~clkctrl_outclk\,
	d => \HVAC_INST|cnt~4_combout\,
	ena => \energy_monitor_inst|blower~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|counter:cnt[3]~q\);

-- Location: LCCOMB_X11_Y8_N14
\Compx4_inst|bit3|A_equal_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|bit3|A_equal_B~0_combout\ = \HVAC_INST|counter:cnt[3]~q\ $ (((\pb_n[3]~input_o\ & ((\sw[3]~input_o\))) # (!\pb_n[3]~input_o\ & (\sw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \pb_n[3]~input_o\,
	datad => \HVAC_INST|counter:cnt[3]~q\,
	combout => \Compx4_inst|bit3|A_equal_B~0_combout\);

-- Location: LCCOMB_X12_Y8_N24
\Compx4_inst|A_less_B_bus~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|A_less_B_bus~0_combout\ = (\MUX_INST|mux_temp[3]~1_combout\ & (\HVAC_INST|counter:cnt[3]~q\ & (!\MUX_INST|mux_temp[2]~0_combout\ & !\HVAC_INST|counter:cnt[2]~q\))) # (!\MUX_INST|mux_temp[3]~1_combout\ & ((\HVAC_INST|counter:cnt[3]~q\) # 
-- ((!\MUX_INST|mux_temp[2]~0_combout\ & !\HVAC_INST|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_INST|mux_temp[3]~1_combout\,
	datab => \HVAC_INST|counter:cnt[3]~q\,
	datac => \MUX_INST|mux_temp[2]~0_combout\,
	datad => \HVAC_INST|counter:cnt[2]~q\,
	combout => \Compx4_inst|A_less_B_bus~0_combout\);

-- Location: LCCOMB_X11_Y8_N30
\Compx4_inst|A_less_B_bus~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|A_less_B_bus~2_combout\ = (\Compx4_inst|A_less_B_bus~0_combout\) # ((\Compx4_inst|A_less_B_bus~1_combout\ & (!\Compx4_inst|bit3|A_equal_B~0_combout\ & !\Compx4_inst|bit2|A_equal_B~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Compx4_inst|A_less_B_bus~1_combout\,
	datab => \Compx4_inst|bit3|A_equal_B~0_combout\,
	datac => \Compx4_inst|bit2|A_equal_B~0_combout\,
	datad => \Compx4_inst|A_less_B_bus~0_combout\,
	combout => \Compx4_inst|A_less_B_bus~2_combout\);

-- Location: LCCOMB_X12_Y8_N12
\HVAC_INST|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|Add2~0_combout\ = (\HVAC_INST|counter:cnt[1]~q\ & (\HVAC_INST|counter:cnt[0]~q\ & !\HVAC_INST|cnt~5_combout\)) # (!\HVAC_INST|counter:cnt[1]~q\ & (!\HVAC_INST|counter:cnt[0]~q\ & \HVAC_INST|cnt~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|counter:cnt[1]~q\,
	datac => \HVAC_INST|counter:cnt[0]~q\,
	datad => \HVAC_INST|cnt~5_combout\,
	combout => \HVAC_INST|Add2~0_combout\);

-- Location: LCCOMB_X12_Y8_N18
\HVAC_INST|cnt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|cnt~6_combout\ = \HVAC_INST|counter:cnt[2]~q\ $ (((\HVAC_INST|counter:cnt[1]~q\) # ((\HVAC_INST|counter:cnt[0]~q\) # (!\HVAC_INST|cnt~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[1]~q\,
	datab => \HVAC_INST|counter:cnt[2]~q\,
	datac => \HVAC_INST|counter:cnt[0]~q\,
	datad => \HVAC_INST|cnt~5_combout\,
	combout => \HVAC_INST|cnt~6_combout\);

-- Location: LCCOMB_X11_Y8_N10
\HVAC_INST|cnt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|cnt~7_combout\ = (\Compx4_inst|A_less_B_bus~2_combout\ & ((\HVAC_INST|Add2~0_combout\ & ((\HVAC_INST|cnt~6_combout\) # (!\HVAC_INST|cnt~1_combout\))) # (!\HVAC_INST|Add2~0_combout\ & ((!\HVAC_INST|cnt~6_combout\))))) # 
-- (!\Compx4_inst|A_less_B_bus~2_combout\ & (((!\HVAC_INST|cnt~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Compx4_inst|A_less_B_bus~2_combout\,
	datab => \HVAC_INST|cnt~1_combout\,
	datac => \HVAC_INST|Add2~0_combout\,
	datad => \HVAC_INST|cnt~6_combout\,
	combout => \HVAC_INST|cnt~7_combout\);

-- Location: FF_X11_Y8_N11
\HVAC_INST|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC_INST|clk_divider:counter[23]~clkctrl_outclk\,
	d => \HVAC_INST|cnt~7_combout\,
	ena => \energy_monitor_inst|blower~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|counter:cnt[2]~q\);

-- Location: LCCOMB_X12_Y8_N10
\HVAC_INST|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|cnt~0_combout\ = (!\HVAC_INST|counter:cnt[1]~q\ & (!\HVAC_INST|counter:cnt[0]~q\ & !\HVAC_INST|counter:cnt[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[1]~q\,
	datac => \HVAC_INST|counter:cnt[0]~q\,
	datad => \HVAC_INST|counter:cnt[2]~q\,
	combout => \HVAC_INST|cnt~0_combout\);

-- Location: LCCOMB_X12_Y8_N0
\HVAC_INST|cnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|cnt~5_combout\ = (!\Compx4_inst|A_greater_B_bus~4_combout\ & (!\Compx4_inst|A_less_B_bus~2_combout\ & ((!\HVAC_INST|counter:cnt[3]~q\) # (!\HVAC_INST|cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|cnt~0_combout\,
	datab => \HVAC_INST|counter:cnt[3]~q\,
	datac => \Compx4_inst|A_greater_B_bus~4_combout\,
	datad => \Compx4_inst|A_less_B_bus~2_combout\,
	combout => \HVAC_INST|cnt~5_combout\);

-- Location: LCCOMB_X11_Y8_N24
\HVAC_INST|cnt~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|cnt~8_combout\ = (\Compx4_inst|A_less_B_bus~2_combout\ & ((\HVAC_INST|cnt~1_combout\) # (!\HVAC_INST|cnt~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|cnt~1_combout\,
	datac => \Compx4_inst|A_less_B_bus~2_combout\,
	datad => \HVAC_INST|cnt~3_combout\,
	combout => \HVAC_INST|cnt~8_combout\);

-- Location: LCCOMB_X11_Y8_N16
\HVAC_INST|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|counter:cnt[0]~0_combout\ = \HVAC_INST|counter:cnt[0]~q\ $ (((\energy_monitor_inst|blower~0_combout\ & (\HVAC_INST|cnt~5_combout\ $ (\HVAC_INST|cnt~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|cnt~5_combout\,
	datab => \energy_monitor_inst|blower~0_combout\,
	datac => \HVAC_INST|counter:cnt[0]~q\,
	datad => \HVAC_INST|cnt~8_combout\,
	combout => \HVAC_INST|counter:cnt[0]~0_combout\);

-- Location: FF_X11_Y8_N17
\HVAC_INST|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC_INST|clk_divider:counter[23]~clkctrl_outclk\,
	d => \HVAC_INST|counter:cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|counter:cnt[0]~q\);

-- Location: LCCOMB_X10_Y8_N14
\Compx4_inst|A_equal_B_bus\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Compx4_inst|A_equal_B_bus~combout\ = (\HVAC_INST|counter:cnt[0]~q\ $ (!\MUX_INST|mux_temp[0]~2_combout\)) # (!\Compx4_inst|A_greater_B_bus~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|counter:cnt[0]~q\,
	datac => \MUX_INST|mux_temp[0]~2_combout\,
	datad => \Compx4_inst|A_greater_B_bus~2_combout\,
	combout => \Compx4_inst|A_equal_B_bus~combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

-- Location: LCCOMB_X10_Y8_N4
\energy_monitor_inst|blower~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \energy_monitor_inst|blower~0_combout\ = (\pb_n[1]~input_o\ & (\pb_n[2]~input_o\ & (\Compx4_inst|A_equal_B_bus~combout\ & \pb_n[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[1]~input_o\,
	datab => \pb_n[2]~input_o\,
	datac => \Compx4_inst|A_equal_B_bus~combout\,
	datad => \pb_n[0]~input_o\,
	combout => \energy_monitor_inst|blower~0_combout\);

-- Location: LCCOMB_X11_Y8_N6
\HVAC_INST|counter:cnt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|counter:cnt[1]~0_combout\ = (\HVAC_INST|counter:cnt[0]~q\ & (!\HVAC_INST|cnt~5_combout\ & \HVAC_INST|cnt~8_combout\)) # (!\HVAC_INST|counter:cnt[0]~q\ & (\HVAC_INST|cnt~5_combout\ & !\HVAC_INST|cnt~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HVAC_INST|counter:cnt[0]~q\,
	datac => \HVAC_INST|cnt~5_combout\,
	datad => \HVAC_INST|cnt~8_combout\,
	combout => \HVAC_INST|counter:cnt[1]~0_combout\);

-- Location: LCCOMB_X11_Y8_N26
\HVAC_INST|counter:cnt[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HVAC_INST|counter:cnt[1]~1_combout\ = \HVAC_INST|counter:cnt[1]~q\ $ (((\energy_monitor_inst|blower~0_combout\ & \HVAC_INST|counter:cnt[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \energy_monitor_inst|blower~0_combout\,
	datac => \HVAC_INST|counter:cnt[1]~q\,
	datad => \HVAC_INST|counter:cnt[1]~0_combout\,
	combout => \HVAC_INST|counter:cnt[1]~1_combout\);

-- Location: FF_X11_Y8_N27
\HVAC_INST|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HVAC_INST|clk_divider:counter[23]~clkctrl_outclk\,
	d => \HVAC_INST|counter:cnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HVAC_INST|counter:cnt[1]~q\);

-- Location: LCCOMB_X12_Y8_N28
\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\HVAC_INST|counter:cnt[1]~q\ & (!\HVAC_INST|counter:cnt[2]~q\ & (\HVAC_INST|counter:cnt[3]~q\ $ (!\HVAC_INST|counter:cnt[0]~q\)))) # (!\HVAC_INST|counter:cnt[1]~q\ & ((\HVAC_INST|counter:cnt[0]~q\ & 
-- ((!\HVAC_INST|counter:cnt[2]~q\))) # (!\HVAC_INST|counter:cnt[0]~q\ & (\HVAC_INST|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[1]~q\,
	datab => \HVAC_INST|counter:cnt[3]~q\,
	datac => \HVAC_INST|counter:cnt[0]~q\,
	datad => \HVAC_INST|counter:cnt[2]~q\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y8_N30
\inst3|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[1]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (!\inst1|Mux5~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((!\inst2|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \inst1|Mux5~0_combout\,
	datad => \inst2|Mux5~0_combout\,
	combout => \inst3|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X12_Y8_N8
\inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\MUX_INST|mux_temp[3]~1_combout\ & (\MUX_INST|mux_temp[2]~0_combout\ & ((!\MUX_INST|mux_temp[1]~3_combout\)))) # (!\MUX_INST|mux_temp[3]~1_combout\ & ((\MUX_INST|mux_temp[2]~0_combout\ & (\MUX_INST|mux_temp[0]~2_combout\ & 
-- \MUX_INST|mux_temp[1]~3_combout\)) # (!\MUX_INST|mux_temp[2]~0_combout\ & ((\MUX_INST|mux_temp[0]~2_combout\) # (\MUX_INST|mux_temp[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_INST|mux_temp[3]~1_combout\,
	datab => \MUX_INST|mux_temp[2]~0_combout\,
	datac => \MUX_INST|mux_temp[0]~2_combout\,
	datad => \MUX_INST|mux_temp[1]~3_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y8_N2
\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\HVAC_INST|counter:cnt[1]~q\ & ((\HVAC_INST|counter:cnt[3]~q\ & ((!\HVAC_INST|counter:cnt[2]~q\))) # (!\HVAC_INST|counter:cnt[3]~q\ & (!\HVAC_INST|counter:cnt[0]~q\ & \HVAC_INST|counter:cnt[2]~q\)))) # 
-- (!\HVAC_INST|counter:cnt[1]~q\ & (!\HVAC_INST|counter:cnt[3]~q\ & ((\HVAC_INST|counter:cnt[2]~q\) # (!\HVAC_INST|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[1]~q\,
	datab => \HVAC_INST|counter:cnt[3]~q\,
	datac => \HVAC_INST|counter:cnt[0]~q\,
	datad => \HVAC_INST|counter:cnt[2]~q\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y8_N20
\inst3|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[5]~1_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (!\inst1|Mux1~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((!\inst2|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux1~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst2|Mux1~0_combout\,
	combout => \inst3|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X11_Y9_N6
\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\HVAC_INST|counter:cnt[3]~q\) # ((\HVAC_INST|counter:cnt[1]~q\ & (!\HVAC_INST|counter:cnt[2]~q\)) # (!\HVAC_INST|counter:cnt[1]~q\ & ((\HVAC_INST|counter:cnt[2]~q\) # (\HVAC_INST|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[3]~q\,
	datab => \HVAC_INST|counter:cnt[1]~q\,
	datac => \HVAC_INST|counter:cnt[2]~q\,
	datad => \HVAC_INST|counter:cnt[0]~q\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y9_N0
\inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\MUX_INST|mux_temp[3]~1_combout\) # ((\MUX_INST|mux_temp[1]~3_combout\ & ((!\MUX_INST|mux_temp[2]~0_combout\) # (!\MUX_INST|mux_temp[0]~2_combout\))) # (!\MUX_INST|mux_temp[1]~3_combout\ & ((\MUX_INST|mux_temp[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_INST|mux_temp[1]~3_combout\,
	datab => \MUX_INST|mux_temp[3]~1_combout\,
	datac => \MUX_INST|mux_temp[0]~2_combout\,
	datad => \MUX_INST|mux_temp[2]~0_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y9_N6
\inst3|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[6]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux0~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux0~0_combout\,
	combout => \inst3|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X9_Y7_N24
\energy_monitor_inst|furnace~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \energy_monitor_inst|furnace~0_combout\ = (\Compx4_inst|A_less_B_bus~2_combout\) # (\Compx4_inst|A_greater_B_bus~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Compx4_inst|A_less_B_bus~2_combout\,
	datac => \Compx4_inst|A_greater_B_bus~4_combout\,
	combout => \energy_monitor_inst|furnace~0_combout\);

-- Location: LCCOMB_X9_Y6_N0
\energy_monitor_inst|at_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \energy_monitor_inst|at_temp~0_combout\ = (\Compx4_inst|A_greater_B_bus~4_combout\ & !\Compx4_inst|A_less_B_bus~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Compx4_inst|A_greater_B_bus~4_combout\,
	datad => \Compx4_inst|A_less_B_bus~2_combout\,
	combout => \energy_monitor_inst|at_temp~0_combout\);

-- Location: LCCOMB_X10_Y8_N26
\tester_inst|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tester_inst|TEST_PASS~5_combout\ = (\sw[3]~input_o\ & (!\sw[2]~input_o\ & (!\HVAC_INST|counter:cnt[2]~q\ & \HVAC_INST|counter:cnt[3]~q\))) # (!\sw[3]~input_o\ & ((\HVAC_INST|counter:cnt[3]~q\) # ((!\sw[2]~input_o\ & !\HVAC_INST|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \HVAC_INST|counter:cnt[2]~q\,
	datad => \HVAC_INST|counter:cnt[3]~q\,
	combout => \tester_inst|TEST_PASS~5_combout\);

-- Location: LCCOMB_X10_Y8_N28
\tester_inst|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tester_inst|TEST_PASS~6_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\ & \HVAC_INST|counter:cnt[2]~q\)) # (!\HVAC_INST|counter:cnt[3]~q\))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (\HVAC_INST|counter:cnt[2]~q\ & !\HVAC_INST|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \HVAC_INST|counter:cnt[2]~q\,
	datad => \HVAC_INST|counter:cnt[3]~q\,
	combout => \tester_inst|TEST_PASS~6_combout\);

-- Location: LCCOMB_X10_Y8_N6
\tester_inst|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tester_inst|TEST_PASS~7_combout\ = (\tester_inst|TEST_PASS~5_combout\ & ((\Compx4_inst|A_less_B_bus~2_combout\) # ((!\Compx4_inst|A_greater_B_bus~4_combout\ & \tester_inst|TEST_PASS~6_combout\)))) # (!\tester_inst|TEST_PASS~5_combout\ & 
-- (!\Compx4_inst|A_greater_B_bus~4_combout\ & ((\tester_inst|TEST_PASS~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tester_inst|TEST_PASS~5_combout\,
	datab => \Compx4_inst|A_greater_B_bus~4_combout\,
	datac => \Compx4_inst|A_less_B_bus~2_combout\,
	datad => \tester_inst|TEST_PASS~6_combout\,
	combout => \tester_inst|TEST_PASS~7_combout\);

-- Location: LCCOMB_X10_Y8_N10
\tester_inst|TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tester_inst|TEST_PASS~0_combout\ = (\sw[3]~input_o\ & (\HVAC_INST|counter:cnt[3]~q\ & (\sw[2]~input_o\ $ (\HVAC_INST|counter:cnt[2]~q\)))) # (!\sw[3]~input_o\ & (!\HVAC_INST|counter:cnt[3]~q\ & (\sw[2]~input_o\ $ (\HVAC_INST|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \HVAC_INST|counter:cnt[2]~q\,
	datad => \HVAC_INST|counter:cnt[3]~q\,
	combout => \tester_inst|TEST_PASS~0_combout\);

-- Location: LCCOMB_X10_Y8_N12
\tester_inst|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tester_inst|TEST_PASS~1_combout\ = (\sw[0]~input_o\ & (\Compx4_inst|A_less_B_bus~2_combout\ $ (((!\HVAC_INST|counter:cnt[0]~q\ & !\Compx4_inst|A_equal_B_bus~combout\))))) # (!\sw[0]~input_o\ & (\HVAC_INST|counter:cnt[0]~q\ & 
-- (\Compx4_inst|A_less_B_bus~2_combout\ $ (!\Compx4_inst|A_equal_B_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC_INST|counter:cnt[0]~q\,
	datac => \Compx4_inst|A_less_B_bus~2_combout\,
	datad => \Compx4_inst|A_equal_B_bus~combout\,
	combout => \tester_inst|TEST_PASS~1_combout\);

-- Location: LCCOMB_X9_Y8_N24
\tester_inst|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tester_inst|TEST_PASS~2_combout\ = (\HVAC_INST|counter:cnt[1]~q\ & (!\sw[1]~input_o\ & (\Compx4_inst|A_less_B_bus~2_combout\ $ (\tester_inst|TEST_PASS~1_combout\)))) # (!\HVAC_INST|counter:cnt[1]~q\ & (\Compx4_inst|A_less_B_bus~2_combout\ $ 
-- (((\sw[1]~input_o\ & \tester_inst|TEST_PASS~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Compx4_inst|A_less_B_bus~2_combout\,
	datab => \HVAC_INST|counter:cnt[1]~q\,
	datac => \sw[1]~input_o\,
	datad => \tester_inst|TEST_PASS~1_combout\,
	combout => \tester_inst|TEST_PASS~2_combout\);

-- Location: LCCOMB_X10_Y8_N2
\tester_inst|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tester_inst|TEST_PASS~3_combout\ = (\HVAC_INST|counter:cnt[1]~q\ & ((\sw[1]~input_o\) # ((\sw[0]~input_o\ & \HVAC_INST|counter:cnt[0]~q\)))) # (!\HVAC_INST|counter:cnt[1]~q\ & (\sw[0]~input_o\ & (\sw[1]~input_o\ & \HVAC_INST|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \HVAC_INST|counter:cnt[1]~q\,
	datac => \sw[1]~input_o\,
	datad => \HVAC_INST|counter:cnt[0]~q\,
	combout => \tester_inst|TEST_PASS~3_combout\);

-- Location: LCCOMB_X10_Y8_N24
\tester_inst|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tester_inst|TEST_PASS~4_combout\ = (\tester_inst|TEST_PASS~0_combout\ & ((\tester_inst|TEST_PASS~2_combout\) # ((!\Compx4_inst|A_greater_B_bus~4_combout\ & \tester_inst|TEST_PASS~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tester_inst|TEST_PASS~0_combout\,
	datab => \tester_inst|TEST_PASS~2_combout\,
	datac => \Compx4_inst|A_greater_B_bus~4_combout\,
	datad => \tester_inst|TEST_PASS~3_combout\,
	combout => \tester_inst|TEST_PASS~4_combout\);

-- Location: LCCOMB_X9_Y8_N6
\tester_inst|TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tester_inst|TEST_PASS~8_combout\ = (!\pb_n[2]~input_o\ & ((\tester_inst|TEST_PASS~7_combout\) # (\tester_inst|TEST_PASS~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tester_inst|TEST_PASS~7_combout\,
	datac => \pb_n[2]~input_o\,
	datad => \tester_inst|TEST_PASS~4_combout\,
	combout => \tester_inst|TEST_PASS~8_combout\);

-- Location: LCCOMB_X12_Y9_N30
\inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\HVAC_INST|counter:cnt[2]~q\ & (!\HVAC_INST|counter:cnt[0]~q\ & (\HVAC_INST|counter:cnt[3]~q\ $ (\HVAC_INST|counter:cnt[1]~q\)))) # (!\HVAC_INST|counter:cnt[2]~q\ & (\HVAC_INST|counter:cnt[1]~q\ & ((\HVAC_INST|counter:cnt[3]~q\) 
-- # (\HVAC_INST|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[2]~q\,
	datab => \HVAC_INST|counter:cnt[3]~q\,
	datac => \HVAC_INST|counter:cnt[0]~q\,
	datad => \HVAC_INST|counter:cnt[1]~q\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y9_N0
\inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\MUX_INST|mux_temp[2]~0_combout\ & (!\MUX_INST|mux_temp[1]~3_combout\ & ((\MUX_INST|mux_temp[3]~1_combout\) # (!\MUX_INST|mux_temp[0]~2_combout\)))) # (!\MUX_INST|mux_temp[2]~0_combout\ & (\MUX_INST|mux_temp[0]~2_combout\ & 
-- (\MUX_INST|mux_temp[1]~3_combout\ $ (!\MUX_INST|mux_temp[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_INST|mux_temp[2]~0_combout\,
	datab => \MUX_INST|mux_temp[1]~3_combout\,
	datac => \MUX_INST|mux_temp[0]~2_combout\,
	datad => \MUX_INST|mux_temp[3]~1_combout\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y9_N4
\inst3|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[0]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux6~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \inst2|Mux6~0_combout\,
	datad => \inst1|Mux6~0_combout\,
	combout => \inst3|DOUT[0]~0_combout\);

-- Location: LCCOMB_X11_Y9_N16
\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\HVAC_INST|counter:cnt[3]~q\ & (!\HVAC_INST|counter:cnt[2]~q\ & ((\HVAC_INST|counter:cnt[0]~q\) # (!\HVAC_INST|counter:cnt[1]~q\)))) # (!\HVAC_INST|counter:cnt[3]~q\ & (!\HVAC_INST|counter:cnt[1]~q\ & 
-- (\HVAC_INST|counter:cnt[2]~q\ & \HVAC_INST|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[3]~q\,
	datab => \HVAC_INST|counter:cnt[1]~q\,
	datac => \HVAC_INST|counter:cnt[2]~q\,
	datad => \HVAC_INST|counter:cnt[0]~q\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y9_N6
\inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\MUX_INST|mux_temp[2]~0_combout\ & (\MUX_INST|mux_temp[3]~1_combout\ & ((\MUX_INST|mux_temp[1]~3_combout\) # (!\MUX_INST|mux_temp[0]~2_combout\)))) # (!\MUX_INST|mux_temp[2]~0_combout\ & (\MUX_INST|mux_temp[1]~3_combout\ & 
-- (!\MUX_INST|mux_temp[0]~2_combout\ & !\MUX_INST|mux_temp[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_INST|mux_temp[2]~0_combout\,
	datab => \MUX_INST|mux_temp[1]~3_combout\,
	datac => \MUX_INST|mux_temp[0]~2_combout\,
	datad => \MUX_INST|mux_temp[3]~1_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y9_N8
\inst3|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[2]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux4~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \inst2|Mux4~0_combout\,
	datad => \inst1|Mux4~0_combout\,
	combout => \inst3|DOUT[2]~2_combout\);

-- Location: LCCOMB_X12_Y8_N4
\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\HVAC_INST|counter:cnt[1]~q\ & (!\HVAC_INST|counter:cnt[3]~q\ & (\HVAC_INST|counter:cnt[0]~q\ $ (\HVAC_INST|counter:cnt[2]~q\)))) # (!\HVAC_INST|counter:cnt[1]~q\ & ((\HVAC_INST|counter:cnt[0]~q\ & (\HVAC_INST|counter:cnt[3]~q\ & 
-- \HVAC_INST|counter:cnt[2]~q\)) # (!\HVAC_INST|counter:cnt[0]~q\ & ((!\HVAC_INST|counter:cnt[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[1]~q\,
	datab => \HVAC_INST|counter:cnt[3]~q\,
	datac => \HVAC_INST|counter:cnt[0]~q\,
	datad => \HVAC_INST|counter:cnt[2]~q\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y8_N6
\inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\MUX_INST|mux_temp[1]~3_combout\ & ((\MUX_INST|mux_temp[2]~0_combout\ & ((\MUX_INST|mux_temp[0]~2_combout\))) # (!\MUX_INST|mux_temp[2]~0_combout\ & (\MUX_INST|mux_temp[3]~1_combout\ & !\MUX_INST|mux_temp[0]~2_combout\)))) # 
-- (!\MUX_INST|mux_temp[1]~3_combout\ & (!\MUX_INST|mux_temp[3]~1_combout\ & (\MUX_INST|mux_temp[2]~0_combout\ $ (\MUX_INST|mux_temp[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_INST|mux_temp[3]~1_combout\,
	datab => \MUX_INST|mux_temp[2]~0_combout\,
	datac => \MUX_INST|mux_temp[0]~2_combout\,
	datad => \MUX_INST|mux_temp[1]~3_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y8_N22
\inst3|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[3]~3_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux3~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux3~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux3~0_combout\,
	combout => \inst3|DOUT[3]~3_combout\);

-- Location: LCCOMB_X12_Y8_N16
\inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\HVAC_INST|counter:cnt[1]~q\ & ((\HVAC_INST|counter:cnt[2]~q\ & ((!\HVAC_INST|counter:cnt[0]~q\))) # (!\HVAC_INST|counter:cnt[2]~q\ & (!\HVAC_INST|counter:cnt[3]~q\)))) # (!\HVAC_INST|counter:cnt[1]~q\ & 
-- (!\HVAC_INST|counter:cnt[3]~q\ & (!\HVAC_INST|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HVAC_INST|counter:cnt[1]~q\,
	datab => \HVAC_INST|counter:cnt[3]~q\,
	datac => \HVAC_INST|counter:cnt[0]~q\,
	datad => \HVAC_INST|counter:cnt[2]~q\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y9_N8
\inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\MUX_INST|mux_temp[1]~3_combout\ & (!\MUX_INST|mux_temp[3]~1_combout\ & (\MUX_INST|mux_temp[0]~2_combout\))) # (!\MUX_INST|mux_temp[1]~3_combout\ & ((\MUX_INST|mux_temp[2]~0_combout\ & (!\MUX_INST|mux_temp[3]~1_combout\)) # 
-- (!\MUX_INST|mux_temp[2]~0_combout\ & ((\MUX_INST|mux_temp[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_INST|mux_temp[1]~3_combout\,
	datab => \MUX_INST|mux_temp[3]~1_combout\,
	datac => \MUX_INST|mux_temp[0]~2_combout\,
	datad => \MUX_INST|mux_temp[2]~0_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y9_N4
\inst3|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[4]~4_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux2~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst1|Mux2~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


