-------------------------------------------------------------------------------
--
-- Title       : mux2
-- Design      : lab_1
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux2 is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 c : in STD_LOGIC;
		 d : in STD_LOGIC;
		 s : in STD_LOGIC;
		 y : out STD_LOGIC;
		 z : out STD_LOGIC
	     );
end mux2;

architecture mux2_arch of mux2 is
begin	  							 					  
	y <= (not s and a) or (s and c);
	z <= (not s and b) or (s and d);
end mux2_arch;
