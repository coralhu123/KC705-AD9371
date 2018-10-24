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


// IP VLNV: analog.com:user:jesd204_rx:1.0
// IP Revision: 1

(* X_CORE_INFO = "jesd204_rx,Vivado 2017.4.1" *)
(* CHECK_LICENSE_TYPE = "system_rx_0,jesd204_rx,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_rx_0 (
  clk,
  reset,
  phy_data,
  phy_charisk,
  phy_notintable,
  phy_disperr,
  sysref,
  lmfc_edge,
  lmfc_clk,
  event_sysref_alignment_error,
  event_sysref_edge,
  sync,
  phy_en_char_align,
  rx_data,
  rx_valid,
  rx_eof,
  rx_sof,
  cfg_lanes_disable,
  cfg_beats_per_multiframe,
  cfg_octets_per_frame,
  cfg_lmfc_offset,
  cfg_sysref_disable,
  cfg_sysref_oneshot,
  cfg_buffer_early_release,
  cfg_buffer_delay,
  cfg_disable_char_replacement,
  cfg_disable_scrambler,
  ilas_config_valid,
  ilas_config_addr,
  ilas_config_data,
  status_ctrl_state,
  status_lane_cgs_state,
  status_lane_ifs_ready,
  status_lane_latency
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_cfg_rx_ilas_config_rx_event_rx_status_rx_data_signal_clock, ASSOCIATED_BUSIF rx_cfg:rx_ilas_config:rx_event:rx_status:rx_data, ASSOCIATED_RESET reset, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN system_axi_ad9371_rx_clkgen_0_clk_0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_cfg_rx_ilas_config_rx_event_rx_status_rx_data_signal_clock CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_cfg_rx_ilas_config_rx_event_rx_status_rx_data_signal_reset, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rx_cfg_rx_ilas_config_rx_event_rx_status_rx_data_signal_reset RST" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_phy0 rxdata [31:0] [31:0], xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_phy1 rxdata [31:0] [63:32]" *)
input wire [63 : 0] phy_data;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_phy0 rxcharisk [3:0] [3:0], xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_phy1 rxcharisk [3:0] [7:4]" *)
input wire [7 : 0] phy_charisk;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_phy0 rxnotintable [3:0] [3:0], xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_phy1 rxnotintable [3:0] [7:4]" *)
input wire [7 : 0] phy_notintable;
(* X_INTERFACE_INFO = "xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_phy0 rxdisperr [3:0] [3:0], xilinx.com:display_jesd204:jesd204_rx_bus:1.0 rx_phy1 rxdisperr [3:0] [7:4]" *)
input wire [7 : 0] phy_disperr;
input wire sysref;
output wire lmfc_edge;
output wire lmfc_clk;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_event:1.0 rx_event sysref_alignment_error" *)
output wire event_sysref_alignment_error;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_event:1.0 rx_event sysref_edge" *)
output wire event_sysref_edge;
output wire sync;
output wire phy_en_char_align;
output wire [63 : 0] rx_data;
output wire rx_valid;
output wire [3 : 0] rx_eof;
output wire [3 : 0] rx_sof;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg lanes_disable" *)
input wire [1 : 0] cfg_lanes_disable;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg beats_per_multiframe" *)
input wire [7 : 0] cfg_beats_per_multiframe;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg octets_per_frame" *)
input wire [7 : 0] cfg_octets_per_frame;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg lmfc_offset" *)
input wire [7 : 0] cfg_lmfc_offset;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg sysref_disable" *)
input wire cfg_sysref_disable;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg sysref_oneshot" *)
input wire cfg_sysref_oneshot;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg buffer_early_release" *)
input wire cfg_buffer_early_release;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg buffer_delay" *)
input wire [7 : 0] cfg_buffer_delay;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg disable_char_replacement" *)
input wire cfg_disable_char_replacement;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_cfg:1.0 rx_cfg disable_scrambler" *)
input wire cfg_disable_scrambler;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_ilas_config:1.0 rx_ilas_config valid" *)
output wire [1 : 0] ilas_config_valid;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_ilas_config:1.0 rx_ilas_config addr" *)
output wire [3 : 0] ilas_config_addr;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_ilas_config:1.0 rx_ilas_config data" *)
output wire [63 : 0] ilas_config_data;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_status:1.0 rx_status ctrl_state" *)
output wire [1 : 0] status_ctrl_state;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_status:1.0 rx_status lane_cgs_state" *)
output wire [3 : 0] status_lane_cgs_state;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_status:1.0 rx_status lane_ifs_ready" *)
output wire [1 : 0] status_lane_ifs_ready;
(* X_INTERFACE_INFO = "analog.com:interface:jesd204_rx_status:1.0 rx_status lane_latency" *)
output wire [27 : 0] status_lane_latency;

  jesd204_rx #(
    .NUM_LANES(2)
  ) inst (
    .clk(clk),
    .reset(reset),
    .phy_data(phy_data),
    .phy_charisk(phy_charisk),
    .phy_notintable(phy_notintable),
    .phy_disperr(phy_disperr),
    .sysref(sysref),
    .lmfc_edge(lmfc_edge),
    .lmfc_clk(lmfc_clk),
    .event_sysref_alignment_error(event_sysref_alignment_error),
    .event_sysref_edge(event_sysref_edge),
    .sync(sync),
    .phy_en_char_align(phy_en_char_align),
    .rx_data(rx_data),
    .rx_valid(rx_valid),
    .rx_eof(rx_eof),
    .rx_sof(rx_sof),
    .cfg_lanes_disable(cfg_lanes_disable),
    .cfg_beats_per_multiframe(cfg_beats_per_multiframe),
    .cfg_octets_per_frame(cfg_octets_per_frame),
    .cfg_lmfc_offset(cfg_lmfc_offset),
    .cfg_sysref_disable(cfg_sysref_disable),
    .cfg_sysref_oneshot(cfg_sysref_oneshot),
    .cfg_buffer_early_release(cfg_buffer_early_release),
    .cfg_buffer_delay(cfg_buffer_delay),
    .cfg_disable_char_replacement(cfg_disable_char_replacement),
    .cfg_disable_scrambler(cfg_disable_scrambler),
    .ilas_config_valid(ilas_config_valid),
    .ilas_config_addr(ilas_config_addr),
    .ilas_config_data(ilas_config_data),
    .status_ctrl_state(status_ctrl_state),
    .status_lane_cgs_state(status_lane_cgs_state),
    .status_lane_ifs_ready(status_lane_ifs_ready),
    .status_lane_latency(status_lane_latency)
  );
endmodule
