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


// IP VLNV: analog.com:user:util_adxcvr:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_util_ad9371_xcvr_0 (
  up_rstn,
  up_clk,
  qpll_ref_clk_0,
  up_qpll_rst_0,
  cpll_ref_clk_0,
  up_cpll_rst_0,
  rx_0_p,
  rx_0_n,
  rx_out_clk_0,
  rx_clk_0,
  rx_charisk_0,
  rx_disperr_0,
  rx_notintable_0,
  rx_data_0,
  rx_calign_0,
  tx_0_p,
  tx_0_n,
  tx_out_clk_0,
  tx_clk_0,
  tx_charisk_0,
  tx_data_0,
  up_cm_enb_0,
  up_cm_addr_0,
  up_cm_wr_0,
  up_cm_wdata_0,
  up_cm_rdata_0,
  up_cm_ready_0,
  up_es_enb_0,
  up_es_addr_0,
  up_es_wr_0,
  up_es_wdata_0,
  up_es_rdata_0,
  up_es_ready_0,
  up_rx_pll_locked_0,
  up_rx_rst_0,
  up_rx_user_ready_0,
  up_rx_rst_done_0,
  up_rx_lpm_dfe_n_0,
  up_rx_rate_0,
  up_rx_sys_clk_sel_0,
  up_rx_out_clk_sel_0,
  up_rx_enb_0,
  up_rx_addr_0,
  up_rx_wr_0,
  up_rx_wdata_0,
  up_rx_rdata_0,
  up_rx_ready_0,
  up_tx_pll_locked_0,
  up_tx_rst_0,
  up_tx_user_ready_0,
  up_tx_rst_done_0,
  up_tx_lpm_dfe_n_0,
  up_tx_rate_0,
  up_tx_sys_clk_sel_0,
  up_tx_out_clk_sel_0,
  up_tx_enb_0,
  up_tx_addr_0,
  up_tx_wr_0,
  up_tx_wdata_0,
  up_tx_rdata_0,
  up_tx_ready_0,
  cpll_ref_clk_1,
  up_cpll_rst_1,
  rx_1_p,
  rx_1_n,
  rx_out_clk_1,
  rx_clk_1,
  rx_charisk_1,
  rx_disperr_1,
  rx_notintable_1,
  rx_data_1,
  rx_calign_1,
  tx_1_p,
  tx_1_n,
  tx_out_clk_1,
  tx_clk_1,
  tx_charisk_1,
  tx_data_1,
  up_es_enb_1,
  up_es_addr_1,
  up_es_wr_1,
  up_es_wdata_1,
  up_es_rdata_1,
  up_es_ready_1,
  up_rx_pll_locked_1,
  up_rx_rst_1,
  up_rx_user_ready_1,
  up_rx_rst_done_1,
  up_rx_lpm_dfe_n_1,
  up_rx_rate_1,
  up_rx_sys_clk_sel_1,
  up_rx_out_clk_sel_1,
  up_rx_enb_1,
  up_rx_addr_1,
  up_rx_wr_1,
  up_rx_wdata_1,
  up_rx_rdata_1,
  up_rx_ready_1,
  up_tx_pll_locked_1,
  up_tx_rst_1,
  up_tx_user_ready_1,
  up_tx_rst_done_1,
  up_tx_lpm_dfe_n_1,
  up_tx_rate_1,
  up_tx_sys_clk_sel_1,
  up_tx_out_clk_sel_1,
  up_tx_enb_1,
  up_tx_addr_1,
  up_tx_wr_1,
  up_tx_wdata_1,
  up_tx_rdata_1,
  up_tx_ready_1,
  cpll_ref_clk_2,
  up_cpll_rst_2,
  rx_2_p,
  rx_2_n,
  rx_out_clk_2,
  rx_clk_2,
  rx_charisk_2,
  rx_disperr_2,
  rx_notintable_2,
  rx_data_2,
  rx_calign_2,
  tx_2_p,
  tx_2_n,
  tx_out_clk_2,
  tx_clk_2,
  tx_charisk_2,
  tx_data_2,
  up_es_enb_2,
  up_es_addr_2,
  up_es_wr_2,
  up_es_wdata_2,
  up_es_rdata_2,
  up_es_ready_2,
  up_rx_pll_locked_2,
  up_rx_rst_2,
  up_rx_user_ready_2,
  up_rx_rst_done_2,
  up_rx_lpm_dfe_n_2,
  up_rx_rate_2,
  up_rx_sys_clk_sel_2,
  up_rx_out_clk_sel_2,
  up_rx_enb_2,
  up_rx_addr_2,
  up_rx_wr_2,
  up_rx_wdata_2,
  up_rx_rdata_2,
  up_rx_ready_2,
  up_tx_pll_locked_2,
  up_tx_rst_2,
  up_tx_user_ready_2,
  up_tx_rst_done_2,
  up_tx_lpm_dfe_n_2,
  up_tx_rate_2,
  up_tx_sys_clk_sel_2,
  up_tx_out_clk_sel_2,
  up_tx_enb_2,
  up_tx_addr_2,
  up_tx_wr_2,
  up_tx_wdata_2,
  up_tx_rdata_2,
  up_tx_ready_2,
  cpll_ref_clk_3,
  up_cpll_rst_3,
  rx_3_p,
  rx_3_n,
  rx_out_clk_3,
  rx_clk_3,
  rx_charisk_3,
  rx_disperr_3,
  rx_notintable_3,
  rx_data_3,
  rx_calign_3,
  tx_3_p,
  tx_3_n,
  tx_out_clk_3,
  tx_clk_3,
  tx_charisk_3,
  tx_data_3,
  up_es_enb_3,
  up_es_addr_3,
  up_es_wr_3,
  up_es_wdata_3,
  up_es_rdata_3,
  up_es_ready_3,
  up_rx_pll_locked_3,
  up_rx_rst_3,
  up_rx_user_ready_3,
  up_rx_rst_done_3,
  up_rx_lpm_dfe_n_3,
  up_rx_rate_3,
  up_rx_sys_clk_sel_3,
  up_rx_out_clk_sel_3,
  up_rx_enb_3,
  up_rx_addr_3,
  up_rx_wr_3,
  up_rx_wdata_3,
  up_rx_rdata_3,
  up_rx_ready_3,
  up_tx_pll_locked_3,
  up_tx_rst_3,
  up_tx_user_ready_3,
  up_tx_rst_done_3,
  up_tx_lpm_dfe_n_3,
  up_tx_rate_3,
  up_tx_sys_clk_sel_3,
  up_tx_out_clk_sel_3,
  up_tx_enb_3,
  up_tx_addr_3,
  up_tx_wr_3,
  up_tx_wdata_3,
  up_tx_rdata_3,
  up_tx_ready_3
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_rstn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_rstn RST" *)
input wire up_rstn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_clk, ASSOCIATED_RESET up_rstn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN system_mig_7series_0_1_ui_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 up_clk CLK" *)
input wire up_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qpll_ref_clk_0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 qpll_ref_clk_0 CLK" *)
input wire qpll_ref_clk_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_qpll_rst_0, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_qpll_rst_0 RST" *)
input wire up_qpll_rst_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cpll_ref_clk_0, ASSOCIATED_RESET up_rx_rst_0:up_tx_rst_0, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cpll_ref_clk_0 CLK" *)
input wire cpll_ref_clk_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_cpll_rst_0, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_cpll_rst_0 RST" *)
input wire up_cpll_rst_0;
input wire rx_0_p;
input wire rx_0_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_out_clk_0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ad9371_xcvr_0_rx_out_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_out_clk_0 CLK" *)
output wire rx_out_clk_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_clk_0, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_rx_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_clk_0 CLK" *)
input wire rx_clk_0;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_0 rxcharisk" *)
output wire [3 : 0] rx_charisk_0;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_0 rxdisperr" *)
output wire [3 : 0] rx_disperr_0;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_0 rxnotintable" *)
output wire [3 : 0] rx_notintable_0;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_0 rxdata" *)
output wire [31 : 0] rx_data_0;
input wire rx_calign_0;
output wire tx_0_p;
output wire tx_0_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_out_clk_0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ad9371_xcvr_0_tx_out_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_out_clk_0 CLK" *)
output wire tx_out_clk_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_clk_0, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_tx_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_clk_0 CLK" *)
input wire tx_clk_0;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_0 txcharisk" *)
input wire [3 : 0] tx_charisk_0;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_0 txdata" *)
input wire [31 : 0] tx_data_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_cm_0 enb" *)
input wire up_cm_enb_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_cm_0 addr" *)
input wire [11 : 0] up_cm_addr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_cm_0 wr" *)
input wire up_cm_wr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_cm_0 wdata" *)
input wire [15 : 0] up_cm_wdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_cm_0 rdata" *)
output wire [15 : 0] up_cm_rdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_cm_0 ready" *)
output wire up_cm_ready_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 enb" *)
input wire up_es_enb_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 addr" *)
input wire [11 : 0] up_es_addr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 wr" *)
input wire up_es_wr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 wdata" *)
input wire [15 : 0] up_es_wdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 rdata" *)
output wire [15 : 0] up_es_rdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_0 ready" *)
output wire up_es_ready_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 pll_locked" *)
output wire up_rx_pll_locked_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_rx_rst_0, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_rx_rst_0 RST, analog.com:interface:if_xcvr_ch:1.0 up_rx_0 rst" *)
input wire up_rx_rst_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 user_ready" *)
input wire up_rx_user_ready_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 rst_done" *)
output wire up_rx_rst_done_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 lpm_dfe_n" *)
input wire up_rx_lpm_dfe_n_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 rate" *)
input wire [2 : 0] up_rx_rate_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 sys_clk_sel" *)
input wire [1 : 0] up_rx_sys_clk_sel_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 out_clk_sel" *)
input wire [2 : 0] up_rx_out_clk_sel_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 enb" *)
input wire up_rx_enb_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 addr" *)
input wire [11 : 0] up_rx_addr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 wr" *)
input wire up_rx_wr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 wdata" *)
input wire [15 : 0] up_rx_wdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 rdata" *)
output wire [15 : 0] up_rx_rdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_0 ready" *)
output wire up_rx_ready_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 pll_locked" *)
output wire up_tx_pll_locked_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_tx_rst_0, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_tx_rst_0 RST, analog.com:interface:if_xcvr_ch:1.0 up_tx_0 rst" *)
input wire up_tx_rst_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 user_ready" *)
input wire up_tx_user_ready_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 rst_done" *)
output wire up_tx_rst_done_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 lpm_dfe_n" *)
input wire up_tx_lpm_dfe_n_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 rate" *)
input wire [2 : 0] up_tx_rate_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 sys_clk_sel" *)
input wire [1 : 0] up_tx_sys_clk_sel_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 out_clk_sel" *)
input wire [2 : 0] up_tx_out_clk_sel_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 enb" *)
input wire up_tx_enb_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 addr" *)
input wire [11 : 0] up_tx_addr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 wr" *)
input wire up_tx_wr_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 wdata" *)
input wire [15 : 0] up_tx_wdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 rdata" *)
output wire [15 : 0] up_tx_rdata_0;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_0 ready" *)
output wire up_tx_ready_0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cpll_ref_clk_1, ASSOCIATED_RESET up_rx_rst_1:up_tx_rst_1, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cpll_ref_clk_1 CLK" *)
input wire cpll_ref_clk_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_cpll_rst_1, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_cpll_rst_1 RST" *)
input wire up_cpll_rst_1;
input wire rx_1_p;
input wire rx_1_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_out_clk_1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ad9371_xcvr_0_rx_out_clk_1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_out_clk_1 CLK" *)
output wire rx_out_clk_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_clk_1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_rx_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_clk_1 CLK" *)
input wire rx_clk_1;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_1 rxcharisk" *)
output wire [3 : 0] rx_charisk_1;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_1 rxdisperr" *)
output wire [3 : 0] rx_disperr_1;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_1 rxnotintable" *)
output wire [3 : 0] rx_notintable_1;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_1 rxdata" *)
output wire [31 : 0] rx_data_1;
input wire rx_calign_1;
output wire tx_1_p;
output wire tx_1_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_out_clk_1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ad9371_xcvr_0_tx_out_clk_1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_out_clk_1 CLK" *)
output wire tx_out_clk_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_clk_1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_tx_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_clk_1 CLK" *)
input wire tx_clk_1;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_1 txcharisk" *)
input wire [3 : 0] tx_charisk_1;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_1 txdata" *)
input wire [31 : 0] tx_data_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 enb" *)
input wire up_es_enb_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 addr" *)
input wire [11 : 0] up_es_addr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 wr" *)
input wire up_es_wr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 wdata" *)
input wire [15 : 0] up_es_wdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 rdata" *)
output wire [15 : 0] up_es_rdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_1 ready" *)
output wire up_es_ready_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 pll_locked" *)
output wire up_rx_pll_locked_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_rx_rst_1, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_rx_rst_1 RST, analog.com:interface:if_xcvr_ch:1.0 up_rx_1 rst" *)
input wire up_rx_rst_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 user_ready" *)
input wire up_rx_user_ready_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 rst_done" *)
output wire up_rx_rst_done_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 lpm_dfe_n" *)
input wire up_rx_lpm_dfe_n_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 rate" *)
input wire [2 : 0] up_rx_rate_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 sys_clk_sel" *)
input wire [1 : 0] up_rx_sys_clk_sel_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 out_clk_sel" *)
input wire [2 : 0] up_rx_out_clk_sel_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 enb" *)
input wire up_rx_enb_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 addr" *)
input wire [11 : 0] up_rx_addr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 wr" *)
input wire up_rx_wr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 wdata" *)
input wire [15 : 0] up_rx_wdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 rdata" *)
output wire [15 : 0] up_rx_rdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_1 ready" *)
output wire up_rx_ready_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 pll_locked" *)
output wire up_tx_pll_locked_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_tx_rst_1, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_tx_rst_1 RST, analog.com:interface:if_xcvr_ch:1.0 up_tx_1 rst" *)
input wire up_tx_rst_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 user_ready" *)
input wire up_tx_user_ready_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 rst_done" *)
output wire up_tx_rst_done_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 lpm_dfe_n" *)
input wire up_tx_lpm_dfe_n_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 rate" *)
input wire [2 : 0] up_tx_rate_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 sys_clk_sel" *)
input wire [1 : 0] up_tx_sys_clk_sel_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 out_clk_sel" *)
input wire [2 : 0] up_tx_out_clk_sel_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 enb" *)
input wire up_tx_enb_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 addr" *)
input wire [11 : 0] up_tx_addr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 wr" *)
input wire up_tx_wr_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 wdata" *)
input wire [15 : 0] up_tx_wdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 rdata" *)
output wire [15 : 0] up_tx_rdata_1;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_1 ready" *)
output wire up_tx_ready_1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cpll_ref_clk_2, ASSOCIATED_RESET up_rx_rst_2:up_tx_rst_2, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cpll_ref_clk_2 CLK" *)
input wire cpll_ref_clk_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_cpll_rst_2, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_cpll_rst_2 RST" *)
input wire up_cpll_rst_2;
input wire rx_2_p;
input wire rx_2_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_out_clk_2, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ad9371_xcvr_0_rx_out_clk_2" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_out_clk_2 CLK" *)
output wire rx_out_clk_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_clk_2, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_rx_os_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_clk_2 CLK" *)
input wire rx_clk_2;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_2 rxcharisk" *)
output wire [3 : 0] rx_charisk_2;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_2 rxdisperr" *)
output wire [3 : 0] rx_disperr_2;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_2 rxnotintable" *)
output wire [3 : 0] rx_notintable_2;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_2 rxdata" *)
output wire [31 : 0] rx_data_2;
input wire rx_calign_2;
output wire tx_2_p;
output wire tx_2_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_out_clk_2, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ad9371_xcvr_0_tx_out_clk_2" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_out_clk_2 CLK" *)
output wire tx_out_clk_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_clk_2, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_tx_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_clk_2 CLK" *)
input wire tx_clk_2;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_2 txcharisk" *)
input wire [3 : 0] tx_charisk_2;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_2 txdata" *)
input wire [31 : 0] tx_data_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_2 enb" *)
input wire up_es_enb_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_2 addr" *)
input wire [11 : 0] up_es_addr_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_2 wr" *)
input wire up_es_wr_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_2 wdata" *)
input wire [15 : 0] up_es_wdata_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_2 rdata" *)
output wire [15 : 0] up_es_rdata_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_2 ready" *)
output wire up_es_ready_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 pll_locked" *)
output wire up_rx_pll_locked_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_rx_rst_2, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_rx_rst_2 RST, analog.com:interface:if_xcvr_ch:1.0 up_rx_2 rst" *)
input wire up_rx_rst_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 user_ready" *)
input wire up_rx_user_ready_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 rst_done" *)
output wire up_rx_rst_done_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 lpm_dfe_n" *)
input wire up_rx_lpm_dfe_n_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 rate" *)
input wire [2 : 0] up_rx_rate_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 sys_clk_sel" *)
input wire [1 : 0] up_rx_sys_clk_sel_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 out_clk_sel" *)
input wire [2 : 0] up_rx_out_clk_sel_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 enb" *)
input wire up_rx_enb_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 addr" *)
input wire [11 : 0] up_rx_addr_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 wr" *)
input wire up_rx_wr_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 wdata" *)
input wire [15 : 0] up_rx_wdata_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 rdata" *)
output wire [15 : 0] up_rx_rdata_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_2 ready" *)
output wire up_rx_ready_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 pll_locked" *)
output wire up_tx_pll_locked_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_tx_rst_2, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_tx_rst_2 RST, analog.com:interface:if_xcvr_ch:1.0 up_tx_2 rst" *)
input wire up_tx_rst_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 user_ready" *)
input wire up_tx_user_ready_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 rst_done" *)
output wire up_tx_rst_done_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 lpm_dfe_n" *)
input wire up_tx_lpm_dfe_n_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 rate" *)
input wire [2 : 0] up_tx_rate_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 sys_clk_sel" *)
input wire [1 : 0] up_tx_sys_clk_sel_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 out_clk_sel" *)
input wire [2 : 0] up_tx_out_clk_sel_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 enb" *)
input wire up_tx_enb_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 addr" *)
input wire [11 : 0] up_tx_addr_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 wr" *)
input wire up_tx_wr_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 wdata" *)
input wire [15 : 0] up_tx_wdata_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 rdata" *)
output wire [15 : 0] up_tx_rdata_2;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_2 ready" *)
output wire up_tx_ready_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cpll_ref_clk_3, ASSOCIATED_RESET up_rx_rst_3:up_tx_rst_3, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cpll_ref_clk_3 CLK" *)
input wire cpll_ref_clk_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_cpll_rst_3, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_cpll_rst_3 RST" *)
input wire up_cpll_rst_3;
input wire rx_3_p;
input wire rx_3_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_out_clk_3, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ad9371_xcvr_0_rx_out_clk_3" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_out_clk_3 CLK" *)
output wire rx_out_clk_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_clk_3, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_rx_os_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_clk_3 CLK" *)
input wire rx_clk_3;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_3 rxcharisk" *)
output wire [3 : 0] rx_charisk_3;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_3 rxdisperr" *)
output wire [3 : 0] rx_disperr_3;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_3 rxnotintable" *)
output wire [3 : 0] rx_notintable_3;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_3 rxdata" *)
output wire [31 : 0] rx_data_3;
input wire rx_calign_3;
output wire tx_3_p;
output wire tx_3_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_out_clk_3, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ad9371_xcvr_0_tx_out_clk_3" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_out_clk_3 CLK" *)
output wire tx_out_clk_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_clk_3, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_tx_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_clk_3 CLK" *)
input wire tx_clk_3;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_3 txcharisk" *)
input wire [3 : 0] tx_charisk_3;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_3 txdata" *)
input wire [31 : 0] tx_data_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_3 enb" *)
input wire up_es_enb_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_3 addr" *)
input wire [11 : 0] up_es_addr_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_3 wr" *)
input wire up_es_wr_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_3 wdata" *)
input wire [15 : 0] up_es_wdata_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_3 rdata" *)
output wire [15 : 0] up_es_rdata_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_cm:1.0 up_es_3 ready" *)
output wire up_es_ready_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 pll_locked" *)
output wire up_rx_pll_locked_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_rx_rst_3, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_rx_rst_3 RST, analog.com:interface:if_xcvr_ch:1.0 up_rx_3 rst" *)
input wire up_rx_rst_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 user_ready" *)
input wire up_rx_user_ready_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 rst_done" *)
output wire up_rx_rst_done_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 lpm_dfe_n" *)
input wire up_rx_lpm_dfe_n_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 rate" *)
input wire [2 : 0] up_rx_rate_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 sys_clk_sel" *)
input wire [1 : 0] up_rx_sys_clk_sel_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 out_clk_sel" *)
input wire [2 : 0] up_rx_out_clk_sel_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 enb" *)
input wire up_rx_enb_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 addr" *)
input wire [11 : 0] up_rx_addr_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 wr" *)
input wire up_rx_wr_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 wdata" *)
input wire [15 : 0] up_rx_wdata_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 rdata" *)
output wire [15 : 0] up_rx_rdata_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_rx_3 ready" *)
output wire up_rx_ready_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 pll_locked" *)
output wire up_tx_pll_locked_3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up_tx_rst_3, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 up_tx_rst_3 RST, analog.com:interface:if_xcvr_ch:1.0 up_tx_3 rst" *)
input wire up_tx_rst_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 user_ready" *)
input wire up_tx_user_ready_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 rst_done" *)
output wire up_tx_rst_done_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 lpm_dfe_n" *)
input wire up_tx_lpm_dfe_n_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 rate" *)
input wire [2 : 0] up_tx_rate_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 sys_clk_sel" *)
input wire [1 : 0] up_tx_sys_clk_sel_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 out_clk_sel" *)
input wire [2 : 0] up_tx_out_clk_sel_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 enb" *)
input wire up_tx_enb_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 addr" *)
input wire [11 : 0] up_tx_addr_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 wr" *)
input wire up_tx_wr_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 wdata" *)
input wire [15 : 0] up_tx_wdata_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 rdata" *)
output wire [15 : 0] up_tx_rdata_3;
(* X_INTERFACE_INFO = "analog.com:interface:if_xcvr_ch:1.0 up_tx_3 ready" *)
output wire up_tx_ready_3;

  util_adxcvr #(
    .XCVR_TYPE(0),
    .QPLL_REFCLK_DIV(1),
    .QPLL_FBDIV_RATIO(1),
    .QPLL_CFG(27'B000011010000000000110000001),
    .QPLL_FBDIV(10'B0001010000),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_4_5(5),
    .TX_NUM_OF_LANES(4),
    .TX_OUT_DIV(2),
    .TX_CLK25_DIV(5),
    .RX_NUM_OF_LANES(4),
    .RX_OUT_DIV(1),
    .RX_CLK25_DIV(5),
    .RX_DFE_LPM_CFG(16'H0104),
    .RX_PMA_CFG(32'H00018480),
    .RX_CDR_CFG(72'H03000023ff20400020)
  ) inst (
    .up_rstn(up_rstn),
    .up_clk(up_clk),
    .qpll_ref_clk_0(qpll_ref_clk_0),
    .up_qpll_rst_0(up_qpll_rst_0),
    .cpll_ref_clk_0(cpll_ref_clk_0),
    .up_cpll_rst_0(up_cpll_rst_0),
    .rx_0_p(rx_0_p),
    .rx_0_n(rx_0_n),
    .rx_out_clk_0(rx_out_clk_0),
    .rx_clk_0(rx_clk_0),
    .rx_charisk_0(rx_charisk_0),
    .rx_disperr_0(rx_disperr_0),
    .rx_notintable_0(rx_notintable_0),
    .rx_data_0(rx_data_0),
    .rx_calign_0(rx_calign_0),
    .tx_0_p(tx_0_p),
    .tx_0_n(tx_0_n),
    .tx_out_clk_0(tx_out_clk_0),
    .tx_clk_0(tx_clk_0),
    .tx_charisk_0(tx_charisk_0),
    .tx_data_0(tx_data_0),
    .up_cm_enb_0(up_cm_enb_0),
    .up_cm_addr_0(up_cm_addr_0),
    .up_cm_wr_0(up_cm_wr_0),
    .up_cm_wdata_0(up_cm_wdata_0),
    .up_cm_rdata_0(up_cm_rdata_0),
    .up_cm_ready_0(up_cm_ready_0),
    .up_es_enb_0(up_es_enb_0),
    .up_es_addr_0(up_es_addr_0),
    .up_es_wr_0(up_es_wr_0),
    .up_es_wdata_0(up_es_wdata_0),
    .up_es_rdata_0(up_es_rdata_0),
    .up_es_ready_0(up_es_ready_0),
    .up_rx_pll_locked_0(up_rx_pll_locked_0),
    .up_rx_rst_0(up_rx_rst_0),
    .up_rx_user_ready_0(up_rx_user_ready_0),
    .up_rx_rst_done_0(up_rx_rst_done_0),
    .up_rx_lpm_dfe_n_0(up_rx_lpm_dfe_n_0),
    .up_rx_rate_0(up_rx_rate_0),
    .up_rx_sys_clk_sel_0(up_rx_sys_clk_sel_0),
    .up_rx_out_clk_sel_0(up_rx_out_clk_sel_0),
    .up_rx_enb_0(up_rx_enb_0),
    .up_rx_addr_0(up_rx_addr_0),
    .up_rx_wr_0(up_rx_wr_0),
    .up_rx_wdata_0(up_rx_wdata_0),
    .up_rx_rdata_0(up_rx_rdata_0),
    .up_rx_ready_0(up_rx_ready_0),
    .up_tx_pll_locked_0(up_tx_pll_locked_0),
    .up_tx_rst_0(up_tx_rst_0),
    .up_tx_user_ready_0(up_tx_user_ready_0),
    .up_tx_rst_done_0(up_tx_rst_done_0),
    .up_tx_lpm_dfe_n_0(up_tx_lpm_dfe_n_0),
    .up_tx_rate_0(up_tx_rate_0),
    .up_tx_sys_clk_sel_0(up_tx_sys_clk_sel_0),
    .up_tx_out_clk_sel_0(up_tx_out_clk_sel_0),
    .up_tx_enb_0(up_tx_enb_0),
    .up_tx_addr_0(up_tx_addr_0),
    .up_tx_wr_0(up_tx_wr_0),
    .up_tx_wdata_0(up_tx_wdata_0),
    .up_tx_rdata_0(up_tx_rdata_0),
    .up_tx_ready_0(up_tx_ready_0),
    .cpll_ref_clk_1(cpll_ref_clk_1),
    .up_cpll_rst_1(up_cpll_rst_1),
    .rx_1_p(rx_1_p),
    .rx_1_n(rx_1_n),
    .rx_out_clk_1(rx_out_clk_1),
    .rx_clk_1(rx_clk_1),
    .rx_charisk_1(rx_charisk_1),
    .rx_disperr_1(rx_disperr_1),
    .rx_notintable_1(rx_notintable_1),
    .rx_data_1(rx_data_1),
    .rx_calign_1(rx_calign_1),
    .tx_1_p(tx_1_p),
    .tx_1_n(tx_1_n),
    .tx_out_clk_1(tx_out_clk_1),
    .tx_clk_1(tx_clk_1),
    .tx_charisk_1(tx_charisk_1),
    .tx_data_1(tx_data_1),
    .up_es_enb_1(up_es_enb_1),
    .up_es_addr_1(up_es_addr_1),
    .up_es_wr_1(up_es_wr_1),
    .up_es_wdata_1(up_es_wdata_1),
    .up_es_rdata_1(up_es_rdata_1),
    .up_es_ready_1(up_es_ready_1),
    .up_rx_pll_locked_1(up_rx_pll_locked_1),
    .up_rx_rst_1(up_rx_rst_1),
    .up_rx_user_ready_1(up_rx_user_ready_1),
    .up_rx_rst_done_1(up_rx_rst_done_1),
    .up_rx_lpm_dfe_n_1(up_rx_lpm_dfe_n_1),
    .up_rx_rate_1(up_rx_rate_1),
    .up_rx_sys_clk_sel_1(up_rx_sys_clk_sel_1),
    .up_rx_out_clk_sel_1(up_rx_out_clk_sel_1),
    .up_rx_enb_1(up_rx_enb_1),
    .up_rx_addr_1(up_rx_addr_1),
    .up_rx_wr_1(up_rx_wr_1),
    .up_rx_wdata_1(up_rx_wdata_1),
    .up_rx_rdata_1(up_rx_rdata_1),
    .up_rx_ready_1(up_rx_ready_1),
    .up_tx_pll_locked_1(up_tx_pll_locked_1),
    .up_tx_rst_1(up_tx_rst_1),
    .up_tx_user_ready_1(up_tx_user_ready_1),
    .up_tx_rst_done_1(up_tx_rst_done_1),
    .up_tx_lpm_dfe_n_1(up_tx_lpm_dfe_n_1),
    .up_tx_rate_1(up_tx_rate_1),
    .up_tx_sys_clk_sel_1(up_tx_sys_clk_sel_1),
    .up_tx_out_clk_sel_1(up_tx_out_clk_sel_1),
    .up_tx_enb_1(up_tx_enb_1),
    .up_tx_addr_1(up_tx_addr_1),
    .up_tx_wr_1(up_tx_wr_1),
    .up_tx_wdata_1(up_tx_wdata_1),
    .up_tx_rdata_1(up_tx_rdata_1),
    .up_tx_ready_1(up_tx_ready_1),
    .cpll_ref_clk_2(cpll_ref_clk_2),
    .up_cpll_rst_2(up_cpll_rst_2),
    .rx_2_p(rx_2_p),
    .rx_2_n(rx_2_n),
    .rx_out_clk_2(rx_out_clk_2),
    .rx_clk_2(rx_clk_2),
    .rx_charisk_2(rx_charisk_2),
    .rx_disperr_2(rx_disperr_2),
    .rx_notintable_2(rx_notintable_2),
    .rx_data_2(rx_data_2),
    .rx_calign_2(rx_calign_2),
    .tx_2_p(tx_2_p),
    .tx_2_n(tx_2_n),
    .tx_out_clk_2(tx_out_clk_2),
    .tx_clk_2(tx_clk_2),
    .tx_charisk_2(tx_charisk_2),
    .tx_data_2(tx_data_2),
    .up_es_enb_2(up_es_enb_2),
    .up_es_addr_2(up_es_addr_2),
    .up_es_wr_2(up_es_wr_2),
    .up_es_wdata_2(up_es_wdata_2),
    .up_es_rdata_2(up_es_rdata_2),
    .up_es_ready_2(up_es_ready_2),
    .up_rx_pll_locked_2(up_rx_pll_locked_2),
    .up_rx_rst_2(up_rx_rst_2),
    .up_rx_user_ready_2(up_rx_user_ready_2),
    .up_rx_rst_done_2(up_rx_rst_done_2),
    .up_rx_lpm_dfe_n_2(up_rx_lpm_dfe_n_2),
    .up_rx_rate_2(up_rx_rate_2),
    .up_rx_sys_clk_sel_2(up_rx_sys_clk_sel_2),
    .up_rx_out_clk_sel_2(up_rx_out_clk_sel_2),
    .up_rx_enb_2(up_rx_enb_2),
    .up_rx_addr_2(up_rx_addr_2),
    .up_rx_wr_2(up_rx_wr_2),
    .up_rx_wdata_2(up_rx_wdata_2),
    .up_rx_rdata_2(up_rx_rdata_2),
    .up_rx_ready_2(up_rx_ready_2),
    .up_tx_pll_locked_2(up_tx_pll_locked_2),
    .up_tx_rst_2(up_tx_rst_2),
    .up_tx_user_ready_2(up_tx_user_ready_2),
    .up_tx_rst_done_2(up_tx_rst_done_2),
    .up_tx_lpm_dfe_n_2(up_tx_lpm_dfe_n_2),
    .up_tx_rate_2(up_tx_rate_2),
    .up_tx_sys_clk_sel_2(up_tx_sys_clk_sel_2),
    .up_tx_out_clk_sel_2(up_tx_out_clk_sel_2),
    .up_tx_enb_2(up_tx_enb_2),
    .up_tx_addr_2(up_tx_addr_2),
    .up_tx_wr_2(up_tx_wr_2),
    .up_tx_wdata_2(up_tx_wdata_2),
    .up_tx_rdata_2(up_tx_rdata_2),
    .up_tx_ready_2(up_tx_ready_2),
    .cpll_ref_clk_3(cpll_ref_clk_3),
    .up_cpll_rst_3(up_cpll_rst_3),
    .rx_3_p(rx_3_p),
    .rx_3_n(rx_3_n),
    .rx_out_clk_3(rx_out_clk_3),
    .rx_clk_3(rx_clk_3),
    .rx_charisk_3(rx_charisk_3),
    .rx_disperr_3(rx_disperr_3),
    .rx_notintable_3(rx_notintable_3),
    .rx_data_3(rx_data_3),
    .rx_calign_3(rx_calign_3),
    .tx_3_p(tx_3_p),
    .tx_3_n(tx_3_n),
    .tx_out_clk_3(tx_out_clk_3),
    .tx_clk_3(tx_clk_3),
    .tx_charisk_3(tx_charisk_3),
    .tx_data_3(tx_data_3),
    .up_es_enb_3(up_es_enb_3),
    .up_es_addr_3(up_es_addr_3),
    .up_es_wr_3(up_es_wr_3),
    .up_es_wdata_3(up_es_wdata_3),
    .up_es_rdata_3(up_es_rdata_3),
    .up_es_ready_3(up_es_ready_3),
    .up_rx_pll_locked_3(up_rx_pll_locked_3),
    .up_rx_rst_3(up_rx_rst_3),
    .up_rx_user_ready_3(up_rx_user_ready_3),
    .up_rx_rst_done_3(up_rx_rst_done_3),
    .up_rx_lpm_dfe_n_3(up_rx_lpm_dfe_n_3),
    .up_rx_rate_3(up_rx_rate_3),
    .up_rx_sys_clk_sel_3(up_rx_sys_clk_sel_3),
    .up_rx_out_clk_sel_3(up_rx_out_clk_sel_3),
    .up_rx_enb_3(up_rx_enb_3),
    .up_rx_addr_3(up_rx_addr_3),
    .up_rx_wr_3(up_rx_wr_3),
    .up_rx_wdata_3(up_rx_wdata_3),
    .up_rx_rdata_3(up_rx_rdata_3),
    .up_rx_ready_3(up_rx_ready_3),
    .up_tx_pll_locked_3(up_tx_pll_locked_3),
    .up_tx_rst_3(up_tx_rst_3),
    .up_tx_user_ready_3(up_tx_user_ready_3),
    .up_tx_rst_done_3(up_tx_rst_done_3),
    .up_tx_lpm_dfe_n_3(up_tx_lpm_dfe_n_3),
    .up_tx_rate_3(up_tx_rate_3),
    .up_tx_sys_clk_sel_3(up_tx_sys_clk_sel_3),
    .up_tx_out_clk_sel_3(up_tx_out_clk_sel_3),
    .up_tx_enb_3(up_tx_enb_3),
    .up_tx_addr_3(up_tx_addr_3),
    .up_tx_wr_3(up_tx_wr_3),
    .up_tx_wdata_3(up_tx_wdata_3),
    .up_tx_rdata_3(up_tx_rdata_3),
    .up_tx_ready_3(up_tx_ready_3),
    .qpll_ref_clk_4(1'B0),
    .up_qpll_rst_4(1'B0),
    .cpll_ref_clk_4(1'B0),
    .up_cpll_rst_4(1'B0),
    .rx_4_p(1'B0),
    .rx_4_n(1'B0),
    .rx_out_clk_4(),
    .rx_clk_4(1'B0),
    .rx_charisk_4(),
    .rx_disperr_4(),
    .rx_notintable_4(),
    .rx_data_4(),
    .rx_calign_4(1'B0),
    .tx_4_p(),
    .tx_4_n(),
    .tx_out_clk_4(),
    .tx_clk_4(1'B0),
    .tx_charisk_4(4'B0),
    .tx_data_4(32'B0),
    .up_cm_enb_4(1'B0),
    .up_cm_addr_4(12'B0),
    .up_cm_wr_4(1'B0),
    .up_cm_wdata_4(16'B0),
    .up_cm_rdata_4(),
    .up_cm_ready_4(),
    .up_es_enb_4(1'B0),
    .up_es_addr_4(12'B0),
    .up_es_wr_4(1'B0),
    .up_es_wdata_4(16'B0),
    .up_es_rdata_4(),
    .up_es_ready_4(),
    .up_rx_pll_locked_4(),
    .up_rx_rst_4(1'B0),
    .up_rx_user_ready_4(1'B0),
    .up_rx_rst_done_4(),
    .up_rx_lpm_dfe_n_4(1'B0),
    .up_rx_rate_4(3'B0),
    .up_rx_sys_clk_sel_4(2'B0),
    .up_rx_out_clk_sel_4(3'B0),
    .up_rx_enb_4(1'B0),
    .up_rx_addr_4(12'B0),
    .up_rx_wr_4(1'B0),
    .up_rx_wdata_4(16'B0),
    .up_rx_rdata_4(),
    .up_rx_ready_4(),
    .up_tx_pll_locked_4(),
    .up_tx_rst_4(1'B0),
    .up_tx_user_ready_4(1'B0),
    .up_tx_rst_done_4(),
    .up_tx_lpm_dfe_n_4(1'B0),
    .up_tx_rate_4(3'B0),
    .up_tx_sys_clk_sel_4(2'B0),
    .up_tx_out_clk_sel_4(3'B0),
    .up_tx_enb_4(1'B0),
    .up_tx_addr_4(12'B0),
    .up_tx_wr_4(1'B0),
    .up_tx_wdata_4(16'B0),
    .up_tx_rdata_4(),
    .up_tx_ready_4(),
    .cpll_ref_clk_5(1'B0),
    .up_cpll_rst_5(1'B0),
    .rx_5_p(1'B0),
    .rx_5_n(1'B0),
    .rx_out_clk_5(),
    .rx_clk_5(1'B0),
    .rx_charisk_5(),
    .rx_disperr_5(),
    .rx_notintable_5(),
    .rx_data_5(),
    .rx_calign_5(1'B0),
    .tx_5_p(),
    .tx_5_n(),
    .tx_out_clk_5(),
    .tx_clk_5(1'B0),
    .tx_charisk_5(4'B0),
    .tx_data_5(32'B0),
    .up_es_enb_5(1'B0),
    .up_es_addr_5(12'B0),
    .up_es_wr_5(1'B0),
    .up_es_wdata_5(16'B0),
    .up_es_rdata_5(),
    .up_es_ready_5(),
    .up_rx_pll_locked_5(),
    .up_rx_rst_5(1'B0),
    .up_rx_user_ready_5(1'B0),
    .up_rx_rst_done_5(),
    .up_rx_lpm_dfe_n_5(1'B0),
    .up_rx_rate_5(3'B0),
    .up_rx_sys_clk_sel_5(2'B0),
    .up_rx_out_clk_sel_5(3'B0),
    .up_rx_enb_5(1'B0),
    .up_rx_addr_5(12'B0),
    .up_rx_wr_5(1'B0),
    .up_rx_wdata_5(16'B0),
    .up_rx_rdata_5(),
    .up_rx_ready_5(),
    .up_tx_pll_locked_5(),
    .up_tx_rst_5(1'B0),
    .up_tx_user_ready_5(1'B0),
    .up_tx_rst_done_5(),
    .up_tx_lpm_dfe_n_5(1'B0),
    .up_tx_rate_5(3'B0),
    .up_tx_sys_clk_sel_5(2'B0),
    .up_tx_out_clk_sel_5(3'B0),
    .up_tx_enb_5(1'B0),
    .up_tx_addr_5(12'B0),
    .up_tx_wr_5(1'B0),
    .up_tx_wdata_5(16'B0),
    .up_tx_rdata_5(),
    .up_tx_ready_5(),
    .cpll_ref_clk_6(1'B0),
    .up_cpll_rst_6(1'B0),
    .rx_6_p(1'B0),
    .rx_6_n(1'B0),
    .rx_out_clk_6(),
    .rx_clk_6(1'B0),
    .rx_charisk_6(),
    .rx_disperr_6(),
    .rx_notintable_6(),
    .rx_data_6(),
    .rx_calign_6(1'B0),
    .tx_6_p(),
    .tx_6_n(),
    .tx_out_clk_6(),
    .tx_clk_6(1'B0),
    .tx_charisk_6(4'B0),
    .tx_data_6(32'B0),
    .up_es_enb_6(1'B0),
    .up_es_addr_6(12'B0),
    .up_es_wr_6(1'B0),
    .up_es_wdata_6(16'B0),
    .up_es_rdata_6(),
    .up_es_ready_6(),
    .up_rx_pll_locked_6(),
    .up_rx_rst_6(1'B0),
    .up_rx_user_ready_6(1'B0),
    .up_rx_rst_done_6(),
    .up_rx_lpm_dfe_n_6(1'B0),
    .up_rx_rate_6(3'B0),
    .up_rx_sys_clk_sel_6(2'B0),
    .up_rx_out_clk_sel_6(3'B0),
    .up_rx_enb_6(1'B0),
    .up_rx_addr_6(12'B0),
    .up_rx_wr_6(1'B0),
    .up_rx_wdata_6(16'B0),
    .up_rx_rdata_6(),
    .up_rx_ready_6(),
    .up_tx_pll_locked_6(),
    .up_tx_rst_6(1'B0),
    .up_tx_user_ready_6(1'B0),
    .up_tx_rst_done_6(),
    .up_tx_lpm_dfe_n_6(1'B0),
    .up_tx_rate_6(3'B0),
    .up_tx_sys_clk_sel_6(2'B0),
    .up_tx_out_clk_sel_6(3'B0),
    .up_tx_enb_6(1'B0),
    .up_tx_addr_6(12'B0),
    .up_tx_wr_6(1'B0),
    .up_tx_wdata_6(16'B0),
    .up_tx_rdata_6(),
    .up_tx_ready_6(),
    .cpll_ref_clk_7(1'B0),
    .up_cpll_rst_7(1'B0),
    .rx_7_p(1'B0),
    .rx_7_n(1'B0),
    .rx_out_clk_7(),
    .rx_clk_7(1'B0),
    .rx_charisk_7(),
    .rx_disperr_7(),
    .rx_notintable_7(),
    .rx_data_7(),
    .rx_calign_7(1'B0),
    .tx_7_p(),
    .tx_7_n(),
    .tx_out_clk_7(),
    .tx_clk_7(1'B0),
    .tx_charisk_7(4'B0),
    .tx_data_7(32'B0),
    .up_es_enb_7(1'B0),
    .up_es_addr_7(12'B0),
    .up_es_wr_7(1'B0),
    .up_es_wdata_7(16'B0),
    .up_es_rdata_7(),
    .up_es_ready_7(),
    .up_rx_pll_locked_7(),
    .up_rx_rst_7(1'B0),
    .up_rx_user_ready_7(1'B0),
    .up_rx_rst_done_7(),
    .up_rx_lpm_dfe_n_7(1'B0),
    .up_rx_rate_7(3'B0),
    .up_rx_sys_clk_sel_7(2'B0),
    .up_rx_out_clk_sel_7(3'B0),
    .up_rx_enb_7(1'B0),
    .up_rx_addr_7(12'B0),
    .up_rx_wr_7(1'B0),
    .up_rx_wdata_7(16'B0),
    .up_rx_rdata_7(),
    .up_rx_ready_7(),
    .up_tx_pll_locked_7(),
    .up_tx_rst_7(1'B0),
    .up_tx_user_ready_7(1'B0),
    .up_tx_rst_done_7(),
    .up_tx_lpm_dfe_n_7(1'B0),
    .up_tx_rate_7(3'B0),
    .up_tx_sys_clk_sel_7(2'B0),
    .up_tx_out_clk_sel_7(3'B0),
    .up_tx_enb_7(1'B0),
    .up_tx_addr_7(12'B0),
    .up_tx_wr_7(1'B0),
    .up_tx_wdata_7(16'B0),
    .up_tx_rdata_7(),
    .up_tx_ready_7(),
    .qpll_ref_clk_8(1'B0),
    .up_qpll_rst_8(1'B0),
    .cpll_ref_clk_8(1'B0),
    .up_cpll_rst_8(1'B0),
    .rx_8_p(1'B0),
    .rx_8_n(1'B0),
    .rx_out_clk_8(),
    .rx_clk_8(1'B0),
    .rx_charisk_8(),
    .rx_disperr_8(),
    .rx_notintable_8(),
    .rx_data_8(),
    .rx_calign_8(1'B0),
    .tx_8_p(),
    .tx_8_n(),
    .tx_out_clk_8(),
    .tx_clk_8(1'B0),
    .tx_charisk_8(4'B0),
    .tx_data_8(32'B0),
    .up_cm_enb_8(1'B0),
    .up_cm_addr_8(12'B0),
    .up_cm_wr_8(1'B0),
    .up_cm_wdata_8(16'B0),
    .up_cm_rdata_8(),
    .up_cm_ready_8(),
    .up_es_enb_8(1'B0),
    .up_es_addr_8(12'B0),
    .up_es_wr_8(1'B0),
    .up_es_wdata_8(16'B0),
    .up_es_rdata_8(),
    .up_es_ready_8(),
    .up_rx_pll_locked_8(),
    .up_rx_rst_8(1'B0),
    .up_rx_user_ready_8(1'B0),
    .up_rx_rst_done_8(),
    .up_rx_lpm_dfe_n_8(1'B0),
    .up_rx_rate_8(3'B0),
    .up_rx_sys_clk_sel_8(2'B0),
    .up_rx_out_clk_sel_8(3'B0),
    .up_rx_enb_8(1'B0),
    .up_rx_addr_8(12'B0),
    .up_rx_wr_8(1'B0),
    .up_rx_wdata_8(16'B0),
    .up_rx_rdata_8(),
    .up_rx_ready_8(),
    .up_tx_pll_locked_8(),
    .up_tx_rst_8(1'B0),
    .up_tx_user_ready_8(1'B0),
    .up_tx_rst_done_8(),
    .up_tx_lpm_dfe_n_8(1'B0),
    .up_tx_rate_8(3'B0),
    .up_tx_sys_clk_sel_8(2'B0),
    .up_tx_out_clk_sel_8(3'B0),
    .up_tx_enb_8(1'B0),
    .up_tx_addr_8(12'B0),
    .up_tx_wr_8(1'B0),
    .up_tx_wdata_8(16'B0),
    .up_tx_rdata_8(),
    .up_tx_ready_8(),
    .cpll_ref_clk_9(1'B0),
    .up_cpll_rst_9(1'B0),
    .rx_9_p(1'B0),
    .rx_9_n(1'B0),
    .rx_out_clk_9(),
    .rx_clk_9(1'B0),
    .rx_charisk_9(),
    .rx_disperr_9(),
    .rx_notintable_9(),
    .rx_data_9(),
    .rx_calign_9(1'B0),
    .tx_9_p(),
    .tx_9_n(),
    .tx_out_clk_9(),
    .tx_clk_9(1'B0),
    .tx_charisk_9(4'B0),
    .tx_data_9(32'B0),
    .up_es_enb_9(1'B0),
    .up_es_addr_9(12'B0),
    .up_es_wr_9(1'B0),
    .up_es_wdata_9(16'B0),
    .up_es_rdata_9(),
    .up_es_ready_9(),
    .up_rx_pll_locked_9(),
    .up_rx_rst_9(1'B0),
    .up_rx_user_ready_9(1'B0),
    .up_rx_rst_done_9(),
    .up_rx_lpm_dfe_n_9(1'B0),
    .up_rx_rate_9(3'B0),
    .up_rx_sys_clk_sel_9(2'B0),
    .up_rx_out_clk_sel_9(3'B0),
    .up_rx_enb_9(1'B0),
    .up_rx_addr_9(12'B0),
    .up_rx_wr_9(1'B0),
    .up_rx_wdata_9(16'B0),
    .up_rx_rdata_9(),
    .up_rx_ready_9(),
    .up_tx_pll_locked_9(),
    .up_tx_rst_9(1'B0),
    .up_tx_user_ready_9(1'B0),
    .up_tx_rst_done_9(),
    .up_tx_lpm_dfe_n_9(1'B0),
    .up_tx_rate_9(3'B0),
    .up_tx_sys_clk_sel_9(2'B0),
    .up_tx_out_clk_sel_9(3'B0),
    .up_tx_enb_9(1'B0),
    .up_tx_addr_9(12'B0),
    .up_tx_wr_9(1'B0),
    .up_tx_wdata_9(16'B0),
    .up_tx_rdata_9(),
    .up_tx_ready_9(),
    .cpll_ref_clk_10(1'B0),
    .up_cpll_rst_10(1'B0),
    .rx_10_p(1'B0),
    .rx_10_n(1'B0),
    .rx_out_clk_10(),
    .rx_clk_10(1'B0),
    .rx_charisk_10(),
    .rx_disperr_10(),
    .rx_notintable_10(),
    .rx_data_10(),
    .rx_calign_10(1'B0),
    .tx_10_p(),
    .tx_10_n(),
    .tx_out_clk_10(),
    .tx_clk_10(1'B0),
    .tx_charisk_10(4'B0),
    .tx_data_10(32'B0),
    .up_es_enb_10(1'B0),
    .up_es_addr_10(12'B0),
    .up_es_wr_10(1'B0),
    .up_es_wdata_10(16'B0),
    .up_es_rdata_10(),
    .up_es_ready_10(),
    .up_rx_pll_locked_10(),
    .up_rx_rst_10(1'B0),
    .up_rx_user_ready_10(1'B0),
    .up_rx_rst_done_10(),
    .up_rx_lpm_dfe_n_10(1'B0),
    .up_rx_rate_10(3'B0),
    .up_rx_sys_clk_sel_10(2'B0),
    .up_rx_out_clk_sel_10(3'B0),
    .up_rx_enb_10(1'B0),
    .up_rx_addr_10(12'B0),
    .up_rx_wr_10(1'B0),
    .up_rx_wdata_10(16'B0),
    .up_rx_rdata_10(),
    .up_rx_ready_10(),
    .up_tx_pll_locked_10(),
    .up_tx_rst_10(1'B0),
    .up_tx_user_ready_10(1'B0),
    .up_tx_rst_done_10(),
    .up_tx_lpm_dfe_n_10(1'B0),
    .up_tx_rate_10(3'B0),
    .up_tx_sys_clk_sel_10(2'B0),
    .up_tx_out_clk_sel_10(3'B0),
    .up_tx_enb_10(1'B0),
    .up_tx_addr_10(12'B0),
    .up_tx_wr_10(1'B0),
    .up_tx_wdata_10(16'B0),
    .up_tx_rdata_10(),
    .up_tx_ready_10(),
    .cpll_ref_clk_11(1'B0),
    .up_cpll_rst_11(1'B0),
    .rx_11_p(1'B0),
    .rx_11_n(1'B0),
    .rx_out_clk_11(),
    .rx_clk_11(1'B0),
    .rx_charisk_11(),
    .rx_disperr_11(),
    .rx_notintable_11(),
    .rx_data_11(),
    .rx_calign_11(1'B0),
    .tx_11_p(),
    .tx_11_n(),
    .tx_out_clk_11(),
    .tx_clk_11(1'B0),
    .tx_charisk_11(4'B0),
    .tx_data_11(32'B0),
    .up_es_enb_11(1'B0),
    .up_es_addr_11(12'B0),
    .up_es_wr_11(1'B0),
    .up_es_wdata_11(16'B0),
    .up_es_rdata_11(),
    .up_es_ready_11(),
    .up_rx_pll_locked_11(),
    .up_rx_rst_11(1'B0),
    .up_rx_user_ready_11(1'B0),
    .up_rx_rst_done_11(),
    .up_rx_lpm_dfe_n_11(1'B0),
    .up_rx_rate_11(3'B0),
    .up_rx_sys_clk_sel_11(2'B0),
    .up_rx_out_clk_sel_11(3'B0),
    .up_rx_enb_11(1'B0),
    .up_rx_addr_11(12'B0),
    .up_rx_wr_11(1'B0),
    .up_rx_wdata_11(16'B0),
    .up_rx_rdata_11(),
    .up_rx_ready_11(),
    .up_tx_pll_locked_11(),
    .up_tx_rst_11(1'B0),
    .up_tx_user_ready_11(1'B0),
    .up_tx_rst_done_11(),
    .up_tx_lpm_dfe_n_11(1'B0),
    .up_tx_rate_11(3'B0),
    .up_tx_sys_clk_sel_11(2'B0),
    .up_tx_out_clk_sel_11(3'B0),
    .up_tx_enb_11(1'B0),
    .up_tx_addr_11(12'B0),
    .up_tx_wr_11(1'B0),
    .up_tx_wdata_11(16'B0),
    .up_tx_rdata_11(),
    .up_tx_ready_11(),
    .qpll_ref_clk_12(1'B0),
    .up_qpll_rst_12(1'B0),
    .cpll_ref_clk_12(1'B0),
    .up_cpll_rst_12(1'B0),
    .rx_12_p(1'B0),
    .rx_12_n(1'B0),
    .rx_out_clk_12(),
    .rx_clk_12(1'B0),
    .rx_charisk_12(),
    .rx_disperr_12(),
    .rx_notintable_12(),
    .rx_data_12(),
    .rx_calign_12(1'B0),
    .tx_12_p(),
    .tx_12_n(),
    .tx_out_clk_12(),
    .tx_clk_12(1'B0),
    .tx_charisk_12(4'B0),
    .tx_data_12(32'B0),
    .up_cm_enb_12(1'B0),
    .up_cm_addr_12(12'B0),
    .up_cm_wr_12(1'B0),
    .up_cm_wdata_12(16'B0),
    .up_cm_rdata_12(),
    .up_cm_ready_12(),
    .up_es_enb_12(1'B0),
    .up_es_addr_12(12'B0),
    .up_es_wr_12(1'B0),
    .up_es_wdata_12(16'B0),
    .up_es_rdata_12(),
    .up_es_ready_12(),
    .up_rx_pll_locked_12(),
    .up_rx_rst_12(1'B0),
    .up_rx_user_ready_12(1'B0),
    .up_rx_rst_done_12(),
    .up_rx_lpm_dfe_n_12(1'B0),
    .up_rx_rate_12(3'B0),
    .up_rx_sys_clk_sel_12(2'B0),
    .up_rx_out_clk_sel_12(3'B0),
    .up_rx_enb_12(1'B0),
    .up_rx_addr_12(12'B0),
    .up_rx_wr_12(1'B0),
    .up_rx_wdata_12(16'B0),
    .up_rx_rdata_12(),
    .up_rx_ready_12(),
    .up_tx_pll_locked_12(),
    .up_tx_rst_12(1'B0),
    .up_tx_user_ready_12(1'B0),
    .up_tx_rst_done_12(),
    .up_tx_lpm_dfe_n_12(1'B0),
    .up_tx_rate_12(3'B0),
    .up_tx_sys_clk_sel_12(2'B0),
    .up_tx_out_clk_sel_12(3'B0),
    .up_tx_enb_12(1'B0),
    .up_tx_addr_12(12'B0),
    .up_tx_wr_12(1'B0),
    .up_tx_wdata_12(16'B0),
    .up_tx_rdata_12(),
    .up_tx_ready_12(),
    .cpll_ref_clk_13(1'B0),
    .up_cpll_rst_13(1'B0),
    .rx_13_p(1'B0),
    .rx_13_n(1'B0),
    .rx_out_clk_13(),
    .rx_clk_13(1'B0),
    .rx_charisk_13(),
    .rx_disperr_13(),
    .rx_notintable_13(),
    .rx_data_13(),
    .rx_calign_13(1'B0),
    .tx_13_p(),
    .tx_13_n(),
    .tx_out_clk_13(),
    .tx_clk_13(1'B0),
    .tx_charisk_13(4'B0),
    .tx_data_13(32'B0),
    .up_es_enb_13(1'B0),
    .up_es_addr_13(12'B0),
    .up_es_wr_13(1'B0),
    .up_es_wdata_13(16'B0),
    .up_es_rdata_13(),
    .up_es_ready_13(),
    .up_rx_pll_locked_13(),
    .up_rx_rst_13(1'B0),
    .up_rx_user_ready_13(1'B0),
    .up_rx_rst_done_13(),
    .up_rx_lpm_dfe_n_13(1'B0),
    .up_rx_rate_13(3'B0),
    .up_rx_sys_clk_sel_13(2'B0),
    .up_rx_out_clk_sel_13(3'B0),
    .up_rx_enb_13(1'B0),
    .up_rx_addr_13(12'B0),
    .up_rx_wr_13(1'B0),
    .up_rx_wdata_13(16'B0),
    .up_rx_rdata_13(),
    .up_rx_ready_13(),
    .up_tx_pll_locked_13(),
    .up_tx_rst_13(1'B0),
    .up_tx_user_ready_13(1'B0),
    .up_tx_rst_done_13(),
    .up_tx_lpm_dfe_n_13(1'B0),
    .up_tx_rate_13(3'B0),
    .up_tx_sys_clk_sel_13(2'B0),
    .up_tx_out_clk_sel_13(3'B0),
    .up_tx_enb_13(1'B0),
    .up_tx_addr_13(12'B0),
    .up_tx_wr_13(1'B0),
    .up_tx_wdata_13(16'B0),
    .up_tx_rdata_13(),
    .up_tx_ready_13(),
    .cpll_ref_clk_14(1'B0),
    .up_cpll_rst_14(1'B0),
    .rx_14_p(1'B0),
    .rx_14_n(1'B0),
    .rx_out_clk_14(),
    .rx_clk_14(1'B0),
    .rx_charisk_14(),
    .rx_disperr_14(),
    .rx_notintable_14(),
    .rx_data_14(),
    .rx_calign_14(1'B0),
    .tx_14_p(),
    .tx_14_n(),
    .tx_out_clk_14(),
    .tx_clk_14(1'B0),
    .tx_charisk_14(4'B0),
    .tx_data_14(32'B0),
    .up_es_enb_14(1'B0),
    .up_es_addr_14(12'B0),
    .up_es_wr_14(1'B0),
    .up_es_wdata_14(16'B0),
    .up_es_rdata_14(),
    .up_es_ready_14(),
    .up_rx_pll_locked_14(),
    .up_rx_rst_14(1'B0),
    .up_rx_user_ready_14(1'B0),
    .up_rx_rst_done_14(),
    .up_rx_lpm_dfe_n_14(1'B0),
    .up_rx_rate_14(3'B0),
    .up_rx_sys_clk_sel_14(2'B0),
    .up_rx_out_clk_sel_14(3'B0),
    .up_rx_enb_14(1'B0),
    .up_rx_addr_14(12'B0),
    .up_rx_wr_14(1'B0),
    .up_rx_wdata_14(16'B0),
    .up_rx_rdata_14(),
    .up_rx_ready_14(),
    .up_tx_pll_locked_14(),
    .up_tx_rst_14(1'B0),
    .up_tx_user_ready_14(1'B0),
    .up_tx_rst_done_14(),
    .up_tx_lpm_dfe_n_14(1'B0),
    .up_tx_rate_14(3'B0),
    .up_tx_sys_clk_sel_14(2'B0),
    .up_tx_out_clk_sel_14(3'B0),
    .up_tx_enb_14(1'B0),
    .up_tx_addr_14(12'B0),
    .up_tx_wr_14(1'B0),
    .up_tx_wdata_14(16'B0),
    .up_tx_rdata_14(),
    .up_tx_ready_14(),
    .cpll_ref_clk_15(1'B0),
    .up_cpll_rst_15(1'B0),
    .rx_15_p(1'B0),
    .rx_15_n(1'B0),
    .rx_out_clk_15(),
    .rx_clk_15(1'B0),
    .rx_charisk_15(),
    .rx_disperr_15(),
    .rx_notintable_15(),
    .rx_data_15(),
    .rx_calign_15(1'B0),
    .tx_15_p(),
    .tx_15_n(),
    .tx_out_clk_15(),
    .tx_clk_15(1'B0),
    .tx_charisk_15(4'B0),
    .tx_data_15(32'B0),
    .up_es_enb_15(1'B0),
    .up_es_addr_15(12'B0),
    .up_es_wr_15(1'B0),
    .up_es_wdata_15(16'B0),
    .up_es_rdata_15(),
    .up_es_ready_15(),
    .up_rx_pll_locked_15(),
    .up_rx_rst_15(1'B0),
    .up_rx_user_ready_15(1'B0),
    .up_rx_rst_done_15(),
    .up_rx_lpm_dfe_n_15(1'B0),
    .up_rx_rate_15(3'B0),
    .up_rx_sys_clk_sel_15(2'B0),
    .up_rx_out_clk_sel_15(3'B0),
    .up_rx_enb_15(1'B0),
    .up_rx_addr_15(12'B0),
    .up_rx_wr_15(1'B0),
    .up_rx_wdata_15(16'B0),
    .up_rx_rdata_15(),
    .up_rx_ready_15(),
    .up_tx_pll_locked_15(),
    .up_tx_rst_15(1'B0),
    .up_tx_user_ready_15(1'B0),
    .up_tx_rst_done_15(),
    .up_tx_lpm_dfe_n_15(1'B0),
    .up_tx_rate_15(3'B0),
    .up_tx_sys_clk_sel_15(2'B0),
    .up_tx_out_clk_sel_15(3'B0),
    .up_tx_enb_15(1'B0),
    .up_tx_addr_15(12'B0),
    .up_tx_wr_15(1'B0),
    .up_tx_wdata_15(16'B0),
    .up_tx_rdata_15(),
    .up_tx_ready_15()
  );
endmodule
