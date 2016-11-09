`timescale 1ns / 1ps


module switch_box( input clk, input reset, inout [4:0] left,inout [4:0] up,inout [4:0] right, inout [4:0] down, input [59:0] inp_sram
    );

wire [59:0] sram_cells_switchbox;	
	
D_ff inpswitchbox_0(clk, reset, inp_sram[0] , sram_cells_switchbox[0] )	 ;
D_ff inpswitchbox_1(clk, reset, inp_sram[1] , sram_cells_switchbox[1] )  ;
D_ff inpswitchbox_2(clk, reset, inp_sram[2] , sram_cells_switchbox[2] )  ;
D_ff inpswitchbox_3(clk, reset, inp_sram[3] , sram_cells_switchbox[3] )  ;
D_ff inpswitchbox_4(clk, reset, inp_sram[4] , sram_cells_switchbox[4] )  ;
D_ff inpswitchbox_5(clk, reset, inp_sram[5] , sram_cells_switchbox[5] )  ;
D_ff inpswitchbox_6(clk, reset, inp_sram[6] , sram_cells_switchbox[6] )  ;
D_ff inpswitchbox_7(clk, reset, inp_sram[7] , sram_cells_switchbox[7] )  ;
D_ff inpswitchbox_8(clk, reset, inp_sram[8] , sram_cells_switchbox[8] )  ;
D_ff inpswitchbox_9(clk, reset, inp_sram[9] , sram_cells_switchbox[9] )  ;

D_ff inpswitchbox_10(clk, reset, inp_sram[10] , sram_cells_switchbox[10] )	;
D_ff inpswitchbox_11(clk, reset, inp_sram[11] , sram_cells_switchbox[11] )	;
D_ff inpswitchbox_12(clk, reset, inp_sram[12] , sram_cells_switchbox[12] )  ;
D_ff inpswitchbox_13(clk, reset, inp_sram[13] , sram_cells_switchbox[13] )  ;
D_ff inpswitchbox_14(clk, reset, inp_sram[14] , sram_cells_switchbox[14] )  ;
D_ff inpswitchbox_15(clk, reset, inp_sram[15] , sram_cells_switchbox[15] )  ;
D_ff inpswitchbox_16(clk, reset, inp_sram[16] , sram_cells_switchbox[16] )  ;
D_ff inpswitchbox_17(clk, reset, inp_sram[17] , sram_cells_switchbox[17] )  ;
D_ff inpswitchbox_18(clk, reset, inp_sram[18] , sram_cells_switchbox[18] )  ;
D_ff inpswitchbox_19(clk, reset, inp_sram[19] , sram_cells_switchbox[19] )  ;
                                                                          
D_ff inpswitchbox_20(clk, reset, inp_sram[20] , sram_cells_switchbox[20] )	;
D_ff inpswitchbox_21(clk, reset, inp_sram[21] , sram_cells_switchbox[21] )	;
D_ff inpswitchbox_22(clk, reset, inp_sram[22] , sram_cells_switchbox[22] )  ;
D_ff inpswitchbox_23(clk, reset, inp_sram[23] , sram_cells_switchbox[23] )  ;
D_ff inpswitchbox_24(clk, reset, inp_sram[24] , sram_cells_switchbox[24] )  ;
D_ff inpswitchbox_25(clk, reset, inp_sram[25] , sram_cells_switchbox[25] )  ;
D_ff inpswitchbox_26(clk, reset, inp_sram[26] , sram_cells_switchbox[26] )  ;
D_ff inpswitchbox_27(clk, reset, inp_sram[27] , sram_cells_switchbox[27] )  ;
D_ff inpswitchbox_28(clk, reset, inp_sram[28] , sram_cells_switchbox[28] )  ;
D_ff inpswitchbox_29(clk, reset, inp_sram[29] , sram_cells_switchbox[29] )  ;
                  
///
D_ff inpswitchbox_30(clk, reset, inp_sram[30] , sram_cells_switchbox[30] )	 ;
D_ff inpswitchbox_31(clk, reset, inp_sram[31] , sram_cells_switchbox[31] )  ;
D_ff inpswitchbox_32(clk, reset, inp_sram[32] , sram_cells_switchbox[32] )  ;
D_ff inpswitchbox_33(clk, reset, inp_sram[33] , sram_cells_switchbox[33] )  ;
D_ff inpswitchbox_34(clk, reset, inp_sram[34] , sram_cells_switchbox[34] )  ;
D_ff inpswitchbox_35(clk, reset, inp_sram[35] , sram_cells_switchbox[35] )  ;
D_ff inpswitchbox_36(clk, reset, inp_sram[36] , sram_cells_switchbox[36] )  ;
D_ff inpswitchbox_37(clk, reset, inp_sram[37] , sram_cells_switchbox[37] )  ;
D_ff inpswitchbox_38(clk, reset, inp_sram[38] , sram_cells_switchbox[38] )  ;
D_ff inpswitchbox_39(clk, reset, inp_sram[39] , sram_cells_switchbox[39] )  ;

D_ff inpswitchbox_40(clk, reset, inp_sram[40] , sram_cells_switchbox[40] )	;
D_ff inpswitchbox_41(clk, reset, inp_sram[41] , sram_cells_switchbox[41] )	;
D_ff inpswitchbox_42(clk, reset, inp_sram[42] , sram_cells_switchbox[42] )  ;
D_ff inpswitchbox_43(clk, reset, inp_sram[43] , sram_cells_switchbox[43] )  ;
D_ff inpswitchbox_44(clk, reset, inp_sram[44] , sram_cells_switchbox[44] )  ;
D_ff inpswitchbox_45(clk, reset, inp_sram[45] , sram_cells_switchbox[45] )  ;
D_ff inpswitchbox_46(clk, reset, inp_sram[46] , sram_cells_switchbox[46] )  ;
D_ff inpswitchbox_47(clk, reset, inp_sram[47] , sram_cells_switchbox[47] )  ;
D_ff inpswitchbox_48(clk, reset, inp_sram[48] , sram_cells_switchbox[48] )  ;
D_ff inpswitchbox_49(clk, reset, inp_sram[49] , sram_cells_switchbox[49] )  ;
                                                                          
D_ff inpswitchbox_50(clk, reset, inp_sram[50] , sram_cells_switchbox[50] )	;
D_ff inpswitchbox_51(clk, reset, inp_sram[51] , sram_cells_switchbox[51] )	;
D_ff inpswitchbox_52(clk, reset, inp_sram[52] , sram_cells_switchbox[52] )  ;
D_ff inpswitchbox_53(clk, reset, inp_sram[53] , sram_cells_switchbox[53] )  ;
D_ff inpswitchbox_54(clk, reset, inp_sram[54] , sram_cells_switchbox[54] )  ;
D_ff inpswitchbox_55(clk, reset, inp_sram[55] , sram_cells_switchbox[55] )  ;
D_ff inpswitchbox_56(clk, reset, inp_sram[56] , sram_cells_switchbox[56] )  ;
D_ff inpswitchbox_57(clk, reset, inp_sram[57] , sram_cells_switchbox[57] )  ;
D_ff inpswitchbox_58(clk, reset, inp_sram[58] , sram_cells_switchbox[58] )  ;
D_ff inpswitchbox_59(clk, reset, inp_sram[59] , sram_cells_switchbox[59] )  ;

	
		//
		assign	left[0] = (sram_cells_switchbox[0]) ? up[0]: 1'bz;
		assign	left[1] = (sram_cells_switchbox[4]) ? up[1]: 1'bz;
		assign	left[2] = (sram_cells_switchbox[8]) ? up[2]: 1'bz;
		assign	left[3] = (sram_cells_switchbox[12]) ? up[3]: 1'bz;
		assign	left[4] = (sram_cells_switchbox[16]) ? up[4]: 1'bz;
		
		assign	up[0] = (sram_cells_switchbox[30]) ? left[0]: 1'bz;
		assign	up[1] = (sram_cells_switchbox[34]) ? left[1]: 1'bz;
		assign	up[2] = (sram_cells_switchbox[38]) ? left[2]: 1'bz;
		assign	up[3] = (sram_cells_switchbox[42]) ? left[3]: 1'bz;
		assign	up[4] = (sram_cells_switchbox[46]) ? left[4]: 1'bz;
		//
		assign	up[0] = (sram_cells_switchbox[1]) ? right[0]: 1'bz;
		assign	up[1] = (sram_cells_switchbox[5]) ? right[1]: 1'bz;
		assign	up[2] = (sram_cells_switchbox[9]) ? right[2]: 1'bz;
		assign	up[3] = (sram_cells_switchbox[13]) ? right[3]: 1'bz;
		assign	up[4] = (sram_cells_switchbox[17]) ? right[4]: 1'bz;
		
		assign	right[0] = (sram_cells_switchbox[31]) ? up[0]: 1'bz;
		assign	right[1] = (sram_cells_switchbox[35]) ? up[1]: 1'bz;
		assign	right[2] = (sram_cells_switchbox[39]) ? up[2]: 1'bz;
		assign	right[3] = (sram_cells_switchbox[43]) ? up[3]: 1'bz;
		assign	right[4] = (sram_cells_switchbox[47]) ? up[4]: 1'bz;
		//
		assign	right[0] = (sram_cells_switchbox[2]) ? down[0]: 1'bz;
		assign	right[1] = (sram_cells_switchbox[6]) ? down[1]: 1'bz;
		assign	right[2] = (sram_cells_switchbox[10]) ? down[2]: 1'bz;
		assign	right[3] = (sram_cells_switchbox[14]) ? down[3]: 1'bz;
		assign	right[4] = (sram_cells_switchbox[18]) ? down[4]: 1'bz;
		
		assign	down[0] = (sram_cells_switchbox[32]) ? right[0]: 1'bz;
		assign	down[1] = (sram_cells_switchbox[36]) ? right[1]: 1'bz;
		assign	down[2] = (sram_cells_switchbox[40]) ? right[2]: 1'bz;
		assign	down[3] = (sram_cells_switchbox[44]) ? right[3]: 1'bz;
		assign	down[4] = (sram_cells_switchbox[48]) ? right[4]: 1'bz;
		//
		assign	down[0] = (sram_cells_switchbox[3]) ? left[0]: 1'bz;
		assign	down[1] = (sram_cells_switchbox[7]) ? left[1]: 1'bz;
		assign	down[2] = (sram_cells_switchbox[11]) ? left[2]: 1'bz;
		assign	down[3] = (sram_cells_switchbox[15]) ? left[3]: 1'bz;
		assign	down[4] = (sram_cells_switchbox[19]) ? left[4]: 1'bz;
		
		assign	left[0] = (sram_cells_switchbox[33]) ? down[0]: 1'bz;
		assign	left[1] = (sram_cells_switchbox[37]) ? down[1]: 1'bz;
		assign	left[2] = (sram_cells_switchbox[41]) ? down[2]: 1'bz;
		assign	left[3] = (sram_cells_switchbox[45]) ? down[3]: 1'bz;
		assign	left[4] = (sram_cells_switchbox[49]) ? down[4]: 1'bz;
		//
		assign	left[0] = (sram_cells_switchbox[20]) ? right[4]: 1'bz;
		assign	left[1] = (sram_cells_switchbox[21]) ? right[3]: 1'bz;
		assign	left[2] = (sram_cells_switchbox[22]) ? right[2]: 1'bz;
		assign	left[3] = (sram_cells_switchbox[23]) ? right[1]: 1'bz;
		assign	left[4] = (sram_cells_switchbox[24]) ? right[0]: 1'bz;
		
		assign	right[0] = (sram_cells_switchbox[50]) ? left[4]: 1'bz;
		assign	right[1] = (sram_cells_switchbox[51]) ? left[3]: 1'bz;
		assign	right[2] = (sram_cells_switchbox[52]) ? left[2]: 1'bz;
		assign	right[3] = (sram_cells_switchbox[53]) ? left[1]: 1'bz;
		assign	right[4] = (sram_cells_switchbox[54]) ? left[0]: 1'bz;
		//
		assign	up[0] = (sram_cells_switchbox[25]) ? down[4]: 1'bz;
		assign	up[1] = (sram_cells_switchbox[26]) ? down[3]: 1'bz;
		assign	up[2] = (sram_cells_switchbox[27]) ? down[2]: 1'bz;
		assign	up[3] = (sram_cells_switchbox[28]) ? down[1]: 1'bz;
		assign	up[4] = (sram_cells_switchbox[29]) ? down[0]: 1'bz;
		
		assign	down[0] = (sram_cells_switchbox[55]) ? up[4]: 1'bz;
		assign	down[1] = (sram_cells_switchbox[56]) ? up[3]: 1'bz;
		assign	down[2] = (sram_cells_switchbox[57]) ? up[2]: 1'bz;
		assign	down[3] = (sram_cells_switchbox[58]) ? up[1]: 1'bz;
		assign	down[4] = (sram_cells_switchbox[59]) ? up[0]: 1'bz;
		//
			

endmodule
