library ieee;
use ieee.std_logic_1164.all;


entity Compx4 is port (

	input_A_bus : in std_logic_vector(3 downto 0);
	input_B_bus : in std_logic_vector(3 downto 0);
	A_less_B_bus : out std_logic;
	A_equal_B_bus : out std_logic; 
	A_greater_B_bus : out std_logic

); 
end Compx4;

architecture design of Compx4 is

component Compx1  port (
   input_A : in std_logic;
	input_B : in std_logic;
	A_less_B : out std_logic; 
	A_equal_B : out std_logic; 
	A_greater_B : out std_logic
); 
end component Compx1;

signal ALTB : std_logic_vector(3 downto 0); 
signal AEQB : std_logic_vector(3 downto 0); 
signal AGTB : std_logic_vector(3 downto 0);

begin -- Here the circuit begins

bit3: Compx1 port map (input_A_bus(3), input_B_bus(3), ALTB(3), AEQB(3), AGTB(3));
bit2: Compx1 port map (input_A_bus(2), input_B_bus(2), ALTB(2), AEQB(2), AGTB(2));
bit1: Compx1 port map (input_A_bus(1), input_B_bus(1), ALTB(1), AEQB(1), AGTB(1));
bit0: Compx1 port map (input_A_bus(0), input_B_bus(0), ALTB(0), AEQB(0), AGTB(0));

A_less_B_bus <= ALTB(3) OR (AEQB(3) AND ALTB(2)) OR (AEQB(3) AND AEQB(2) AND ALTB(1)) OR (AEQB(3) AND AEQB(2) AND AEQB(1) AND ALTB(0));
A_equal_B_bus <= AEQB(3) AND AEQB(2) AND AEQB(1) AND AEQB(0); 
A_greater_B_bus <= AGTB(3) OR (AEQB(3) AND AGTB(2)) OR (AEQB(3) AND AEQB(2) AND AGTB(1)) OR (AEQB(3) AND AEQB(2) AND AEQB(1) AND AGTB(0));
		
end design;

