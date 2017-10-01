-------------------------------------------------------------------------------
--
-- Title       : deviceFromTaskB
-- Design      : lab_1
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------		

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity deviceFromTaskB is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 c : in STD_LOGIC;
		 q : out STD_LOGIC;
		 nq: out STD_LOGIC
	     );
end deviceFromTaskB;						 

architecture deviceFromTaskB_arch of deviceFromTaskB is	  
signal t: std_logic;
begin								 
	t <= a or (b and c) or not b; 
	q <= t;
	nq <= not t;
end deviceFromTaskB_arch;
