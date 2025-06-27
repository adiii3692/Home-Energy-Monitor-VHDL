library ieee;
use ieee.std_logic_1164.all;


entity LogicalStep_Lab3_top is port (
	clkin_50		: in 	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
	
	----------------------------------------------------
--	HVAC_temp : out std_logic_vector(3 downto 0); -- used for simulations only. Comment out for FPGA download compiles.
	----------------------------------------------------
	
   leds			: out std_logic_vector(7 downto 0);
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is
--
-- Provided Project Components Used
------------------------------------------------------------------- 

component SevenSegment  port (
   hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
); 
end component SevenSegment;

component segment7_mux port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
        );
end component segment7_mux;

component Compx4 port (
	input_A_bus : in std_logic_vector(3 downto 0);
	input_B_bus : in std_logic_vector(3 downto 0);
	A_less_B_bus : out std_logic;
	A_equal_B_bus : out std_logic; 
	A_greater_B_bus : out std_logic
);
end component Compx4;

component Bidir_shift_reg port (
		CLK 				: in std_logic := '0';
		RESET 			: in std_logic := '0';
		CLK_EN 			: in std_logic := '0';
		LEFT0_RIGHT1 	: in std_logic := '0';
		REG_BITS 		: out std_logic_vector (7 downto 0)
);
end component Bidir_shift_reg; 

component U_D_Bin_Counter8bit port (
	CLK : in std_logic;
	RESET: in std_logic;
	CLK_EN: in std_logic;
	UP1_DOWN0: in std_logic;
	COUNTER_BITS: out std_logic_vector(7 downto 0)
);
end component U_D_Bin_Counter8bit;

component PB_INVERTERS port (
	pb_n_top : IN std_logic_vector(3 downto 0); 
	pb_top : OUT std_logic_vector(3 downto 0)
);
end component PB_INVERTERS; 

component two_to_one_mux port (
	vacation_mode : in std_logic; 
	desired_temp : in std_logic_vector(3 downto 0); 
	vacation_temp : in std_logic_vector(3 downto 0); 
	mux_temp : out std_logic_vector(3 downto 0)
);
end component two_to_one_mux;
	
component Tester port (
 MC_TESTMODE				: in  std_logic;
 I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
	); 
	end component;
----	
component HVAC 	port (
	HVAC_SIM					: in boolean;
	clk						: in std_logic; 
	run		   			: in std_logic;
	increase, decrease	: in std_logic;
	temp						: out std_logic_vector (3 downto 0)
	);
end component;

component Energy_Monitor port (
	door_open : in std_logic; 
	window_open : in std_logic; 
	MC_test_mode : in std_logic; 
	vacation_mode : in std_logic; 
		
	ALTB : in std_logic; 
	AEQB : in std_logic; 
	AGTB : in std_logic; 
		
		
	furnace : out std_logic; 
	at_temp : out std_logic; 
	AC : out std_logic; 
	blower : out std_logic;
	window : out std_logic; 
	door : out std_logic; 
	vacation : out std_logic; 
		
	run_hvac : out std_logic; 
	increase_hvac : out std_logic; 
	decrease_hvac : out std_logic
);
end component; 	
	
------------------------------------------------------------------
-- Add any Other Components here
------------------------------------------------------------------

------------------------------------------------------------------	
-- Create any additional internal signals to be used
------------------------------------------------------------------	
constant HVAC_SIM : boolean := FALSE; -- set to FALSE when compiling for FPGA download to LogicalStep board 
                                      -- or TRUE for doing simulations with the HVAC Component
------------------------------------------------------------------	

-- global clock
signal clk_in					: std_logic;
signal hex_A, hex_B 			: std_logic_vector(3 downto 0);
signal hexA_7seg, hexB_7seg: std_logic_vector(6 downto 0);

-- signals for energy monitor
signal hvac_rUn_signal 		 : std_logic;
signal hvac_increase_signal : std_logic;
signal hvac_decrease_signal : std_logic;

--signals for hvac
signal hvac_current_temp 	: std_logic_vector (3 downto 0);

--signals for mux
signal mux_desired_temp : std_logic_vector (3 downto 0);

-- pb inverting signal
signal inverted_pb 			: std_logic_vector(3 downto 0);

--compx4 output signals
signal AlessB : std_logic; 
signal AequalB : std_logic; 
signal AgreaterB : std_logic; 

------------------------------------------------------------------- 

begin -- Here the circuit begins

clk_in <= clkin_50;	--hook up the clock input

-- temp inputs hook-up to internal busses.
hex_A <= sw(3 downto 0);
hex_B <= sw(7 downto 4);

--PB inverting instance
PB_INVERT_INST : PB_INVERTERS port map (pb_n(3 downto 0),inverted_pb);

-- HVAC Instance
HVAC_INST : HVAC port map (HVAC_SIM,clk_in, hvac_run_signal, hvac_increase_signal, hvac_decrease_signal, hvac_current_temp);

-- Two to one mux instance
MUX_INST : two_to_one_mux port map (inverted_pb(3), hex_A, hex_B, mux_desired_temp);

inst1: sevensegment port map (mux_desired_temp, hexA_7seg);
inst2: sevensegment port map (hvac_current_temp, hexB_7seg);
inst3: segment7_mux port map (clk_in, hexA_7seg, hexB_7seg, seg7_data, seg7_char2, seg7_char1);

--compx4 instance
Compx4_inst : Compx4 port map (mux_desired_temp, hvac_current_temp, AlessB, AequalB, AgreaterB); 

--tester instance
tester_inst : Tester port map (inverted_pb(2), AequalB, AgreaterB, AlessB, hex_A, hvac_current_temp, leds(6));

--energy instance
energy_monitor_inst : Energy_Monitor port map (inverted_pb(0), inverted_pb(1), inverted_pb(2), inverted_pb(3), AlessB, AequalB, AgreaterB, leds(0), leds(1), leds(2), leds(3), leds(4), leds(5), leds(7), hvac_run_signal, hvac_increase_signal, hvac_decrease_signal);  
		
end design;

