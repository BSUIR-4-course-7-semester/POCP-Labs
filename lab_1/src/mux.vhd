-------------------------------------------------------------------------------
--
-- Title       : mux
-- Design      : lab_1
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 S : in STD_LOGIC;
		 Z : out STD_LOGIC
	     );
end mux;

architecture mux_arch of mux is
begin
	Z <= A when S='0' else B;
end mux_arch;
