// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon May  6 14:22:05 2024
// Host        : marcin running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/marcin-zub/Vivado_projects/project_vivado_3/project_vivado_3.sim/sim_1/synth/timing/xsim/tb_UART_Transmitter_time_synth.v
// Design      : UART_Transmitter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* STATE_IDLE = "2'b00" *) (* STATE_SEND_DATA = "2'b10" *) (* STATE_SEND_START_BIT = "2'b01" *) 
(* STATE_SEND_STOP_BIT = "2'b11" *) 
(* NotValidForBitStream *)
module UART_Transmitter
   (clk,
    rst,
    send,
    data,
    txd);
  input clk;
  input rst;
  input send;
  input [7:0]data;
  output txd;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data;
  wire [7:0]data_IBUF;
  wire [7:0]data_reg;
  wire \data_reg_reg[0]_i_1_n_0 ;
  wire \data_reg_reg[1]_i_1_n_0 ;
  wire \data_reg_reg[2]_i_1_n_0 ;
  wire \data_reg_reg[3]_i_1_n_0 ;
  wire \data_reg_reg[4]_i_1_n_0 ;
  wire \data_reg_reg[5]_i_1_n_0 ;
  wire \data_reg_reg[6]_i_1_n_0 ;
  wire \data_reg_reg[7]_i_1_n_0 ;
  wire \data_reg_reg[7]_i_2_n_0 ;
  wire [1:0]next_state;
  wire rst;
  wire rst_IBUF;
  wire send;
  wire send_IBUF;
  wire send_prev;
  wire [1:0]state_reg;
  wire txd;
  wire txd_OBUF;
  wire txd_reg_i_1_n_0;
  wire txd_reg_i_2_n_0;
  wire txd_reg_i_3_n_0;
  wire txd_reg_i_4_n_0;

initial begin
 $sdf_annotate("tb_UART_Transmitter_time_synth.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'h00000000040404F4)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(send_prev),
        .I1(send_IBUF),
        .I2(state_reg[1]),
        .I3(txd_reg_i_3_n_0),
        .I4(txd_reg_i_4_n_0),
        .I5(state_reg[0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:00,STATE_SEND_START_BIT:01,STATE_SEND_DATA:10,STATE_SEND_STOP_BIT:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state[0]),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "STATE_IDLE:00,STATE_SEND_START_BIT:01,STATE_SEND_DATA:10,STATE_SEND_STOP_BIT:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next_state[1]),
        .Q(state_reg[1]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_IBUF[0]_inst 
       (.I(data[0]),
        .O(data_IBUF[0]));
  IBUF \data_IBUF[1]_inst 
       (.I(data[1]),
        .O(data_IBUF[1]));
  IBUF \data_IBUF[2]_inst 
       (.I(data[2]),
        .O(data_IBUF[2]));
  IBUF \data_IBUF[3]_inst 
       (.I(data[3]),
        .O(data_IBUF[3]));
  IBUF \data_IBUF[4]_inst 
       (.I(data[4]),
        .O(data_IBUF[4]));
  IBUF \data_IBUF[5]_inst 
       (.I(data[5]),
        .O(data_IBUF[5]));
  IBUF \data_IBUF[6]_inst 
       (.I(data[6]),
        .O(data_IBUF[6]));
  IBUF \data_IBUF[7]_inst 
       (.I(data[7]),
        .O(data_IBUF[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.CLR(1'b0),
        .D(\data_reg_reg[0]_i_1_n_0 ),
        .G(\data_reg_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_reg[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \data_reg_reg[0]_i_1 
       (.I0(data_IBUF[0]),
        .I1(state_reg[1]),
        .O(\data_reg_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.CLR(1'b0),
        .D(\data_reg_reg[1]_i_1_n_0 ),
        .G(\data_reg_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg_reg[1]_i_1 
       (.I0(data_reg[0]),
        .I1(state_reg[1]),
        .I2(data_IBUF[1]),
        .O(\data_reg_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.CLR(1'b0),
        .D(\data_reg_reg[2]_i_1_n_0 ),
        .G(\data_reg_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg_reg[2]_i_1 
       (.I0(data_reg[1]),
        .I1(state_reg[1]),
        .I2(data_IBUF[2]),
        .O(\data_reg_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.CLR(1'b0),
        .D(\data_reg_reg[3]_i_1_n_0 ),
        .G(\data_reg_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg_reg[3]_i_1 
       (.I0(data_reg[2]),
        .I1(state_reg[1]),
        .I2(data_IBUF[3]),
        .O(\data_reg_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.CLR(1'b0),
        .D(\data_reg_reg[4]_i_1_n_0 ),
        .G(\data_reg_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg_reg[4]_i_1 
       (.I0(data_reg[3]),
        .I1(state_reg[1]),
        .I2(data_IBUF[4]),
        .O(\data_reg_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.CLR(1'b0),
        .D(\data_reg_reg[5]_i_1_n_0 ),
        .G(\data_reg_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg_reg[5]_i_1 
       (.I0(data_reg[4]),
        .I1(state_reg[1]),
        .I2(data_IBUF[5]),
        .O(\data_reg_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.CLR(1'b0),
        .D(\data_reg_reg[6]_i_1_n_0 ),
        .G(\data_reg_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg_reg[6]_i_1 
       (.I0(data_reg[5]),
        .I1(state_reg[1]),
        .I2(data_IBUF[6]),
        .O(\data_reg_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.CLR(1'b0),
        .D(\data_reg_reg[7]_i_1_n_0 ),
        .G(\data_reg_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_reg_reg[7]_i_1 
       (.I0(data_reg[6]),
        .I1(state_reg[1]),
        .I2(data_IBUF[7]),
        .O(\data_reg_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4F4F404)) 
    \data_reg_reg[7]_i_2 
       (.I0(send_prev),
        .I1(send_IBUF),
        .I2(state_reg[1]),
        .I3(txd_reg_i_4_n_0),
        .I4(txd_reg_i_3_n_0),
        .I5(state_reg[0]),
        .O(\data_reg_reg[7]_i_2_n_0 ));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF send_IBUF_inst
       (.I(send),
        .O(send_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    send_prev_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(send_IBUF),
        .Q(send_prev));
  OBUF txd_OBUF_inst
       (.I(txd_OBUF),
        .O(txd));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    txd_reg
       (.CLR(1'b0),
        .D(txd_reg_i_1_n_0),
        .G(txd_reg_i_2_n_0),
        .GE(1'b1),
        .Q(txd_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    txd_reg_i_1
       (.I0(state_reg[1]),
        .I1(data_reg[0]),
        .I2(state_reg[0]),
        .O(txd_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    txd_reg_i_2
       (.I0(state_reg[0]),
        .I1(txd_reg_i_3_n_0),
        .I2(txd_reg_i_4_n_0),
        .I3(state_reg[1]),
        .O(txd_reg_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    txd_reg_i_3
       (.I0(data_reg[7]),
        .I1(data_reg[6]),
        .I2(data_reg[4]),
        .I3(data_reg[5]),
        .O(txd_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    txd_reg_i_4
       (.I0(data_reg[2]),
        .I1(data_reg[3]),
        .I2(data_reg[0]),
        .I3(data_reg[1]),
        .O(txd_reg_i_4_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
