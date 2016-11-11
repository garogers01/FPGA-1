`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module fpga(input clk, input reset, input [8:0] BLE_dff_select, input [3:0] IO_sel , input [19:0] IO_in ,
				input [143:0] LUT_in ,input [239:0] SB_in , input [419:0] CB_in ,input [35:0] sel_direction_BLEout , 
				input [17:0] sel_direction, output reg [4:0] from_bottom_CB_00 , output reg [4:0] from_left_CB_00 , 
				output reg [4:0] from_right_CB_00, output reg [4:0] from_bottom_CB_01, output reg [4:0] from_left_CB_01, 
				output reg [4:0] from_right_CB_01 
    );

wire [8:0] BLE_out_left,BLE_out_right,BLE_out_up,BLE_out_down;
wire [35:0] left_in,right_in,up_in,down_in;
wire [19:0] IO_out;
wire [19:0] left_in_sb , right_in_sb , up_in_sb , down_in_sb;



//
	
Logic_box logic_00( sel_direction_BLEout[3:0] 	, sel_direction[1:0]	, left_in[3:0] 	 , right_in[3:0]   , up_in[3:0]   , down_in[3:0]   , clk ,  reset,  BLE_dff_select[0] , LUT_in[15:0] 	, BLE_out_left[0] , BLE_out_right[0] , BLE_out_up[0] , BLE_out_down[0] ); 
Logic_box logic_01( sel_direction_BLEout[7:4] 	, sel_direction[3:2]	, left_in[7:4] 	 , right_in[7:4]   , up_in[7:4]   , down_in[7:4]   , clk ,  reset,  BLE_dff_select[1] , LUT_in[31:16]   , BLE_out_left[1] , BLE_out_right[1] , BLE_out_up[1] , BLE_out_down[1] );
Logic_box logic_02( sel_direction_BLEout[11:8] 	, sel_direction[5:4]	, left_in[11:8]  , right_in[11:8]  , up_in[11:8]  , down_in[11:8]  , clk ,  reset,  BLE_dff_select[2] , LUT_in[47:32]   , BLE_out_left[2] , BLE_out_right[2] , BLE_out_up[2] , BLE_out_down[2] );
Logic_box logic_10( sel_direction_BLEout[15:12] , sel_direction[7:6]	, left_in[15:12] , right_in[15:12] , up_in[15:12] , down_in[15:12] , clk ,  reset,  BLE_dff_select[3] , LUT_in[63:48]   , BLE_out_left[3] , BLE_out_right[3] , BLE_out_up[3] , BLE_out_down[3] );
Logic_box logic_11( sel_direction_BLEout[19:16] , sel_direction[9:8]	, left_in[19:16] , right_in[19:16] , up_in[19:16] , down_in[19:16] , clk ,  reset,  BLE_dff_select[4] , LUT_in[79:64]   , BLE_out_left[4] , BLE_out_right[4] , BLE_out_up[4] , BLE_out_down[4] );
Logic_box logic_12( sel_direction_BLEout[23:20] , sel_direction[11:10]	, left_in[23:20] , right_in[23:20] , up_in[23:20] , down_in[23:20] , clk ,  reset,  BLE_dff_select[5] , LUT_in[95:80]   , BLE_out_left[5] , BLE_out_right[5] , BLE_out_up[5] , BLE_out_down[5] );
Logic_box logic_20( sel_direction_BLEout[27:24] , sel_direction[13:12]	, left_in[27:24] , right_in[27:24] , up_in[27:24] , down_in[27:24] , clk ,  reset,  BLE_dff_select[6] , LUT_in[111:96]  , BLE_out_left[6] , BLE_out_right[6] , BLE_out_up[6] , BLE_out_down[6] );
Logic_box logic_21( sel_direction_BLEout[31:28] , sel_direction[15:14]	, left_in[31:28] , right_in[31:28] , up_in[31:28] , down_in[31:28] , clk ,  reset,  BLE_dff_select[7] , LUT_in[127:112] , BLE_out_left[7] , BLE_out_right[7] , BLE_out_up[7] , BLE_out_down[7] );
Logic_box logic_22( sel_direction_BLEout[35:32] , sel_direction[17:16]	, left_in[35:32] , right_in[35:32] , up_in[35:32] , down_in[35:32] , clk ,  reset,  BLE_dff_select[8] , LUT_in[143:128] , BLE_out_left[8] , BLE_out_right[8] , BLE_out_up[8] , BLE_out_down[8] );

//	
IO_block IO_00( clk, reset, IO_sel[0] , IO_in[4:0] , IO_out[4:0]);
IO_block IO_01( clk, reset, IO_sel[1] , IO_in[9:5] , IO_out[9:5]);
IO_block IO_10( clk, reset, IO_sel[2] , IO_in[14:10] , IO_out[14:10]);
IO_block IO_11( clk, reset, IO_sel[3] , IO_in[19:15] , IO_out[19:15]);

//
control_box cb_01(clk,  reset, BLE_out_right[0] ,  BLE_out_left[1] , right_in[3:0] ,  left_in[7:4]  , IO_out[4:0] ,  CB_in[34:0] );
control_box cb_03(clk,  reset, BLE_out_right[1] ,  BLE_out_left[2] , right_in[7:4] ,  left_in[11:8]  , up_in_sb[9:5] ,  CB_in[69:35] );
control_box cb_10(clk,  reset, BLE_out_up[3] ,  BLE_out_down[0] , up_in[3:0] ,  down_in[15:12]  , left_in_sb[4:0] ,  CB_in[104:70] );
control_box cb_12(clk,  reset, BLE_out_up[4] ,  BLE_out_down[1] , up_in[19:16] ,  down_in[7:4]  , left_in_sb[9:5] ,  CB_in[139:105] );
control_box cb_14(clk,  reset, BLE_out_up[5] ,  BLE_out_down[2] , up_in[23:20] ,  down_in[11:8]  , IO_out[9:5] ,  CB_in[174:140] );
control_box cb_21(clk,  reset, BLE_out_right[3] ,  BLE_out_left[4] , right_in[15:12] ,  left_in[19:16]  , down_in_sb[4:0] ,  CB_in[209:175] );
control_box cb_23(clk,  reset, BLE_out_right[4] ,  BLE_out_left[5] , right_in[19:16] ,  left_in[23:20]  , down_in_sb[9:5] ,  CB_in[244:210] );
control_box cb_30(clk,  reset, BLE_out_up[6] ,  BLE_out_down[3] , up_in[27:24] ,  down_in[15:12]  , IO_out[19:15] ,  CB_in[279:245] );
control_box cb_32(clk,  reset, BLE_out_up[7] ,  BLE_out_down[4] , up_in[31:28] ,  down_in[19:16]  , right_in_sb[14:10] ,  CB_in[314:280] );
control_box cb_34(clk,  reset, BLE_out_up[8] ,  BLE_out_down[5] , up_in[35:32] ,  down_in[23:20]  , right_in_sb[19:15] ,  CB_in[349:315] );
control_box cb_41(clk,  reset, BLE_out_right[6] ,  BLE_out_left[7] , right_in[27:24] ,  left_in[31:28]  , down_in_sb[14:10] ,  CB_in[384:350] );
control_box cb_43(clk,  reset, BLE_out_right[7] ,  BLE_out_left[8] , right_in[31:28] ,  left_in[35:32]  , IO_out[14:10] ,  CB_in[419:385] );

//
switch_box sb_00( clk, reset	,	left_in_sb[4:0]		, IO_out[4:0]		, left_in_sb[9:5]		, down_in_sb[4:0]	, SB_in[59:0] );		
switch_box sb_01( clk, reset	,	left_in_sb[9:5]		, up_in_sb[9:5]		, IO_out[9:5]		, down_in_sb[9:5]	, SB_in[119:60] );
switch_box sb_10( clk, reset	,	IO_out[19:15]	, down_in_sb[4:0]	, right_in_sb[14:10]	, down_in_sb[14:10]	, SB_in[179:120] ); 
switch_box sb_11( clk, reset	,	right_in_sb[14:10]	, down_in_sb[9:5]	, right_in_sb[19:15]	, IO_out[14:10]	, SB_in[239:180] );

always@(clk or reset or BLE_dff_select or IO_sel or IO_in or LUT_in or SB_in or CB_in or sel_direction_BLEout or sel_direction)
	begin 
		from_bottom_CB_00 = down_in_sb[14:10];
		from_bottom_CB_01 = down_in_sb[19:15];
		
		from_left_CB_00 = left_in_sb[4:0];
		from_left_CB_01 = left_in_sb[14:10];
		
		from_right_CB_00 = right_in_sb[9:5];
		from_right_CB_01 = right_in_sb[19:15];
		
	end	


endmodule
