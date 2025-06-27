library ieee;
use ieee.std_logic_1164.all;


entity Compx1 is port (
	input_A : in std_logic;
	input_B : in std_logic;
	A_less_B : out std_logic; 
	A_equal_B : out std_logic; 
	A_greater_B : out std_logic
); 
end Compx1;

architecture design of Compx1 is


begin -- Here the circuit begins

	A_less_B <= (NOT(input_A) AND input_B);
	A_equal_B <= (NOT(input_A XOR input_B)); 
	A_greater_B <= input_A AND NOT(input_B); 
	
		
end design;

