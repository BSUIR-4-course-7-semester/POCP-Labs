library ieee;
use ieee.std_logic_1164.all;

entity var5_tb is
end var5_tb;

architecture TB_ARCHITECTURE of var5_tb is		 
	component var5_behavioral
	port(
		w : in STD_LOGIC;
		x : in STD_LOGIC;
		y : in STD_LOGIC;
		z : in STD_LOGIC;
		f : out STD_LOGIC );
	end component;	 
	component var5_str
	port(
		w : in STD_LOGIC;
		x : in STD_LOGIC;
		y : in STD_LOGIC;
		z : in STD_LOGIC;
		f : out STD_LOGIC );
	end component;
																					   
	signal w : STD_LOGIC;
	signal x : STD_LOGIC;
	signal y : STD_LOGIC;
	signal z : STD_LOGIC;													  										
						   				  
	signal f_b : STD_LOGIC;
	signal f_s : STD_LOGIC;
						 
		
	signal end_sim: boolean := false;	   

begin
	UUT1 : var5_behavioral
		port map (
			w => w,
			x => x,
			y => y,
			z => z,
			f => f_b
		);
	UUT2 : var5_str
		port map (
			w => w,
			x => x,
			y => y,
			z => z,
			f => f_s
		);				   
		
	STIMULUS: process
	begin
		wait for 400 ns;
		end_sim <= true;
		wait;
	end process;			   
		
	CLOCK_W: process
	begin
		if end_sim = false then
			w <= '0';
			wait for 200 ns;
		else
			wait;
		end if;
		
		if end_sim = false then
			w <= '1';
			wait for 200 ns;
		else
			wait;
		end if;
	end process;			   
		
	CLOCK_X: process
	begin
		if end_sim = false then
			x <= '0';
			wait for 100 ns;
		else
			wait;
		end if;
		
		if end_sim = false then
			x <= '1';
			wait for 100 ns;
		else
			wait;
		end if;
	end process;			   
		
	CLOCK_Y: process
	begin
		if end_sim = false then
			y <= '0';
			wait for 50 ns;
		else
			wait;
		end if;
		
		if end_sim = false then
			y <= '1';
			wait for 50 ns;
		else
			wait;
		end if;
	end process;		   
		
	CLOCK_Z: process
	begin
		if end_sim = false then
			z <= '0';
			wait for 25 ns;
		else
			wait;
		end if;
		
		if end_sim = false then
			z <= '1';
			wait for 25 ns;
		else
			wait;
		end if;
	end process;		   
		
	ASSERT_OUTPUTS: process(f_s, f_b)
	begin		  
		assert(f_s = f_b)
		report "Outputs from behavioral and structural implmentations are not equal."
		severity WARNING;
	end process;

end TB_ARCHITECTURE; 

configuration testbench_for_var5_behavioral of var5_tb is
	for tb_architecture
		for uut1 : var5_behavioral
			use entity work.var5_behavioral(var5_behavioral_arch);
		end for; 
		for uut2 : var5_str
			use entity work.var5_str(var5_str_arch);
		end for;
	end for;
end testbench_for_var5_behavioral;

