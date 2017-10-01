-------------------------------------------------------------------------------
--
-- Title       : not_not_and
-- Design      : lab_2
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------	

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library ble;
use ble.all;  

entity not_or2 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end not_or2;

architecture not_or2_arch of not_or2 is	
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
signal not_a: std_logic;
signal not_b: std_logic;
begin					   				 
c1: inv port map(a, not_a);
c2: inv port map(b, not_b);
c3: or2 port map(not_a, not_b, z);
end not_or2_arch;
