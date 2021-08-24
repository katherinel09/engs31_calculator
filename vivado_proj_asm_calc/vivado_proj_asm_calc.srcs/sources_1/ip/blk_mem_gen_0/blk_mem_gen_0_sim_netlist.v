// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Aug 24 03:16:14 2021
// Host        : WendellDart23 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/wende/Documents/21Summer/ENGS 31/Final
//               Project/engs31_calculator/vivado_proj_asm_calc/vivado_proj_asm_calc.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.251921 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10000" *) 
  (* C_READ_DEPTH_B = "10000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "10000" *) 
  (* C_WRITE_DEPTH_B = "10000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_0_bindec
   (ena_array,
    addra,
    ena);
  output [0:0]ena_array;
  input [2:0]addra;
  input ena;

  wire [2:0]addra;
  wire ena;
  wire [0:0]ena_array;

  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__3/i_ 
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(ena),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire [4:4]ena_array;
  wire [8:0]ram_douta;
  wire \ramloop[0].ram.r_n_9 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;

  blk_mem_gen_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:11]),
        .ena(ena),
        .ena_array(ena_array));
  blk_mem_gen_0_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[13:11]),
        .clka(clka),
        .douta(douta),
        .\douta[15] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .\douta[15]_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\douta[7] ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .ena(ena),
        .ram_douta(ram_douta));
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_0(\ramloop[0].ram.r_n_9 ),
        .ram_douta(ram_douta));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra),
        .addra_12_sp_1(\ramloop[1].ram.r_n_9 ),
        .clka(clka),
        .ena(ena));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .addra(addra[10:0]),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[0].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena(ena));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[1].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_0_blk_mem_gen_mux
   (douta,
    ena,
    addra,
    clka,
    DOADO,
    \douta[7] ,
    ram_douta,
    DOPADOP,
    \douta[15] ,
    \douta[15]_0 );
  output [15:0]douta;
  input ena;
  input [2:0]addra;
  input clka;
  input [15:0]DOADO;
  input [7:0]\douta[7] ;
  input [8:0]ram_douta;
  input [0:0]DOPADOP;
  input [6:0]\douta[15] ;
  input [6:0]\douta[15]_0 ;

  wire [15:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [6:0]\douta[15] ;
  wire [6:0]\douta[15]_0 ;
  wire [7:0]\douta[7] ;
  wire ena;
  wire [8:0]ram_douta;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[0]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7] [0]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[0]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[10]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[15] [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[15]_0 [1]),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[11]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[15] [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[15]_0 [2]),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[12]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[15] [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[15]_0 [3]),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[13]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[15] [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[15]_0 [4]),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[14]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[15] [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[15]_0 [5]),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[15]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[15] [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[15]_0 [6]),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[1]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7] [1]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[2]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7] [2]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[2]),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[3]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7] [3]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[4]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7] [4]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[4]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[5]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7] [5]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[5]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[6]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7] [6]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[6]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[7]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[7]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7] [7]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[7]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[8]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[8]),
        .I2(sel_pipe_d1[2]),
        .I3(DOPADOP),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[8]),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[9]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[15] [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[15]_0 [0]),
        .O(douta[9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (ram_douta,
    ena_0,
    clka,
    ena,
    addra);
  output [8:0]ram_douta;
  output ena_0;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire ena;
  wire ena_0;
  wire [8:0]ram_douta;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_0(ena_0),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    DOPADOP,
    addra_12_sp_1,
    clka,
    ena,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]DOPADOP;
  output addra_12_sp_1;
  input clka;
  input ena;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]DOPADOP;
  wire [13:0]addra;
  wire addra_12_sn_1;
  wire clka;
  wire ena;

  assign addra_12_sp_1 = addra_12_sn_1;
  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .addra_12_sp_1(addra_12_sn_1),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (DOADO,
    clka,
    ena_array,
    ena,
    addra);
  output [15:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [10:0]addra;

  wire [15:0]DOADO;
  wire [10:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOADO(DOADO),
        .addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    ena,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input ena;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    ena,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input ena;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    ena_0,
    clka,
    ena,
    addra);
  output [8:0]ram_douta;
  output ena_0;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire ena;
  wire ena_0;
  wire [8:0]ram_douta;
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

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00000000000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000),
    .INITP_01(256'hFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF00000000000),
    .INITP_02(256'hFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'h000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFF),
    .INITP_04(256'h00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000),
    .INITP_05(256'hFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF00000),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFF),
    .INITP_07(256'h000000000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FF),
    .INITP_08(256'hF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000),
    .INITP_09(256'hFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'h0000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFF),
    .INITP_0B(256'h000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000),
    .INITP_0C(256'hFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'h0000000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFF),
    .INITP_0F(256'h000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF000000000000000),
    .INIT_00(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_01(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_02(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_03(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_04(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_05(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_06(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_07(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_08(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_09(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_0A(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_0B(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_0C(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_0D(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_0E(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_0F(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_10(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_11(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_12(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_13(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_14(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_15(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_16(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_17(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_18(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_19(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_1A(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_1B(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_1C(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_1D(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_1E(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_1F(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_20(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_21(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_22(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_23(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_24(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_25(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_26(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_27(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_28(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_29(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_2A(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_2B(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_2C(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_2D(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_2E(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_2F(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_30(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_31(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_32(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_33(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_34(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_35(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_36(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_37(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_38(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_39(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_3A(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_3B(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_3C(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_3D(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_3E(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_3F(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_40(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_41(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_42(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_43(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_44(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_45(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_46(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_47(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_48(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_49(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_4A(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_4B(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_4C(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_4D(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_4E(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_4F(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_50(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_51(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_52(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_53(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_54(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_55(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_56(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_57(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_58(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_59(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_5A(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_5B(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_5C(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_5D(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_5E(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_5F(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_60(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_61(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_62(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_63(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_64(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_65(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_66(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_67(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_68(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_69(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_6A(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_6B(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_6C(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_6D(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_6E(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_6F(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_70(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_71(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_72(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_73(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_74(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_75(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_76(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_77(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_78(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_79(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_7A(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_7B(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_7C(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_7D(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_7E(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_7F(256'h9594939291908988878685848382818079787776757473727170696867666564),
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(ena),
        .I1(addra[12]),
        .I2(addra[13]),
        .O(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    DOPADOP,
    addra_12_sp_1,
    clka,
    ena,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]DOPADOP;
  output addra_12_sp_1;
  input clka;
  input ena;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]DOPADOP;
  wire [13:0]addra;
  wire addra_12_sn_1;
  wire clka;
  wire ena;
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

  assign addra_12_sp_1 = addra_12_sn_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF0),
    .INITP_01(256'h00FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFF),
    .INITP_02(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000),
    .INITP_03(256'hFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF000000000),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFF),
    .INITP_06(256'h0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000),
    .INITP_07(256'hFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF000),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFF),
    .INITP_09(256'h00000000000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000),
    .INITP_0A(256'hFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF00000000000),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'h000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFF),
    .INITP_0D(256'h00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000),
    .INITP_0E(256'hFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF00000),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000FFFFFFFFFFFFFFFF),
    .INIT_00(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_01(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_02(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_03(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_04(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_05(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_06(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_07(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_08(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_09(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_0A(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_0B(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_0C(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_0D(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_0E(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_0F(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_10(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_11(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_12(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_13(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_14(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_15(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_16(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_17(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_18(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_19(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_1A(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_1B(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_1C(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_1D(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_1E(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_1F(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_20(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_21(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_22(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_23(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_24(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_25(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_26(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_27(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_28(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_29(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_2A(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_2B(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_2C(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_2D(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_2E(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_2F(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_30(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_31(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_32(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_33(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_34(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_35(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_36(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_37(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_38(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_39(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_3A(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_3B(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_3C(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_3D(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_3E(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_3F(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_40(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_41(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_42(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_43(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_44(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_45(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_46(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_47(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_48(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_49(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_4A(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_4B(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_4C(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_4D(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_4E(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_4F(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_50(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_51(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_52(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_53(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_54(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_55(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_56(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_57(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_58(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_59(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_5A(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_5B(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_5C(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_5D(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_5E(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_5F(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_60(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_61(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_62(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_63(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_64(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_65(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_66(256'h9190898887868584838281807978777675747372717069686766656463626160),
    .INIT_67(256'h2322212019181716151413121110090807060504030201009998979695949392),
    .INIT_68(256'h5554535251504948474645444342414039383736353433323130292827262524),
    .INIT_69(256'h8786858483828180797877767574737271706968676665646362616059585756),
    .INIT_6A(256'h1918171615141312111009080706050403020100999897969594939291908988),
    .INIT_6B(256'h5150494847464544434241403938373635343332313029282726252423222120),
    .INIT_6C(256'h8382818079787776757473727170696867666564636261605958575655545352),
    .INIT_6D(256'h1514131211100908070605040302010099989796959493929190898887868584),
    .INIT_6E(256'h4746454443424140393837363534333231302928272625242322212019181716),
    .INIT_6F(256'h7978777675747372717069686766656463626160595857565554535251504948),
    .INIT_70(256'h1110090807060504030201009998979695949392919089888786858483828180),
    .INIT_71(256'h4342414039383736353433323130292827262524232221201918171615141312),
    .INIT_72(256'h7574737271706968676665646362616059585756555453525150494847464544),
    .INIT_73(256'h0706050403020100999897969594939291908988878685848382818079787776),
    .INIT_74(256'h3938373635343332313029282726252423222120191817161514131211100908),
    .INIT_75(256'h7170696867666564636261605958575655545352515049484746454443424140),
    .INIT_76(256'h0302010099989796959493929190898887868584838281807978777675747372),
    .INIT_77(256'h3534333231302928272625242322212019181716151413121110090807060504),
    .INIT_78(256'h6766656463626160595857565554535251504948474645444342414039383736),
    .INIT_79(256'h9998979695949392919089888786858483828180797877767574737271706968),
    .INIT_7A(256'h3130292827262524232221201918171615141312111009080706050403020100),
    .INIT_7B(256'h6362616059585756555453525150494847464544434241403938373635343332),
    .INIT_7C(256'h9594939291908988878685848382818079787776757473727170696867666564),
    .INIT_7D(256'h2726252423222120191817161514131211100908070605040302010099989796),
    .INIT_7E(256'h5958575655545352515049484746454443424140393837363534333231302928),
    .INIT_7F(256'h9190898887868584838281807978777675747372717069686766656463626160),
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(addra_12_sn_1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[12]),
        .I1(ena),
        .I2(addra[13]),
        .O(addra_12_sn_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (DOADO,
    clka,
    ena_array,
    ena,
    addra);
  output [15:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [10:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [15:0]DOADO;
  wire [10:0]addra;
  wire clka;
  wire ena;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
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
    .INIT_00(256'h8207820682058204820382028201820081998198819781968195819481938192),
    .INIT_01(256'h8223822282218220821982188217821682158214821382128211821082098208),
    .INIT_02(256'h8239823882378236823582348233823282318230822982288227822682258224),
    .INIT_03(256'h8255825482538252825182508249824882478246824582448243824282418240),
    .INIT_04(256'h8271827082698268826782668265826482638262826182608259825882578256),
    .INIT_05(256'h8287828682858284828382828281828082798278827782768275827482738272),
    .INIT_06(256'h8303830283018300829982988297829682958294829382928291829082898288),
    .INIT_07(256'h8319831883178316831583148313831283118310830983088307830683058304),
    .INIT_08(256'h8335833483338332833183308329832883278326832583248323832283218320),
    .INIT_09(256'h8351835083498348834783468345834483438342834183408339833883378336),
    .INIT_0A(256'h8367836683658364836383628361836083598358835783568355835483538352),
    .INIT_0B(256'h8383838283818380837983788377837683758374837383728371837083698368),
    .INIT_0C(256'h8399839883978396839583948393839283918390838983888387838683858384),
    .INIT_0D(256'h8415841484138412841184108409840884078406840584048403840284018400),
    .INIT_0E(256'h8431843084298428842784268425842484238422842184208419841884178416),
    .INIT_0F(256'h8447844684458444844384428441844084398438843784368435843484338432),
    .INIT_10(256'h8463846284618460845984588457845684558454845384528451845084498448),
    .INIT_11(256'h8479847884778476847584748473847284718470846984688467846684658464),
    .INIT_12(256'h8495849484938492849184908489848884878486848584848483848284818480),
    .INIT_13(256'h8511851085098508850785068505850485038502850185008499849884978496),
    .INIT_14(256'h8527852685258524852385228521852085198518851785168515851485138512),
    .INIT_15(256'h8543854285418540853985388537853685358534853385328531853085298528),
    .INIT_16(256'h8559855885578556855585548553855285518550854985488547854685458544),
    .INIT_17(256'h8575857485738572857185708569856885678566856585648563856285618560),
    .INIT_18(256'h8591859085898588858785868585858485838582858185808579857885778576),
    .INIT_19(256'h8607860686058604860386028601860085998598859785968595859485938592),
    .INIT_1A(256'h8623862286218620861986188617861686158614861386128611861086098608),
    .INIT_1B(256'h8639863886378636863586348633863286318630862986288627862686258624),
    .INIT_1C(256'h8655865486538652865186508649864886478646864586448643864286418640),
    .INIT_1D(256'h8671867086698668866786668665866486638662866186608659865886578656),
    .INIT_1E(256'h8687868686858684868386828681868086798678867786768675867486738672),
    .INIT_1F(256'h8703870287018700869986988697869686958694869386928691869086898688),
    .INIT_20(256'h8719871887178716871587148713871287118710870987088707870687058704),
    .INIT_21(256'h8735873487338732873187308729872887278726872587248723872287218720),
    .INIT_22(256'h8751875087498748874787468745874487438742874187408739873887378736),
    .INIT_23(256'h8767876687658764876387628761876087598758875787568755875487538752),
    .INIT_24(256'h8783878287818780877987788777877687758774877387728771877087698768),
    .INIT_25(256'h8799879887978796879587948793879287918790878987888787878687858784),
    .INIT_26(256'h8815881488138812881188108809880888078806880588048803880288018800),
    .INIT_27(256'h8831883088298828882788268825882488238822882188208819881888178816),
    .INIT_28(256'h8847884688458844884388428841884088398838883788368835883488338832),
    .INIT_29(256'h8863886288618860885988588857885688558854885388528851885088498848),
    .INIT_2A(256'h8879887888778876887588748873887288718870886988688867886688658864),
    .INIT_2B(256'h8895889488938892889188908889888888878886888588848883888288818880),
    .INIT_2C(256'h8911891089098908890789068905890489038902890189008899889888978896),
    .INIT_2D(256'h8927892689258924892389228921892089198918891789168915891489138912),
    .INIT_2E(256'h8943894289418940893989388937893689358934893389328931893089298928),
    .INIT_2F(256'h8959895889578956895589548953895289518950894989488947894689458944),
    .INIT_30(256'h8975897489738972897189708969896889678966896589648963896289618960),
    .INIT_31(256'h8991899089898988898789868985898489838982898189808979897889778976),
    .INIT_32(256'h9007900690059004900390029001900089998998899789968995899489938992),
    .INIT_33(256'h9023902290219020901990189017901690159014901390129011901090099008),
    .INIT_34(256'h9039903890379036903590349033903290319030902990289027902690259024),
    .INIT_35(256'h9055905490539052905190509049904890479046904590449043904290419040),
    .INIT_36(256'h9071907090699068906790669065906490639062906190609059905890579056),
    .INIT_37(256'h9087908690859084908390829081908090799078907790769075907490739072),
    .INIT_38(256'h9103910291019100909990989097909690959094909390929091909090899088),
    .INIT_39(256'h9119911891179116911591149113911291119110910991089107910691059104),
    .INIT_3A(256'h9135913491339132913191309129912891279126912591249123912291219120),
    .INIT_3B(256'h9151915091499148914791469145914491439142914191409139913891379136),
    .INIT_3C(256'h9167916691659164916391629161916091599158915791569155915491539152),
    .INIT_3D(256'h9183918291819180917991789177917691759174917391729171917091699168),
    .INIT_3E(256'h9199919891979196919591949193919291919190918991889187918691859184),
    .INIT_3F(256'h9215921492139212921192109209920892079206920592049203920292019200),
    .INIT_40(256'h9231923092299228922792269225922492239222922192209219921892179216),
    .INIT_41(256'h9247924692459244924392429241924092399238923792369235923492339232),
    .INIT_42(256'h9263926292619260925992589257925692559254925392529251925092499248),
    .INIT_43(256'h9279927892779276927592749273927292719270926992689267926692659264),
    .INIT_44(256'h9295929492939292929192909289928892879286928592849283928292819280),
    .INIT_45(256'h9311931093099308930793069305930493039302930193009299929892979296),
    .INIT_46(256'h9327932693259324932393229321932093199318931793169315931493139312),
    .INIT_47(256'h9343934293419340933993389337933693359334933393329331933093299328),
    .INIT_48(256'h9359935893579356935593549353935293519350934993489347934693459344),
    .INIT_49(256'h9375937493739372937193709369936893679366936593649363936293619360),
    .INIT_4A(256'h9391939093899388938793869385938493839382938193809379937893779376),
    .INIT_4B(256'h9407940694059404940394029401940093999398939793969395939493939392),
    .INIT_4C(256'h9423942294219420941994189417941694159414941394129411941094099408),
    .INIT_4D(256'h9439943894379436943594349433943294319430942994289427942694259424),
    .INIT_4E(256'h9455945494539452945194509449944894479446944594449443944294419440),
    .INIT_4F(256'h9471947094699468946794669465946494639462946194609459945894579456),
    .INIT_50(256'h9487948694859484948394829481948094799478947794769475947494739472),
    .INIT_51(256'h9503950295019500949994989497949694959494949394929491949094899488),
    .INIT_52(256'h9519951895179516951595149513951295119510950995089507950695059504),
    .INIT_53(256'h9535953495339532953195309529952895279526952595249523952295219520),
    .INIT_54(256'h9551955095499548954795469545954495439542954195409539953895379536),
    .INIT_55(256'h9567956695659564956395629561956095599558955795569555955495539552),
    .INIT_56(256'h9583958295819580957995789577957695759574957395729571957095699568),
    .INIT_57(256'h9599959895979596959595949593959295919590958995889587958695859584),
    .INIT_58(256'h9615961496139612961196109609960896079606960596049603960296019600),
    .INIT_59(256'h9631963096299628962796269625962496239622962196209619961896179616),
    .INIT_5A(256'h9647964696459644964396429641964096399638963796369635963496339632),
    .INIT_5B(256'h9663966296619660965996589657965696559654965396529651965096499648),
    .INIT_5C(256'h9679967896779676967596749673967296719670966996689667966696659664),
    .INIT_5D(256'h9695969496939692969196909689968896879686968596849683968296819680),
    .INIT_5E(256'h9711971097099708970797069705970497039702970197009699969896979696),
    .INIT_5F(256'h9727972697259724972397229721972097199718971797169715971497139712),
    .INIT_60(256'h9743974297419740973997389737973697359734973397329731973097299728),
    .INIT_61(256'h9759975897579756975597549753975297519750974997489747974697459744),
    .INIT_62(256'h9775977497739772977197709769976897679766976597649763976297619760),
    .INIT_63(256'h9791979097899788978797869785978497839782978197809779977897779776),
    .INIT_64(256'h9807980698059804980398029801980097999798979797969795979497939792),
    .INIT_65(256'h9823982298219820981998189817981698159814981398129811981098099808),
    .INIT_66(256'h9839983898379836983598349833983298319830982998289827982698259824),
    .INIT_67(256'h9855985498539852985198509849984898479846984598449843984298419840),
    .INIT_68(256'h9871987098699868986798669865986498639862986198609859985898579856),
    .INIT_69(256'h9887988698859884988398829881988098799878987798769875987498739872),
    .INIT_6A(256'h9903990299019900989998989897989698959894989398929891989098899888),
    .INIT_6B(256'h9919991899179916991599149913991299119910990999089907990699059904),
    .INIT_6C(256'h9935993499339932993199309929992899279926992599249923992299219920),
    .INIT_6D(256'h9951995099499948994799469945994499439942994199409939993899379936),
    .INIT_6E(256'h9967996699659964996399629961996099599958995799569955995499539952),
    .INIT_6F(256'h9983998299819980997999789977997699759974997399729971997099699968),
    .INIT_70(256'h9999999899979996999599949993999299919990998999889987998699859984),
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
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:16],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    ena,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input ena;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire ena;
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

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0101010101010101010101010101010101010101010101010000000000000000),
    .INIT_07(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_08(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_09(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_0A(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_0B(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_0C(256'h0202020202020202020202020202020201010101010101010101010101010101),
    .INIT_0D(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_0E(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_0F(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_10(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_11(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_12(256'h0303030303030303020202020202020202020202020202020202020202020202),
    .INIT_13(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_14(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_15(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_16(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_17(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_18(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_19(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_1A(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_1B(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_1C(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_1D(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_1E(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_1F(256'h0808080808080808080808080808080808080808080808080404040404040404),
    .INIT_20(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_21(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_22(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_23(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_24(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_25(256'h0909090909090909090909090909090908080808080808080808080808080808),
    .INIT_26(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_27(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_28(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_29(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_2A(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_2B(256'h0A0A0A0A0A0A0A0A090909090909090909090909090909090909090909090909),
    .INIT_2C(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_2D(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_2E(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_2F(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_30(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_31(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_32(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_33(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_34(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_35(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_36(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_37(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_38(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B0B0B0B0B0B0B),
    .INIT_39(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3A(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3B(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3C(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3D(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3E(256'h101010101010101010101010101010100C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_3F(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_40(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_41(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_42(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_43(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_44(256'h1111111111111111101010101010101010101010101010101010101010101010),
    .INIT_45(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_46(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_47(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_48(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_49(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_4A(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_4B(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_4C(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_4D(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_4E(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_4F(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_50(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_51(256'h1313131313131313131313131313131313131313131313131212121212121212),
    .INIT_52(256'h1313131313131313131313131313131313131313131313131313131313131313),
    .INIT_53(256'h1313131313131313131313131313131313131313131313131313131313131313),
    .INIT_54(256'h1313131313131313131313131313131313131313131313131313131313131313),
    .INIT_55(256'h1313131313131313131313131313131313131313131313131313131313131313),
    .INIT_56(256'h1313131313131313131313131313131313131313131313131313131313131313),
    .INIT_57(256'h1414141414141414141414141414141413131313131313131313131313131313),
    .INIT_58(256'h1414141414141414141414141414141414141414141414141414141414141414),
    .INIT_59(256'h1414141414141414141414141414141414141414141414141414141414141414),
    .INIT_5A(256'h1414141414141414141414141414141414141414141414141414141414141414),
    .INIT_5B(256'h1414141414141414141414141414141414141414141414141414141414141414),
    .INIT_5C(256'h1414141414141414141414141414141414141414141414141414141414141414),
    .INIT_5D(256'h1818181818181818141414141414141414141414141414141414141414141414),
    .INIT_5E(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_5F(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_60(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_61(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_62(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_63(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_64(256'h1919191919191919191919191919191919191919191919191919191919191919),
    .INIT_65(256'h1919191919191919191919191919191919191919191919191919191919191919),
    .INIT_66(256'h1919191919191919191919191919191919191919191919191919191919191919),
    .INIT_67(256'h1919191919191919191919191919191919191919191919191919191919191919),
    .INIT_68(256'h1919191919191919191919191919191919191919191919191919191919191919),
    .INIT_69(256'h1919191919191919191919191919191919191919191919191919191919191919),
    .INIT_6A(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1919191919191919),
    .INIT_6B(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_6C(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_6D(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_6E(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_6F(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_70(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_71(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_72(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_73(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_74(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_75(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_76(256'h1C1C1C1C1C1C1C1C1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_77(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_78(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_79(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_7A(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_7B(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_7C(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_7D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_7E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_7F(256'h2020202020202020202020202020202020202020202020202020202020202020),
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    ena,
    addra);
  output [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input ena;
  input [11:0]addra;

  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire ena;
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

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
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
    .INIT_00(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_01(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_02(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_03(256'h2121212121212121212121212121212121212121212121212020202020202020),
    .INIT_04(256'h2121212121212121212121212121212121212121212121212121212121212121),
    .INIT_05(256'h2121212121212121212121212121212121212121212121212121212121212121),
    .INIT_06(256'h2121212121212121212121212121212121212121212121212121212121212121),
    .INIT_07(256'h2121212121212121212121212121212121212121212121212121212121212121),
    .INIT_08(256'h2121212121212121212121212121212121212121212121212121212121212121),
    .INIT_09(256'h2222222222222222222222222222222221212121212121212121212121212121),
    .INIT_0A(256'h2222222222222222222222222222222222222222222222222222222222222222),
    .INIT_0B(256'h2222222222222222222222222222222222222222222222222222222222222222),
    .INIT_0C(256'h2222222222222222222222222222222222222222222222222222222222222222),
    .INIT_0D(256'h2222222222222222222222222222222222222222222222222222222222222222),
    .INIT_0E(256'h2222222222222222222222222222222222222222222222222222222222222222),
    .INIT_0F(256'h2323232323232323222222222222222222222222222222222222222222222222),
    .INIT_10(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_11(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_12(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_13(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_14(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_15(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_16(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_17(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_18(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_19(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_1A(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_1B(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_1C(256'h2828282828282828282828282828282828282828282828282424242424242424),
    .INIT_1D(256'h2828282828282828282828282828282828282828282828282828282828282828),
    .INIT_1E(256'h2828282828282828282828282828282828282828282828282828282828282828),
    .INIT_1F(256'h2828282828282828282828282828282828282828282828282828282828282828),
    .INIT_20(256'h2828282828282828282828282828282828282828282828282828282828282828),
    .INIT_21(256'h2828282828282828282828282828282828282828282828282828282828282828),
    .INIT_22(256'h2929292929292929292929292929292928282828282828282828282828282828),
    .INIT_23(256'h2929292929292929292929292929292929292929292929292929292929292929),
    .INIT_24(256'h2929292929292929292929292929292929292929292929292929292929292929),
    .INIT_25(256'h2929292929292929292929292929292929292929292929292929292929292929),
    .INIT_26(256'h2929292929292929292929292929292929292929292929292929292929292929),
    .INIT_27(256'h2929292929292929292929292929292929292929292929292929292929292929),
    .INIT_28(256'h2A2A2A2A2A2A2A2A292929292929292929292929292929292929292929292929),
    .INIT_29(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_2A(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_2B(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_2C(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_2D(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_2E(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_2F(256'h2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B),
    .INIT_30(256'h2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B),
    .INIT_31(256'h2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B),
    .INIT_32(256'h2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B),
    .INIT_33(256'h2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B),
    .INIT_34(256'h2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B),
    .INIT_35(256'h2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2B2B2B2B2B2B2B2B),
    .INIT_36(256'h2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C),
    .INIT_37(256'h2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C),
    .INIT_38(256'h2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C),
    .INIT_39(256'h2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C),
    .INIT_3A(256'h2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C),
    .INIT_3B(256'h303030303030303030303030303030302C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C),
    .INIT_3C(256'h3030303030303030303030303030303030303030303030303030303030303030),
    .INIT_3D(256'h3030303030303030303030303030303030303030303030303030303030303030),
    .INIT_3E(256'h3030303030303030303030303030303030303030303030303030303030303030),
    .INIT_3F(256'h3030303030303030303030303030303030303030303030303030303030303030),
    .INIT_40(256'h3030303030303030303030303030303030303030303030303030303030303030),
    .INIT_41(256'h3131313131313131303030303030303030303030303030303030303030303030),
    .INIT_42(256'h3131313131313131313131313131313131313131313131313131313131313131),
    .INIT_43(256'h3131313131313131313131313131313131313131313131313131313131313131),
    .INIT_44(256'h3131313131313131313131313131313131313131313131313131313131313131),
    .INIT_45(256'h3131313131313131313131313131313131313131313131313131313131313131),
    .INIT_46(256'h3131313131313131313131313131313131313131313131313131313131313131),
    .INIT_47(256'h3131313131313131313131313131313131313131313131313131313131313131),
    .INIT_48(256'h3232323232323232323232323232323232323232323232323232323232323232),
    .INIT_49(256'h3232323232323232323232323232323232323232323232323232323232323232),
    .INIT_4A(256'h3232323232323232323232323232323232323232323232323232323232323232),
    .INIT_4B(256'h3232323232323232323232323232323232323232323232323232323232323232),
    .INIT_4C(256'h3232323232323232323232323232323232323232323232323232323232323232),
    .INIT_4D(256'h3232323232323232323232323232323232323232323232323232323232323232),
    .INIT_4E(256'h3333333333333333333333333333333333333333333333333232323232323232),
    .INIT_4F(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_50(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_51(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_52(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_53(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_54(256'h3434343434343434343434343434343433333333333333333333333333333333),
    .INIT_55(256'h3434343434343434343434343434343434343434343434343434343434343434),
    .INIT_56(256'h3434343434343434343434343434343434343434343434343434343434343434),
    .INIT_57(256'h3434343434343434343434343434343434343434343434343434343434343434),
    .INIT_58(256'h3434343434343434343434343434343434343434343434343434343434343434),
    .INIT_59(256'h3434343434343434343434343434343434343434343434343434343434343434),
    .INIT_5A(256'h3838383838383838343434343434343434343434343434343434343434343434),
    .INIT_5B(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_5C(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_5D(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_5E(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_5F(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_60(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_61(256'h3939393939393939393939393939393939393939393939393939393939393939),
    .INIT_62(256'h3939393939393939393939393939393939393939393939393939393939393939),
    .INIT_63(256'h3939393939393939393939393939393939393939393939393939393939393939),
    .INIT_64(256'h3939393939393939393939393939393939393939393939393939393939393939),
    .INIT_65(256'h3939393939393939393939393939393939393939393939393939393939393939),
    .INIT_66(256'h3939393939393939393939393939393939393939393939393939393939393939),
    .INIT_67(256'h3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3939393939393939),
    .INIT_68(256'h3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A),
    .INIT_69(256'h3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A),
    .INIT_6A(256'h3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A),
    .INIT_6B(256'h3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A),
    .INIT_6C(256'h3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A),
    .INIT_6D(256'h3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A),
    .INIT_6E(256'h3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_6F(256'h3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_70(256'h3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_71(256'h3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_72(256'h3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_73(256'h3C3C3C3C3C3C3C3C3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_74(256'h3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_75(256'h3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_76(256'h3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_77(256'h3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_78(256'h3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_79(256'h3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_7A(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_7B(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_7C(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_7D(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_7E(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_7F(256'h4040404040404040404040404040404040404040404040404040404040404040),
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
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
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
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "5" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.251921 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "10000" *) (* C_READ_DEPTH_B = "10000" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "10000" *) 
(* C_WRITE_DEPTH_B = "10000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_2
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
  input [13:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
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
  input [15:0]s_axi_wdata;
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
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
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
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
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
  blk_mem_gen_0_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
