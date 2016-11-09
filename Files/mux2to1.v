`timescale 1ns / 1ps


module mux2to1( input mux16to1_out, input dff_out , input sel , output reg mux2to1_out
    );
	always@(mux16to1_out or sel or dff_out)
	begin
			case(sel)
				1'b0:mux2to1_out=mux16to1_out;
				1'b1:mux2to1_out=dff_out;
			endcase
	end
endmodule
