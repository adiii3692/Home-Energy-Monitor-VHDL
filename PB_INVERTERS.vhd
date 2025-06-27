LIBRARY ieee; 
use ieee.std_logic_1164.all; 

ENTITY PB_INVERTERS IS 
	PORT 
	(
		pb_n_top : IN std_logic_vector(3 downto 0); 
		pb_top : OUT std_logic_vector(3 downto 0)
	); 
END PB_INVERTERS; 

ARCHITECTURE gates OF PB_INVERTERS is 

BEGIN 

pb_top <= not(pb_n_top); 

END gates; 

