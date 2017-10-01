-------------------------------------------------------------------------------
--
-- Title       : \XOR\
-- Design      : lab_1
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------	 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xor2 is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 Z : out STD_LOGIC
	     );
end xor2;									  

architecture xor2_arch of xor2 is		
component and2
	port(
		A, B: in std_logic;
		Z: out std_logic
	);
end component; 	  
component or2
	port(
		A, B: in std_logic;
		Z: out std_logic
	);
end component; 
component inv
	port(
		A: in std_logic;
		Z: out std_logic
	);
end component; 		   	  
signal A_and_B: std_logic;	   	
signal not_A_and_B: std_logic;
signal A_or_B: std_logic;
begin	   
	c1: and2 port map(A, B, A_and_B);
	c2: inv port map(A_and_B, not_A_and_B);
	c3: or2 port map(A, B, A_or_B);
	c4: and2 port map(not_A_and_B, A_or_B, Z);
end xor2_arch;
