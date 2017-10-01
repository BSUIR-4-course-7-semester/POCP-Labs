-------------------------------------------------------------------------------
--
-- Title       : or2
-- Design      : lab_1
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------	

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity or2 is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 Z : out STD_LOGIC
	     );
end or2;									 

architecture or2_arch of or2 is
begin										
	Z <= A or B;
end or2_arch;
