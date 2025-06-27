library ieee; 
use ieee.std_logic_1164.all; 

entity Energy_Monitor is
	port (
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
	end; 

	architecture dataflow of Energy_Monitor is
	begin
	
		EnergyControl: process(ALTB,AEQB,AGTB,door_open,window_open,MC_test_mode,vacation_mode) is
		
		begin
		
		--By default everything is off
		run_hvac <= '0';
		AC <= '0';
		furnace <= '0';
		at_temp <= '0';
		blower <= '0';
		door <= '0';
		window <= '0';
		vacation <= '0';
		increase_hvac <= '0';
		decrease_hvac <= '0';
		
		-- The door and window leds
		if (door_open = '1') then
			door <= '1';
		end if;
		
		if (window_open = '1') then
			window <= '1';
		end if;
		
		-- Vacation mode led
		if (vacation_mode = '1') then 
			vacation <= '1';
		end if;
		-- Temp comparisons
		if (ALTB = '1') then 
			AC <= '1';
			decrease_hvac <= '1';
		elsif (AGTB = '1') then 
			furnace <= '1';
			increase_hvac <= '1';
		else
			at_temp <= '1';
			increase_hvac <= '0';
			decrease_hvac <= '0';
		end if;
		
		-- Turn on run + blower when no test mode
		if (MC_test_mode = '0' and door_open = '0' and window_open = '0') then 
			if (AEQB = '0') then
				run_hvac <= '1';
				blower <= '1';
			end if;
		end if;
	end process;
		
	end; 
	
	
	
	
	
	