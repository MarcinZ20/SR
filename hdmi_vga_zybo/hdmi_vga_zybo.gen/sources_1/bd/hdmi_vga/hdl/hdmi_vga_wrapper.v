//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Mon Apr 22 13:56:51 2024
//Host        : marcin running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target hdmi_vga_wrapper.bd
//Design      : hdmi_vga_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hdmi_vga_wrapper
   (hdmi_hdp,
    hdmi_in_clk_n,
    hdmi_in_clk_p,
    hdmi_in_data_n,
    hdmi_in_data_p,
    hdmi_inn_ddc_scl_io,
    hdmi_inn_ddc_sda_io,
    hdmi_out_en,
    sys_clock);
  output [0:0]hdmi_hdp;
  input hdmi_in_clk_n;
  input hdmi_in_clk_p;
  input [2:0]hdmi_in_data_n;
  input [2:0]hdmi_in_data_p;
  inout hdmi_inn_ddc_scl_io;
  inout hdmi_inn_ddc_sda_io;
  output [0:0]hdmi_out_en;
  input sys_clock;

  wire [0:0]hdmi_hdp;
  wire hdmi_in_clk_n;
  wire hdmi_in_clk_p;
  wire [2:0]hdmi_in_data_n;
  wire [2:0]hdmi_in_data_p;
  wire hdmi_inn_ddc_scl_i;
  wire hdmi_inn_ddc_scl_io;
  wire hdmi_inn_ddc_scl_o;
  wire hdmi_inn_ddc_scl_t;
  wire hdmi_inn_ddc_sda_i;
  wire hdmi_inn_ddc_sda_io;
  wire hdmi_inn_ddc_sda_o;
  wire hdmi_inn_ddc_sda_t;
  wire [0:0]hdmi_out_en;
  wire sys_clock;

  IOBUF hdmi_inn_ddc_scl_iobuf
       (.I(hdmi_inn_ddc_scl_o),
        .IO(hdmi_inn_ddc_scl_io),
        .O(hdmi_inn_ddc_scl_i),
        .T(hdmi_inn_ddc_scl_t));
  IOBUF hdmi_inn_ddc_sda_iobuf
       (.I(hdmi_inn_ddc_sda_o),
        .IO(hdmi_inn_ddc_sda_io),
        .O(hdmi_inn_ddc_sda_i),
        .T(hdmi_inn_ddc_sda_t));
  hdmi_vga hdmi_vga_i
       (.hdmi_hdp(hdmi_hdp),
        .hdmi_in_clk_n(hdmi_in_clk_n),
        .hdmi_in_clk_p(hdmi_in_clk_p),
        .hdmi_in_data_n(hdmi_in_data_n),
        .hdmi_in_data_p(hdmi_in_data_p),
        .hdmi_inn_ddc_scl_i(hdmi_inn_ddc_scl_i),
        .hdmi_inn_ddc_scl_o(hdmi_inn_ddc_scl_o),
        .hdmi_inn_ddc_scl_t(hdmi_inn_ddc_scl_t),
        .hdmi_inn_ddc_sda_i(hdmi_inn_ddc_sda_i),
        .hdmi_inn_ddc_sda_o(hdmi_inn_ddc_sda_o),
        .hdmi_inn_ddc_sda_t(hdmi_inn_ddc_sda_t),
        .hdmi_out_en(hdmi_out_en),
        .sys_clock(sys_clock));
endmodule
