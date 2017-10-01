-------------------------------------------------------------------------------
--
-- Title       : mux
-- Design      : lab_2
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------

library IEEE; 
library ble;
use IEEE.STD_LOGIC_1164.all;
use ble.all;

entity mux is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 s : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end mux;										

architecture mux_arch of mux is	
component and2
	port(				 			
		a: in std_logic;
		b: in std_logic; 
		z: out std_logic
	);
end component;	 
component or2
	port(				 			
		a: in std_logic;
		b: in std_logic;   
		z: out std_logic
	);
end component;
component inv
	port(				 			
		a: in std_logic;
		z: out std_logic
	);
end component;	  		  
signal not_s: std_logic; 	   
signal a_and_not_s: std_logic; 
signal s_and_b: std_logic;
begin
c1: inv port map(s, not_s);				   			
c2: and2 port map(a, not_s, a_and_not_s); 
c3: and2 port map(b, s, s_and_b);
c4: or2 port map(a_and_not_s, s_and_b, z);
end mux_arch;
