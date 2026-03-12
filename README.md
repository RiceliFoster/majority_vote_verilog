The objective of this project was to turn a majority vote logic problem into FPGA implementation. With four one-bit inputs (each signifying a "judge" who votes either true or false) and two one-bit outputs, the design is to determine which sets of inputs would give a majority vote of true versus false. The "tie" outputs depicts whether or not there is a two-way tie.

project1.cmp is the compare file used in Nand2Tetris HDL code. Its counterparts, project1.hdl and project1.tst are components of the testing and implementation of the Boolean logic.

project_1_behavioral.v is the verilog code using continuous assignment.

project_1_structural.v is the verilog code using Boolean logic.

project_1_tb.v is the test bench. 

project_1_xdc.xdc is the hardware file that defines which pins are used in the FPGA board.
