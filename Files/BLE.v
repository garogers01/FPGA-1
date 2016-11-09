`timescale 1ns / 1ps


module BLE( input [3:0] mux16to1_inp , input clk , input reset, input sel , input [15:0] lut , output ble_out 
    );

wire mux16to1out;
wire dff_out;

mux16to1 mux16to1_1(lut,mux16to1_inp,mux16to1out);
D_ff dff1(clk,reset,mux16to1out,dff_out);
mux2to1 mux2to1_1(mux16to1out,dff_out,sel,ble_out);

endmodule
