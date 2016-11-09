`timescale 1ns / 1ps


module mux4to1_direction(input [3:0]left ,input [3:0]right , input [3:0]up , input [3:0]down , input [1:0]sel_direction , output reg [3:0]direction
    );

	always@(left or right or up or down or sel_direction)
		begin 
			case(sel_direction)
			2'b00:direction=left;
			2'b01:direction=up;
			2'b10:direction=right;
			2'b11:direction=down;
			endcase
		end

endmodule
