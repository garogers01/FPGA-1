

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

module fpga_test;

	// Inputs
	reg clk;
	reg reset;
	reg [8:0] BLE_dff_select;
	reg [3:0] IO_sel;
	reg [143:0] LUT_in;
	reg [239:0] SB_in;
	reg [419:0] CB_in;
	reg [35:0] sel_direction_BLEout;
	reg [17:0] sel_direction;
	reg [19:0] IO_in;
	
	

	// Outputs
	wire [4:0] from_bottom_CB_00;
	wire [4:0] from_left_CB_00;
	wire [4:0] from_right_CB_00;
	wire [4:0] from_bottom_CB_01;
	wire [4:0] from_left_CB_01;
	wire [4:0] from_right_CB_01;
	//wire [3:0] IN1;
	
	// Instantiate the Unit Under Test (UUT)
	fpga uut (
		.clk(clk), 
		.reset(reset), 
		.BLE_dff_select(BLE_dff_select), 
		.IO_sel(IO_sel), 
		.IO_in(IO_in), 
		.LUT_in(LUT_in), 
		.SB_in(SB_in), 
		.CB_in(CB_in), 
		.sel_direction_BLEout(sel_direction_BLEout), 
		.sel_direction(sel_direction), 
		.from_bottom_CB_00(from_bottom_CB_00), 
		.from_left_CB_00(from_left_CB_00), 
		.from_right_CB_00(from_right_CB_00), 
		.from_bottom_CB_01(from_bottom_CB_01), 
		.from_left_CB_01(from_left_CB_01), 
		.from_right_CB_01(from_right_CB_01)
	//	.IN1(IN1),
	//	.IN2(IN2)
	);

	//assign IN1 = 4'b0011;

	always
	#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		BLE_dff_select = 0;
		IO_sel = 0;
		//IO_in = 0;
		IO_in = {15'bz,4'b1010,1'bz};
		LUT_in = 0;
		SB_in = 0;
		CB_in = 0;
		sel_direction_BLEout = 0;
		sel_direction = 0;
		#4 reset = 0;
		//	IO_in = {16'bz,IN1};
			BLE_dff_select[0] = 1'b1;
			BLE_dff_select[1] = 1'b1;
		   IO_sel = 4'b1111; 
			CB_in =  420'b00000_00000_00000_00000_00000_00000_00000____00000_00000_00000_00000_00000_00000_00010____00000_00000_00000_00010_00000_00000_00000____00000_00000_00000_00000_00000_00000_00000____00000_00000_00000_00000_00000_00000_00000____00000_00000_00000_00000_00000_00000_00000____00000_00000_00000_00000_00000_00000_00000____00000_00000_00000_00000_00000_00000_00000____00000_00010_00000_00000_00000_00000_01010____00000_00010_00000_00000_00000_00000_00100____00000_00000_00000_00000_00000_00000_00000____11111_11100_00001_00010_00100_01000_00000;  // Control Box Bits Stream
			SB_in = 240'b00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_____00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_____00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_00000_____00000_00000_00000_00000_01000_00000_00000_00010_00000_00000_00001_00000;  // Switch Box Bits Stream
			sel_direction_BLEout = 36'b0000___0000___0000___0000___0000___0000___0000___1000___1000;   // Selecting the direction of CLB Output (Bits Stream)
			sel_direction = 18'b00__00__00__00__00__00__00__00__10; // Selecting the direction from which CLB should take the input
			LUT_in = 144'b1001_0110_1001_0110___1110_1000_1110_1000___1001_0110_1001_0110___1110_1000_1110_1000___1000100010001000___1110_1000_1110_1000___1001_0110_1001_0110___1010_1010_0101_0101___1100_1100_1001_1001;  // LUT Configration Bits
			
		#4 IO_in = {15'bz,4'b1010,1'bz};
		#8	IO_in ={15'bz,4'b00zz,1'bz};
	//	#3 IO_in = 20'bz;
			 
		// Wait 100 ns for global reset to finish
		#100 $finish;
        

	end
      
endmodule

