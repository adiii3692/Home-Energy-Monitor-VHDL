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

-- DATE "06/26/2025 16:39:49"

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
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab3_top;

-- Design Ports Information
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
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
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
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
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~8_combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~11_combout\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~12\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~13_combout\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~15_combout\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~16\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~17_combout\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~19_combout\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~20\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~21_combout\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~22\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter[7]~23_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[4]~4_combout\ : std_logic;
SIGNAL \U_D_Bin_Counter8bit_inst|ud_bin_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_pb_n[0]~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[0]~0_combout\ : std_logic;
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
\ALT_INV_pb_n[0]~input_o\ <= NOT \pb_n[0]~input_o\;
\inst3|ALT_INV_DOUT[4]~4_combout\ <= NOT \inst3|DOUT[4]~4_combout\;
\inst3|ALT_INV_DOUT[3]~3_combout\ <= NOT \inst3|DOUT[3]~3_combout\;
\inst3|ALT_INV_DOUT[2]~2_combout\ <= NOT \inst3|DOUT[2]~2_combout\;
\inst3|ALT_INV_DOUT[0]~0_combout\ <= NOT \inst3|DOUT[0]~0_combout\;
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
	i => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(0),
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
	i => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(1),
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
	i => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(2),
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
	i => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(3),
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
	i => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(4),
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
	i => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(5),
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
	i => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(6),
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
	i => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(7),
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

-- Location: LCCOMB_X11_Y17_N4
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

-- Location: FF_X11_Y17_N5
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

-- Location: LCCOMB_X11_Y17_N10
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

-- Location: FF_X11_Y17_N11
\inst3|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X11_Y17_N12
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

-- Location: FF_X11_Y17_N13
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

-- Location: LCCOMB_X11_Y17_N14
\inst3|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[3]~1_combout\ = (\inst3|clk_proc:COUNT[3]~q\ & (\inst3|clk_proc:COUNT[2]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[3]~q\ & (!\inst3|clk_proc:COUNT[2]~2\ & VCC))
-- \inst3|clk_proc:COUNT[3]~2\ = CARRY((\inst3|clk_proc:COUNT[3]~q\ & !\inst3|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[2]~2\,
	combout => \inst3|clk_proc:COUNT[3]~1_combout\,
	cout => \inst3|clk_proc:COUNT[3]~2\);

-- Location: FF_X11_Y17_N15
\inst3|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X11_Y17_N16
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

-- Location: FF_X11_Y17_N17
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

-- Location: LCCOMB_X11_Y17_N18
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

-- Location: FF_X11_Y17_N19
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

-- Location: LCCOMB_X11_Y17_N20
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

-- Location: FF_X11_Y17_N21
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

-- Location: LCCOMB_X11_Y17_N22
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

-- Location: FF_X11_Y17_N23
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

-- Location: LCCOMB_X11_Y17_N24
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

-- Location: FF_X11_Y17_N25
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

-- Location: LCCOMB_X11_Y17_N26
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

-- Location: FF_X11_Y17_N27
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

-- Location: LCCOMB_X11_Y17_N28
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

-- Location: FF_X11_Y17_N29
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

-- Location: LCCOMB_X11_Y17_N6
\inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\sw[3]~input_o\))) # (!\sw[0]~input_o\ & (\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ & (\sw[0]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \inst1|Mux5~0_combout\);

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

-- Location: LCCOMB_X11_Y18_N24
\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\sw[7]~input_o\ & ((\sw[4]~input_o\ & ((\sw[5]~input_o\))) # (!\sw[4]~input_o\ & (\sw[6]~input_o\)))) # (!\sw[7]~input_o\ & (\sw[6]~input_o\ & (\sw[4]~input_o\ $ (\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y18_N6
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

-- Location: LCCOMB_X11_Y18_N22
\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\sw[6]~input_o\ & ((\sw[7]~input_o\ & ((!\sw[5]~input_o\))) # (!\sw[7]~input_o\ & (\sw[4]~input_o\ & \sw[5]~input_o\)))) # (!\sw[6]~input_o\ & (!\sw[7]~input_o\ & ((\sw[4]~input_o\) # (\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y18_N12
\inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\sw[2]~input_o\ & ((\sw[1]~input_o\ & (\sw[0]~input_o\ & !\sw[3]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[3]~input_o\))))) # (!\sw[2]~input_o\ & (!\sw[3]~input_o\ & ((\sw[0]~input_o\) # (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y18_N20
\inst3|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[5]~1_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((!\inst1|Mux1~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (!\inst2|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \inst2|Mux1~0_combout\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst3|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X11_Y17_N8
\inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\sw[3]~input_o\) # ((\sw[2]~input_o\ & ((!\sw[1]~input_o\) # (!\sw[0]~input_o\))) # (!\sw[2]~input_o\ & ((\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y18_N18
\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\sw[7]~input_o\) # ((\sw[6]~input_o\ & ((!\sw[5]~input_o\) # (!\sw[4]~input_o\))) # (!\sw[6]~input_o\ & ((\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y17_N30
\inst3|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[6]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux0~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux0~0_combout\,
	datac => \inst2|Mux0~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X11_Y11_N10
\U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~8_combout\ = \U_D_Bin_Counter8bit_inst|ud_bin_counter\(0) $ (VCC)
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\ = CARRY(\U_D_Bin_Counter8bit_inst|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(0),
	datad => VCC,
	combout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~8_combout\,
	cout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\);

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

-- Location: LCCOMB_X11_Y11_N28
\U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\ = (\sw[0]~input_o\) # (!\pb_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \pb_n[0]~input_o\,
	combout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\);

-- Location: FF_X11_Y11_N11
\U_D_Bin_Counter8bit_inst|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~8_combout\,
	sclr => \ALT_INV_pb_n[0]~input_o\,
	ena => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(0));

-- Location: LCCOMB_X11_Y11_N12
\U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~11_combout\ = (\U_D_Bin_Counter8bit_inst|ud_bin_counter\(1) & ((\sw[1]~input_o\ & (!\U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\)) # (!\sw[1]~input_o\ & (\U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\ & 
-- VCC)))) # (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(1) & ((\sw[1]~input_o\ & ((\U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\) # (GND))) # (!\sw[1]~input_o\ & (!\U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\))))
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~12\ = CARRY((\U_D_Bin_Counter8bit_inst|ud_bin_counter\(1) & (\sw[1]~input_o\ & !\U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\)) # (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(1) & ((\sw[1]~input_o\) # 
-- (!\U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(1),
	datab => \sw[1]~input_o\,
	datad => VCC,
	cin => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~9\,
	combout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~11_combout\,
	cout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~12\);

-- Location: FF_X11_Y11_N13
\U_D_Bin_Counter8bit_inst|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~11_combout\,
	sclr => \ALT_INV_pb_n[0]~input_o\,
	ena => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(1));

-- Location: LCCOMB_X11_Y11_N14
\U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~13_combout\ = ((\sw[1]~input_o\ $ (\U_D_Bin_Counter8bit_inst|ud_bin_counter\(2) $ (\U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~12\)))) # (GND)
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\ = CARRY((\sw[1]~input_o\ & (\U_D_Bin_Counter8bit_inst|ud_bin_counter\(2) & !\U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~12\)) # (!\sw[1]~input_o\ & ((\U_D_Bin_Counter8bit_inst|ud_bin_counter\(2)) # 
-- (!\U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(2),
	datad => VCC,
	cin => \U_D_Bin_Counter8bit_inst|ud_bin_counter[1]~12\,
	combout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~13_combout\,
	cout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\);

-- Location: FF_X11_Y11_N15
\U_D_Bin_Counter8bit_inst|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~13_combout\,
	sclr => \ALT_INV_pb_n[0]~input_o\,
	ena => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(2));

-- Location: LCCOMB_X11_Y11_N16
\U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~15_combout\ = (\sw[1]~input_o\ & ((\U_D_Bin_Counter8bit_inst|ud_bin_counter\(3) & (!\U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\)) # (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(3) & 
-- ((\U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\) # (GND))))) # (!\sw[1]~input_o\ & ((\U_D_Bin_Counter8bit_inst|ud_bin_counter\(3) & (\U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\ & VCC)) # (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(3) & 
-- (!\U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\))))
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~16\ = CARRY((\sw[1]~input_o\ & ((!\U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\) # (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(3)))) # (!\sw[1]~input_o\ & (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(3) & 
-- !\U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(3),
	datad => VCC,
	cin => \U_D_Bin_Counter8bit_inst|ud_bin_counter[2]~14\,
	combout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~15_combout\,
	cout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~16\);

-- Location: FF_X11_Y11_N17
\U_D_Bin_Counter8bit_inst|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~15_combout\,
	sclr => \ALT_INV_pb_n[0]~input_o\,
	ena => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(3));

-- Location: LCCOMB_X11_Y11_N18
\U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~17_combout\ = ((\sw[1]~input_o\ $ (\U_D_Bin_Counter8bit_inst|ud_bin_counter\(4) $ (\U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~16\)))) # (GND)
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\ = CARRY((\sw[1]~input_o\ & (\U_D_Bin_Counter8bit_inst|ud_bin_counter\(4) & !\U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~16\)) # (!\sw[1]~input_o\ & ((\U_D_Bin_Counter8bit_inst|ud_bin_counter\(4)) # 
-- (!\U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(4),
	datad => VCC,
	cin => \U_D_Bin_Counter8bit_inst|ud_bin_counter[3]~16\,
	combout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~17_combout\,
	cout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\);

-- Location: FF_X11_Y11_N19
\U_D_Bin_Counter8bit_inst|ud_bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~17_combout\,
	sclr => \ALT_INV_pb_n[0]~input_o\,
	ena => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(4));

-- Location: LCCOMB_X11_Y11_N20
\U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~19_combout\ = (\sw[1]~input_o\ & ((\U_D_Bin_Counter8bit_inst|ud_bin_counter\(5) & (!\U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\)) # (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(5) & 
-- ((\U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\) # (GND))))) # (!\sw[1]~input_o\ & ((\U_D_Bin_Counter8bit_inst|ud_bin_counter\(5) & (\U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\ & VCC)) # (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(5) & 
-- (!\U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\))))
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~20\ = CARRY((\sw[1]~input_o\ & ((!\U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\) # (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(5)))) # (!\sw[1]~input_o\ & (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(5) & 
-- !\U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(5),
	datad => VCC,
	cin => \U_D_Bin_Counter8bit_inst|ud_bin_counter[4]~18\,
	combout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~19_combout\,
	cout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~20\);

-- Location: FF_X11_Y11_N21
\U_D_Bin_Counter8bit_inst|ud_bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~19_combout\,
	sclr => \ALT_INV_pb_n[0]~input_o\,
	ena => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(5));

-- Location: LCCOMB_X11_Y11_N22
\U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~21_combout\ = ((\U_D_Bin_Counter8bit_inst|ud_bin_counter\(6) $ (\sw[1]~input_o\ $ (\U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~20\)))) # (GND)
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~22\ = CARRY((\U_D_Bin_Counter8bit_inst|ud_bin_counter\(6) & ((!\U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~20\) # (!\sw[1]~input_o\))) # (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(6) & (!\sw[1]~input_o\ & 
-- !\U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(6),
	datab => \sw[1]~input_o\,
	datad => VCC,
	cin => \U_D_Bin_Counter8bit_inst|ud_bin_counter[5]~20\,
	combout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~21_combout\,
	cout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~22\);

-- Location: FF_X11_Y11_N23
\U_D_Bin_Counter8bit_inst|ud_bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~21_combout\,
	sclr => \ALT_INV_pb_n[0]~input_o\,
	ena => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(6));

-- Location: LCCOMB_X11_Y11_N24
\U_D_Bin_Counter8bit_inst|ud_bin_counter[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_D_Bin_Counter8bit_inst|ud_bin_counter[7]~23_combout\ = \sw[1]~input_o\ $ (\U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~22\ $ (!\U_D_Bin_Counter8bit_inst|ud_bin_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datad => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(7),
	cin => \U_D_Bin_Counter8bit_inst|ud_bin_counter[6]~22\,
	combout => \U_D_Bin_Counter8bit_inst|ud_bin_counter[7]~23_combout\);

-- Location: FF_X11_Y11_N25
\U_D_Bin_Counter8bit_inst|ud_bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \U_D_Bin_Counter8bit_inst|ud_bin_counter[7]~23_combout\,
	sclr => \ALT_INV_pb_n[0]~input_o\,
	ena => \U_D_Bin_Counter8bit_inst|ud_bin_counter[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_D_Bin_Counter8bit_inst|ud_bin_counter\(7));

-- Location: LCCOMB_X11_Y18_N10
\inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\sw[6]~input_o\ & (!\sw[5]~input_o\ & ((\sw[7]~input_o\) # (!\sw[4]~input_o\)))) # (!\sw[6]~input_o\ & (\sw[4]~input_o\ & (\sw[7]~input_o\ $ (!\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y18_N28
\inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\sw[2]~input_o\ & (!\sw[1]~input_o\ & ((\sw[3]~input_o\) # (!\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\ & (\sw[1]~input_o\ $ (!\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y18_N0
\inst3|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[0]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux6~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~0_combout\,
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux6~0_combout\,
	combout => \inst3|DOUT[0]~0_combout\);

-- Location: LCCOMB_X11_Y17_N0
\inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\sw[2]~input_o\ & (\sw[3]~input_o\ & ((\sw[1]~input_o\) # (!\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (!\sw[0]~input_o\ & (\sw[1]~input_o\ & !\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y18_N30
\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\sw[6]~input_o\ & (\sw[7]~input_o\ & ((\sw[5]~input_o\) # (!\sw[4]~input_o\)))) # (!\sw[6]~input_o\ & (!\sw[4]~input_o\ & (!\sw[7]~input_o\ & \sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y17_N2
\inst3|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[2]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux4~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux4~0_combout\,
	datac => \inst2|Mux4~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT[2]~2_combout\);

-- Location: LCCOMB_X11_Y18_N26
\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\sw[5]~input_o\ & ((\sw[4]~input_o\ & (\sw[6]~input_o\)) # (!\sw[4]~input_o\ & (!\sw[6]~input_o\ & \sw[7]~input_o\)))) # (!\sw[5]~input_o\ & (!\sw[7]~input_o\ & (\sw[4]~input_o\ $ (\sw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y18_N16
\inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\sw[2]~input_o\)) # (!\sw[0]~input_o\ & (!\sw[2]~input_o\ & \sw[3]~input_o\)))) # (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[0]~input_o\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y18_N8
\inst3|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[3]~3_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux3~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst1|Mux3~0_combout\,
	combout => \inst3|DOUT[3]~3_combout\);

-- Location: LCCOMB_X11_Y18_N4
\inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\sw[5]~input_o\ & (\sw[4]~input_o\ & ((!\sw[7]~input_o\)))) # (!\sw[5]~input_o\ & ((\sw[6]~input_o\ & ((!\sw[7]~input_o\))) # (!\sw[6]~input_o\ & (\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y18_N2
\inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & ((!\sw[3]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & ((!\sw[3]~input_o\))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y18_N14
\inst3|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[4]~4_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux2~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \inst2|Mux2~0_combout\,
	datad => \inst1|Mux2~0_combout\,
	combout => \inst3|DOUT[4]~4_combout\);

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


