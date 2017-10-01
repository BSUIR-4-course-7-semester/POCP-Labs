-------------------------------------------------------------------------------
--
-- Title       : inv
-- Design      : lab_1
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------	   

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity inv is
	 port(
		 A : in STD_LOGIC;
		 Z : out STD_LOGIC
	     );
end inv;										

architecture inv_arch of inv is
begin									
	Z <= not A;
end inv_arch;
