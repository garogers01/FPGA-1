`timescale 1ns / 1ps


module logicbox_test;

	// Inputs
	reg [3:0] sel_direction_BLEout;
	reg [1:0] sel_direction;
	reg [3:0] left_in;
	reg [3:0] right_in;
	reg [3:0] up_in;
	reg [3:0] down_in;
	reg clk;
	reg reset;
	reg sel;
	reg [15:0] lut;

	// Outputs
	wire left;
	wire right;
	wire up;
	wire down;

	// Instantiate the Unit Under Test (UUT)
	Logic_box uut (
		.sel_direction_BLEout(sel_direction_BLEout), 
		.sel_direction(sel_direction), 
		.left_in(left_in), 
		.right_in(right_in), 
		.up_in(up_in), 
		.down_in(down_in), 
		.clk(clk), 
		.reset(reset), 
		.sel(sel), 
		.lut(lut), 
		.left(left), 
		.right(right), 
		.up(up), 
		.down(down)
	);
	always
	#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		sel_direction_BLEout = 2'b10;
		sel_direction = 2'b00;
		left_in = 0;
		right_in = 4'b0101;
		up_in = 0;
		down_in = 4'b1010;
		clk = 0;
		reset = 1;
		sel = 0;
		lut = 16'b0101_0101_0101_0101;
		#7 reset = 0;
		// Wait 100 ns for global reset to finish
		#100 $finish;
        

	end
      
endmodule

