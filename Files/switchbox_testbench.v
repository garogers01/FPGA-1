`timescale 1ns / 1ps



module switch_box_test;

	// Inputs
	reg clk;
	reg reset;
	reg [59:0] inp_sram;

	// Bidirs
	wire [4:0] left;
	wire [4:0] up;
	wire [4:0] right;
	wire [4:0] down;
	
	// Instantiate the Unit Under Test (UUT)
	switch_box uut (
		.clk(clk), 
		.reset(reset), 
		.left(left), 
		.up(up), 
		.right(right), 
		.down(down), 
		.inp_sram(inp_sram)
	);
		assign up = 5'b01z11;
		assign left = 5'bzz0zz;
		
		always
		#5 clk = ~clk;
		
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		inp_sram = 0;
		#4 reset = 1'b1;
		#3 reset = 1'b0;
		//inp_sram[24]=1;
		#10 inp_sram[0] = 1;
			 inp_sram[4] = 1;
			 inp_sram[8] = 1;
			 inp_sram[12]=1;
			 inp_sram[16]=1;
			 inp_sram[26]=1;
			 inp_sram[28]=1;
		#10 inp_sram[1] = 1;

		// Wait 100 ns for global reset to finish
		#85 $finish;
		#100;
        
		// Add stimulus here

	end
      
endmodule

