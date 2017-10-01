-------------------------------------------------------------------------------
--
-- Title       : nand2
-- Design      : lab_2
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library ble;
use ble.all;  

entity nand2 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 z : out STD_LOGIC
	     );
end nand2;

architecture nand2_arch of nand2 is	 
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
signal a_and_b: std_logic;
begin
c1: and2 port map(a, b, a_and_b);
c2: inv port map(a_and_b, z);
end nand2_arch;
