-------------------------------------------------------------------------------
--
-- Title       : var5_behavioral
-- Design      : lab_2
-- Author      : maxim-anatolevich
-- Company     : none
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity var5_behavioral is
	 port(
		 w : in STD_LOGIC;
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 z : in STD_LOGIC;
		 f : out STD_LOGIC
	     );
end var5_behavioral;				  

architecture var5_behavioral_arch of var5_behavioral is
begin
	f <= (((not w) or x) and y) and ((not w) or x or (not y)) and (w or z);
end var5_behavioral_arch;
