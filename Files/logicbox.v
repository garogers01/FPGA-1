`timescale 1ns / 1ps


module Logic_box(input [3:0] sel_direction_BLEout , input [1:0] sel_direction ,input [3:0]left_in ,input [3:0]right_in ,
					  input [3:0]up_in , input [3:0]down_in , input clk , input reset, input sel ,
					  input [15:0] lut ,output left , output right ,output up ,output down
    );
wire ble_out;
wire [3:0] direction_out;

decoder4to16_bleout dec4to16_1( sel_direction_BLEout , ble_out, left , right , up , down );
mux4to1_direction mux4to1_1(left_in ,right_in ,up_in , down_in , sel_direction , direction_out);
BLE ble1( direction_out , clk , reset,  sel ,  lut , ble_out );



endmodule
