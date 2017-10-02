SetActiveLib -work							 				   
comp -include "$dsn\src\var5_behavioral.vhd"
comp -include "$dsn\src\var5_structural.vhd"
comp -include "$dsn\src\var5_TestBench\var5_TB.vhd" 
asim +access +r TESTBENCH_FOR_var5_behavioral 
wave 
wave -noreg w
wave -noreg x
wave -noreg y
wave -noreg z
wave -noreg f
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\var5_TestBench\var5_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_var5_behavioral 
