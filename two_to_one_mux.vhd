library ieee; 
use ieee.std_logic_1164.all; 

entity two_to_one_mux is
	port (
		vacation_mode : in std_logic; 
		desired_temp : in std_logic_vector(3 downto 0); 
		vacation_temp : in std_logic_vector(3 downto 0); 
		mux_temp : out std_logic_vector(3 downto 0)
	);
	end; 

	architecture dataflow of two_to_one_mux is
	begin
		with vacation_mode select
			mux_temp <= vacation_temp when '1',
							desired_temp when others; 
							
	end; 