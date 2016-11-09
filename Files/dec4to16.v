`timescale 1ns / 1ps


module decoder4to16_bleout(input [3:0] sel_direction_BLEout , input ble_out, output reg left ,output reg right ,output reg up ,output reg down
    );

	always@(sel_direction_BLEout or ble_out)
		begin
			case(sel_direction_BLEout)
				4'b0000:begin
						left = 1'bz;
						up = 1'bz;
						down = 1'bz;
						right = 1'bz;
						end
				4'b0001:begin
						left = ble_out;
						up = 1'bz;
						down = 1'bz;
						right = 1'bz;
						end
				4'b0010:begin
						up = ble_out;
						right = 1'bz;
						down = 1'bz;
						left = 1'bz;
						end
				4'b0011:begin
						up = ble_out;
						down = 1'bz;
						left = ble_out;
						right = 1'bz;
						end
				4'b0100:begin
						left = 1'bz;
						up = 1'bz;
						down = 1'bz;
						right = ble_out;
						end
				4'b0101:begin
						left = ble_out;
						up = 1'bz;
						down = 1'bz;
						right = ble_out;
						end
				4'b0110:begin
						up = ble_out;
						right = ble_out;
						down = 1'bz;
						left = 1'bz;
						end
				4'b0111:begin
						up = ble_out;
						down = 1'bz;
						left = ble_out;
						right = ble_out;
						end	
				4'b1000:begin
						left = 1'bz;
						up = 1'bz;
						down = ble_out;
						right = 1'bz;
						end
				4'b1001:begin
						left = ble_out;
						up = 1'bz;
						down = ble_out;
						right = 1'bz;
						end
				4'b1010:begin
						up = ble_out;
						right = 1'bz;
						down = ble_out;
						left = 1'bz;
						end
				4'b1011:begin
						up = ble_out;
						down = ble_out;
						left = ble_out;
						right = 1'bz;
						end
				4'b1100:begin
						left = 1'bz;
						up = 1'bz;
						down = ble_out;
						right = ble_out;
						end
				4'b1101:begin
						left = ble_out;
						up = 1'bz;
						down = ble_out;
						right = ble_out;
						end
				4'b1110:begin
						up = ble_out;
						right = ble_out;
						down = ble_out;
						left = 1'bz;
						end
				4'b1111:begin
						up = ble_out;
						down = ble_out;
						left = ble_out;
						right = ble_out;
						end
			endcase
		end
endmodule
