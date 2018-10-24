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


// IP VLNV: analog.com:user:axi_ad9371:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_axi_ad9371_core_0 (
  adc_clk,
  adc_rx_valid,
  adc_rx_sof,
  adc_rx_data,
  adc_rx_ready,
  adc_os_clk,
  adc_rx_os_valid,
  adc_rx_os_sof,
  adc_rx_os_data,
  adc_rx_os_ready,
  dac_clk,
  dac_tx_valid,
  dac_tx_data,
  dac_tx_ready,
  dac_sync_in,
  dac_sync_out,
  adc_enable_i0,
  adc_valid_i0,
  adc_data_i0,
  adc_enable_q0,
  adc_valid_q0,
  adc_data_q0,
  adc_enable_i1,
  adc_valid_i1,
  adc_data_i1,
  adc_enable_q1,
  adc_valid_q1,
  adc_data_q1,
  adc_dovf,
  adc_dunf,
  adc_os_enable_i0,
  adc_os_valid_i0,
  adc_os_data_i0,
  adc_os_enable_q0,
  adc_os_valid_q0,
  adc_os_data_q0,
  adc_os_dovf,
  adc_os_dunf,
  dac_enable_i0,
  dac_valid_i0,
  dac_data_i0,
  dac_enable_q0,
  dac_valid_q0,
  dac_data_q0,
  dac_enable_i1,
  dac_valid_i1,
  dac_data_i1,
  dac_enable_q1,
  dac_valid_q1,
  dac_data_q1,
  dac_dovf,
  dac_dunf,
  s_axi_aclk,
  s_axi_aresetn,
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
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rready
);

input wire adc_clk;
input wire adc_rx_valid;
input wire [3 : 0] adc_rx_sof;
input wire [63 : 0] adc_rx_data;
output wire adc_rx_ready;
input wire adc_os_clk;
input wire adc_rx_os_valid;
input wire [3 : 0] adc_rx_os_sof;
input wire [63 : 0] adc_rx_os_data;
output wire adc_rx_os_ready;
input wire dac_clk;
output wire dac_tx_valid;
output wire [127 : 0] dac_tx_data;
input wire dac_tx_ready;
input wire dac_sync_in;
output wire dac_sync_out;
output wire adc_enable_i0;
output wire adc_valid_i0;
output wire [15 : 0] adc_data_i0;
output wire adc_enable_q0;
output wire adc_valid_q0;
output wire [15 : 0] adc_data_q0;
output wire adc_enable_i1;
output wire adc_valid_i1;
output wire [15 : 0] adc_data_i1;
output wire adc_enable_q1;
output wire adc_valid_q1;
output wire [15 : 0] adc_data_q1;
input wire adc_dovf;
input wire adc_dunf;
output wire adc_os_enable_i0;
output wire adc_os_valid_i0;
output wire [31 : 0] adc_os_data_i0;
output wire adc_os_enable_q0;
output wire adc_os_valid_q0;
output wire [31 : 0] adc_os_data_q0;
input wire adc_os_dovf;
input wire adc_os_dunf;
output wire dac_enable_i0;
output wire dac_valid_i0;
input wire [31 : 0] dac_data_i0;
output wire dac_enable_q0;
output wire dac_valid_q0;
input wire [31 : 0] dac_data_q0;
output wire dac_enable_i1;
output wire dac_valid_i1;
input wire [31 : 0] dac_data_i1;
output wire dac_enable_q1;
output wire dac_valid_q1;
input wire [31 : 0] dac_data_q1;
input wire dac_dovf;
input wire dac_dunf;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN system_mig_7series_0_1_ui_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
input wire s_axi_aresetn;
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
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN system_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;

  axi_ad9371 #(
    .ID(0),
    .DAC_DATAPATH_DISABLE(0),
    .ADC_DATAPATH_DISABLE(0)
  ) inst (
    .adc_clk(adc_clk),
    .adc_rx_valid(adc_rx_valid),
    .adc_rx_sof(adc_rx_sof),
    .adc_rx_data(adc_rx_data),
    .adc_rx_ready(adc_rx_ready),
    .adc_os_clk(adc_os_clk),
    .adc_rx_os_valid(adc_rx_os_valid),
    .adc_rx_os_sof(adc_rx_os_sof),
    .adc_rx_os_data(adc_rx_os_data),
    .adc_rx_os_ready(adc_rx_os_ready),
    .dac_clk(dac_clk),
    .dac_tx_valid(dac_tx_valid),
    .dac_tx_data(dac_tx_data),
    .dac_tx_ready(dac_tx_ready),
    .dac_sync_in(dac_sync_in),
    .dac_sync_out(dac_sync_out),
    .adc_enable_i0(adc_enable_i0),
    .adc_valid_i0(adc_valid_i0),
    .adc_data_i0(adc_data_i0),
    .adc_enable_q0(adc_enable_q0),
    .adc_valid_q0(adc_valid_q0),
    .adc_data_q0(adc_data_q0),
    .adc_enable_i1(adc_enable_i1),
    .adc_valid_i1(adc_valid_i1),
    .adc_data_i1(adc_data_i1),
    .adc_enable_q1(adc_enable_q1),
    .adc_valid_q1(adc_valid_q1),
    .adc_data_q1(adc_data_q1),
    .adc_dovf(adc_dovf),
    .adc_dunf(adc_dunf),
    .adc_os_enable_i0(adc_os_enable_i0),
    .adc_os_valid_i0(adc_os_valid_i0),
    .adc_os_data_i0(adc_os_data_i0),
    .adc_os_enable_q0(adc_os_enable_q0),
    .adc_os_valid_q0(adc_os_valid_q0),
    .adc_os_data_q0(adc_os_data_q0),
    .adc_os_dovf(adc_os_dovf),
    .adc_os_dunf(adc_os_dunf),
    .dac_enable_i0(dac_enable_i0),
    .dac_valid_i0(dac_valid_i0),
    .dac_data_i0(dac_data_i0),
    .dac_enable_q0(dac_enable_q0),
    .dac_valid_q0(dac_valid_q0),
    .dac_data_q0(dac_data_q0),
    .dac_enable_i1(dac_enable_i1),
    .dac_valid_i1(dac_valid_i1),
    .dac_data_i1(dac_data_i1),
    .dac_enable_q1(dac_enable_q1),
    .dac_valid_q1(dac_valid_q1),
    .dac_data_q1(dac_data_q1),
    .dac_dovf(dac_dovf),
    .dac_dunf(dac_dunf),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
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
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rready(s_axi_rready)
  );
endmodule
