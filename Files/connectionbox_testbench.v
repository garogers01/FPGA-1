`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:22 09/11/2016
// Design Name:   control_box
// Module Name:   C:/Xilinx/FPGA/control_box_test.v
// Project Name:  FPGA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_box
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_box_test;

	// Inputs
	reg clk;
	reg reset;
	reg left_or_up_from_BLE;
	reg right_or_down_from_BLE;
	reg [34:0] sram_in;

	// Outputs
	wire [3:0] left_or_up;
	wire [3:0] right_or_down;

	// Bidirs
	wire [4:0] lines_to_SB;


	// Instantiate the Unit Under Test (UUT)
	control_box uut (
		.clk(clk), 
		.reset(reset), 
		.left_or_up_from_BLE(left_or_up_from_BLE), 
		.right_or_down_from_BLE(right_or_down_from_BLE), 
		.left_or_up(left_or_up), 
		.right_or_down(right_or_down), 
		.lines_to_SB(lines_to_SB),  
		.sram_in(sram_in)
	);
		always
		#5 clk = ~clk;
		 
	initial 
	begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		left_or_up_from_BLE = 0;
		right_or_down_from_BLE = 0;
		sram_in = 0;
		#7 reset = 0;
		#10 right_or_down_from_BLE = 1'b1;
		//#10 sram_in[] =
		sram_in[26] = 1;
		//sram_in[2] = 1;
		sram_in[1] = 1;
		//sram_in[3] = 1;
		sram_in[4] = 1;
		//sram_in[0] = 1;
		sram_in[27] = 1;
		sram_in[5] = 1;
		sram_in[28] = 1;
		sram_in[29] = 1;
		sram_in[30] = 1;
		sram_in[31] = 1;
		sram_in[11] = 1;
		sram_in[17] = 1;
		sram_in[22] = 1;




		// Wait 100 ns for global reset to finish
		#100 $finish;
        

	end
      
endmodule

