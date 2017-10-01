-------------------------------------------------------------------------------
--
-- Title       : var5
-- Design      : lab_2
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------	 

library IEEE;
use IEEE.STD_LOGIC_1164.all;  
library ble;
use ble.all;

entity var5_str is
	 port(
		 w : in STD_LOGIC;
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 z : in STD_LOGIC;
		 f : out STD_LOGIC
	     );
end var5_str;								 

architecture var5_str_arch of var5_str is
component not_and2
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
component nor2
	port(						   
		a: in std_logic;		   
		b: in std_logic; 
		z: out std_logic
	);
end component; 
component nor3
	port(						   
		a: in std_logic;		   
		b: in std_logic;		   
		c: in std_logic; 
		z: out std_logic
	);
end component; 	
component not_and3
	port(						   
		a: in std_logic;		   
		b: in std_logic;		   
		c: in std_logic; 
		z: out std_logic
	);
end component; 
component not_or2
	port(						   
		a: in std_logic;		   
		b: in std_logic;
		z: out std_logic
	);
end component; 
component nand2
	port(						   
		a: in std_logic;		   
		b: in std_logic;
		z: out std_logic
	);
end component; 				  
signal not_w: std_logic;
signal not_x: std_logic;
signal not_y: std_logic; 		 	  
signal a: std_logic;
signal b: std_logic;
signal c: std_logic;
signal d: std_logic;
begin					   				 
c1: inv port map(w, not_w);
c2: inv port map(y, not_y);
c3: inv port map(x, not_x);	
								  						  
c4: not_or2 port map(w, not_x, a);
c5: nand2 port map(a, y, b);
c6: nor3 port map(not_w, not_y, x, c);
c7: nor2 port map(w, z, d);
c8: not_and3 port map(b, c, d, f);
end var5_str_arch;
