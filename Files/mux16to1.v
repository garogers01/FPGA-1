`timescale 1ns / 1ps


module mux16to1( input [15:0] data , input [3:0] select ,output reg mux16to1_out
    );

always@(data or select)
	begin
			case(select)
				4'b0000:mux16to1_out=data[0];
				4'b0001:mux16to1_out=data[1];
				4'b0010:mux16to1_out=data[2];
				4'b0011:mux16to1_out=data[3];
				4'b0100:mux16to1_out=data[4];
				4'b0101:mux16to1_out=data[5];
				4'b0110:mux16to1_out=data[6];
				4'b0111:mux16to1_out=data[7];
				4'b1000:mux16to1_out=data[8];
				4'b1001:mux16to1_out=data[9];
				4'b1010:mux16to1_out=data[10];
				4'b1011:mux16to1_out=data[11];
				4'b1100:mux16to1_out=data[12];
				4'b1101:mux16to1_out=data[13];
				4'b1110:mux16to1_out=data[14];
				4'b1111:mux16to1_out=data[15];
			endcase
	end

endmodule
