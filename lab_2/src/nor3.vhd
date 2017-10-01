-------------------------------------------------------------------------------
--
-- Title       : nor3
-- Design      : lab_2
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
library ble;
use ble.all;  

entity nor3 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 c : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end nor3;							  

architecture nor3_arch of nor3 is	
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
signal a_or_b, a_or_b_or_c: std_logic;
begin						    				
c1: or2 port map(a, b, a_or_b);
c2: or2 port map(a_or_b, c, a_or_b_or_c);
c3: inv port map(a_or_b_or_c, z);
end nor3_arch;
