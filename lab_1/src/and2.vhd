-------------------------------------------------------------------------------
--
-- Title       : and2
-- Design      : lab_1
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity and2 is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 Z : out STD_LOGIC
	     );
end and2;	  

architecture and2_arch of and2 is
begin								   
	Z <= A and B;
end and2_arch;
