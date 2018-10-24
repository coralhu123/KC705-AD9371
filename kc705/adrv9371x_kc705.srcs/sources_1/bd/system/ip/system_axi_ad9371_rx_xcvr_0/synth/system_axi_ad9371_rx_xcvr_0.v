// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: analog.com:user:axi_adxcvr:1.0
// IP Revision: 1

(* X_CORE_INFO = "axi_adxcvr,Vivado 2017.4.1" *)
(* CHECK_LICENSE_TYPE = "system_axi_ad9371_rx_xcvr_0,axi_adxcvr,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_axi_ad9371_rx_xcvr_0 (
  up_es_enb_0,
  up_es_addr_0,
  up_es_wr_0,
  up_es_wdata_0,
  up_es_rdata_0,
  up_es_ready_0,
  up_ch_pll_locked_0,
  up_ch_rst_0,
  up_ch_user_ready_0,
  up_ch_rst_done_0,
  up_ch_lpm_dfe_n_0,
  up_ch_rate_0,
  up_ch_sys_clk_sel_0,
  up_ch_out_clk_sel_0,
  up_ch_enb_0,
  up_ch_addr_0,
  up_ch_wr_0,
  up_ch_wdata_0,
  up_ch_rdata_0,
  up_ch_ready_0,
  up_es_enb_1,
  up_es_addr_1,
  up_es_wr_1,
  up_es_wdata_1,
  up_es_rdata_1,
  up_es_ready_1,
  up_ch_pll_locked_1,
  up_ch_rst_1,
  up_ch_user_ready_1,
  up_ch_rst_done_1,
  up_ch_lpm_dfe_n_1,
  up_ch_rate_1,
  up_ch_sys_clk_sel_1,
  up_ch_out_clk_sel_1,
  up_ch_enb_1,
  up_ch_addr_1,
  up_ch_wr_1,
  up_ch_wdata_1,
  up_ch_rdata_1,
  up_ch_ready_1,
  s_axi_aclk,
  s_axi_aresetn,
  up_status,
  up_pll_rst,
  s_axi_awvalid,
  s_axi_awaddr,
  s_axi_awprot,
  s_axi_awready,
  s_axi_wvalid,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wready,
  s_axi_bvalid,
  s_axi_bresp,
  s_axi_bready,
  s_axi_arvalid,
  s_axi_araddr,
  s_axi_arprot,
  s_axi_arready,
  s_axi_rvalid,
  s_axi_rresp,
  s_axi_rdata,
  s_axi_rready,
  m_axi_awvalid,
  m_axi_awaddr,
  m_axi_awprot,
  m_axi_awready,
  m_axi_wvalid,
  m_axi_wdata,
  m_axi_wstrb,
  m_axi_wready,
  m_axi_bvalid,
  m_axi_bresp,
  m_axi_bready,
  m_axi_arvalid,
  m_axi_araddr,
  m_axi_arprot,
  m_axi_arready,
  m_axi_rvalid,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rready
);

(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 enb" *)
output wire up_es_enb_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 addr" *)
output wire [11 : 0] up_es_addr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 wr" *)
output wire up_es_wr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 wdata" *)
output wire [15 : 0] up_es_wdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 rdata" *)
input wire [15 : 0] up_es_rdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 ready" *)
input wire up_es_ready_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 pll_locked" *)
input wire up_ch_pll_locked_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 rst" *)
output wire up_ch_rst_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 user_ready" *)
output wire up_ch_user_ready_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 rst_done" *)
input wire up_ch_rst_done_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 lpm_dfe_n" *)
output wire up_ch_lpm_dfe_n_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 rate" *)
output wire [2 : 0] up_ch_rate_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 sys_clk_sel" *)
output wire [1 : 0] up_ch_sys_clk_sel_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 out_clk_sel" *)
output wire [2 : 0] up_ch_out_clk_sel_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 enb" *)
output wire up_ch_enb_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 addr" *)
output wire [11 : 0] up_ch_addr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 wr" *)
output wire up_ch_wr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 wdata" *)
output wire [15 : 0] up_ch_wdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 rdata" *)
input wire [15 : 0] up_ch_rdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_0 ready" *)
input wire up_ch_ready_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 enb" *)
output wire up_es_enb_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 addr" *)
output wire [11 : 0] up_es_addr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 wr" *)
output wire up_es_wr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 wdata" *)
output wire [15 : 0] up_es_wdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 rdata" *)
input wire [15 : 0] up_es_rdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 ready" *)
input wire up_es_ready_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 pll_locked" *)
input wire up_ch_pll_locked_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 rst" *)
output wire up_ch_rst_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 user_ready" *)
output wire up_ch_user_ready_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 rst_done" *)
input wire up_ch_rst_done_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 lpm_dfe_n" *)
output wire up_ch_lpm_dfe_n_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 rate" *)
output wire [2 : 0] up_ch_rate_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 sys_clk_sel" *)
output wire [1 : 0] up_ch_sys_clk_sel_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 out_clk_sel" *)
output wire [2 : 0] up_ch_out_clk_sel_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 enb" *)
output wire up_ch_enb_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 addr" *)
output wire [11 : 0] up_ch_addr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 wr" *)
output wire up_ch_wr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 wdata" *)
output wire [15 : 0] up_ch_wdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 rdata" *)
input wire [15 : 0] up_ch_rdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_ch_1 ready" *)
input wire up_ch_ready_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi:m_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN system_mig_7series_0_1_ui_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
input wire s_axi_aresetn;
output wire up_status;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_pll_rst, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_pll_rst RST" *)
output wire up_pll_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [15 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [15 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN system_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *)
output wire [31 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *)
output wire [31 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *)
output wire [3 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *)
output wire [31 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *)
input wire [31 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN system_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *)
output wire m_axi_rready;

  axi_adxcvr #(
    .ID(0),
    .NUM_OF_LANES(2),
    .XCVR_TYPE(0),
    .TX_OR_RX_N(0),
    .QPLL_ENABLE(0),
    .LPM_OR_DFE_N(1),
    .RATE(3'B000),
    .SYS_CLK_SEL(2'D00),
    .OUT_CLK_SEL(3'B011)
  ) inst (
    .up_cm_enb_0(),
    .up_cm_addr_0(),
    .up_cm_wr_0(),
    .up_cm_wdata_0(),
    .up_cm_rdata_0(16'B0),
    .up_cm_ready_0(1'B0),
    .up_es_enb_0(up_es_enb_0),
    .up_es_addr_0(up_es_addr_0),
    .up_es_wr_0(up_es_wr_0),
    .up_es_wdata_0(up_es_wdata_0),
    .up_es_rdata_0(up_es_rdata_0),
    .up_es_ready_0(up_es_ready_0),
    .up_ch_pll_locked_0(up_ch_pll_locked_0),
    .up_ch_rst_0(up_ch_rst_0),
    .up_ch_user_ready_0(up_ch_user_ready_0),
    .up_ch_rst_done_0(up_ch_rst_done_0),
    .up_ch_lpm_dfe_n_0(up_ch_lpm_dfe_n_0),
    .up_ch_rate_0(up_ch_rate_0),
    .up_ch_sys_clk_sel_0(up_ch_sys_clk_sel_0),
    .up_ch_out_clk_sel_0(up_ch_out_clk_sel_0),
    .up_ch_enb_0(up_ch_enb_0),
    .up_ch_addr_0(up_ch_addr_0),
    .up_ch_wr_0(up_ch_wr_0),
    .up_ch_wdata_0(up_ch_wdata_0),
    .up_ch_rdata_0(up_ch_rdata_0),
    .up_ch_ready_0(up_ch_ready_0),
    .up_es_enb_1(up_es_enb_1),
    .up_es_addr_1(up_es_addr_1),
    .up_es_wr_1(up_es_wr_1),
    .up_es_wdata_1(up_es_wdata_1),
    .up_es_rdata_1(up_es_rdata_1),
    .up_es_ready_1(up_es_ready_1),
    .up_ch_pll_locked_1(up_ch_pll_locked_1),
    .up_ch_rst_1(up_ch_rst_1),
    .up_ch_user_ready_1(up_ch_user_ready_1),
    .up_ch_rst_done_1(up_ch_rst_done_1),
    .up_ch_lpm_dfe_n_1(up_ch_lpm_dfe_n_1),
    .up_ch_rate_1(up_ch_rate_1),
    .up_ch_sys_clk_sel_1(up_ch_sys_clk_sel_1),
    .up_ch_out_clk_sel_1(up_ch_out_clk_sel_1),
    .up_ch_enb_1(up_ch_enb_1),
    .up_ch_addr_1(up_ch_addr_1),
    .up_ch_wr_1(up_ch_wr_1),
    .up_ch_wdata_1(up_ch_wdata_1),
    .up_ch_rdata_1(up_ch_rdata_1),
    .up_ch_ready_1(up_ch_ready_1),
    .up_es_enb_2(),
    .up_es_addr_2(),
    .up_es_wr_2(),
    .up_es_wdata_2(),
    .up_es_rdata_2(16'B0),
    .up_es_ready_2(1'B0),
    .up_ch_pll_locked_2(1'B0),
    .up_ch_rst_2(),
    .up_ch_user_ready_2(),
    .up_ch_rst_done_2(1'B0),
    .up_ch_lpm_dfe_n_2(),
    .up_ch_rate_2(),
    .up_ch_sys_clk_sel_2(),
    .up_ch_out_clk_sel_2(),
    .up_ch_enb_2(),
    .up_ch_addr_2(),
    .up_ch_wr_2(),
    .up_ch_wdata_2(),
    .up_ch_rdata_2(16'B0),
    .up_ch_ready_2(1'B0),
    .up_es_enb_3(),
    .up_es_addr_3(),
    .up_es_wr_3(),
    .up_es_wdata_3(),
    .up_es_rdata_3(16'B0),
    .up_es_ready_3(1'B0),
    .up_ch_pll_locked_3(1'B0),
    .up_ch_rst_3(),
    .up_ch_user_ready_3(),
    .up_ch_rst_done_3(1'B0),
    .up_ch_lpm_dfe_n_3(),
    .up_ch_rate_3(),
    .up_ch_sys_clk_sel_3(),
    .up_ch_out_clk_sel_3(),
    .up_ch_enb_3(),
    .up_ch_addr_3(),
    .up_ch_wr_3(),
    .up_ch_wdata_3(),
    .up_ch_rdata_3(16'B0),
    .up_ch_ready_3(1'B0),
    .up_cm_enb_4(),
    .up_cm_addr_4(),
    .up_cm_wr_4(),
    .up_cm_wdata_4(),
    .up_cm_rdata_4(16'B0),
    .up_cm_ready_4(1'B0),
    .up_es_enb_4(),
    .up_es_addr_4(),
    .up_es_wr_4(),
    .up_es_wdata_4(),
    .up_es_rdata_4(16'B0),
    .up_es_ready_4(1'B0),
    .up_ch_pll_locked_4(1'B0),
    .up_ch_rst_4(),
    .up_ch_user_ready_4(),
    .up_ch_rst_done_4(1'B0),
    .up_ch_lpm_dfe_n_4(),
    .up_ch_rate_4(),
    .up_ch_sys_clk_sel_4(),
    .up_ch_out_clk_sel_4(),
    .up_ch_enb_4(),
    .up_ch_addr_4(),
    .up_ch_wr_4(),
    .up_ch_wdata_4(),
    .up_ch_rdata_4(16'B0),
    .up_ch_ready_4(1'B0),
    .up_es_enb_5(),
    .up_es_addr_5(),
    .up_es_wr_5(),
    .up_es_wdata_5(),
    .up_es_rdata_5(16'B0),
    .up_es_ready_5(1'B0),
    .up_ch_pll_locked_5(1'B0),
    .up_ch_rst_5(),
    .up_ch_user_ready_5(),
    .up_ch_rst_done_5(1'B0),
    .up_ch_lpm_dfe_n_5(),
    .up_ch_rate_5(),
    .up_ch_sys_clk_sel_5(),
    .up_ch_out_clk_sel_5(),
    .up_ch_enb_5(),
    .up_ch_addr_5(),
    .up_ch_wr_5(),
    .up_ch_wdata_5(),
    .up_ch_rdata_5(16'B0),
    .up_ch_ready_5(1'B0),
    .up_es_enb_6(),
    .up_es_addr_6(),
    .up_es_wr_6(),
    .up_es_wdata_6(),
    .up_es_rdata_6(16'B0),
    .up_es_ready_6(1'B0),
    .up_ch_pll_locked_6(1'B0),
    .up_ch_rst_6(),
    .up_ch_user_ready_6(),
    .up_ch_rst_done_6(1'B0),
    .up_ch_lpm_dfe_n_6(),
    .up_ch_rate_6(),
    .up_ch_sys_clk_sel_6(),
    .up_ch_out_clk_sel_6(),
    .up_ch_enb_6(),
    .up_ch_addr_6(),
    .up_ch_wr_6(),
    .up_ch_wdata_6(),
    .up_ch_rdata_6(16'B0),
    .up_ch_ready_6(1'B0),
    .up_es_enb_7(),
    .up_es_addr_7(),
    .up_es_wr_7(),
    .up_es_wdata_7(),
    .up_es_rdata_7(16'B0),
    .up_es_ready_7(1'B0),
    .up_ch_pll_locked_7(1'B0),
    .up_ch_rst_7(),
    .up_ch_user_ready_7(),
    .up_ch_rst_done_7(1'B0),
    .up_ch_lpm_dfe_n_7(),
    .up_ch_rate_7(),
    .up_ch_sys_clk_sel_7(),
    .up_ch_out_clk_sel_7(),
    .up_ch_enb_7(),
    .up_ch_addr_7(),
    .up_ch_wr_7(),
    .up_ch_wdata_7(),
    .up_ch_rdata_7(16'B0),
    .up_ch_ready_7(1'B0),
    .up_cm_enb_8(),
    .up_cm_addr_8(),
    .up_cm_wr_8(),
    .up_cm_wdata_8(),
    .up_cm_rdata_8(16'B0),
    .up_cm_ready_8(1'B0),
    .up_es_enb_8(),
    .up_es_addr_8(),
    .up_es_wr_8(),
    .up_es_wdata_8(),
    .up_es_rdata_8(16'B0),
    .up_es_ready_8(1'B0),
    .up_ch_pll_locked_8(1'B0),
    .up_ch_rst_8(),
    .up_ch_user_ready_8(),
    .up_ch_rst_done_8(1'B0),
    .up_ch_lpm_dfe_n_8(),
    .up_ch_rate_8(),
    .up_ch_sys_clk_sel_8(),
    .up_ch_out_clk_sel_8(),
    .up_ch_enb_8(),
    .up_ch_addr_8(),
    .up_ch_wr_8(),
    .up_ch_wdata_8(),
    .up_ch_rdata_8(16'B0),
    .up_ch_ready_8(1'B0),
    .up_es_enb_9(),
    .up_es_addr_9(),
    .up_es_wr_9(),
    .up_es_wdata_9(),
    .up_es_rdata_9(16'B0),
    .up_es_ready_9(1'B0),
    .up_ch_pll_locked_9(1'B0),
    .up_ch_rst_9(),
    .up_ch_user_ready_9(),
    .up_ch_rst_done_9(1'B0),
    .up_ch_lpm_dfe_n_9(),
    .up_ch_rate_9(),
    .up_ch_sys_clk_sel_9(),
    .up_ch_out_clk_sel_9(),
    .up_ch_enb_9(),
    .up_ch_addr_9(),
    .up_ch_wr_9(),
    .up_ch_wdata_9(),
    .up_ch_rdata_9(16'B0),
    .up_ch_ready_9(1'B0),
    .up_es_enb_10(),
    .up_es_addr_10(),
    .up_es_wr_10(),
    .up_es_wdata_10(),
    .up_es_rdata_10(16'B0),
    .up_es_ready_10(1'B0),
    .up_ch_pll_locked_10(1'B0),
    .up_ch_rst_10(),
    .up_ch_user_ready_10(),
    .up_ch_rst_done_10(1'B0),
    .up_ch_lpm_dfe_n_10(),
    .up_ch_rate_10(),
    .up_ch_sys_clk_sel_10(),
    .up_ch_out_clk_sel_10(),
    .up_ch_enb_10(),
    .up_ch_addr_10(),
    .up_ch_wr_10(),
    .up_ch_wdata_10(),
    .up_ch_rdata_10(16'B0),
    .up_ch_ready_10(1'B0),
    .up_es_enb_11(),
    .up_es_addr_11(),
    .up_es_wr_11(),
    .up_es_wdata_11(),
    .up_es_rdata_11(16'B0),
    .up_es_ready_11(1'B0),
    .up_ch_pll_locked_11(1'B0),
    .up_ch_rst_11(),
    .up_ch_user_ready_11(),
    .up_ch_rst_done_11(1'B0),
    .up_ch_lpm_dfe_n_11(),
    .up_ch_rate_11(),
    .up_ch_sys_clk_sel_11(),
    .up_ch_out_clk_sel_11(),
    .up_ch_enb_11(),
    .up_ch_addr_11(),
    .up_ch_wr_11(),
    .up_ch_wdata_11(),
    .up_ch_rdata_11(16'B0),
    .up_ch_ready_11(1'B0),
    .up_cm_enb_12(),
    .up_cm_addr_12(),
    .up_cm_wr_12(),
    .up_cm_wdata_12(),
    .up_cm_rdata_12(16'B0),
    .up_cm_ready_12(1'B0),
    .up_es_enb_12(),
    .up_es_addr_12(),
    .up_es_wr_12(),
    .up_es_wdata_12(),
    .up_es_rdata_12(16'B0),
    .up_es_ready_12(1'B0),
    .up_ch_pll_locked_12(1'B0),
    .up_ch_rst_12(),
    .up_ch_user_ready_12(),
    .up_ch_rst_done_12(1'B0),
    .up_ch_lpm_dfe_n_12(),
    .up_ch_rate_12(),
    .up_ch_sys_clk_sel_12(),
    .up_ch_out_clk_sel_12(),
    .up_ch_enb_12(),
    .up_ch_addr_12(),
    .up_ch_wr_12(),
    .up_ch_wdata_12(),
    .up_ch_rdata_12(16'B0),
    .up_ch_ready_12(1'B0),
    .up_es_enb_13(),
    .up_es_addr_13(),
    .up_es_wr_13(),
    .up_es_wdata_13(),
    .up_es_rdata_13(16'B0),
    .up_es_ready_13(1'B0),
    .up_ch_pll_locked_13(1'B0),
    .up_ch_rst_13(),
    .up_ch_user_ready_13(),
    .up_ch_rst_done_13(1'B0),
    .up_ch_lpm_dfe_n_13(),
    .up_ch_rate_13(),
    .up_ch_sys_clk_sel_13(),
    .up_ch_out_clk_sel_13(),
    .up_ch_enb_13(),
    .up_ch_addr_13(),
    .up_ch_wr_13(),
    .up_ch_wdata_13(),
    .up_ch_rdata_13(16'B0),
    .up_ch_ready_13(1'B0),
    .up_es_enb_14(),
    .up_es_addr_14(),
    .up_es_wr_14(),
    .up_es_wdata_14(),
    .up_es_rdata_14(16'B0),
    .up_es_ready_14(1'B0),
    .up_ch_pll_locked_14(1'B0),
    .up_ch_rst_14(),
    .up_ch_user_ready_14(),
    .up_ch_rst_done_14(1'B0),
    .up_ch_lpm_dfe_n_14(),
    .up_ch_rate_14(),
    .up_ch_sys_clk_sel_14(),
    .up_ch_out_clk_sel_14(),
    .up_ch_enb_14(),
    .up_ch_addr_14(),
    .up_ch_wr_14(),
    .up_ch_wdata_14(),
    .up_ch_rdata_14(16'B0),
    .up_ch_ready_14(1'B0),
    .up_es_enb_15(),
    .up_es_addr_15(),
    .up_es_wr_15(),
    .up_es_wdata_15(),
    .up_es_rdata_15(16'B0),
    .up_es_ready_15(1'B0),
    .up_ch_pll_locked_15(1'B0),
    .up_ch_rst_15(),
    .up_ch_user_ready_15(),
    .up_ch_rst_done_15(1'B0),
    .up_ch_lpm_dfe_n_15(),
    .up_ch_rate_15(),
    .up_ch_sys_clk_sel_15(),
    .up_ch_out_clk_sel_15(),
    .up_ch_enb_15(),
    .up_ch_addr_15(),
    .up_ch_wr_15(),
    .up_ch_wdata_15(),
    .up_ch_rdata_15(16'B0),
    .up_ch_ready_15(1'B0),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .up_status(up_status),
    .up_pll_rst(up_pll_rst),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awready(s_axi_awready),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wready(s_axi_wready),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bready(s_axi_bready),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arready(s_axi_arready),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rready(s_axi_rready),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awready(m_axi_awready),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wready(m_axi_wready),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bready(m_axi_bready),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arready(m_axi_arready),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rready(m_axi_rready)
  );
endmodule
