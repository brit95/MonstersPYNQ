// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Thu Mar 23 16:30:50 2017
// Host        : CB400-08 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_3_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_4,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [15:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [15:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [15:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "16" *) 
  (* C_ADDRB_WIDTH = "16" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "10" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.20835 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "40960" *) 
  (* C_READ_DEPTH_B = "40960" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "40960" *) 
  (* C_WRITE_DEPTH_B = "40960" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_3_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[15:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[15:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

module blk_mem_gen_0_bindec
   (ena_array,
    addra);
  output [9:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [9:0]ena_array;

  LUT4 #(
    .INIT(16'h0001)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[0]));
  LUT4 #(
    .INIT(16'h0010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[0]),
        .I3(addra[1]),
        .O(ena_array[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[3]));
  LUT4 #(
    .INIT(16'h4000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3 
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[7]));
  LUT4 #(
    .INIT(16'h0010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4 
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[4]));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__5 
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[5]));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__6 
       (.I0(addra[3]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(addra[1]),
        .O(ena_array[6]));
  LUT4 #(
    .INIT(16'h0010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__7 
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[8]));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__8 
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[9]));
endmodule

module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [15:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [15:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [79:0]douta_array;
  wire [9:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[15:12]),
        .ena_array(ena_array));
  blk_mem_gen_0_blk_mem_gen_mux \has_mux_a.A 
       (.addra(addra[15:12]),
        .clka(clka),
        .douta(douta),
        .douta_array(douta_array),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[7:0]),
        .ena_array(ena_array[0]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[15:8]),
        .ena_array(ena_array[1]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[23:16]),
        .ena_array(ena_array[2]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[31:24]),
        .ena_array(ena_array[3]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[39:32]),
        .ena_array(ena_array[4]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[47:40]),
        .ena_array(ena_array[5]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[55:48]),
        .ena_array(ena_array[6]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[63:56]),
        .ena_array(ena_array[7]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[71:64]),
        .ena_array(ena_array[8]),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array[79:72]),
        .ena_array(ena_array[9]),
        .wea(wea));
endmodule

module blk_mem_gen_0_blk_mem_gen_mux
   (douta,
    douta_array,
    wea,
    addra,
    clka);
  output [7:0]douta;
  input [79:0]douta_array;
  input [0:0]wea;
  input [3:0]addra;
  input clka;

  wire [3:0]addra;
  wire clka;
  wire [7:0]douta;
  wire \douta[0]_INST_0_i_1_n_0 ;
  wire \douta[0]_INST_0_i_2_n_0 ;
  wire \douta[0]_INST_0_i_3_n_0 ;
  wire \douta[1]_INST_0_i_1_n_0 ;
  wire \douta[1]_INST_0_i_2_n_0 ;
  wire \douta[1]_INST_0_i_3_n_0 ;
  wire \douta[2]_INST_0_i_1_n_0 ;
  wire \douta[2]_INST_0_i_2_n_0 ;
  wire \douta[2]_INST_0_i_3_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_3_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_3_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_3_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire [79:0]douta_array;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[3]_i_1_n_0 ;
  wire [3:0]sel_pipe;
  wire [0:0]wea;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[0]_INST_0 
       (.I0(\douta[0]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[0]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[0]_INST_0_i_3_n_0 ),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[0]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(douta_array[72]),
        .I2(sel_pipe[0]),
        .I3(douta_array[64]),
        .I4(sel_pipe[2]),
        .O(\douta[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_2 
       (.I0(douta_array[56]),
        .I1(douta_array[48]),
        .I2(sel_pipe[1]),
        .I3(douta_array[40]),
        .I4(sel_pipe[0]),
        .I5(douta_array[32]),
        .O(\douta[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_3 
       (.I0(douta_array[24]),
        .I1(douta_array[16]),
        .I2(sel_pipe[1]),
        .I3(douta_array[8]),
        .I4(sel_pipe[0]),
        .I5(douta_array[0]),
        .O(\douta[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[1]_INST_0 
       (.I0(\douta[1]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[1]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[1]_INST_0_i_3_n_0 ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[1]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(douta_array[73]),
        .I2(sel_pipe[0]),
        .I3(douta_array[65]),
        .I4(sel_pipe[2]),
        .O(\douta[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_2 
       (.I0(douta_array[57]),
        .I1(douta_array[49]),
        .I2(sel_pipe[1]),
        .I3(douta_array[41]),
        .I4(sel_pipe[0]),
        .I5(douta_array[33]),
        .O(\douta[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_3 
       (.I0(douta_array[25]),
        .I1(douta_array[17]),
        .I2(sel_pipe[1]),
        .I3(douta_array[9]),
        .I4(sel_pipe[0]),
        .I5(douta_array[1]),
        .O(\douta[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[2]_INST_0 
       (.I0(\douta[2]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[2]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[2]_INST_0_i_3_n_0 ),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[2]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(douta_array[74]),
        .I2(sel_pipe[0]),
        .I3(douta_array[66]),
        .I4(sel_pipe[2]),
        .O(\douta[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_2 
       (.I0(douta_array[58]),
        .I1(douta_array[50]),
        .I2(sel_pipe[1]),
        .I3(douta_array[42]),
        .I4(sel_pipe[0]),
        .I5(douta_array[34]),
        .O(\douta[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_3 
       (.I0(douta_array[26]),
        .I1(douta_array[18]),
        .I2(sel_pipe[1]),
        .I3(douta_array[10]),
        .I4(sel_pipe[0]),
        .I5(douta_array[2]),
        .O(\douta[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[3]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[3]_INST_0_i_3_n_0 ),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[3]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(douta_array[75]),
        .I2(sel_pipe[0]),
        .I3(douta_array[67]),
        .I4(sel_pipe[2]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_2 
       (.I0(douta_array[59]),
        .I1(douta_array[51]),
        .I2(sel_pipe[1]),
        .I3(douta_array[43]),
        .I4(sel_pipe[0]),
        .I5(douta_array[35]),
        .O(\douta[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_3 
       (.I0(douta_array[27]),
        .I1(douta_array[19]),
        .I2(sel_pipe[1]),
        .I3(douta_array[11]),
        .I4(sel_pipe[0]),
        .I5(douta_array[3]),
        .O(\douta[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[4]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[4]_INST_0_i_3_n_0 ),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[4]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(douta_array[76]),
        .I2(sel_pipe[0]),
        .I3(douta_array[68]),
        .I4(sel_pipe[2]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_2 
       (.I0(douta_array[60]),
        .I1(douta_array[52]),
        .I2(sel_pipe[1]),
        .I3(douta_array[44]),
        .I4(sel_pipe[0]),
        .I5(douta_array[36]),
        .O(\douta[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_3 
       (.I0(douta_array[28]),
        .I1(douta_array[20]),
        .I2(sel_pipe[1]),
        .I3(douta_array[12]),
        .I4(sel_pipe[0]),
        .I5(douta_array[4]),
        .O(\douta[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[5]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[5]_INST_0_i_3_n_0 ),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[5]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(douta_array[77]),
        .I2(sel_pipe[0]),
        .I3(douta_array[69]),
        .I4(sel_pipe[2]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_2 
       (.I0(douta_array[61]),
        .I1(douta_array[53]),
        .I2(sel_pipe[1]),
        .I3(douta_array[45]),
        .I4(sel_pipe[0]),
        .I5(douta_array[37]),
        .O(\douta[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_3 
       (.I0(douta_array[29]),
        .I1(douta_array[21]),
        .I2(sel_pipe[1]),
        .I3(douta_array[13]),
        .I4(sel_pipe[0]),
        .I5(douta_array[5]),
        .O(\douta[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[6]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[6]_INST_0_i_3_n_0 ),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[6]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(douta_array[78]),
        .I2(sel_pipe[0]),
        .I3(douta_array[70]),
        .I4(sel_pipe[2]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_2 
       (.I0(douta_array[62]),
        .I1(douta_array[54]),
        .I2(sel_pipe[1]),
        .I3(douta_array[46]),
        .I4(sel_pipe[0]),
        .I5(douta_array[38]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_3 
       (.I0(douta_array[30]),
        .I1(douta_array[22]),
        .I2(sel_pipe[1]),
        .I3(douta_array[14]),
        .I4(sel_pipe[0]),
        .I5(douta_array[6]),
        .O(\douta[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[7]_INST_0_i_3_n_0 ),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[7]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(douta_array[79]),
        .I2(sel_pipe[0]),
        .I3(douta_array[71]),
        .I4(sel_pipe[2]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_2 
       (.I0(douta_array[63]),
        .I1(douta_array[55]),
        .I2(sel_pipe[1]),
        .I3(douta_array[47]),
        .I4(sel_pipe[0]),
        .I5(douta_array[39]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_3 
       (.I0(douta_array[31]),
        .I1(douta_array[23]),
        .I2(sel_pipe[1]),
        .I3(douta_array[15]),
        .I4(sel_pipe[0]),
        .I5(douta_array[7]),
        .O(\douta[7]_INST_0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[3]_i_1 
       (.I0(wea),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(\no_softecc_sel_reg.ce_pri.sel_pipe[3]_i_1_n_0 ),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(\no_softecc_sel_reg.ce_pri.sel_pipe[3]_i_1_n_0 ),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(\no_softecc_sel_reg.ce_pri.sel_pipe[3]_i_1_n_0 ),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(\no_softecc_sel_reg.ce_pri.sel_pipe[3]_i_1_n_0 ),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta_array(douta_array),
        .ena_array(ena_array),
        .wea(wea));
endmodule

module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_01(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_02(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_03(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_04(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_05(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_06(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_07(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_08(256'hB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_09(256'h0F0F0F0F0F0F0FB489898989AD8989898989AD8989898989898989898989B389),
    .INIT_0A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0F(256'h89FD0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FE08989AD8989890F0F0F),
    .INIT_10(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8989898989),
    .INIT_11(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_12(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_13(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_14(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_15(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8F8989890F0F0F0F0F),
    .INIT_16(256'h0F0F0F0F0F0F0F0F0F0F0F0FFF898989890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_17(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_18(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_19(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FBBADB3890F0F0F0F0F0F0F0F0F0F),
    .INIT_1C(256'h0F0F898989FF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_20(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_21(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8F8F89B40F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_22(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_23(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89898FB40F0F0F0F0F0F0F),
    .INIT_24(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_25(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_26(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_27(256'h0F0F0F0F0F0F0F0F0FBB8989B40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_28(256'h0F0F0F1111111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F),
    .INIT_29(256'h0F0F0F0F0F0F0F0F0F0F0F898F89FF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2D(256'h0F0F0F0F0FB489890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2E(256'h11111111111111111111111111111111111111111111FD0F0F0F0F0F0F0F0F0F),
    .INIT_2F(256'h8989BB0F0F0F0F0F0F0F0F0F0F0F0F0F0F6D1111111111111111111111111111),
    .INIT_30(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFF),
    .INIT_31(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_32(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_33(256'hADB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_34(256'h11111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F89),
    .INIT_35(256'h0F0F0F0F0F0F0F11111111111111111111111111111111111111111111111111),
    .INIT_36(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB4898F0F0F0F0F0F0F0F),
    .INIT_37(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_38(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_39(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3A(256'h1111111111111111111111111111430F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F),
    .INIT_3B(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_3C(256'h0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F17111111111111),
    .INIT_3D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_40(256'h1111111111111111110F0F0F0F0F0F0F0F0F0F0F8989E00F0F0F0F0F0F0F0F0F),
    .INIT_41(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_42(256'h0FB489B40F0F0F0F0F0F0F0F0F0F0F1111111111111111111111111111111111),
    .INIT_43(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_44(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_45(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_46(256'h11111111EE0F0F0F0F0F0F0F0F0F0F898F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_47(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_48(256'h0F0F0F1111111111111111111111111111111111111111111111111111111111),
    .INIT_49(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F),
    .INIT_4A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4C(256'h0F0F0F0F0F0F0F0FBB89FF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4D(256'h1111111111111111111111111111111111111111111111111111111111110F0F),
    .INIT_4E(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_4F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0FB4890F0F0F0F0F0F0F0F0F0FF7111111111111),
    .INIT_50(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_51(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_52(256'h0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_53(256'h111111111111111111111111111111111111111111111111110F0F0F0F0F0F0F),
    .INIT_54(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_55(256'h0F0F0F89890F0F0F0F0F0F0F0F0F0F1111111111111111111111111111111111),
    .INIT_56(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_57(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_58(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_59(256'h111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F89AD0F0F),
    .INIT_5A(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_5B(256'h0F0F0F0F0F111111111111111111111111111111111111111111111111111111),
    .INIT_5C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F898F0F0F0F0F),
    .INIT_5D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5F(256'h111111111111111111111111113C0F0F0F0F0F0F0F0FBBAD0F0F0F0F0F0F0F0F),
    .INIT_60(256'hF71111111111110F0F111111110F111111111111111111111111111111111111),
    .INIT_61(256'h11111111111111111111111111111111111111111111111111111111110F0F0F),
    .INIT_62(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB30F0F0F0F0F0F0F0F0F111111111111),
    .INIT_63(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_64(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_65(256'h111111111111110F0F0F0F0F0F0F0F898F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_66(256'hFD11111111110F0F0F3C11111111111111111111111111111111111111111111),
    .INIT_67(256'h111111111111111111111111111111111111111111110F111111111111110F0F),
    .INIT_68(256'h0F0F0F0F0F0F0F89B30F0F0F0F0F0F0F0F111111111111111111111111111111),
    .INIT_69(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6B(256'h110F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6C(256'h1111111111110F0F0F0F11111111111111111111111111111111111111111111),
    .INIT_6D(256'h0F0F0F0F0F0F0F111111111111110F1111111111110F0F0F111111111111110F),
    .INIT_6E(256'h0F0F0F0F0F0FF711111111111111111111111111111111111111111111111111),
    .INIT_6F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89BB0F),
    .INIT_70(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_71(256'h0F0F0F8F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_72(256'h0FF70F1111111111111111111111111111111111111111111111110F0F0F0F0F),
    .INIT_73(256'h1111111111110F11111111110F0F0F0F111111111111110F111111111111110F),
    .INIT_74(256'h11111111111111111111111111111111111111111111110F0F1111111111110F),
    .INIT_75(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FAD0F0F0F0F0F0F0F0F111111),
    .INIT_76(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_77(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_78(256'h1111111111111111111111111111111111111111110F0F0F0F0F0F0F0F890F0F),
    .INIT_79(256'h1111110F0F11110F111111111111110F111111111111110F1711111111111111),
    .INIT_7A(256'h1111111111111111111111111111110F111111111111110F0F11111111110F11),
    .INIT_7B(256'h0F0F0F0F0F0F0F0F0F0F8F0F0F0F0F0F0F0F0F11111111111111111111111111),
    .INIT_7C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7E(256'h11111111111111111111111111110F0F0F0F0F0F0F89AD0F0F0F0F0F0F0F0F0F),
    .INIT_7F(256'h1111111111110F0F111111111111FB0F11111111111111111111111111111111),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h111111111111110F11111111111111110F11111111110F1111110F0FFE11110F),
    .INIT_01(256'h0F89AD0F0F0F0F0F0F0F11111111111111111111111111111111111111111111),
    .INIT_02(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_03(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_04(256'h11111111111111110F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_05(256'h1111111111110F0F1111111111110F0F0F0F0F0F0F1111111111111111111111),
    .INIT_06(256'h11111111111111110F0F111111110F11110F0F111111110F1111111111110F11),
    .INIT_07(256'h111111111111111111111111111111111111110F111111111111111111111111),
    .INIT_08(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F898F0F0F0F0F0F0F0F),
    .INIT_09(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0A(256'h110F0F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0B(256'h11111111110F0F671111110F0F11111111111111111111111111111111111111),
    .INIT_0C(256'h0F0F111111110F110F0F0F111111110F1111111111110F111111111111110F0F),
    .INIT_0D(256'h111111111111111111110F111111111111111111111111111111111111111111),
    .INIT_0E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0FFE890F0F0F0F0F0F0F111111111111111111),
    .INIT_0F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_10(256'h0FFF890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_11(256'h111111110F0F0F11111111111111111111111111111111111111110F0F0F0F0F),
    .INIT_12(256'h0F1111111111110F1111111111110F111111111111670F11111111110F0F1111),
    .INIT_13(256'h0F0F0F11111111111111111111111111110F0F11111111110F0F111111110F0F),
    .INIT_14(256'h0F0F0F0F0F890F0F0F0F0F0F0F1111111111111111111111111111111111110F),
    .INIT_15(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_16(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_17(256'h11111111111111111111111111111111111111110F0F0F0F0F0F0F890F0F0F0F),
    .INIT_18(256'h1111111111110F1111111111110F0F11111111110F0F111111111111110F0F11),
    .INIT_19(256'h1111111111110F0F0F0F1111111111110FFD111111110F0F0F1111111111110F),
    .INIT_1A(256'h0F0F0F0F11111111111111111111111111111111111111110F0F0F0F11111111),
    .INIT_1B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F),
    .INIT_1C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1D(256'h11111111111111111111111111FD0F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1E(256'h11111111110F0F111111110F0F11111111111111110F0F11111111110F0F1111),
    .INIT_1F(256'h0F0F11111111110F0F11111111110F111111111111110F0F0F1111111111170F),
    .INIT_20(256'h111111111111111111110F0F111111111111170FFD1111111111111111111111),
    .INIT_21(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFFB30F0F0F0F0F0F171111111111),
    .INIT_22(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_23(256'h111111111111110F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_24(256'h1111110F0F1111111111111111110F3C1111111111FE0F111111111111111111),
    .INIT_25(256'h0F11111111110F111111111111111111111111111111110F0F1111110F0F0F11),
    .INIT_26(256'h0F0F0F11111111111111110F0F11111111111111111111110F0F111111110F0F),
    .INIT_27(256'h0F0F0F0F0F0F0F0F0FB4890F0F0F0F0F0F111111111111111111111111111111),
    .INIT_28(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_29(256'h0F0F0F0F0F0FFEB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2A(256'h1111111111110F3C11111111110F111111111111111111111111111111111111),
    .INIT_2B(256'h11111111111111111111111111111111110F0F0F0F111111111111430F111111),
    .INIT_2C(256'h1111110F0F11111111111111111111110F0F0F0F0F0F0F111111111111111111),
    .INIT_2D(256'hAD0F0F0F0F0F0F0F11111111111111111111111111111111110F0F1111111111),
    .INIT_2E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2F(256'hB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_30(256'h11111111110F111111111111111111111111111111111111110F0F0F0F0F0F89),
    .INIT_31(256'h11111111111111111111111111111111111111110F0F111111111111110F0F11),
    .INIT_32(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_33(256'h1111111111111111111111111111111111110F0F111111111111113C0FFB1111),
    .INIT_34(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F11),
    .INIT_35(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_36(256'h1111FD111111111111111111111111111111110F0F0F0F0F0FB40F0F0F0F0F0F),
    .INIT_37(256'h111111111111111111111111110F0F1111111111110F0F1111111111110F1111),
    .INIT_38(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_39(256'h11111111171111111111110F0F111111111111110F0F11111111111111111111),
    .INIT_3A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F8F0F0F0F0F0F0F1111111111111111111111),
    .INIT_3B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3C(256'h11111111111111111111110F0F0F0F0F0F89B40F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3D(256'h11111111110F0F11111111110F0F0F1111111111110F111111113C0F11111111),
    .INIT_3E(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_3F(256'h1111110F0F111111111111113C0F111111111111111111111111111111111111),
    .INIT_40(256'h0F0F0F0F0F89890F0F0F0F0F0F1111111111111111111111111111FE0F111111),
    .INIT_41(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_42(256'h11111111110F0F0F0F0F0FB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_43(256'h0F0F0F0F0F11111111111111110F11EE0F0F0F0F0F0F11111111111111111111),
    .INIT_44(256'h1111111111111111111111111111111111111111111111111111111111110F0F),
    .INIT_45(256'h111111110F0F1111111111111111111111111111111111111111111111111111),
    .INIT_46(256'h0F0F0F111111111111111111111111111111110F0F1111111111110F0F111111),
    .INIT_47(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F),
    .INIT_48(256'h0F0F0F89B40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_49(256'h11111111110FFB0F0F0F111111111111111111111111111111111111110F0F0F),
    .INIT_4A(256'h111111111111111111111111111111111111111111111111110F0F1111111111),
    .INIT_4B(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_4C(256'h11111111111111111111110F0F111111111111110F0F1111111111110F111111),
    .INIT_4D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F898F0F0F0F0F0F0F1111111111),
    .INIT_4E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4F(256'h11111111111111111111111111111111111111111111110F0F0F0F0FFD0F0F0F),
    .INIT_50(256'h11111111111111111111111111111111111111111111111111111111110F0F11),
    .INIT_51(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_52(256'h1111110F0F0F111111111111110F0F1111110F0F111111111111111111111111),
    .INIT_53(256'h0F0F0F0F0F0F0F0F0F0FB40F0F0F0F0F0F111111111111111111111111111111),
    .INIT_54(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_55(256'h1111111111111111111111111111110F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F),
    .INIT_56(256'h1111111111111111111111111111111111111111110F0F111111111111111111),
    .INIT_57(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_58(256'h1111111111110F0F0F0F0F111111111111111111111111111111111111111111),
    .INIT_59(256'h0FFF890F0F0F0F0F0F1111111111111111111111111111111111110F110F0F11),
    .INIT_5A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5B(256'h1111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5C(256'h1111111111111111111111670F0F111111111111111111111111111111111111),
    .INIT_5D(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_5E(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_5F(256'h111111111111111111111111111111111111110F11110F921111111111111111),
    .INIT_60(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB30F0F0F0F0F11),
    .INIT_61(256'h110F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_62(256'h110F0F0F0F111111111111111111111111111111111111111111111111111111),
    .INIT_63(256'h0F0F0F0FEE111111111111111111111111111111111111111111111111111111),
    .INIT_64(256'h11111111111111111111111111111111111111EE0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_65(256'h111111110F0F11111111EE0F1111110F11111111111111111111111111111111),
    .INIT_66(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F0F111111111111111111),
    .INIT_67(256'h890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_68(256'h1111111111111111111111111111111111111111111111111111170F0F0F0F0F),
    .INIT_69(256'h0F0F0F1111111111111111111111111111111111111111111111110F0F111111),
    .INIT_6A(256'h11111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6B(256'h11110F0F1111110F0F1111111111111111111111111111111111111111111111),
    .INIT_6C(256'h0F0F0F0F0F0F0F890F0F0F0F0F111111111111111111111111111111110F1111),
    .INIT_6D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6E(256'h111111111111171111111111111111111111110F0F0F0F0FFF0F0F0F0F0F0F0F),
    .INIT_6F(256'h11111111111111111111111111111111111111113C1111111111111111111111),
    .INIT_70(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F6D1111),
    .INIT_71(256'h0F0F0F11111111111111111111111111111111111111111111110F0F0F0F0F0F),
    .INIT_72(256'h0F0F0F0F0F111111111111111111111111111111110F0F1111110F0F11111111),
    .INIT_73(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFE0F),
    .INIT_74(256'h1111111111111111111111110F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_75(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_76(256'hFDB38F89AD89B4FD0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111111111),
    .INIT_77(256'h11111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_78(256'h11111111111111111111111111110F0F11110F1711111111110F111111111111),
    .INIT_79(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F11111111),
    .INIT_7A(256'h11111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7B(256'h111111111111111111111111111111111111111111110F0F1111111111111111),
    .INIT_7C(256'h8989898989FD0F0F0F0F0F0F0F0F0F0F0F0F0FEE111111111111111111111111),
    .INIT_7D(256'h11111111670F0F0F0F0F0F0F0F0F0F0F0F0FBB8F8F898989AD89898989898F8F),
    .INIT_7E(256'h111111111111110F0F110F11111111110F111111111111111111111111111111),
    .INIT_7F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F11111111111111111111111143),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_01(256'h111111111111111111111111110F0F0F11111111111111111111111111110F0F),
    .INIT_02(256'h89B389B50F0F0F0F0F0F0F0F0F0F0F1111111111111111111111111111111111),
    .INIT_03(256'h0F0F0F0FB4898989E00F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FBB),
    .INIT_04(256'h0F110F111111111111111111111111111111111111111111110F0F0F0F0F0F0F),
    .INIT_05(256'h0F0F0F0F890F0F0F0F0F1111111111111111111111110F0F1111111111111111),
    .INIT_06(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_07(256'h111111110F0F0FFE11111111111111111111111111110F0F0F0F0F89890F0F0F),
    .INIT_08(256'h0F0F0F0F0F0F0F0F111111111111111111111111111111111111111111111111),
    .INIT_09(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8FB3890F0F),
    .INIT_0A(256'h111111111111111111111111111111170F0F0F0F0F0F0F0F0F0F8989890F0F0F),
    .INIT_0B(256'h0F1711111111111111111111110F0F0F1111111111111111110F0F1111111111),
    .INIT_0C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F),
    .INIT_0D(256'h1111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0E(256'h0F0F0F1111111111111111111111111111111111111111111111110F0F0F0F11),
    .INIT_0F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8989B40F0F0F0F0F0F),
    .INIT_10(256'h11111111110F0F0F0F0F0F0F0F0F89AD890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_11(256'h11111111110F0F0F0F1111111111111111110F11111111111111111111111111),
    .INIT_12(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F11111111111111),
    .INIT_13(256'h11111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_14(256'h1111111111111111111111111111111111110F0F0F0F0F111111111111111111),
    .INIT_15(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F11111111),
    .INIT_16(256'h0F0F0F0FFF89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_17(256'h0FFD11111111111111119211111111111111111111111111111111110F0F0F0F),
    .INIT_18(256'h0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F1111111111111111111111110F0F110F),
    .INIT_19(256'h110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1A(256'h1111111111110F110F0F0F11110F111111111111111111111111111111111111),
    .INIT_1B(256'h0F0F0F0F0F0F0F0F0F0F0F0FB389BB0F0F0F0F0F0F0F11111111111111111111),
    .INIT_1C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1D(256'h1111111111111111111111111111111111110F0F0F0F0F0F0FB389B40F0F0F0F),
    .INIT_1E(256'h0FB30F0F0F0F0F1111111111111111111111111111111111110F0F1111111111),
    .INIT_1F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_20(256'h0F0F1111110F111111111111111111111111111111111111110F0F0F0F0F890F),
    .INIT_21(256'h0F0F0F0F0FB48FBB0F0F0F0F0F0F0F111111111111111111111111111111110F),
    .INIT_22(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_23(256'h1111111111111111110F0F0F0F0F0F0FB389FD0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_24(256'h11111111111111111111111111111111110F0F0F111111111111111111111111),
    .INIT_25(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FBB0F0F0F0F0F11),
    .INIT_26(256'h11FB0F0F0F0F0F11111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F),
    .INIT_27(256'h89890F0F0F0F0F0F0F1111111111111111111111111111110F111111110F1111),
    .INIT_28(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_29(256'h0F0F0F0F0F0FADBB0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2A(256'h110F1111111111111111110F0F11110F1111111111111111111111111111110F),
    .INIT_2B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F11111111111111111111),
    .INIT_2C(256'h11111111111111111111110F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2D(256'h0F0F1111111111111111111111111111111111110F0F110F0F0F0F0F0F0F0F11),
    .INIT_2E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F),
    .INIT_2F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_30(256'h1111110F0F0F0F0F11111111111111111111111111110F0F0F0F0F0F0F8FB30F),
    .INIT_31(256'h0F0F0F0F0F0F0F89B30F0F0F0F1111111111111111111111110F111111111111),
    .INIT_32(256'h1111110F0F0F0F0FB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_33(256'h11111111111111111111110F0F0F0F0F0F11110F0F1111111111111111111111),
    .INIT_34(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB4890F0F0F0F0F0FFB11111111),
    .INIT_35(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_36(256'h1111111111111111111111110F0F0F0F0F0F0F89FE0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_37(256'h0F0F0F0F0F11111111111111111111110F0F43111111111111111111110F0F11),
    .INIT_38(256'h0FB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_39(256'h1111110F0F0F17111111110F111111111111111111111111111111110F0F0F0F),
    .INIT_3A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F89FE0F0F0F0F0F0F1111111111111111111111),
    .INIT_3B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3C(256'h1111110F0F0F0F0F0FB3890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3D(256'h111111111111110F170F0F1111111111111111110F0F11111111111111111111),
    .INIT_3E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F11111111),
    .INIT_3F(256'h110F0F0F11111111111111111111111111111111110F0F0F0F89890F0F0F0F0F),
    .INIT_40(256'h0F0F0F0F0F0F0F890F0F0F0F0F0F111111111111111111111111111111111111),
    .INIT_41(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_42(256'h890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_43(256'h110F0F11111111111111111111111111111111111111111111110F0F0F0F0FFF),
    .INIT_44(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F11111111111111111111111111),
    .INIT_45(256'h111111111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_46(256'h890F0F0F0F0F0F11111111111111111111111111111111110F0F0F1111111111),
    .INIT_47(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89),
    .INIT_48(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_49(256'h11111111111111111111111111111111110F0F0F0F0F0F89B30F0F0F0F0F0F0F),
    .INIT_4A(256'h0F0F0F0F0F890F0F0F0F0F1111111111111111111111111111110F0F11111111),
    .INIT_4B(256'h1111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4C(256'h3C1111111111111111111111110F0F0F0F111111111111111111111111111111),
    .INIT_4D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FAD890F0F0F0F0F),
    .INIT_4E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4F(256'h111111111111110F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_50(256'h0F0F11111111111111111111111111111111110F0F1111111111111111111111),
    .INIT_51(256'h0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB40F0F0F),
    .INIT_52(256'h1111111111110F0F111111111111111111111111111111111111111111110F0F),
    .INIT_53(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F0F11111111111111),
    .INIT_54(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_55(256'h0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_56(256'h11111111111111111111110F0F1111111111111111111111111111111111110F),
    .INIT_57(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0FFD111111111111),
    .INIT_58(256'h11111111111111111111111111111111111111111111110F0F0F0FB3B30F0F0F),
    .INIT_59(256'h0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0FEE1111111111111111111111110F),
    .INIT_5A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5C(256'h111111110F0F1111111111111111111111111111110F0F0F0F0F0F89B40F0F0F),
    .INIT_5D(256'h0F0F0F0F0F0F0F0F0F0F0F89FF0F0F0F0F11111111111111111111FD0F3C1111),
    .INIT_5E(256'h1111111111111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5F(256'h0F0F0F0FB4FE0F0F0F0F0F1111111111111111111111110F1111111111111111),
    .INIT_60(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_61(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_62(256'h111111111111111111111111110F0F0F0F0FB3FF0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_63(256'h0F0F0F890F0F0F0F0F111111111111111111110F0F0F0F0F0F111111110F0F11),
    .INIT_64(256'h11111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_65(256'h0F0F0F0F11111111111111111111111111111111111111113C0F0F0F0F111111),
    .INIT_66(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FBB890F),
    .INIT_67(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_68(256'h111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_69(256'h111111111111111111111111111111110F0F0F0F0F0F0F111111111111111111),
    .INIT_6A(256'hFE0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB40F0F0F0F0F),
    .INIT_6B(256'h1111111111111111110F11180F0F0F0F0F0F0F0FEE1111111111111111111111),
    .INIT_6C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FBBFE0F0F0F0F0F111111),
    .INIT_6D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6E(256'hB30F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6F(256'h1111111111111111111111111111111111111111111111111111110F0F0F0F0F),
    .INIT_70(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F171111111111111111),
    .INIT_71(256'h113C0F0F0F0F0F111111110F111111111111111111111111110F0F0F0F89890F),
    .INIT_72(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB3890F0F0F0F0F11111111111111111111),
    .INIT_73(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_74(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_75(256'h1111111111111111111111111111111111110F0F0F0F0F8FFE0F0F0F0F0F0F0F),
    .INIT_76(256'h0F0F0F0F0F0F0F0F0F89B40F0F0F0F111111111111111111110F111111111111),
    .INIT_77(256'h11110F0F111111111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F),
    .INIT_78(256'h0F0F0F0F0F0F0F0F890F0F0F0F0F4311111111111111111111110F1111110F11),
    .INIT_79(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7B(256'h1111111111111111110F0F0F0F0F0FB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7C(256'h0F890F0F0F0F0F1111111111111111110F0F1111111111111111111111111111),
    .INIT_7D(256'h111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7E(256'h0F89890F0F0F0F1111111111111111111111111111110F0F170F0F1111111111),
    .INIT_7F(256'h110F0F11110F0F0F0F110F0F11111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h11111111110F0F171111111111110F0F11110F0F0F1111110F0F11110F0F0F11),
    .INIT_01(256'h110F0F0F0F898F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111110F0F),
    .INIT_02(256'h1111111111111111EE0F11111111111111111111111111111111111111111111),
    .INIT_03(256'h11110F0F0F0F0FFE0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111),
    .INIT_04(256'h1111111111111111111111111111110F0F0F1111111111111111111111111111),
    .INIT_05(256'h0F11110F0F0F0F11110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F),
    .INIT_06(256'h110F0F0F11110F0F11110F0F111111110F0F11110F0F0F11110F0F11110F0F0F),
    .INIT_07(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F11110F0F0F11110F0F0F0F0F11110F0F11),
    .INIT_08(256'h0F0F0F1111111111111111111111111111111111111111110F0F0F0F0F890F0F),
    .INIT_09(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F11111111111111111111),
    .INIT_0A(256'h111111111111110F0F1111111111111111111111111111111111110F0F0F0F89),
    .INIT_0B(256'h110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F11111111111111),
    .INIT_0C(256'h11110F11110F11110F0F11110F0F0F11110F0F11110F0F0F0F11110F0F111111),
    .INIT_0D(256'h0F0F0F0F0F0F0F11110F0F0F11110F0F0F111111110F0F110F0F0F0F11110F0F),
    .INIT_0E(256'h1111111111111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0F(256'h0F0F0F0F0F0F0F0F890F0F0F0F111111111111111111110F11170F0F0F0F1111),
    .INIT_10(256'h111111111111111111111111111111111111110F0F0F0F898F0F0F0F0F0F0F0F),
    .INIT_11(256'h0F0F0F0F0F0F0F0F0F0F0FADAD0F0F0F0F11111111111111111111111111110F),
    .INIT_12(256'h0F0F11110F0F0F11110F0F11110F0F0F0F11110F0F0F0F11110F0F0F0F0F0F0F),
    .INIT_13(256'h110F0F0F11110F0F0F0F0F11110F0F110F0F0F0F11110F0F11111111110F1111),
    .INIT_14(256'h111111111111110F0F0F0F89B30F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F11),
    .INIT_15(256'h8F0F0F0F0F111111111111111111110F1111110F0F0F0F111111111111111111),
    .INIT_16(256'h11111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F89),
    .INIT_17(256'h0F0F0F0F0F0F0F0F0F0F11111111111111111111110F0F0F1111111111111111),
    .INIT_18(256'h110F0F11110F0F0F0F11F70F0F0F0F11110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_19(256'h0F0F0F11110F0F11110F0F0F11110F0F1111110F0F0F11110F0F11110F0F0F11),
    .INIT_1A(256'h0F0FB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F110F0F0F11110F0F),
    .INIT_1B(256'h1111111111110F111111110F0F110F0F0F0F0F11111111111111111111110F0F),
    .INIT_1C(256'h111111110F0F0F0FB30F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0FFB111111),
    .INIT_1D(256'h0F0F0F111111111111111111110F0F111111111111111111110F111111111111),
    .INIT_1E(256'h11110F0F0F0F0F11110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FAD0F0F),
    .INIT_1F(256'h1111111111110F0F1111110F0F0F11110F0F0F11111111110F0F0F0F11111111),
    .INIT_20(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1711111111110F0F11111111110F0F0F),
    .INIT_21(256'h1111110F1111110F0F0F11111111111111111111110F0F0F0F0F8F0F0F0F0F0F),
    .INIT_22(256'h0FFE0F0F0F0F0F0F0F0F0F0F0F0F0FBB0F0F0F0F111111111111111111110F11),
    .INIT_23(256'h1111111111116E111111111111111111110F111111111111111111110F0F0F0F),
    .INIT_24(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F1111111111),
    .INIT_25(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_26(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_27(256'h0F1111111111111111111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_28(256'h0F0F0F0F0F0F890F0F0F0F1711111111111111111111111111110F0F11111111),
    .INIT_29(256'h11111111111111FB0F0FFD111111111111111111110F0F0F0FB30F0F0F0F0F0F),
    .INIT_2A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0FFE111111111111111111111111),
    .INIT_2B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2D(256'h111111110F0F0F0F0FBB0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2E(256'h0F0F0F111111111111111111111111111111110F111111110F11111111111111),
    .INIT_2F(256'h0F3C0F111111111111111111110F0F0F0FADFE0F0F0F0F0F0F0F0F0F0F0F890F),
    .INIT_30(256'h0F0F0F0F0F0F0F890F0F0F0F0F11111111111111111111FD111111EE0F0F0F0F),
    .INIT_31(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_32(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_33(256'hB30F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_34(256'h111111111111111111111111111111110F111111111111111111110F0F0F0F0F),
    .INIT_35(256'h11111111110F0F0F0FAD890F0F0F0F0F0F0F0F0F0F898F0F0F0F0F1111111111),
    .INIT_36(256'hAD0F0F0F0F111111111111111111110F11170F0F0F0F0F111111111111111111),
    .INIT_37(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB3),
    .INIT_38(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_39(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3A(256'h111111111111110F0F111111111111111111110F0F0F0F898F0F0F0F0F0F0F0F),
    .INIT_3B(256'h0F0FAD0F0F0F0F0F0F0F0F0F0F89FE0F0F0F0F11111111111111111111111111),
    .INIT_3C(256'h11111111111111110F0F0F11110F111111111111111111111111111111FB0F0F),
    .INIT_3D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FAD0F0F0F0F111111),
    .INIT_3E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_40(256'h11111111111111111111110F0F0F0FB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_41(256'h0F0F0F0F0F890F0F0F0F111111111111111111110F1111111111111111111117),
    .INIT_42(256'h0F0F111111110F1111111111111111111111111111110F0F0F0F890F0F0F0F0F),
    .INIT_43(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F11111111111111111111),
    .INIT_44(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_45(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_46(256'h11110F0F0F0FB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_47(256'h0F0F111111111111111111110F11111111111111111111111111111111111111),
    .INIT_48(256'h111111113C1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB40F0F),
    .INIT_49(256'h0F0F0F0F0F0F0F0F0F890F0F0F0F0F1111111111111111111111111111110F11),
    .INIT_4A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4D(256'h1111110F0F0F0F1111111111111111111111111111111111110F0F0F0FB4890F),
    .INIT_4E(256'h111111111111110F0F0F0FBB0F0F0F0F0F0F0F0F0F0F0F0F0F3C111111111111),
    .INIT_4F(256'h0F89890F0F0F0F1111111111111111111111111111110F11111111110F111111),
    .INIT_50(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_51(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_52(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_53(256'h0F11111111110F111111111111111111110F0F0F0F89BB0F0F0F0F0F0F0F0F0F),
    .INIT_54(256'h0F0F0F890F0F0F0F0F0F0F0F890F0F0F0F111111111111111111110F0F0F0F0F),
    .INIT_55(256'h11111111111111111111111111110F0F1111EE0F0F111111111111111111110F),
    .INIT_56(256'hE0FDFDFDFDFDFDE0FD0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8F0F0F0F0F11),
    .INIT_57(256'hFDE0FDFDFDFDFDFDFDE0FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_58(256'hFDE0E0FDE0FDFDFDFDFDFDE0FDFDE0FDFDFDFDFDFDE0FDFDFDFDFDFDFDE0FDFD),
    .INIT_59(256'h1111111111111111110F0F0F0F8F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFEFDFD),
    .INIT_5A(256'h0F0F0F0F890F0F0F0F111111111111111111110F1111110F0F0F0F0F0F0F1111),
    .INIT_5B(256'h111111111111110F110F0F0F0F0F1111111111111111110F0F0F0F890F0F0F0F),
    .INIT_5C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111),
    .INIT_5D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5F(256'h430F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_60(256'h0F111111111111111111110F1111111143430F0F0F0F11111111111111111111),
    .INIT_61(256'h0F0F1111110F1111111111111111110F0F0F0F89890F0F0F0F0F0FFF890F0F0F),
    .INIT_62(256'h0F0F0F0F0F0F0F0F0F0F0F8F0F0F0F0F111111111111111111110F11110F0F0F),
    .INIT_63(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_64(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_65(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_66(256'h1111EE0F111111110F1111111111111111111111111111110F0F0F0F890F0F0F),
    .INIT_67(256'h111111111111110F0F0F0F0F890F0F0F0F0F0F89FE0F0F0F0F11111111111111),
    .INIT_68(256'h0F0F0F89FF0F0F0FEE1111111111111111113C0F0F0F0F0F17111111110F1111),
    .INIT_69(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6C(256'h0F11111111111111111111111111110F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6D(256'h0F0F0F0F890F0F0F0F0F0FAD0F0F0F0F0F111111111111111111110F1111110F),
    .INIT_6E(256'h0F111111111111111111110F0F11111111111111111111111111111111111111),
    .INIT_6F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FAD0F0F0F),
    .INIT_70(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_71(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_72(256'h111111111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_73(256'h0F0F0F890F0F0F0F11111111111111111111110F0F0F0F110F0F171111111111),
    .INIT_74(256'h1111110F11111111111111111111111111111111111111110F0F0F0F890F0F0F),
    .INIT_75(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F11111111111111),
    .INIT_76(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_77(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_78(256'h0F0F0FAD0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_79(256'h1111111111111111111111430F0F1111110F0F1111111111111111111111110F),
    .INIT_7A(256'h111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F890F0F0F0F),
    .INIT_7B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111110F11111111),
    .INIT_7C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7F(256'h111111111111111111110F1111111111111111111111110F0F0F0F0F0F0F0F0F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h1111111111111111920F0F0F0F0F0F0F0F0F0F0F0F0F0FFD1111111111111111),
    .INIT_01(256'h0F0F0F0F0FBB0F0F0F1111111111111111111111111111111111111111111111),
    .INIT_02(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_03(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_04(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_05(256'h11110F4311111111111111111111FB0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_06(256'h110F0F0F0FBB0F0F0F0F0F0F0F0F0F1111111111111111111111111111111111),
    .INIT_07(256'h0F0F111111111111111111111111111143111111116D11111111111111111111),
    .INIT_08(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F),
    .INIT_09(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0B(256'h1111111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0C(256'h0F0F890F0F0F0F11111111111111111111111111111111111111110F11111111),
    .INIT_0D(256'h111111111111110F0F111111EE0F0F111111111111111111110F0F0F0F890F0F),
    .INIT_0E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F111111111111),
    .INIT_0F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_10(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_11(256'h0FB5AD0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_12(256'h111111111111111111111111111111111111110F111111111111111111110F0F),
    .INIT_13(256'h0F11111111110F111111111111111111110F0F0F0F890F0F0F0F890F0F0F0F11),
    .INIT_14(256'h0F0F0F0F0F0F0F0F0F0F0F0F0FB3890F0F0F0F111111111111111111110F0F0F),
    .INIT_15(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_16(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_17(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_18(256'h1111171111111111111111111111111111111111110F0F0F0F890F0F0F0F0F0F),
    .INIT_19(256'h1111111111111111110F0F0F0F890F0F0F0F890F0F0F0F111111111111111111),
    .INIT_1A(256'h0F0F0F0F0F0F890F0F0F0F111111111111111111110F11111111111111110F0F),
    .INIT_1B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1E(256'h0F0FFE111111111111111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1F(256'h110F0F0F0F890F0F0F0F890F0F0F0F1111111111111111110F0F0F0F0F111111),
    .INIT_20(256'h0F0F0F1111111111111111110F111111111111111111110F1111111111111111),
    .INIT_21(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F),
    .INIT_22(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_23(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_24(256'h11111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_25(256'h0FB4890F0F0F0F1111111111111111110F11110F0F11111111110F1111111111),
    .INIT_26(256'h111111110F111111111111111111110F1111111111111111110F0F0F0F89BB0F),
    .INIT_27(256'h111111111111111111111111110F0F0F0F0F0F0F0F0F890F0F0F0F1111111111),
    .INIT_28(256'h0F0F111111111111111111111111110F0F0F0F0F0F0FFD111111111111111111),
    .INIT_29(256'h111111111111111111110F0F3C11111111111111111111110F0F0F0F0F0F0F0F),
    .INIT_2A(256'h0FB50F0F0F0F0F0F0F171111111111111111111111113C0F0F0F0F0F0FFB1111),
    .INIT_2B(256'h11111111111111110F1111110F0F111111110F111111111111111111110F0F0F),
    .INIT_2C(256'h111111111111110F1111111111111111110F0F0F0F89890F0F89890F0F0F0F11),
    .INIT_2D(256'h1111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111111111110F111111),
    .INIT_2E(256'h11111111110F0F0F0F0F0F111111111111111111111111111111111111111111),
    .INIT_2F(256'h110F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F0F1111111111),
    .INIT_30(256'h0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F111111111111111111),
    .INIT_31(256'h0F111111110F0F1111110F111111111111111111110F0F0F0F0F0F0F0F0F0F0F),
    .INIT_32(256'h1111111111111111110F0F0F0FB5890F0F89FD0F0F0F0F11111111111111113C),
    .INIT_33(256'h0F0F0F0F0F0F0F0F0F0F0F1111111111111111110F1111111111111111110F0F),
    .INIT_34(256'h0F0F111111111111111111111111111111111111111111111111110F0F0F0F0F),
    .INIT_35(256'h11111111111111110F0F0F0F0F0F0F0F0F0FFD1111111111111111110F0F0F0F),
    .INIT_36(256'h11111111110F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F11),
    .INIT_37(256'h11110F111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111),
    .INIT_38(256'h110F0F0F0F0F890F0F890F0F0F0F0F1111111111111111110F111111110F0F11),
    .INIT_39(256'h0F0F0F111111111111111111110F0F1111111111110F0F111111111111111111),
    .INIT_3A(256'h111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0FB4),
    .INIT_3B(256'h110F0F0F0F0F0F0F0F171111111111111111110F0F0F0F0F0F11111111111111),
    .INIT_3C(256'h0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F111111111111111111),
    .INIT_3D(256'h11111111170F0F0FAD0F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F),
    .INIT_3E(256'h0F8F0F0F0F0FEE1111111111111111111111111111920F0F0F0F111111111111),
    .INIT_3F(256'h11111111113C0F0F111111110F0FFB111111111111111111116D0F0F0F0F890F),
    .INIT_40(256'h11111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F890F0F0F1111111111),
    .INIT_41(256'h0F111111111111111111110F0F0F0F0F0F111111111111111111111111111111),
    .INIT_42(256'h1111111111111111110F0F0F0F0F0F0F1111111111111111110F0F0F0F0F0F0F),
    .INIT_43(256'h890F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F11),
    .INIT_44(256'h1111111111111111111111111111110F0F1111111111111111111111FB0F0F0F),
    .INIT_45(256'h0F0F0F0F0F111111111111111111111111110F0F0F0F890F0F890F0F0F0F1111),
    .INIT_46(256'h1111110F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F11111111111111111111110F),
    .INIT_47(256'h11110F0F0F0F0F0F11111111111111111111110F0F0F0F0F0F0F111111111111),
    .INIT_48(256'h110F0F0F0F0F0F0F0F1111111111111111110F0F0F0F0F0F4311111111111111),
    .INIT_49(256'h0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F111111111111111111),
    .INIT_4A(256'h11111111111111111111111111111111111111110F0F0F0F890F0F0F0F0F0F0F),
    .INIT_4B(256'h111111111111111111110F0F0F0F890F0F890F0F0F0F11111111111111111111),
    .INIT_4C(256'h0F0F0F0F0F0F0F890F0F0F0F111111111111111111111111110F0F1111111111),
    .INIT_4D(256'h111111111111111111110F0F0F0F0F0F0F0F1111111111111111110F0F0F0F0F),
    .INIT_4E(256'h0F111111111111111111110F0F0F0F0F1111111111111111110F0F0F0F0F0F0F),
    .INIT_4F(256'h11111111110F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F),
    .INIT_50(256'h1111111111111111111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F1111111111),
    .INIT_51(256'h11110F0F0F0F890F0F890F0F0F0F111111111111111111111111111111111111),
    .INIT_52(256'h0F0F0F0F11111111111111111111111111111111111111111111111111111111),
    .INIT_53(256'h110F0F0F0F0F0F0F0F0F1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F89),
    .INIT_54(256'h1111110F0F0F0F111111111111111111110F0F0F0F0F0F0F1111111111111111),
    .INIT_55(256'h0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F111111111111),
    .INIT_56(256'h111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F),
    .INIT_57(256'h0F890F0F0F0F1111111111111111110F11111111111111111111111111111111),
    .INIT_58(256'h11111111111111111111111111111111111111111111111111110F0F0F0F890F),
    .INIT_59(256'h0F0F1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F11111111),
    .INIT_5A(256'h11111111111111110F0F0F0F0F0F0F0F1111111111111111110F0F0F0F0F0F0F),
    .INIT_5B(256'h1111111111111111110F0F0F0F0F0F0F0F0F0F1111111111111111110F0F0F11),
    .INIT_5C(256'hAD0F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F11),
    .INIT_5D(256'h11111111111111921111111111111111110F111111111111111111110F0F0F0F),
    .INIT_5E(256'h11111111111111110F1111111111111111110F0F0F0F890F0F890F0F0F0F1111),
    .INIT_5F(256'h1111110F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F1111111111111111110F1111),
    .INIT_60(256'h0F0F0F0F0F0F0F0F0F1111111111111111110F0F0F0F0F0F0F0F111111111111),
    .INIT_61(256'h110F0F0F0F0F0F0F0F0F0F11111111111111111111EE1111111111111111110F),
    .INIT_62(256'h0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F111111111111111111),
    .INIT_63(256'h0F0F0F0F0F0F0FF70F0F111111111111111111110F0F0FBBAD0F0F0F0F0F0F0F),
    .INIT_64(256'h0F1111111111111111110F0F0F0F890F0F890F0F0F0F1111111111111111110F),
    .INIT_65(256'h0F0F0F0F0F0F0F890F0F0F0F1111111111111111110F11111111111111111111),
    .INIT_66(256'h0F111111111111111111920F0F0F0F0F0F0F1111111111111111110F0F0F0F0F),
    .INIT_67(256'h0F0F0F0F111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F),
    .INIT_68(256'h11111111110F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F),
    .INIT_69(256'h0F0F111111111111111111110F0F0FB4890F0F0F0F0F0F0F0F0F0F1111111111),
    .INIT_6A(256'h11110F0F0F0F890F0F890F0F0F0F1111111111111111110F0F0F0F0F0F0F0F0F),
    .INIT_6B(256'h0F0F0F0F1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F11111111111111),
    .INIT_6C(256'h111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F89),
    .INIT_6D(256'h11111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F111111111111),
    .INIT_6E(256'h0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F111111),
    .INIT_6F(256'h111111110F0F0FB4890F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F),
    .INIT_70(256'h0F890F0F0F0F1111111111111111110F1111111111111111110F111111111111),
    .INIT_71(256'h11111111110F0F0F0F0F0F0F0F0F0F0FF71111111111111111110F0F0F0F890F),
    .INIT_72(256'h11111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F11111111),
    .INIT_73(256'h11111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F11111111111111111111111111),
    .INIT_74(256'h1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F1111111111111111111111),
    .INIT_75(256'h890F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F11),
    .INIT_76(256'h111111111111110F111111111111111111EE111111111111111111110F0F0FB4),
    .INIT_77(256'h11111111111111920F1111111111111111110F0F0F0F890F0F890F0F0F0F1111),
    .INIT_78(256'h1111110F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F1111111111111111110F1111),
    .INIT_79(256'h0F0F0F0F0F0F0F0F0F0F0F111111111111111111111111111111111111111111),
    .INIT_7A(256'h110F0F0F0F0F0F0F0F0F0F0F0F0F1111111111111111111111111111110F0F0F),
    .INIT_7B(256'h0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F111111111111111111),
    .INIT_7C(256'h11111111111111111111111111111111111111110F0F0FBB890F0F0F0F0F0F0F),
    .INIT_7D(256'h0F1111111111111111110F0F0F0F890F0FB30F0F0F0F11111111111111111111),
    .INIT_7E(256'h0F0F0F0F0F0F0F890F0F0F0F1111111111111111110F11111111111111111111),
    .INIT_7F(256'h0F11111111111111111111111111111111111111111111111111110F0F0F0F0F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0F0F0F0F0F0F0F111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_01(256'h11111111110F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F),
    .INIT_02(256'h1111111111111111111111110F0F0FBB890F0F0F0F0F0F0F0F0F0F1111111111),
    .INIT_03(256'h11110F0F0F0F890F0F890F0F0F0F111111111111111111111111111111111111),
    .INIT_04(256'h0F0F0F0F11111111111111111111111111111111111111111111111111111111),
    .INIT_05(256'h111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F89),
    .INIT_06(256'h11111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0FEE11111111111111),
    .INIT_07(256'h0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F11),
    .INIT_08(256'h111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F),
    .INIT_09(256'h0F890F0F0F0F1111111111111111111111111111111111111111111111111111),
    .INIT_0A(256'h11111111110F11111111111111111111111111111111111111110F0F0F0F890F),
    .INIT_0B(256'h0F0F1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F11111111),
    .INIT_0C(256'h1111110F0F0F0F0F0F0F0F0F0F0F0F0F11111111111111111111110F0F0F0F0F),
    .INIT_0D(256'h1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111111111),
    .INIT_0E(256'h890F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F11),
    .INIT_0F(256'h111111111111111111111111111111111111111111111111111111110F0F0F0F),
    .INIT_10(256'h1111111111111111111111111111111111110F0F0F0F890F0F890F0F0F0F1111),
    .INIT_11(256'h1111110F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F1111111111111111110F1111),
    .INIT_12(256'h0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F111111111111),
    .INIT_13(256'h110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111113C0F0F0F0F0F),
    .INIT_14(256'h0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F111111111111111111),
    .INIT_15(256'h0F111111111111111111111111111111111111110F0F0F0F890F0F0F0F0F0F0F),
    .INIT_16(256'h111111111111111111110F0F0F0F890F0F890F0F0F0F1111111111111111110F),
    .INIT_17(256'h0F0F0F0F0F0F0F890F0F0F0F1111111111111111110F0F111111111111111111),
    .INIT_18(256'h1111111111111111110F0F0F0F0F0F0F0F0F1111111111111111110F0F0F0F0F),
    .INIT_19(256'h0F0F0F0F0F0F0F0F111111111111111111113C0F0F0F0F0F0F0F0F0F0F0F0F11),
    .INIT_1A(256'h11111111110F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F),
    .INIT_1B(256'h1111111111111111111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F1111111111),
    .INIT_1C(256'h11F70F0F0F0F890F0F890F0F0F0F1111111111111111110F0F11111111111111),
    .INIT_1D(256'h0F0F0F11111111111111111111110F9211111111111111111111111111111111),
    .INIT_1E(256'h110F0F0F0F0F0F0F0F0F1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F89),
    .INIT_1F(256'h111111111111111111113C0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111),
    .INIT_20(256'h0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_21(256'h111111116E0F0F0F890F0F0F0F0F0F0F0F0F0F3C1111111111111111110F0F0F),
    .INIT_22(256'h0F890F0F0F0F1111111111111111113C0F1111111111111111110F1111111111),
    .INIT_23(256'h111111111111FD0F0F1111170F0FFD111111111111111111110F0F0F0F0FB30F),
    .INIT_24(256'h0F0F1111111111111111110F0F0F0F0F0F0F0F0F0F0F0FBB0F0F0F1111111111),
    .INIT_25(256'h11113C0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F),
    .INIT_26(256'h1111111111111111EE0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111111111),
    .INIT_27(256'h890F0F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F4311),
    .INIT_28(256'h11111111111111110F11111111111111110F0F111111111111111111110F0F0F),
    .INIT_29(256'h0F0F3C0F3C0F0F111111111111111111110F0F0F0FB4890F0F890F0F0F0F3C11),
    .INIT_2A(256'h1111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111111111111111110F),
    .INIT_2B(256'h0F0F0F0F0F0F0F11111111111111111111110F0F0F0F0F0F0F0F111111111111),
    .INIT_2C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111113C0F0F0F0F0F),
    .INIT_2D(256'h0F0F0F0F3C111111111111111111113C0F0F0F0F0F1111111111111111111111),
    .INIT_2E(256'h0F0F0F0F0F0F0F0F0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2F(256'h1111111111111111110F0F0F0F89890F0F890F0F0F0F0F111111111111111111),
    .INIT_30(256'h0F0F0F0F0F0F0F0F0F0F0F11111111111111111111111111FD0F0F111111FD11),
    .INIT_31(256'h11111111111111111111116E0F0F0F0F0F0F1111111111111111110F0F0F0F0F),
    .INIT_32(256'h0F0F0F0F0F0F0F0F111111111111111111113C0F0F0F0F0F0F0F0F0F0F0F0F11),
    .INIT_33(256'h11111111111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F),
    .INIT_34(256'h0F0F0F111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111),
    .INIT_35(256'h110F0F0F0F89FD0F0F89FD0F0F0F0F1111111111111111110F0F0F0F0F0F0F0F),
    .INIT_36(256'h0F0F0F11111111111111111111111111110F1111111111111111111111111111),
    .INIT_37(256'h111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F890F),
    .INIT_38(256'h111111111111111111113C0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111111111),
    .INIT_39(256'h1111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3A(256'h11111111110F0F0F0FB30F0F0F0F0F0F0F0F0F0F0F1111111111111111111111),
    .INIT_3B(256'h0F89890F0F0F0F1111111111111111110F111111111111111111111111111111),
    .INIT_3C(256'h11111111113C1111110F1111111111111111111111111111110F0F0F0F890F0F),
    .INIT_3D(256'h11111111111111111111110F0F0F0F0F0F0F0F0F0F0F890F0F0F0F1111111111),
    .INIT_3E(256'h11113C0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111111111111111),
    .INIT_3F(256'h1111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111111111),
    .INIT_40(256'h0FB30F0F0F0F0F0F0F0F0F0F0F0F111111111111111111111111111111111111),
    .INIT_41(256'h11111111111111110F11111111111111111111111111111111111111110F0F0F),
    .INIT_42(256'h0F0F0F0F0F6D18111111111111111111110F0F0F0F890F0F0FB4890F0F0F0F11),
    .INIT_43(256'h1111110F0F0F0F0F0F0F0F0F0F0F890F0F0F0F1111111111111111110F0F0F0F),
    .INIT_44(256'h0F0F0F0F0F0F0F0F0F1711111111111111111111111111111111111111111111),
    .INIT_45(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111113C0F0F0F0F0F),
    .INIT_46(256'h0F0F0F0F0F0F0F111111111111111111111111111111111111111111110F0F0F),
    .INIT_47(256'h0F11111111111111111111111111111111111111110F0F0F0F890F0F0F0F0F0F),
    .INIT_48(256'h1111111111111111110F0F0F0FAD0F0F0F0F890F0F0F0F111111111111111111),
    .INIT_49(256'h0F0F0F0F0F89890F0F0F0F1111111111111111110F6E0F0F0F0F0F0F0F0F0F11),
    .INIT_4A(256'h0F0F0F1111111111111111111111111111111111111111111111110F0F0F0F0F),
    .INIT_4B(256'h0F0F0F0F0F0F0F0F11111111111111111111EE0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4C(256'h43111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4D(256'h111111111111111111111111110F0F0F0F89BB0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4E(256'h110F0F0F0FB30F0F0F0F890F0F0F0F1111111111111111110F11111111111111),
    .INIT_4F(256'h0F0F11111111111111111111171111111111111111110F111111111111111111),
    .INIT_50(256'h1111111111111111111111111111111111111111110F0F0F0F0F0F0F0F890F0F),
    .INIT_51(256'h1111111111111111111111180F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111),
    .INIT_52(256'h1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F11),
    .INIT_53(256'h1111111111110F0F0FFF890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111),
    .INIT_54(256'h0F0F890F0F0F0F1111111111111111110F921711111111111111111111111111),
    .INIT_55(256'h111111111111111111111111111143111111111111111111110F0F0F0FBB0F0F),
    .INIT_56(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB30F0F0F0F111111111111),
    .INIT_57(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_58(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_59(256'h0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F3C111111111111170F0F),
    .INIT_5A(256'h1111111111111111111111111111111111111111111111111111111111110F0F),
    .INIT_5B(256'h111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F890F0F0F0F11),
    .INIT_5C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111111111111111),
    .INIT_5D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_60(256'h111111111111111111111111111111111111111111113C0F0F0FB40F0F0F0F0F),
    .INIT_61(256'h11111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F171111111111111111),
    .INIT_62(256'h0F0F0F0F0F0F0F0F0F1111111111111111111111111111111111111111111111),
    .INIT_63(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_64(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_65(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_66(256'h1111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_67(256'h0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F11111111111111111111111111111111),
    .INIT_68(256'h0F111111111111111111110F0F0F0F3C11111111111111111111111111111111),
    .INIT_69(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F),
    .INIT_6A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6C(256'h111111111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6D(256'h0F0F0F890F0F0F0F1111111111111111110F1111111111111111111111111111),
    .INIT_6E(256'h1111110F0F0F0F0F111111111111111111111111111111110F0F0F0F890F0F0F),
    .INIT_6F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFF890F0F0F0F11111111111111),
    .INIT_70(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_71(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_72(256'h0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_73(256'h111111111111111111430F11111111111111111111111111111111111111110F),
    .INIT_74(256'hEE0F0F1111111111111111111111110F0F0F0FFF890F0F0F0F0F0F890F0F0F0F),
    .INIT_75(256'h0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F111111111111111111110F111111110F),
    .INIT_76(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_77(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_78(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_79(256'h11110F0F0F0F0F1111670F0F0F11111111111111111111920F0F0FBBAD0F0F0F),
    .INIT_7A(256'h111111111111110F0F0F0F89890F0F0F0F0F0F890F0F0F0F0F11111111111111),
    .INIT_7B(256'h0F0F0FAD0F0F0F0F111111111111111111110F111111110F0F0F0F0F11111111),
    .INIT_7C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7F(256'h0F0F0F0F0F3C111111111111111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0F0F0F890F0F0F0F0F0F0F89BB0F0F0F0F1111111111111111110F0F0F0F0F0F),
    .INIT_01(256'h1111111111111111110F0F111111110F1111110F0F111111111111111111110F),
    .INIT_02(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFF0F0F0F0F11),
    .INIT_03(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_04(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_05(256'h1111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_06(256'h0F0F0F0F890F0F0F0F1111111111111111111111111111FB0F11111111EE1111),
    .INIT_07(256'h110F0F0F0F11110F111111110F111111111111111111110F0F0F0FAD0F0F0F0F),
    .INIT_08(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F111111111111111111),
    .INIT_09(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0B(256'h110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0C(256'h0F11111111111111111111111111110F11111111111111111111111111111111),
    .INIT_0D(256'h0F1111110F111111111111111111170F0F0F0FFE0F0F0F0F0F0F0F0FAD0F0F0F),
    .INIT_0E(256'h0F0F0F0F0F0F0F0F0F89AD0F0F0F0F11111111111111111111FEEE0F0F0F0F0F),
    .INIT_0F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_10(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_11(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_12(256'h1111111111110F1111111111111111111111111111111111110F0F0F0F8F890F),
    .INIT_13(256'h1111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F11111111111111),
    .INIT_14(256'h0F890F0F0F0F4311111111111111111111111111110F0F0F0F0F0F0F11111111),
    .INIT_15(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_16(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_17(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_18(256'h11111111111111111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F),
    .INIT_19(256'h0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0FFB11111111111111111111113C0F11),
    .INIT_1A(256'h11111111111111111111111111111111110F0FFD111111111111111111110F0F),
    .INIT_1B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFD1111),
    .INIT_1C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1E(256'h111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1F(256'h0F0F0F0F0F890F0F0F0F111111111111111111110F1111111111111111111111),
    .INIT_20(256'h1111111111111111111111111111111111111111110F0F0F0F0F890F0F0F0F0F),
    .INIT_21(256'h8F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F1111111111111111111111),
    .INIT_22(256'h898F89B3B38989898F8989898989B3B38989898F8F89898FB389898989898989),
    .INIT_23(256'h89898F8989898989898FB389898989B38F8989B3898989898F898F898F89898F),
    .INIT_24(256'h1111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F898989898989898F89898F),
    .INIT_25(256'h0F0F3C1111111111111111110F11111111111111111111111111111111111111),
    .INIT_26(256'h111111111111111111111111110F0F0F0F89B30F0F0F0F0F0F0F0F0F0F890F0F),
    .INIT_27(256'h0F0F0F0F0F0F0F89B30F0F0F0F11111111111111111111111111111111111111),
    .INIT_28(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_29(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2A(256'h890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2B(256'h1111111111111111111111111111111111111111111111111111110F0F0F0F89),
    .INIT_2C(256'h11111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F89BB0F0F0F0F1111111111),
    .INIT_2D(256'h0F0F0F0FF7111111111111111111111111111111111111111111111111111111),
    .INIT_2E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89),
    .INIT_2F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_30(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_31(256'h111111111111111111111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F),
    .INIT_32(256'h0F890F0F0F0F0F0F0F0F0F0F0FB48F0F0F0F0F11111111111111111111111111),
    .INIT_33(256'h11111111111111111111111111111111111111111111111111111111110F0F0F),
    .INIT_34(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB30F0F0F0F1711111111),
    .INIT_35(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_36(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_37(256'h1111111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_38(256'h0F0F0F0F0F0F890F0F0F0F111111111111111111111111111111111111111111),
    .INIT_39(256'h11111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0FBB890F0F0F0F11111111111111111111111111),
    .INIT_3B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3D(256'h11111111110F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3E(256'h0F0F0F4311111111111111111111111111111111111111111111111111111111),
    .INIT_3F(256'h1111111111111111111111170F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0FB40F),
    .INIT_40(256'h0F0F0F0F0F890F0F0F0F0F111111111111111111111111111111111111111111),
    .INIT_41(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_42(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_43(256'h0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_44(256'h11111111111111111111111111111111111111111111111111111111110F0F0F),
    .INIT_45(256'h1111110F0F0F0F0FB30F0F0F0F0F0F0F0F0F0F0F0F0F0FB40F0F0F0F11111111),
    .INIT_46(256'h0F0F111111111111111111111111111111111111111111111111111111111111),
    .INIT_47(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB40F0F0F),
    .INIT_48(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_49(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4A(256'h111111111111111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F),
    .INIT_4B(256'hB40F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F1111111111111111111111),
    .INIT_4C(256'h1111111111111111111111111111111111111111111111111111110F0F0F0F89),
    .INIT_4D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FAD8F0F0F0F0F11111111111111),
    .INIT_4E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_50(256'h1111111111111111111111111111110F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F),
    .INIT_51(256'h0F0F0F0F0F0F0F89890F0F0F0F11111111111111111111111111111111111111),
    .INIT_52(256'h111111111111111111111111111111111111110F0F0F0F890F0F0F0F0F0F0F0F),
    .INIT_53(256'h0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F111111111111111111111111111111),
    .INIT_54(256'h110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_55(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFD11),
    .INIT_56(256'h111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_57(256'hAD0F0F0F0F111111111111111111111111111111111111111111111111111111),
    .INIT_58(256'h111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_59(256'h0F0F890F0F0F0FFD111111111111111111111111111111110F0F111111111111),
    .INIT_5A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F11110F0F11110F0F0F0F0F),
    .INIT_5C(256'h0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5D(256'h11111111111111111111111111110F1111111111111111111111111111111111),
    .INIT_5E(256'h11110F0F0F0FBB0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB40F0F0F0F0F1111),
    .INIT_5F(256'h11111111111111111111111111110F0F0F0F1111111111111111111111111111),
    .INIT_60(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89B30F0F0F0F11),
    .INIT_61(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F11110F0F11110F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_62(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F110F0F),
    .INIT_63(256'h1111111111430F0F0F111111111111111111111111111111110F0F0F0F89AD0F),
    .INIT_64(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F11111111111111111111),
    .INIT_65(256'h111111111111110F0F0F0F11111111111111111111111111110F0F0F0F0F890F),
    .INIT_66(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F11111111111111111111),
    .INIT_67(256'h11110F0F0F0F111117110F0F0F0F0F11110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_68(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111110F0F0F111111),
    .INIT_69(256'h0F111111111111111111111111111111113C0F0F0F0F0F890F0F0F0F0F0F0F0F),
    .INIT_6A(256'h0F0F0F0F0F0F0F0F0F890F0F0F0F0F11111111111111111111111111110F0F0F),
    .INIT_6B(256'h0F0F0F11111111111111111111111111110F0F0F0F89890F0F0F0F0F0F0F0F0F),
    .INIT_6C(256'h0F0F0F0F0F0F0F89890F0F0F0F4311111111111111111111111111111111110F),
    .INIT_6D(256'h110F0F0F0F0F0F110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F110F0F0F110F0F0F110F0F0F0F0F11),
    .INIT_6F(256'h111111111111111111110F0F0F0F0FAD890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_70(256'h0F89AD0F0F0F0F11111111111111111111111111110F0F0F0F11111111111111),
    .INIT_71(256'h11111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_72(256'h0F0F0F0F0F111111111111111111111111111111111111F71111111111111111),
    .INIT_73(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F),
    .INIT_74(256'h0F0F0F0F0F0F0F0F11110F0F0F11110F0F0F0F0F0F17110F0F11110F0F0F0F11),
    .INIT_75(256'h1111110F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_76(256'h1111111111111111111111111111110F0F111111111111111111111111111111),
    .INIT_77(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8F0F0F0F0F6D),
    .INIT_78(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_79(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F11111111),
    .INIT_7A(256'h11FD0F0F0F0F110F0F0F0F0F0F11110F0F11110F0F0F0F110F0F0F0F0F0F0F0F),
    .INIT_7B(256'h0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F11),
    .INIT_7C(256'h111111111111111111111111111111111111111111111111111111110F0F0F0F),
    .INIT_7D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFE0F0F0F0F0F1111111111111111),
    .INIT_7E(256'h11111111111111111111111111111111111111111111110F0F0F0F0F890F0F0F),
    .INIT_7F(256'h0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F0F11111111111111111111111111),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0F0F0F0F0F11110F0F11110F0F0F0F110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_01(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F110F0F0F0F0F0F0F1111),
    .INIT_02(256'h1111111111111111111111111111111111111111110F0F0F0F0F0F890F0F0F0F),
    .INIT_03(256'h0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F111111111111111111111111111111),
    .INIT_04(256'h1111111111111111111111111111110F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F),
    .INIT_05(256'h0F0F0F89B30F0F0F0F0F11111111111111111111111111111111111111111111),
    .INIT_06(256'h0F11110F0F0F0F110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_07(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F11110F0F0F0F0F0F0F0F110F0F0F0F0FEE110F),
    .INIT_08(256'h11111111111111111111111111110F0F0F0F0F8F890F0F0F0F0F0F0F0F0F0F0F),
    .INIT_09(256'h0F0F0F89BB0F0F0F0F1111111111111111111111111111111111111111111111),
    .INIT_0A(256'h1111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0B(256'h0F11111111111111111111111111111111111111111111111111111111111111),
    .INIT_0C(256'h110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F),
    .INIT_0D(256'h0F0F0F0F0F0F110F0F0F0F0F0F0F0F0F110F0F0F0F0F111111110F0F0F0F1111),
    .INIT_0E(256'h111111111111110F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0F(256'h0F0F111111111111111111111111111111111111111111111111111111111111),
    .INIT_10(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F),
    .INIT_11(256'h1111111111111111111111111111111111111111111111111111111111EE0F0F),
    .INIT_12(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89B30F0F0F0F0F1111111111111111),
    .INIT_13(256'h0F0F0F0F0F0F0F0F110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_14(256'h0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111),
    .INIT_15(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_16(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFF0F0F0F0F0F111111111111),
    .INIT_17(256'h1111111111111111111111111111111111111111110F0F0F0F0F890F0F0F0F0F),
    .INIT_18(256'h0F0F0F0F0F0F0F8F890F0F0F0F0F0F1111111111111111111111111111111111),
    .INIT_19(256'h0F110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1A(256'h890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1111110F0F0F0F0F0F),
    .INIT_1B(256'h111111111111111111111111111111111111111111111111110F0F0F0F0F0F89),
    .INIT_1C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F11111111111111111111111111),
    .INIT_1D(256'h111111111111111111111111110F0F0F0F89B40F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1E(256'h0F0F0F0F0F0F11111111111111111111111111110F1111111111111111111111),
    .INIT_1F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB489),
    .INIT_20(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_21(256'h1111110F11111111111111111111111111110F0F0F0F0F0F89FF0F0F0F0F0F0F),
    .INIT_22(256'h0F0F0F0F0FB3890F0F0F0F111111111111111111111111111111111111111111),
    .INIT_23(256'h111111170F0F0F0F0FBB0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_24(256'h11111111111111111111110F0F0F111111111111111111111111111111111111),
    .INIT_25(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FBB890F0F0F0F0F0F43111111),
    .INIT_26(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_27(256'h11111111111111111111110F0F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_28(256'h0F0F0F0F111111111111111111111111111111111111111111113C0F0F111111),
    .INIT_29(256'h890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F),
    .INIT_2A(256'h11110F11FD0F0F11111111111111111111111111111111111111110F0F0F0F0F),
    .INIT_2B(256'h0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F11111111111111111111111111),
    .INIT_2C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2D(256'h11111111170F0F0F0F0F0F8F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2E(256'h1111111111111111111111111111111111170F0F0F1111111111111111111111),
    .INIT_2F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FBB0F0F0F0F0F111111),
    .INIT_30(256'h921111111111111111111111111111111111110F0F0F0F89890F0F0F0F0F0F0F),
    .INIT_31(256'h0F89890F0F0F0F0F0FFD1111111111111111111111111111110F111111110F0F),
    .INIT_32(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_33(256'h0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_34(256'h1111111111111111170F0F111111111111111111111111111111111111110F0F),
    .INIT_35(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB3890F0F0F0F1111111111111111111111),
    .INIT_36(256'h111111111111111111110F0F0F0F0FAD0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_37(256'h0F111111111111111111111111111111110F11111111110F0F11111111111111),
    .INIT_38(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89B40F0F0F0F0F0F),
    .INIT_39(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3A(256'h0F0F1111111111111111111111111111111111111111110F0F0F0F0F0F0F8989),
    .INIT_3B(256'h0F0F0F0F0F0F0F0F890F0F0F0F0F11111111111111111111111111111111113C),
    .INIT_3C(256'h110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3D(256'h1111111111111111110F0F111111110F0F0F0F11111111111111111111111111),
    .INIT_3E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0FB3890F0F0F0F0F0F0F0F111111111111111111),
    .INIT_3F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_40(256'h0F111111111111111111111111111111110F0F0F0F0F0F0F0F89890F0F0F0F0F),
    .INIT_41(256'h0F890F0F0F0F0F1111111111111111111111111111113C0F0F43111111111111),
    .INIT_42(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_43(256'h110F0FFE11110F0F110F0F11111111111111111111111111110F0F0F0FFE890F),
    .INIT_44(256'h0F0F0FBB89890F0F0F0F0F0F0F0F111111111111111111111111111111111111),
    .INIT_45(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_46(256'h111111111111111111110F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_47(256'h11111111111111111111111111430F0F0F0F3C11111111110F11111111111111),
    .INIT_48(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F11),
    .INIT_49(256'h11110F0F1111111111111111111111920F0F0F0F0FB30F0F0F0F0F0F0F0F0F0F),
    .INIT_4A(256'h0F0F0F1111111111111111111111111111111111111111111111110F0F0F0F11),
    .INIT_4B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFD89890F0F0F0F0F),
    .INIT_4C(256'h11111111430F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4D(256'h1111110F0F0F0F11110F0F0F1111110F0F0F0F11111111111111111111111111),
    .INIT_4E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F1111111111111111),
    .INIT_4F(256'h111111111111110F0F0F0F0FBB0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_50(256'h1111111111111111111111110F111111111111111111111111113C1111111111),
    .INIT_51(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F431111111111),
    .INIT_52(256'h0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_53(256'h1111110F0F11110F0F11111111111111111111111111111111111111110F0F0F),
    .INIT_54(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F11111111111111111111110F0F1111),
    .INIT_55(256'h0F0F0F89B30F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_56(256'h11110F0F0F181111111111111111111111111111111111111111111111110F0F),
    .INIT_57(256'h0FFE8989890F0F0F0F0F0F0F0F0F0FFB11111111111111111111111111111111),
    .INIT_58(256'h0F0F0F8989890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_59(256'h1111111111111111111111111111111111111111111111110F0F0F0F0F0F0F0F),
    .INIT_5A(256'h0F0F0F89B30F0F0F0F0F11111111111111111111110F0F11111111110F0F0F0F),
    .INIT_5B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5C(256'h1111111111111111111111111111111111111111110F0F0F0F0F0F890F0F0F0F),
    .INIT_5D(256'h0F0F0F0F0F0F3C1111111111111111111111111111111111110F11110F0F1111),
    .INIT_5E(256'h890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F898989890F0F0F0F0F),
    .INIT_5F(256'h1111111111111111111111111111111111FD0F0F0F0F0F0F0F0F0F0F0F898989),
    .INIT_60(256'h0F0F1711111111111111111111110F1111111111110F0F111111111111111111),
    .INIT_61(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8F0F0F0F),
    .INIT_62(256'h111111111111111111111111110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_63(256'h111111111111111111111111111111110F111111110F0F111111111111111111),
    .INIT_64(256'h898989898989898989898989E00F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111),
    .INIT_65(256'h111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0FFD89AD89AD),
    .INIT_66(256'h11111111111111111111110F0F0F111111111111111111111111111111111111),
    .INIT_67(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F1111111111),
    .INIT_68(256'h111111110F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_69(256'h11111111111111110F111111110F0F9211111111111111111111111111111111),
    .INIT_6A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F111111111111111111111111111111),
    .INIT_6B(256'h111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6C(256'h0F11110F0F111111111111111111111111111111111111111111111111111111),
    .INIT_6D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F898F0F0F0F0F0F111111111111111111111111),
    .INIT_6E(256'hB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6F(256'h0F92111111110F0F0F1111111111111111111111111111111111110F0F0F0F0F),
    .INIT_70(256'h0F0F0F0F0F111111111111111111111111111111111111111111111111111117),
    .INIT_71(256'h1111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_72(256'h1111111111111111110F11111111111111111111111111111111111111111111),
    .INIT_73(256'h0F0F0F0F0F0F0FFF0F0F0F0F0F1111111111111111111111110F0F0F11111111),
    .INIT_74(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_75(256'h0F11111111111111111111111111111111110F0F0F0F0F0F890F0F0F0F0F0F0F),
    .INIT_76(256'h1111111111111111111111111111111111111111111111110F0F0F0F110F110F),
    .INIT_77(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFD1111111111),
    .INIT_78(256'h0F0F1111111111111111111111111111111111111111111111111111110F0F0F),
    .INIT_79(256'h0F0F0F0F0F3C1111111111111111111111110F11111111111111111111111167),
    .INIT_7A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89),
    .INIT_7B(256'h1111111111111111110F0F0F0F0F0FB40F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7C(256'h1111111111111111111111111111111111110F0F0F1111110F0F0F0F3C111111),
    .INIT_7D(256'h0F0F0F0F0F0F0F0F0F0FF7111111111111111111111111111111111111111111),
    .INIT_7E(256'h11111111111111111111111111111111111111111111111111111111116D0F0F),
    .INIT_7F(256'h11111111111111111111110F1111111111111111113C0F0F0F0F111111111111),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F0F11),
    .INIT_01(256'h110F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_02(256'h1111111111111111111111110F111111110F0F11111111111111111111111111),
    .INIT_03(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_04(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_05(256'h111111111111111111111111110F0F17110F1111111111111111111111111111),
    .INIT_06(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F111111111111111111),
    .INIT_07(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_08(256'h111111110F0F1111110F111111111111111111111111110F0F0F0F0F0F890F0F),
    .INIT_09(256'h1111111111111111111111111111111111111111110F0F0F0F0F0F1111111111),
    .INIT_0A(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_0B(256'h1111110F0F0F1111110F11111111110F0F111111111111111111111111111111),
    .INIT_0C(256'h0F0F0F0F0F0F0F0F0F0FB30F0F0F0F0F0F111111111111111111111111111111),
    .INIT_0D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0E(256'h0F11111111111111111111111111110F0F0F0F0FB30F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0F(256'h111111111111111111111111921111111111110F0F111111111111110F0F1111),
    .INIT_10(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_11(256'h110F11111111110F0F0F0F111111111111111111111111111111111111111111),
    .INIT_12(256'h0F0F0FFE0F0F0F0F0F111111111111111111111111111111113C0F0F0F0F0F11),
    .INIT_13(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_14(256'h11111111110F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_15(256'h1111110F431111111111110F0F3C1111111111110F1111111111111111111111),
    .INIT_16(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_17(256'h1111110F0FEE1111111111111111111111111111111111111111111111111111),
    .INIT_18(256'h0F0F0F111111111111111111111111113C0F0F1111110F0F0F0F111111111111),
    .INIT_19(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB4890F0F0F),
    .INIT_1A(256'h0F0FFEFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1B(256'h111111110F0F1111111111110F111111111111111111111111111111110F0F0F),
    .INIT_1C(256'h1111111111111111111111111111111111111111111111111111110F11111111),
    .INIT_1D(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_1E(256'h1111111111111111110F0F11111111110F111111111111111111110F0F0F0F11),
    .INIT_1F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB40F0F0F0F0F0F1111111111),
    .INIT_20(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_21(256'h111111110F11111111111111111111111111110F0F0F0F0F0F89FE0F0F0F0F0F),
    .INIT_22(256'h111111111111111111111111110F0F1111110F0F1111111111111111110F4311),
    .INIT_23(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_24(256'h11111111111111110F1111111111111111113C0FEE11110F0F11111111111111),
    .INIT_25(256'h0F0F0F0F0F0F0F0F0F0F0F0F0FB4890F0F0F0F0F0F1111111111111111111111),
    .INIT_26(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_27(256'h111111111111111111110F0F0F0F0F0FFEFE0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_28(256'h1111110F0F11111111110FF71111111111111111110F0F111111110F11111111),
    .INIT_29(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_2A(256'h0F1111111111111111110F0F111111110F111117111111111111111111111111),
    .INIT_2B(256'h0F0F0F0F0F0FB40F0F0F0F0F0F43111111111111111111111111111111111111),
    .INIT_2C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2D(256'h110F0F0F0F0F0FADFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2E(256'h11110F0F1111111111111111110F111111111111111111111111111111111111),
    .INIT_2F(256'h1111111111111111111111111111111111111111111111111111110F0F111111),
    .INIT_30(256'h110F0F1111111111111111110F0F0F1111111111111111111111111111111111),
    .INIT_31(256'h890F0F0F0F0F0F1111111111111111111111111111110F0F0F11111111111111),
    .INIT_32(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB4),
    .INIT_33(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_34(256'h11111111110F1111111111111111111111111111111111110F0F0F0F0F0FB30F),
    .INIT_35(256'h1111111111111111111111110F1111111111110F0F11111111110F0F11111111),
    .INIT_36(256'h11111111110F11111111110F1111111111111111111111111111111111111111),
    .INIT_37(256'h1111111111111111111111111111110F0F11111111111111110F0F1111111111),
    .INIT_38(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB4FE0F0F0F0F0F0F),
    .INIT_39(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3A(256'h11111111111111111111111111110F0F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F),
    .INIT_3B(256'h111111110F0F11111111110F0F1111111111110F0F111111111111110F111111),
    .INIT_3C(256'h111111110F0F0F0F3C111111111111111111111111111111110F0F0F0F111111),
    .INIT_3D(256'h11111111111111111111111111111111110F0F111111111111111111110F1111),
    .INIT_3E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F0F3C111111111111),
    .INIT_3F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_40(256'h11111111110F0F0F0F0F0F0F8F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_41(256'h1111110F0F1111111111110F0F1111111111110F0F1111111111111111111111),
    .INIT_42(256'h111111111111111111111111111111110F0F1111110F0F1111111111110F0F11),
    .INIT_43(256'h11111111111111110F0F11111111111111111111110F111111111111110F0F11),
    .INIT_44(256'h0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F0F0F11111111111111111111111111),
    .INIT_45(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_46(256'h0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_47(256'h11111111110F0F11110F0F11111111111111111111111111111111920F0F0F0F),
    .INIT_48(256'h111111111111180F111111111111110F0F11111111110F0F1111110F0F111111),
    .INIT_49(256'h0F11111111111111111111110F0F1111111111110F0F11111111111111111111),
    .INIT_4A(256'h0F0F0F0F890F0F0F0F0F0F0F1711111111111111111111111111111111FE110F),
    .INIT_4B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4D(256'h0F1111111111111111111111111111111111110F0F0F0F0F0FB4AD0F0F0F0F0F),
    .INIT_4E(256'h111111111111110F0F1111111111110F1111110F0F111111111111111111170F),
    .INIT_4F(256'h111111110F0F1111111111110F0F111111111111111111111111111111110F92),
    .INIT_50(256'h0F0F0F0F0F1111111111111111111111111111111111110F0F11111111111111),
    .INIT_51(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89FF0F),
    .INIT_52(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_53(256'h1111111111111111110F0F0F0F0F0F0F890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_54(256'h0F1111111111110F0F11110F1111111111111111111111111111111111111111),
    .INIT_55(256'h111111EE0F111111111111111111111111111111110F0F11111111111111110F),
    .INIT_56(256'h11111111111111111111111111111111110F171111111111111111110F0F1111),
    .INIT_57(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F890F0F0F0F0F0F0F11),
    .INIT_58(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_59(256'h0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5A(256'h0F0F110F11111111111111111111111111111111111111111111111111111111),
    .INIT_5B(256'h111111111111111111111111110F0F1111111111111111110F11111111111111),
    .INIT_5C(256'h11111111111111111111111111111111111111FB0F1111111111110F0F111111),
    .INIT_5D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8FB30F0F0F0F0F0F0F1111111111111111),
    .INIT_5E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_60(256'h111111111111111111111111111111111111111111170F0F0F0F0F0F0F89890F),
    .INIT_61(256'h11111111110F0F1111111111111111170F17111111111111110F0F0F11111111),
    .INIT_62(256'h1111111111111111111111110F1111111111110F0F1111111111111111111111),
    .INIT_63(256'h0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F1111111111111111111111111111),
    .INIT_64(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_65(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_66(256'h111111111111111111111111110F0F0F0F0F0F0FBB890F0F0F0F0F0F0F0F0F0F),
    .INIT_67(256'h111111111111110F0F1111111111111111110F0F111111111111111111111111),
    .INIT_68(256'h111111110F1111111111110F0F111111111111111111111111111111110F0F11),
    .INIT_69(256'h0F0F890F0F0F0F0F0F0F0F111111111111111111111111111111111111111111),
    .INIT_6A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6C(256'h1111180F0F0F0F0F0F0FFE8F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_6D(256'h0F111111111111111111110F1111111111111111111111111111111111111111),
    .INIT_6E(256'h110F0F0F1111111111111111111111111111111111110F11111111111111110F),
    .INIT_6F(256'h0F0F0F0F0F1111111111111111111111111111111111111111111111110F0F11),
    .INIT_70(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FAD0F0F0F),
    .INIT_71(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_72(256'h0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_73(256'h111111111111111111111111111111111111111111111111110F0F0F0F0F0F0F),
    .INIT_74(256'h1111111111111111111111111111FE0F111111111111110F0F11111111111111),
    .INIT_75(256'h111111111111111111111111111111111111111111110F0F0F0F0F1111111111),
    .INIT_76(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F11),
    .INIT_77(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_78(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_79(256'h1111111111111111111111111111110F0F0F0F0F0F0F0F89AD0F0F0F0F0F0F0F),
    .INIT_7A(256'h110F0F111111110F0F111111110F0F1111111111111111111111111111111111),
    .INIT_7B(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_7C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F11111111111111),
    .INIT_7D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_7F(256'h11111111110F0F0F0F0F0F0F0F0F898F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8
   (douta_array,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]douta_array;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta_array;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h110F0F0F0F0F1111111111111111111111111111111111111111111111111111),
    .INIT_01(256'h111111111111111111111111111111111111111111111111110F0F1111111111),
    .INIT_02(256'h0F0F0F0F0F0F0F0F89B40F0F0F0F0F0F0F0F0F11111111111111111111111111),
    .INIT_03(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_04(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_05(256'h0F0F0F0F89BB0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_06(256'h1111111111111111111111111111111111111111111111111111110F0F0F0F0F),
    .INIT_07(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_08(256'h0F0FB4890F0F0F0F0F0F0F0F0F11111111111111111111111111111111111111),
    .INIT_09(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_0C(256'h11111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F89B40F0F0F),
    .INIT_0D(256'h1111111111111111114311111111111111111111111111111111111111111111),
    .INIT_0E(256'h0F0F0F0F0F0F0F11111111111111111111111111111111111111111111111111),
    .INIT_0F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F),
    .INIT_10(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_11(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_12(256'h11111111113C0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_13(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_14(256'h0F0F111111111111111111111111111111111111111111111111111111111111),
    .INIT_15(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89B30F0F0F0F0F0F0F0F),
    .INIT_16(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_17(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_18(256'h0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_19(256'h111111111111111111111111111111111111111111111111111111110F0F0F0F),
    .INIT_1A(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_1B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F11111111),
    .INIT_1C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1F(256'h111111111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F89890F0F),
    .INIT_20(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_21(256'h0F0F0F0F0F0F0F0F0F0F89B30F0F0F0F0F0F0F0F0F0F0F0F1111111111111111),
    .INIT_22(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_23(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_24(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_25(256'h11111111113C0F0F0F0F0F0F0F0F0F0F0F0FBB89890F0F0F0F0F0F0F0F0F0F0F),
    .INIT_26(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_27(256'h0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F1111111111111111111111111111),
    .INIT_28(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_29(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2B(256'h0F0F0F0F0F0F0F89890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_2C(256'h111111111111111111111111111111111111111111111111EE0F0F0F0F0F0F0F),
    .INIT_2D(256'h890F0F0F0F0F0F0F0F0F0F0F0F0F0F1111111111111111111111111111111111),
    .INIT_2E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFE89),
    .INIT_2F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_30(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_31(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_32(256'h111111111111111111111111110F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8989B4),
    .INIT_33(256'h0F0F0F0F0F0F0F0F0F0F0F111111111111111111111111111111111111111111),
    .INIT_34(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8989AD0F0F0F0F0F),
    .INIT_35(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_36(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_37(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_38(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F8989890F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_39(256'h0F0F0F0F0F0F0F0F0F0F0F0F0FEE111111111111111111111111EE0F0F0F0F0F),
    .INIT_3A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FFD8989890F0F0F0F0F0F0F0F0F),
    .INIT_3B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3E(256'h0F0F0F0F0F0F0F89B3890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_3F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_40(256'h0F0F0F0F0F0F0F0F0F0F0F0F0FE08989AD0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_41(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_42(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_43(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_44(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_45(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F898989FE0F0F),
    .INIT_46(256'h0F0F0F0F0F0F0F0F0F0FB48989890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_47(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_48(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_49(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F898989890F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4C(256'h0F0F0F0F0F898989890F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_4F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_50(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_51(256'hB389898FBB0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_52(256'h0F0F0FB4898989898989BB0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB48989),
    .INIT_53(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_54(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_55(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_56(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_57(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_58(256'hBB898F8989B38989898989898989898F8989B38F8989B3FD0F0F0F0F0F0F0F0F),
    .INIT_59(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5A(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5B(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5C(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5D(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_5F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_60(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_61(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [15:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [15:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "16" *) (* C_ADDRB_WIDTH = "16" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "10" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.20835 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "40960" *) (* C_READ_DEPTH_B = "40960" *) (* C_READ_WIDTH_A = "8" *) 
(* C_READ_WIDTH_B = "8" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "1" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "40960" *) (* C_WRITE_DEPTH_B = "40960" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_3_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [15:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [15:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [15:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [7:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [15:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [15:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_3_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

module blk_mem_gen_0_blk_mem_gen_v8_3_4_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [7:0]douta;
  input clka;
  input [15:0]addra;
  input [7:0]dina;
  input [0:0]wea;

  wire [15:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
