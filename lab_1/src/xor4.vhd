-------------------------------------------------------------------------------
--
-- Title       : xor4
-- Design      : lab_1
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------	 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xor4 is
	 port(
		 A : in STD_LOGIC_VECTOR(3 downto 0);
		 Z : out STD_LOGIC
	     );
end xor4;										

architecture xor4_arch of xor4 is									
component xor2
	port(
		A, B: in std_logic;
		Z: out std_logic
	);
end component;					   			   
signal X: std_logic_vector(0 to 2);
begin		
	c0: xor2 port map(A(0), A(1), X(0));
	g1: for j in 1 to 2 generate
		cj: xor2 port map(X(j-1), A(j+1), X(j));
	end generate;
	Z <= X(2);	
end xor4_arch;
