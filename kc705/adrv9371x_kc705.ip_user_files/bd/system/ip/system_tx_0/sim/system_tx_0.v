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


// IP VLNV: analog.com:user:jesd204_tx:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_tx_0 (
  clk,
  reset,
  phy_data,
  phy_charisk,
  sysref,
  lmfc_edge,
  lmfc_clk,
  sync,
  tx_data,
  tx_ready,
  tx_valid,
  cfg_lanes_disable,
  cfg_beats_per_multiframe,
  cfg_octets_per_frame,
  cfg_lmfc_offset,
  cfg_sysref_oneshot,
  cfg_sysref_disable,
  cfg_continuous_cgs,
  cfg_continuous_ilas,
  cfg_skip_ilas,
  cfg_mframes_per_ilas,
  cfg_disable_char_replacement,
  cfg_disable_scrambler,
  ilas_config_rd,
  ilas_config_addr,
  ilas_config_data,
  ctrl_manual_sync_request,
  event_sysref_edge,
  event_sysref_alignment_error,
  status_sync,
  status_state
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_data_tx_cfg_tx_ilas_config_tx_event_tx_status_tx_ctrl_signal_clock, ASSOCIATED_BUSIF tx_data:tx_cfg:tx_ilas_config:tx_event:tx_status:tx_ctrl, ASSOCIATED_RESET reset, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_tx_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_data_tx_cfg_tx_ilas_config_tx_event_tx_status_tx_ctrl_signal_clock CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_data_tx_cfg_tx_ilas_config_tx_event_tx_status_tx_ctrl_signal_reset, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 tx_data_tx_cfg_tx_ilas_config_tx_event_tx_status_tx_ctrl_signal_reset RST" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_phy0 txdata [31:0] [31:0], xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_phy1 txdata [31:0] [63:32], xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_phy2 txdata [31:0] [95:64], xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_phy3 txdata [31:0] [127:96]" *)
output wire [127 : 0] phy_data;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_phy0 txcharisk [3:0] [3:0], xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_phy1 txcharisk [3:0] [7:4], xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_phy2 txcharisk [3:0] [11:8], xilinx.com:display_jesd204:jesd204_tx_bus:1.0 tx_phy3 txcharisk [3:0] [15:12]" *)
output wire [15 : 0] phy_charisk;
input wire sysref;
output wire lmfc_edge;
output wire lmfc_clk;
input wire sync;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_data TDATA" *)
input wire [127 : 0] tx_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_data TREADY" *)
output wire tx_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_data, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_tx_clkgen_0_clk_0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_data TVALID" *)
input wire tx_valid;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg lanes_disable" *)
input wire [3 : 0] cfg_lanes_disable;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg beats_per_multiframe" *)
input wire [7 : 0] cfg_beats_per_multiframe;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg octets_per_frame" *)
input wire [7 : 0] cfg_octets_per_frame;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg lmfc_offset" *)
input wire [7 : 0] cfg_lmfc_offset;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg sysref_oneshot" *)
input wire cfg_sysref_oneshot;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg sysref_disable" *)
input wire cfg_sysref_disable;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg continuous_cgs" *)
input wire cfg_continuous_cgs;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg continuous_ilas" *)
input wire cfg_continuous_ilas;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg skip_ilas" *)
input wire cfg_skip_ilas;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg mframes_per_ilas" *)
input wire [7 : 0] cfg_mframes_per_ilas;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg disable_char_replacement" *)
input wire cfg_disable_char_replacement;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_cfg:1.0 tx_cfg disable_scrambler" *)
input wire cfg_disable_scrambler;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_ilas_config:1.0 tx_ilas_config rd" *)
output wire ilas_config_rd;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_ilas_config:1.0 tx_ilas_config addr" *)
output wire [1 : 0] ilas_config_addr;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_ilas_config:1.0 tx_ilas_config data" *)
input wire [127 : 0] ilas_config_data;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_ctrl:1.0 tx_ctrl manual_sync_request" *)
input wire ctrl_manual_sync_request;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_event:1.0 tx_event sysref_edge" *)
output wire event_sysref_edge;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_event:1.0 tx_event sysref_alignment_error" *)
output wire event_sysref_alignment_error;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_status:1.0 tx_status sync" *)
output wire status_sync;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_tx_status:1.0 tx_status state" *)
output wire [1 : 0] status_state;

  jesd204_tx #(
    .NUM_LANES(4)
  ) inst (
    .clk(clk),
    .reset(reset),
    .phy_data(phy_data),
    .phy_charisk(phy_charisk),
    .sysref(sysref),
    .lmfc_edge(lmfc_edge),
    .lmfc_clk(lmfc_clk),
    .sync(sync),
    .tx_data(tx_data),
    .tx_ready(tx_ready),
    .tx_valid(tx_valid),
    .cfg_lanes_disable(cfg_lanes_disable),
    .cfg_beats_per_multiframe(cfg_beats_per_multiframe),
    .cfg_octets_per_frame(cfg_octets_per_frame),
    .cfg_lmfc_offset(cfg_lmfc_offset),
    .cfg_sysref_oneshot(cfg_sysref_oneshot),
    .cfg_sysref_disable(cfg_sysref_disable),
    .cfg_continuous_cgs(cfg_continuous_cgs),
    .cfg_continuous_ilas(cfg_continuous_ilas),
    .cfg_skip_ilas(cfg_skip_ilas),
    .cfg_mframes_per_ilas(cfg_mframes_per_ilas),
    .cfg_disable_char_replacement(cfg_disable_char_replacement),
    .cfg_disable_scrambler(cfg_disable_scrambler),
    .ilas_config_rd(ilas_config_rd),
    .ilas_config_addr(ilas_config_addr),
    .ilas_config_data(ilas_config_data),
    .ctrl_manual_sync_request(ctrl_manual_sync_request),
    .event_sysref_edge(event_sysref_edge),
    .event_sysref_alignment_error(event_sysref_alignment_error),
    .status_sync(status_sync),
    .status_state(status_state)
  );
endmodule
