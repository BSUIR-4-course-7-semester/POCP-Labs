-------------------------------------------------------------------------------
--
-- Title       : mux2
-- Design      : lab_2
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
		 a1 : in STD_LOGIC;
		 b1 : in STD_LOGIC;
		 s : in STD_LOGIC;
		 z : out STD_LOGIC;
		 z1 : out STD_LOGIC
	     );
end mux2;									 

architecture mux2_arch of mux2 is 
component mux
	port(				  			 
		a: in std_logic;
		b: in std_logic;
		s: in std_logic;
		z: out std_logic
	);
end component;
begin						 					
c1: mux port map(a, b, s, z);
c2: mux port map(a1, b1, s, z1);
end mux2_arch;
