`timescale 1ns / 1ps


module D_ff(input clk, input reset, input d, output reg q);
	always@(negedge clk or reset)
		begin
			if(reset)
				q=0;
			else
				q=d; 
		end
endmodule


