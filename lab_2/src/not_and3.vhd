-------------------------------------------------------------------------------
--
-- Title       : not_and3
-- Design      : lab_2
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
library ble;
use ble.all;

entity not_and3 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 c : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end not_and3;

architecture not_and3_arch of not_and3 is
component and2
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
signal not_c: std_logic;
signal not_a_and_not_b: std_logic;
begin					   				 
c1: inv port map(a, not_a);
c2: inv port map(b, not_b);
c3: inv port map(c, not_c);	
c4: and2 port map(not_a, not_b, not_a_and_not_b);
c5: and2 port map(not_a_and_not_b, not_c, z);
end not_and3_arch;
