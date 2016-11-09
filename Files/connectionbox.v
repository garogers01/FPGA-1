`timescale 1ns / 1ps


module control_box(input clk, input reset, input left_or_up_from_BLE , input right_or_down_from_BLE , output [3:0] left_or_up , output [3:0] right_or_down ,
						  inout [4:0] lines_to_SB , input [34:0] sram_in 
    );
	wire [34:0] sram_out_controlbox;
	
	D_ff inpcontrolbox_0(clk, reset, sram_in[0] , sram_out_controlbox[0] )	;
	D_ff inpcontrolbox_1(clk, reset, sram_in[1] , sram_out_controlbox[1] )  ;
	D_ff inpcontrolbox_2(clk, reset, sram_in[2] , sram_out_controlbox[2] )  ;
	D_ff inpcontrolbox_3(clk, reset, sram_in[3] , sram_out_controlbox[3] )  ;
	D_ff inpcontrolbox_4(clk, reset, sram_in[4] , sram_out_controlbox[4] )  ;
	//
	D_ff inpcontrolbox_5(clk, reset, sram_in[5] , sram_out_controlbox[5] )  ;
	D_ff inpcontrolbox_6(clk, reset, sram_in[6] , sram_out_controlbox[6] )  ;
	D_ff inpcontrolbox_7(clk, reset, sram_in[7] , sram_out_controlbox[7] )  ;
	D_ff inpcontrolbox_8(clk, reset, sram_in[8] , sram_out_controlbox[8] )  ;
	D_ff inpcontrolbox_9(clk, reset, sram_in[9] , sram_out_controlbox[9] )  ;
	//      
	D_ff inpcontrolbox_10(clk, reset, sram_in[10] , sram_out_controlbox[10] )  ;
	D_ff inpcontrolbox_11(clk, reset, sram_in[11] , sram_out_controlbox[11] )  ;
	D_ff inpcontrolbox_12(clk, reset, sram_in[12] , sram_out_controlbox[12] )  ;
	D_ff inpcontrolbox_13(clk, reset, sram_in[13] , sram_out_controlbox[13] )  ;
	D_ff inpcontrolbox_14(clk, reset, sram_in[14] , sram_out_controlbox[14] )  ;
	//
	D_ff inpcontrolbox_15(clk, reset, sram_in[15] , sram_out_controlbox[15] )  ;
	D_ff inpcontrolbox_16(clk, reset, sram_in[16] , sram_out_controlbox[16] )  ;
	D_ff inpcontrolbox_17(clk, reset, sram_in[17] , sram_out_controlbox[17] )  ;
	D_ff inpcontrolbox_18(clk, reset, sram_in[18] , sram_out_controlbox[18] )  ;
	D_ff inpcontrolbox_19(clk, reset, sram_in[19] , sram_out_controlbox[19] )  ;
	//														
	D_ff inpcontrolbox_20(clk, reset, sram_in[20] , sram_out_controlbox[20] )  ;
	D_ff inpcontrolbox_21(clk, reset, sram_in[21] , sram_out_controlbox[21] )  ;
	D_ff inpcontrolbox_22(clk, reset, sram_in[22] , sram_out_controlbox[22] )  ;
	D_ff inpcontrolbox_23(clk, reset, sram_in[23] , sram_out_controlbox[23] )  ;
	D_ff inpcontrolbox_24(clk, reset, sram_in[24] , sram_out_controlbox[24] )  ;
	//
	D_ff inpcontrolbox_25(clk, reset, sram_in[25] , sram_out_controlbox[25] )  ;
	D_ff inpcontrolbox_26(clk, reset, sram_in[26] , sram_out_controlbox[26] )  ;
	D_ff inpcontrolbox_27(clk, reset, sram_in[27] , sram_out_controlbox[27] )  ;
	D_ff inpcontrolbox_28(clk, reset, sram_in[28] , sram_out_controlbox[28] )  ;
	D_ff inpcontrolbox_29(clk, reset, sram_in[29] , sram_out_controlbox[29] )  ;
	//
	D_ff inpcontrolbox_30(clk, reset, sram_in[30] , sram_out_controlbox[30] )  ;
	D_ff inpcontrolbox_31(clk, reset, sram_in[31] , sram_out_controlbox[31] )  ;
	D_ff inpcontrolbox_32(clk, reset, sram_in[32] , sram_out_controlbox[32] )  ;
	D_ff inpcontrolbox_33(clk, reset, sram_in[33] , sram_out_controlbox[33] )  ;
	D_ff inpcontrolbox_34(clk, reset, sram_in[34] , sram_out_controlbox[34] )  ;
	
	///////////////////////////////////////////////////////////////////////////////
	begin
		assign	lines_to_SB[4] = (sram_out_controlbox[0] && sram_out_controlbox[25]) ? left_or_up_from_BLE: 1'bz;
		assign	lines_to_SB[3] = (sram_out_controlbox[1] && sram_out_controlbox[25]) ? left_or_up_from_BLE: 1'bz;
		assign	lines_to_SB[2] = (sram_out_controlbox[2] && sram_out_controlbox[25]) ? left_or_up_from_BLE: 1'bz;
		assign	lines_to_SB[1] = (sram_out_controlbox[3] && sram_out_controlbox[25]) ? left_or_up_from_BLE: 1'bz;
		assign	lines_to_SB[0] = (sram_out_controlbox[4] && sram_out_controlbox[25]) ? left_or_up_from_BLE: 1'bz;
		
		assign	lines_to_SB[4] = (sram_out_controlbox[0] && sram_out_controlbox[26]) ? right_or_down_from_BLE: 1'bz;
		assign	lines_to_SB[3] = (sram_out_controlbox[1] && sram_out_controlbox[26]) ? right_or_down_from_BLE: 1'bz;
		assign	lines_to_SB[2] = (sram_out_controlbox[2] && sram_out_controlbox[26]) ? right_or_down_from_BLE: 1'bz;
		assign	lines_to_SB[1] = (sram_out_controlbox[3] && sram_out_controlbox[26]) ? right_or_down_from_BLE: 1'bz;
		assign	lines_to_SB[0] = (sram_out_controlbox[4] && sram_out_controlbox[26]) ? right_or_down_from_BLE: 1'bz;
		
		//////
		assign	left_or_up[0] = (sram_out_controlbox[5] && sram_out_controlbox[27]) ? lines_to_SB[4]: 1'bz;
		assign	left_or_up[0] = (sram_out_controlbox[6] && sram_out_controlbox[27]) ? lines_to_SB[3]: 1'bz;
		assign	left_or_up[0] = (sram_out_controlbox[7] && sram_out_controlbox[27]) ? lines_to_SB[2]: 1'bz;
		assign	left_or_up[0] = (sram_out_controlbox[8] && sram_out_controlbox[27]) ? lines_to_SB[1]: 1'bz;
		assign	left_or_up[0] = (sram_out_controlbox[9] && sram_out_controlbox[27]) ? lines_to_SB[0]: 1'bz;
		
		assign	right_or_down[0] = (sram_out_controlbox[5] && sram_out_controlbox[28]) ? lines_to_SB[4]: 1'bz;
		assign	right_or_down[0] = (sram_out_controlbox[6] && sram_out_controlbox[28]) ? lines_to_SB[3]: 1'bz;
		assign	right_or_down[0] = (sram_out_controlbox[7] && sram_out_controlbox[28]) ? lines_to_SB[2]: 1'bz;
		assign	right_or_down[0] = (sram_out_controlbox[8] && sram_out_controlbox[28]) ? lines_to_SB[1]: 1'bz;
		assign	right_or_down[0] = (sram_out_controlbox[9] && sram_out_controlbox[28]) ? lines_to_SB[0]: 1'bz;
		//
		assign	left_or_up[1] = (sram_out_controlbox[10] && sram_out_controlbox[29]) ? lines_to_SB[4]: 1'bz;
		assign	left_or_up[1] = (sram_out_controlbox[11] && sram_out_controlbox[29]) ? lines_to_SB[3]: 1'bz;
		assign	left_or_up[1] = (sram_out_controlbox[12] && sram_out_controlbox[29]) ? lines_to_SB[2]: 1'bz;
		assign	left_or_up[1] = (sram_out_controlbox[13] && sram_out_controlbox[29]) ? lines_to_SB[1]: 1'bz;
		assign	left_or_up[1] = (sram_out_controlbox[14] && sram_out_controlbox[29]) ? lines_to_SB[0]: 1'bz;
		
		assign	right_or_down[1] = (sram_out_controlbox[10] && sram_out_controlbox[30]) ? lines_to_SB[4]: 1'bz;
		assign	right_or_down[1] = (sram_out_controlbox[11] && sram_out_controlbox[30]) ? lines_to_SB[3]: 1'bz;
		assign	right_or_down[1] = (sram_out_controlbox[12] && sram_out_controlbox[30]) ? lines_to_SB[2]: 1'bz;
		assign	right_or_down[1] = (sram_out_controlbox[13] && sram_out_controlbox[30]) ? lines_to_SB[1]: 1'bz;
		assign	right_or_down[1] = (sram_out_controlbox[14] && sram_out_controlbox[30]) ? lines_to_SB[0]: 1'bz;
		//
		assign	left_or_up[2] = (sram_out_controlbox[15] && sram_out_controlbox[31]) ? lines_to_SB[4]: 1'bz;
		assign	left_or_up[2] = (sram_out_controlbox[16] && sram_out_controlbox[31]) ? lines_to_SB[3]: 1'bz;
		assign	left_or_up[2] = (sram_out_controlbox[17] && sram_out_controlbox[31]) ? lines_to_SB[2]: 1'bz;
		assign	left_or_up[2] = (sram_out_controlbox[18] && sram_out_controlbox[31]) ? lines_to_SB[1]: 1'bz;
		assign	left_or_up[2] = (sram_out_controlbox[19] && sram_out_controlbox[31]) ? lines_to_SB[0]: 1'bz;
		
		assign	right_or_down[2] = (sram_out_controlbox[15] && sram_out_controlbox[32]) ? lines_to_SB[4]: 1'bz;
		assign	right_or_down[2] = (sram_out_controlbox[16] && sram_out_controlbox[32]) ? lines_to_SB[3]: 1'bz;
		assign	right_or_down[2] = (sram_out_controlbox[17] && sram_out_controlbox[32]) ? lines_to_SB[2]: 1'bz;
		assign	right_or_down[2] = (sram_out_controlbox[18] && sram_out_controlbox[32]) ? lines_to_SB[1]: 1'bz;
		assign	right_or_down[2] = (sram_out_controlbox[19] && sram_out_controlbox[32]) ? lines_to_SB[0]: 1'bz;
		//
		assign	left_or_up[3] = (sram_out_controlbox[20] && sram_out_controlbox[33]) ? lines_to_SB[4]: 1'bz;
		assign	left_or_up[3] = (sram_out_controlbox[21] && sram_out_controlbox[33]) ? lines_to_SB[3]: 1'bz;
		assign	left_or_up[3] = (sram_out_controlbox[22] && sram_out_controlbox[33]) ? lines_to_SB[2]: 1'bz;
		assign	left_or_up[3] = (sram_out_controlbox[23] && sram_out_controlbox[33]) ? lines_to_SB[1]: 1'bz;
		assign	left_or_up[3] = (sram_out_controlbox[24] && sram_out_controlbox[33]) ? lines_to_SB[0]: 1'bz;
		
		assign	right_or_down[3] = (sram_out_controlbox[20] && sram_out_controlbox[34]) ? lines_to_SB[4]: 1'bz;
		assign	right_or_down[3] = (sram_out_controlbox[21] && sram_out_controlbox[34]) ? lines_to_SB[3]: 1'bz;
		assign	right_or_down[3] = (sram_out_controlbox[22] && sram_out_controlbox[34]) ? lines_to_SB[2]: 1'bz;
		assign	right_or_down[3] = (sram_out_controlbox[23] && sram_out_controlbox[34]) ? lines_to_SB[1]: 1'bz;
		assign	right_or_down[3] = (sram_out_controlbox[24] && sram_out_controlbox[34]) ? lines_to_SB[0]: 1'bz;
		////
		//
	end	
endmodule
