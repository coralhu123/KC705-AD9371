//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
//Date        : Wed Oct 10 20:33:43 2018
//Host        : hu-PC running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_ad9371_rx_jesd_imp_GUTUBY
   (device_clk,
    irq,
    phy_en_char_align,
    rx_data_tdata,
    rx_data_tvalid,
    rx_eof,
    rx_phy0_rxcharisk,
    rx_phy0_rxdata,
    rx_phy0_rxdisperr,
    rx_phy0_rxnotintable,
    rx_phy1_rxcharisk,
    rx_phy1_rxdata,
    rx_phy1_rxdisperr,
    rx_phy1_rxnotintable,
    rx_sof,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    sync,
    sysref);
  input device_clk;
  output irq;
  output phy_en_char_align;
  output [63:0]rx_data_tdata;
  output rx_data_tvalid;
  output [3:0]rx_eof;
  input [3:0]rx_phy0_rxcharisk;
  input [31:0]rx_phy0_rxdata;
  input [3:0]rx_phy0_rxdisperr;
  input [3:0]rx_phy0_rxnotintable;
  input [3:0]rx_phy1_rxcharisk;
  input [31:0]rx_phy1_rxdata;
  input [3:0]rx_phy1_rxdisperr;
  input [3:0]rx_phy1_rxnotintable;
  output [3:0]rx_sof;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output [0:0]s_axi_arready;
  input [0:0]s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output [0:0]s_axi_awready;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_bready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input [0:0]s_axi_rready;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output [0:0]s_axi_wready;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output sync;
  input sysref;

  wire device_clk_1;
  wire rx_axi_core_reset;
  wire rx_axi_irq;
  wire [7:0]rx_axi_rx_cfg_beats_per_multiframe;
  wire [7:0]rx_axi_rx_cfg_buffer_delay;
  wire rx_axi_rx_cfg_buffer_early_release;
  wire rx_axi_rx_cfg_disable_char_replacement;
  wire rx_axi_rx_cfg_disable_scrambler;
  wire [1:0]rx_axi_rx_cfg_lanes_disable;
  wire [7:0]rx_axi_rx_cfg_lmfc_offset;
  wire [7:0]rx_axi_rx_cfg_octets_per_frame;
  wire rx_axi_rx_cfg_sysref_disable;
  wire rx_axi_rx_cfg_sysref_oneshot;
  wire [3:0]rx_phy0_1_rxcharisk;
  wire [31:0]rx_phy0_1_rxdata;
  wire [3:0]rx_phy0_1_rxdisperr;
  wire [3:0]rx_phy0_1_rxnotintable;
  wire [3:0]rx_phy1_1_rxcharisk;
  wire [31:0]rx_phy1_1_rxdata;
  wire [3:0]rx_phy1_1_rxdisperr;
  wire [3:0]rx_phy1_1_rxnotintable;
  wire rx_phy_en_char_align;
  wire [63:0]rx_rx_data;
  wire [3:0]rx_rx_eof;
  wire rx_rx_event_sysref_alignment_error;
  wire rx_rx_event_sysref_edge;
  wire [3:0]rx_rx_ilas_config_addr;
  wire [63:0]rx_rx_ilas_config_data;
  wire [1:0]rx_rx_ilas_config_valid;
  wire [3:0]rx_rx_sof;
  wire [1:0]rx_rx_status_ctrl_state;
  wire [3:0]rx_rx_status_lane_cgs_state;
  wire [1:0]rx_rx_status_lane_ifs_ready;
  wire [27:0]rx_rx_status_lane_latency;
  wire rx_rx_valid;
  wire rx_sync;
  wire [31:0]s_axi_1_ARADDR;
  wire [2:0]s_axi_1_ARPROT;
  wire s_axi_1_ARREADY;
  wire [0:0]s_axi_1_ARVALID;
  wire [31:0]s_axi_1_AWADDR;
  wire [2:0]s_axi_1_AWPROT;
  wire s_axi_1_AWREADY;
  wire [0:0]s_axi_1_AWVALID;
  wire [0:0]s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire [0:0]s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire [0:0]s_axi_1_WVALID;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire sysref_1;

  assign device_clk_1 = device_clk;
  assign irq = rx_axi_irq;
  assign phy_en_char_align = rx_phy_en_char_align;
  assign rx_data_tdata[63:0] = rx_rx_data;
  assign rx_data_tvalid = rx_rx_valid;
  assign rx_eof[3:0] = rx_rx_eof;
  assign rx_phy0_1_rxcharisk = rx_phy0_rxcharisk[3:0];
  assign rx_phy0_1_rxdata = rx_phy0_rxdata[31:0];
  assign rx_phy0_1_rxdisperr = rx_phy0_rxdisperr[3:0];
  assign rx_phy0_1_rxnotintable = rx_phy0_rxnotintable[3:0];
  assign rx_phy1_1_rxcharisk = rx_phy1_rxcharisk[3:0];
  assign rx_phy1_1_rxdata = rx_phy1_rxdata[31:0];
  assign rx_phy1_1_rxdisperr = rx_phy1_rxdisperr[3:0];
  assign rx_phy1_1_rxnotintable = rx_phy1_rxnotintable[3:0];
  assign rx_sof[3:0] = rx_rx_sof;
  assign s_axi_1_ARADDR = s_axi_araddr[31:0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARVALID = s_axi_arvalid[0];
  assign s_axi_1_AWADDR = s_axi_awaddr[31:0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWVALID = s_axi_awvalid[0];
  assign s_axi_1_BREADY = s_axi_bready[0];
  assign s_axi_1_RREADY = s_axi_rready[0];
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WSTRB = s_axi_wstrb[3:0];
  assign s_axi_1_WVALID = s_axi_wvalid[0];
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready[0] = s_axi_1_ARREADY;
  assign s_axi_awready[0] = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid[0] = s_axi_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid[0] = s_axi_1_RVALID;
  assign s_axi_wready[0] = s_axi_1_WREADY;
  assign sync = rx_sync;
  assign sysref_1 = sysref;
  system_rx_0 rx
       (.cfg_beats_per_multiframe(rx_axi_rx_cfg_beats_per_multiframe),
        .cfg_buffer_delay(rx_axi_rx_cfg_buffer_delay),
        .cfg_buffer_early_release(rx_axi_rx_cfg_buffer_early_release),
        .cfg_disable_char_replacement(rx_axi_rx_cfg_disable_char_replacement),
        .cfg_disable_scrambler(rx_axi_rx_cfg_disable_scrambler),
        .cfg_lanes_disable(rx_axi_rx_cfg_lanes_disable),
        .cfg_lmfc_offset(rx_axi_rx_cfg_lmfc_offset),
        .cfg_octets_per_frame(rx_axi_rx_cfg_octets_per_frame),
        .cfg_sysref_disable(rx_axi_rx_cfg_sysref_disable),
        .cfg_sysref_oneshot(rx_axi_rx_cfg_sysref_oneshot),
        .clk(device_clk_1),
        .event_sysref_alignment_error(rx_rx_event_sysref_alignment_error),
        .event_sysref_edge(rx_rx_event_sysref_edge),
        .ilas_config_addr(rx_rx_ilas_config_addr),
        .ilas_config_data(rx_rx_ilas_config_data),
        .ilas_config_valid(rx_rx_ilas_config_valid),
        .phy_charisk({rx_phy1_1_rxcharisk,rx_phy0_1_rxcharisk}),
        .phy_data({rx_phy1_1_rxdata,rx_phy0_1_rxdata}),
        .phy_disperr({rx_phy1_1_rxdisperr,rx_phy0_1_rxdisperr}),
        .phy_en_char_align(rx_phy_en_char_align),
        .phy_notintable({rx_phy1_1_rxnotintable,rx_phy0_1_rxnotintable}),
        .reset(rx_axi_core_reset),
        .rx_data(rx_rx_data),
        .rx_eof(rx_rx_eof),
        .rx_sof(rx_rx_sof),
        .rx_valid(rx_rx_valid),
        .status_ctrl_state(rx_rx_status_ctrl_state),
        .status_lane_cgs_state(rx_rx_status_lane_cgs_state),
        .status_lane_ifs_ready(rx_rx_status_lane_ifs_ready),
        .status_lane_latency(rx_rx_status_lane_latency),
        .sync(rx_sync),
        .sysref(sysref_1));
  system_rx_axi_0 rx_axi
       (.core_cfg_beats_per_multiframe(rx_axi_rx_cfg_beats_per_multiframe),
        .core_cfg_buffer_delay(rx_axi_rx_cfg_buffer_delay),
        .core_cfg_buffer_early_release(rx_axi_rx_cfg_buffer_early_release),
        .core_cfg_disable_char_replacement(rx_axi_rx_cfg_disable_char_replacement),
        .core_cfg_disable_scrambler(rx_axi_rx_cfg_disable_scrambler),
        .core_cfg_lanes_disable(rx_axi_rx_cfg_lanes_disable),
        .core_cfg_lmfc_offset(rx_axi_rx_cfg_lmfc_offset),
        .core_cfg_octets_per_frame(rx_axi_rx_cfg_octets_per_frame),
        .core_cfg_sysref_disable(rx_axi_rx_cfg_sysref_disable),
        .core_cfg_sysref_oneshot(rx_axi_rx_cfg_sysref_oneshot),
        .core_clk(device_clk_1),
        .core_event_sysref_alignment_error(rx_rx_event_sysref_alignment_error),
        .core_event_sysref_edge(rx_rx_event_sysref_edge),
        .core_ilas_config_addr(rx_rx_ilas_config_addr),
        .core_ilas_config_data(rx_rx_ilas_config_data),
        .core_ilas_config_valid(rx_rx_ilas_config_valid),
        .core_reset(rx_axi_core_reset),
        .core_reset_ext(1'b0),
        .core_status_ctrl_state(rx_rx_status_ctrl_state),
        .core_status_lane_cgs_state(rx_rx_status_lane_cgs_state),
        .core_status_lane_ifs_ready(rx_rx_status_lane_ifs_ready),
        .core_status_lane_latency(rx_rx_status_lane_latency),
        .irq(rx_axi_irq),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(s_axi_1_ARADDR[13:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR[13:0]),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID));
endmodule

module axi_ad9371_rx_os_jesd_imp_73WW27
   (device_clk,
    irq,
    phy_en_char_align,
    rx_data_tdata,
    rx_data_tvalid,
    rx_eof,
    rx_phy0_rxcharisk,
    rx_phy0_rxdata,
    rx_phy0_rxdisperr,
    rx_phy0_rxnotintable,
    rx_phy1_rxcharisk,
    rx_phy1_rxdata,
    rx_phy1_rxdisperr,
    rx_phy1_rxnotintable,
    rx_sof,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    sync,
    sysref);
  input device_clk;
  output irq;
  output phy_en_char_align;
  output [63:0]rx_data_tdata;
  output rx_data_tvalid;
  output [3:0]rx_eof;
  input [3:0]rx_phy0_rxcharisk;
  input [31:0]rx_phy0_rxdata;
  input [3:0]rx_phy0_rxdisperr;
  input [3:0]rx_phy0_rxnotintable;
  input [3:0]rx_phy1_rxcharisk;
  input [31:0]rx_phy1_rxdata;
  input [3:0]rx_phy1_rxdisperr;
  input [3:0]rx_phy1_rxnotintable;
  output [3:0]rx_sof;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output [0:0]s_axi_arready;
  input [0:0]s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output [0:0]s_axi_awready;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_bready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input [0:0]s_axi_rready;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output [0:0]s_axi_wready;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output sync;
  input sysref;

  wire device_clk_1;
  wire rx_axi_core_reset;
  wire rx_axi_irq;
  wire [7:0]rx_axi_rx_cfg_beats_per_multiframe;
  wire [7:0]rx_axi_rx_cfg_buffer_delay;
  wire rx_axi_rx_cfg_buffer_early_release;
  wire rx_axi_rx_cfg_disable_char_replacement;
  wire rx_axi_rx_cfg_disable_scrambler;
  wire [1:0]rx_axi_rx_cfg_lanes_disable;
  wire [7:0]rx_axi_rx_cfg_lmfc_offset;
  wire [7:0]rx_axi_rx_cfg_octets_per_frame;
  wire rx_axi_rx_cfg_sysref_disable;
  wire rx_axi_rx_cfg_sysref_oneshot;
  wire [3:0]rx_phy0_1_rxcharisk;
  wire [31:0]rx_phy0_1_rxdata;
  wire [3:0]rx_phy0_1_rxdisperr;
  wire [3:0]rx_phy0_1_rxnotintable;
  wire [3:0]rx_phy1_1_rxcharisk;
  wire [31:0]rx_phy1_1_rxdata;
  wire [3:0]rx_phy1_1_rxdisperr;
  wire [3:0]rx_phy1_1_rxnotintable;
  wire rx_phy_en_char_align;
  wire [63:0]rx_rx_data;
  wire [3:0]rx_rx_eof;
  wire rx_rx_event_sysref_alignment_error;
  wire rx_rx_event_sysref_edge;
  wire [3:0]rx_rx_ilas_config_addr;
  wire [63:0]rx_rx_ilas_config_data;
  wire [1:0]rx_rx_ilas_config_valid;
  wire [3:0]rx_rx_sof;
  wire [1:0]rx_rx_status_ctrl_state;
  wire [3:0]rx_rx_status_lane_cgs_state;
  wire [1:0]rx_rx_status_lane_ifs_ready;
  wire [27:0]rx_rx_status_lane_latency;
  wire rx_rx_valid;
  wire rx_sync;
  wire [31:0]s_axi_1_ARADDR;
  wire [2:0]s_axi_1_ARPROT;
  wire s_axi_1_ARREADY;
  wire [0:0]s_axi_1_ARVALID;
  wire [31:0]s_axi_1_AWADDR;
  wire [2:0]s_axi_1_AWPROT;
  wire s_axi_1_AWREADY;
  wire [0:0]s_axi_1_AWVALID;
  wire [0:0]s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire [0:0]s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire [0:0]s_axi_1_WVALID;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire sysref_1;

  assign device_clk_1 = device_clk;
  assign irq = rx_axi_irq;
  assign phy_en_char_align = rx_phy_en_char_align;
  assign rx_data_tdata[63:0] = rx_rx_data;
  assign rx_data_tvalid = rx_rx_valid;
  assign rx_eof[3:0] = rx_rx_eof;
  assign rx_phy0_1_rxcharisk = rx_phy0_rxcharisk[3:0];
  assign rx_phy0_1_rxdata = rx_phy0_rxdata[31:0];
  assign rx_phy0_1_rxdisperr = rx_phy0_rxdisperr[3:0];
  assign rx_phy0_1_rxnotintable = rx_phy0_rxnotintable[3:0];
  assign rx_phy1_1_rxcharisk = rx_phy1_rxcharisk[3:0];
  assign rx_phy1_1_rxdata = rx_phy1_rxdata[31:0];
  assign rx_phy1_1_rxdisperr = rx_phy1_rxdisperr[3:0];
  assign rx_phy1_1_rxnotintable = rx_phy1_rxnotintable[3:0];
  assign rx_sof[3:0] = rx_rx_sof;
  assign s_axi_1_ARADDR = s_axi_araddr[31:0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARVALID = s_axi_arvalid[0];
  assign s_axi_1_AWADDR = s_axi_awaddr[31:0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWVALID = s_axi_awvalid[0];
  assign s_axi_1_BREADY = s_axi_bready[0];
  assign s_axi_1_RREADY = s_axi_rready[0];
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WSTRB = s_axi_wstrb[3:0];
  assign s_axi_1_WVALID = s_axi_wvalid[0];
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready[0] = s_axi_1_ARREADY;
  assign s_axi_awready[0] = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid[0] = s_axi_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid[0] = s_axi_1_RVALID;
  assign s_axi_wready[0] = s_axi_1_WREADY;
  assign sync = rx_sync;
  assign sysref_1 = sysref;
  system_rx_1 rx
       (.cfg_beats_per_multiframe(rx_axi_rx_cfg_beats_per_multiframe),
        .cfg_buffer_delay(rx_axi_rx_cfg_buffer_delay),
        .cfg_buffer_early_release(rx_axi_rx_cfg_buffer_early_release),
        .cfg_disable_char_replacement(rx_axi_rx_cfg_disable_char_replacement),
        .cfg_disable_scrambler(rx_axi_rx_cfg_disable_scrambler),
        .cfg_lanes_disable(rx_axi_rx_cfg_lanes_disable),
        .cfg_lmfc_offset(rx_axi_rx_cfg_lmfc_offset),
        .cfg_octets_per_frame(rx_axi_rx_cfg_octets_per_frame),
        .cfg_sysref_disable(rx_axi_rx_cfg_sysref_disable),
        .cfg_sysref_oneshot(rx_axi_rx_cfg_sysref_oneshot),
        .clk(device_clk_1),
        .event_sysref_alignment_error(rx_rx_event_sysref_alignment_error),
        .event_sysref_edge(rx_rx_event_sysref_edge),
        .ilas_config_addr(rx_rx_ilas_config_addr),
        .ilas_config_data(rx_rx_ilas_config_data),
        .ilas_config_valid(rx_rx_ilas_config_valid),
        .phy_charisk({rx_phy1_1_rxcharisk,rx_phy0_1_rxcharisk}),
        .phy_data({rx_phy1_1_rxdata,rx_phy0_1_rxdata}),
        .phy_disperr({rx_phy1_1_rxdisperr,rx_phy0_1_rxdisperr}),
        .phy_en_char_align(rx_phy_en_char_align),
        .phy_notintable({rx_phy1_1_rxnotintable,rx_phy0_1_rxnotintable}),
        .reset(rx_axi_core_reset),
        .rx_data(rx_rx_data),
        .rx_eof(rx_rx_eof),
        .rx_sof(rx_rx_sof),
        .rx_valid(rx_rx_valid),
        .status_ctrl_state(rx_rx_status_ctrl_state),
        .status_lane_cgs_state(rx_rx_status_lane_cgs_state),
        .status_lane_ifs_ready(rx_rx_status_lane_ifs_ready),
        .status_lane_latency(rx_rx_status_lane_latency),
        .sync(rx_sync),
        .sysref(sysref_1));
  system_rx_axi_1 rx_axi
       (.core_cfg_beats_per_multiframe(rx_axi_rx_cfg_beats_per_multiframe),
        .core_cfg_buffer_delay(rx_axi_rx_cfg_buffer_delay),
        .core_cfg_buffer_early_release(rx_axi_rx_cfg_buffer_early_release),
        .core_cfg_disable_char_replacement(rx_axi_rx_cfg_disable_char_replacement),
        .core_cfg_disable_scrambler(rx_axi_rx_cfg_disable_scrambler),
        .core_cfg_lanes_disable(rx_axi_rx_cfg_lanes_disable),
        .core_cfg_lmfc_offset(rx_axi_rx_cfg_lmfc_offset),
        .core_cfg_octets_per_frame(rx_axi_rx_cfg_octets_per_frame),
        .core_cfg_sysref_disable(rx_axi_rx_cfg_sysref_disable),
        .core_cfg_sysref_oneshot(rx_axi_rx_cfg_sysref_oneshot),
        .core_clk(device_clk_1),
        .core_event_sysref_alignment_error(rx_rx_event_sysref_alignment_error),
        .core_event_sysref_edge(rx_rx_event_sysref_edge),
        .core_ilas_config_addr(rx_rx_ilas_config_addr),
        .core_ilas_config_data(rx_rx_ilas_config_data),
        .core_ilas_config_valid(rx_rx_ilas_config_valid),
        .core_reset(rx_axi_core_reset),
        .core_reset_ext(1'b0),
        .core_status_ctrl_state(rx_rx_status_ctrl_state),
        .core_status_lane_cgs_state(rx_rx_status_lane_cgs_state),
        .core_status_lane_ifs_ready(rx_rx_status_lane_ifs_ready),
        .core_status_lane_latency(rx_rx_status_lane_latency),
        .irq(rx_axi_irq),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(s_axi_1_ARADDR[13:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR[13:0]),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID));
endmodule

module axi_ad9371_tx_jesd_imp_17BPCLV
   (device_clk,
    irq,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    sync,
    sysref,
    tx_data_tdata,
    tx_data_tready,
    tx_data_tvalid,
    tx_phy0_txcharisk,
    tx_phy0_txdata,
    tx_phy1_txcharisk,
    tx_phy1_txdata,
    tx_phy2_txcharisk,
    tx_phy2_txdata,
    tx_phy3_txcharisk,
    tx_phy3_txdata);
  input device_clk;
  output irq;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output [0:0]s_axi_arready;
  input [0:0]s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output [0:0]s_axi_awready;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_bready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input [0:0]s_axi_rready;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output [0:0]s_axi_wready;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  input sync;
  input sysref;
  input [127:0]tx_data_tdata;
  output tx_data_tready;
  input tx_data_tvalid;
  output [3:0]tx_phy0_txcharisk;
  output [31:0]tx_phy0_txdata;
  output [3:0]tx_phy1_txcharisk;
  output [31:0]tx_phy1_txdata;
  output [3:0]tx_phy2_txcharisk;
  output [31:0]tx_phy2_txdata;
  output [3:0]tx_phy3_txcharisk;
  output [31:0]tx_phy3_txdata;

  wire device_clk_1;
  wire [31:0]s_axi_1_ARADDR;
  wire [2:0]s_axi_1_ARPROT;
  wire s_axi_1_ARREADY;
  wire [0:0]s_axi_1_ARVALID;
  wire [31:0]s_axi_1_AWADDR;
  wire [2:0]s_axi_1_AWPROT;
  wire s_axi_1_AWREADY;
  wire [0:0]s_axi_1_AWVALID;
  wire [0:0]s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire [0:0]s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire [0:0]s_axi_1_WVALID;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire sync_1;
  wire sysref_1;
  wire tx_axi_core_reset;
  wire tx_axi_irq;
  wire [7:0]tx_axi_tx_cfg_beats_per_multiframe;
  wire tx_axi_tx_cfg_continuous_cgs;
  wire tx_axi_tx_cfg_continuous_ilas;
  wire tx_axi_tx_cfg_disable_char_replacement;
  wire tx_axi_tx_cfg_disable_scrambler;
  wire [3:0]tx_axi_tx_cfg_lanes_disable;
  wire [7:0]tx_axi_tx_cfg_lmfc_offset;
  wire [7:0]tx_axi_tx_cfg_mframes_per_ilas;
  wire [7:0]tx_axi_tx_cfg_octets_per_frame;
  wire tx_axi_tx_cfg_skip_ilas;
  wire tx_axi_tx_cfg_sysref_disable;
  wire tx_axi_tx_cfg_sysref_oneshot;
  wire tx_axi_tx_ctrl_manual_sync_request;
  wire [127:0]tx_data_1_TDATA;
  wire tx_data_1_TREADY;
  wire tx_data_1_TVALID;
  wire tx_tx_event_sysref_alignment_error;
  wire tx_tx_event_sysref_edge;
  wire [1:0]tx_tx_ilas_config_addr;
  wire [127:0]tx_tx_ilas_config_data;
  wire tx_tx_ilas_config_rd;
  wire [3:0]tx_tx_phy0_txcharisk;
  wire [31:0]tx_tx_phy0_txdata;
  wire [7:4]tx_tx_phy1_txcharisk;
  wire [63:32]tx_tx_phy1_txdata;
  wire [11:8]tx_tx_phy2_txcharisk;
  wire [95:64]tx_tx_phy2_txdata;
  wire [15:12]tx_tx_phy3_txcharisk;
  wire [127:96]tx_tx_phy3_txdata;
  wire [1:0]tx_tx_status_state;
  wire tx_tx_status_sync;

  assign device_clk_1 = device_clk;
  assign irq = tx_axi_irq;
  assign s_axi_1_ARADDR = s_axi_araddr[31:0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARVALID = s_axi_arvalid[0];
  assign s_axi_1_AWADDR = s_axi_awaddr[31:0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWVALID = s_axi_awvalid[0];
  assign s_axi_1_BREADY = s_axi_bready[0];
  assign s_axi_1_RREADY = s_axi_rready[0];
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WSTRB = s_axi_wstrb[3:0];
  assign s_axi_1_WVALID = s_axi_wvalid[0];
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready[0] = s_axi_1_ARREADY;
  assign s_axi_awready[0] = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid[0] = s_axi_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid[0] = s_axi_1_RVALID;
  assign s_axi_wready[0] = s_axi_1_WREADY;
  assign sync_1 = sync;
  assign sysref_1 = sysref;
  assign tx_data_1_TDATA = tx_data_tdata[127:0];
  assign tx_data_1_TVALID = tx_data_tvalid;
  assign tx_data_tready = tx_data_1_TREADY;
  assign tx_phy0_txcharisk[3:0] = tx_tx_phy0_txcharisk;
  assign tx_phy0_txdata[31:0] = tx_tx_phy0_txdata;
  assign tx_phy1_txcharisk[3:0] = tx_tx_phy1_txcharisk;
  assign tx_phy1_txdata[31:0] = tx_tx_phy1_txdata;
  assign tx_phy2_txcharisk[3:0] = tx_tx_phy2_txcharisk;
  assign tx_phy2_txdata[31:0] = tx_tx_phy2_txdata;
  assign tx_phy3_txcharisk[3:0] = tx_tx_phy3_txcharisk;
  assign tx_phy3_txdata[31:0] = tx_tx_phy3_txdata;
  system_tx_0 tx
       (.cfg_beats_per_multiframe(tx_axi_tx_cfg_beats_per_multiframe),
        .cfg_continuous_cgs(tx_axi_tx_cfg_continuous_cgs),
        .cfg_continuous_ilas(tx_axi_tx_cfg_continuous_ilas),
        .cfg_disable_char_replacement(tx_axi_tx_cfg_disable_char_replacement),
        .cfg_disable_scrambler(tx_axi_tx_cfg_disable_scrambler),
        .cfg_lanes_disable(tx_axi_tx_cfg_lanes_disable),
        .cfg_lmfc_offset(tx_axi_tx_cfg_lmfc_offset),
        .cfg_mframes_per_ilas(tx_axi_tx_cfg_mframes_per_ilas),
        .cfg_octets_per_frame(tx_axi_tx_cfg_octets_per_frame),
        .cfg_skip_ilas(tx_axi_tx_cfg_skip_ilas),
        .cfg_sysref_disable(tx_axi_tx_cfg_sysref_disable),
        .cfg_sysref_oneshot(tx_axi_tx_cfg_sysref_oneshot),
        .clk(device_clk_1),
        .ctrl_manual_sync_request(tx_axi_tx_ctrl_manual_sync_request),
        .event_sysref_alignment_error(tx_tx_event_sysref_alignment_error),
        .event_sysref_edge(tx_tx_event_sysref_edge),
        .ilas_config_addr(tx_tx_ilas_config_addr),
        .ilas_config_data(tx_tx_ilas_config_data),
        .ilas_config_rd(tx_tx_ilas_config_rd),
        .phy_charisk({tx_tx_phy3_txcharisk,tx_tx_phy2_txcharisk,tx_tx_phy1_txcharisk,tx_tx_phy0_txcharisk}),
        .phy_data({tx_tx_phy3_txdata,tx_tx_phy2_txdata,tx_tx_phy1_txdata,tx_tx_phy0_txdata}),
        .reset(tx_axi_core_reset),
        .status_state(tx_tx_status_state),
        .status_sync(tx_tx_status_sync),
        .sync(sync_1),
        .sysref(sysref_1),
        .tx_data(tx_data_1_TDATA),
        .tx_ready(tx_data_1_TREADY),
        .tx_valid(tx_data_1_TVALID));
  system_tx_axi_0 tx_axi
       (.core_cfg_beats_per_multiframe(tx_axi_tx_cfg_beats_per_multiframe),
        .core_cfg_continuous_cgs(tx_axi_tx_cfg_continuous_cgs),
        .core_cfg_continuous_ilas(tx_axi_tx_cfg_continuous_ilas),
        .core_cfg_disable_char_replacement(tx_axi_tx_cfg_disable_char_replacement),
        .core_cfg_disable_scrambler(tx_axi_tx_cfg_disable_scrambler),
        .core_cfg_lanes_disable(tx_axi_tx_cfg_lanes_disable),
        .core_cfg_lmfc_offset(tx_axi_tx_cfg_lmfc_offset),
        .core_cfg_mframes_per_ilas(tx_axi_tx_cfg_mframes_per_ilas),
        .core_cfg_octets_per_frame(tx_axi_tx_cfg_octets_per_frame),
        .core_cfg_skip_ilas(tx_axi_tx_cfg_skip_ilas),
        .core_cfg_sysref_disable(tx_axi_tx_cfg_sysref_disable),
        .core_cfg_sysref_oneshot(tx_axi_tx_cfg_sysref_oneshot),
        .core_clk(device_clk_1),
        .core_ctrl_manual_sync_request(tx_axi_tx_ctrl_manual_sync_request),
        .core_event_sysref_alignment_error(tx_tx_event_sysref_alignment_error),
        .core_event_sysref_edge(tx_tx_event_sysref_edge),
        .core_ilas_config_addr(tx_tx_ilas_config_addr),
        .core_ilas_config_data(tx_tx_ilas_config_data),
        .core_ilas_config_rd(tx_tx_ilas_config_rd),
        .core_reset(tx_axi_core_reset),
        .core_reset_ext(1'b0),
        .core_status_state(tx_tx_status_state),
        .core_status_sync(tx_tx_status_sync),
        .irq(tx_axi_irq),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(s_axi_1_ARADDR[13:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR[13:0]),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID));
endmodule

module i00_couplers_imp_KQSTVX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]i00_couplers_to_i00_couplers_ARADDR;
  wire [2:0]i00_couplers_to_i00_couplers_ARPROT;
  wire [0:0]i00_couplers_to_i00_couplers_ARREADY;
  wire [0:0]i00_couplers_to_i00_couplers_ARVALID;
  wire [31:0]i00_couplers_to_i00_couplers_AWADDR;
  wire [2:0]i00_couplers_to_i00_couplers_AWPROT;
  wire [0:0]i00_couplers_to_i00_couplers_AWREADY;
  wire [0:0]i00_couplers_to_i00_couplers_AWVALID;
  wire [0:0]i00_couplers_to_i00_couplers_BREADY;
  wire [1:0]i00_couplers_to_i00_couplers_BRESP;
  wire [0:0]i00_couplers_to_i00_couplers_BVALID;
  wire [31:0]i00_couplers_to_i00_couplers_RDATA;
  wire [0:0]i00_couplers_to_i00_couplers_RREADY;
  wire [1:0]i00_couplers_to_i00_couplers_RRESP;
  wire [0:0]i00_couplers_to_i00_couplers_RVALID;
  wire [31:0]i00_couplers_to_i00_couplers_WDATA;
  wire [0:0]i00_couplers_to_i00_couplers_WREADY;
  wire [3:0]i00_couplers_to_i00_couplers_WSTRB;
  wire [0:0]i00_couplers_to_i00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i00_couplers_to_i00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = i00_couplers_to_i00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = i00_couplers_to_i00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i00_couplers_to_i00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = i00_couplers_to_i00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = i00_couplers_to_i00_couplers_AWVALID;
  assign M_AXI_bready[0] = i00_couplers_to_i00_couplers_BREADY;
  assign M_AXI_rready[0] = i00_couplers_to_i00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i00_couplers_to_i00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = i00_couplers_to_i00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i00_couplers_to_i00_couplers_WVALID;
  assign S_AXI_arready[0] = i00_couplers_to_i00_couplers_ARREADY;
  assign S_AXI_awready[0] = i00_couplers_to_i00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = i00_couplers_to_i00_couplers_BRESP;
  assign S_AXI_bvalid[0] = i00_couplers_to_i00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i00_couplers_to_i00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = i00_couplers_to_i00_couplers_RRESP;
  assign S_AXI_rvalid[0] = i00_couplers_to_i00_couplers_RVALID;
  assign S_AXI_wready[0] = i00_couplers_to_i00_couplers_WREADY;
  assign i00_couplers_to_i00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i00_couplers_to_i00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i00_couplers_to_i00_couplers_ARREADY = M_AXI_arready[0];
  assign i00_couplers_to_i00_couplers_ARVALID = S_AXI_arvalid[0];
  assign i00_couplers_to_i00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i00_couplers_to_i00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i00_couplers_to_i00_couplers_AWREADY = M_AXI_awready[0];
  assign i00_couplers_to_i00_couplers_AWVALID = S_AXI_awvalid[0];
  assign i00_couplers_to_i00_couplers_BREADY = S_AXI_bready[0];
  assign i00_couplers_to_i00_couplers_BRESP = M_AXI_bresp[1:0];
  assign i00_couplers_to_i00_couplers_BVALID = M_AXI_bvalid[0];
  assign i00_couplers_to_i00_couplers_RDATA = M_AXI_rdata[31:0];
  assign i00_couplers_to_i00_couplers_RREADY = S_AXI_rready[0];
  assign i00_couplers_to_i00_couplers_RRESP = M_AXI_rresp[1:0];
  assign i00_couplers_to_i00_couplers_RVALID = M_AXI_rvalid[0];
  assign i00_couplers_to_i00_couplers_WDATA = S_AXI_wdata[31:0];
  assign i00_couplers_to_i00_couplers_WREADY = M_AXI_wready[0];
  assign i00_couplers_to_i00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i00_couplers_to_i00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module i01_couplers_imp_1RG3T24
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]i01_couplers_to_i01_couplers_ARADDR;
  wire [2:0]i01_couplers_to_i01_couplers_ARPROT;
  wire [0:0]i01_couplers_to_i01_couplers_ARREADY;
  wire [0:0]i01_couplers_to_i01_couplers_ARVALID;
  wire [31:0]i01_couplers_to_i01_couplers_AWADDR;
  wire [2:0]i01_couplers_to_i01_couplers_AWPROT;
  wire [0:0]i01_couplers_to_i01_couplers_AWREADY;
  wire [0:0]i01_couplers_to_i01_couplers_AWVALID;
  wire [0:0]i01_couplers_to_i01_couplers_BREADY;
  wire [1:0]i01_couplers_to_i01_couplers_BRESP;
  wire [0:0]i01_couplers_to_i01_couplers_BVALID;
  wire [31:0]i01_couplers_to_i01_couplers_RDATA;
  wire [0:0]i01_couplers_to_i01_couplers_RREADY;
  wire [1:0]i01_couplers_to_i01_couplers_RRESP;
  wire [0:0]i01_couplers_to_i01_couplers_RVALID;
  wire [31:0]i01_couplers_to_i01_couplers_WDATA;
  wire [0:0]i01_couplers_to_i01_couplers_WREADY;
  wire [3:0]i01_couplers_to_i01_couplers_WSTRB;
  wire [0:0]i01_couplers_to_i01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i01_couplers_to_i01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = i01_couplers_to_i01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = i01_couplers_to_i01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i01_couplers_to_i01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = i01_couplers_to_i01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = i01_couplers_to_i01_couplers_AWVALID;
  assign M_AXI_bready[0] = i01_couplers_to_i01_couplers_BREADY;
  assign M_AXI_rready[0] = i01_couplers_to_i01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i01_couplers_to_i01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = i01_couplers_to_i01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i01_couplers_to_i01_couplers_WVALID;
  assign S_AXI_arready[0] = i01_couplers_to_i01_couplers_ARREADY;
  assign S_AXI_awready[0] = i01_couplers_to_i01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = i01_couplers_to_i01_couplers_BRESP;
  assign S_AXI_bvalid[0] = i01_couplers_to_i01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i01_couplers_to_i01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = i01_couplers_to_i01_couplers_RRESP;
  assign S_AXI_rvalid[0] = i01_couplers_to_i01_couplers_RVALID;
  assign S_AXI_wready[0] = i01_couplers_to_i01_couplers_WREADY;
  assign i01_couplers_to_i01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i01_couplers_to_i01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i01_couplers_to_i01_couplers_ARREADY = M_AXI_arready[0];
  assign i01_couplers_to_i01_couplers_ARVALID = S_AXI_arvalid[0];
  assign i01_couplers_to_i01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i01_couplers_to_i01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i01_couplers_to_i01_couplers_AWREADY = M_AXI_awready[0];
  assign i01_couplers_to_i01_couplers_AWVALID = S_AXI_awvalid[0];
  assign i01_couplers_to_i01_couplers_BREADY = S_AXI_bready[0];
  assign i01_couplers_to_i01_couplers_BRESP = M_AXI_bresp[1:0];
  assign i01_couplers_to_i01_couplers_BVALID = M_AXI_bvalid[0];
  assign i01_couplers_to_i01_couplers_RDATA = M_AXI_rdata[31:0];
  assign i01_couplers_to_i01_couplers_RREADY = S_AXI_rready[0];
  assign i01_couplers_to_i01_couplers_RRESP = M_AXI_rresp[1:0];
  assign i01_couplers_to_i01_couplers_RVALID = M_AXI_rvalid[0];
  assign i01_couplers_to_i01_couplers_WDATA = S_AXI_wdata[31:0];
  assign i01_couplers_to_i01_couplers_WREADY = M_AXI_wready[0];
  assign i01_couplers_to_i01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i01_couplers_to_i01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module i02_couplers_imp_1KZKN5A
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]i02_couplers_to_i02_couplers_ARADDR;
  wire [2:0]i02_couplers_to_i02_couplers_ARPROT;
  wire [0:0]i02_couplers_to_i02_couplers_ARREADY;
  wire [0:0]i02_couplers_to_i02_couplers_ARVALID;
  wire [31:0]i02_couplers_to_i02_couplers_AWADDR;
  wire [2:0]i02_couplers_to_i02_couplers_AWPROT;
  wire [0:0]i02_couplers_to_i02_couplers_AWREADY;
  wire [0:0]i02_couplers_to_i02_couplers_AWVALID;
  wire [0:0]i02_couplers_to_i02_couplers_BREADY;
  wire [1:0]i02_couplers_to_i02_couplers_BRESP;
  wire [0:0]i02_couplers_to_i02_couplers_BVALID;
  wire [31:0]i02_couplers_to_i02_couplers_RDATA;
  wire [0:0]i02_couplers_to_i02_couplers_RREADY;
  wire [1:0]i02_couplers_to_i02_couplers_RRESP;
  wire [0:0]i02_couplers_to_i02_couplers_RVALID;
  wire [31:0]i02_couplers_to_i02_couplers_WDATA;
  wire [0:0]i02_couplers_to_i02_couplers_WREADY;
  wire [3:0]i02_couplers_to_i02_couplers_WSTRB;
  wire [0:0]i02_couplers_to_i02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i02_couplers_to_i02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = i02_couplers_to_i02_couplers_ARPROT;
  assign M_AXI_arvalid[0] = i02_couplers_to_i02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i02_couplers_to_i02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = i02_couplers_to_i02_couplers_AWPROT;
  assign M_AXI_awvalid[0] = i02_couplers_to_i02_couplers_AWVALID;
  assign M_AXI_bready[0] = i02_couplers_to_i02_couplers_BREADY;
  assign M_AXI_rready[0] = i02_couplers_to_i02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i02_couplers_to_i02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = i02_couplers_to_i02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i02_couplers_to_i02_couplers_WVALID;
  assign S_AXI_arready[0] = i02_couplers_to_i02_couplers_ARREADY;
  assign S_AXI_awready[0] = i02_couplers_to_i02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = i02_couplers_to_i02_couplers_BRESP;
  assign S_AXI_bvalid[0] = i02_couplers_to_i02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i02_couplers_to_i02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = i02_couplers_to_i02_couplers_RRESP;
  assign S_AXI_rvalid[0] = i02_couplers_to_i02_couplers_RVALID;
  assign S_AXI_wready[0] = i02_couplers_to_i02_couplers_WREADY;
  assign i02_couplers_to_i02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i02_couplers_to_i02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i02_couplers_to_i02_couplers_ARREADY = M_AXI_arready[0];
  assign i02_couplers_to_i02_couplers_ARVALID = S_AXI_arvalid[0];
  assign i02_couplers_to_i02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i02_couplers_to_i02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i02_couplers_to_i02_couplers_AWREADY = M_AXI_awready[0];
  assign i02_couplers_to_i02_couplers_AWVALID = S_AXI_awvalid[0];
  assign i02_couplers_to_i02_couplers_BREADY = S_AXI_bready[0];
  assign i02_couplers_to_i02_couplers_BRESP = M_AXI_bresp[1:0];
  assign i02_couplers_to_i02_couplers_BVALID = M_AXI_bvalid[0];
  assign i02_couplers_to_i02_couplers_RDATA = M_AXI_rdata[31:0];
  assign i02_couplers_to_i02_couplers_RREADY = S_AXI_rready[0];
  assign i02_couplers_to_i02_couplers_RRESP = M_AXI_rresp[1:0];
  assign i02_couplers_to_i02_couplers_RVALID = M_AXI_rvalid[0];
  assign i02_couplers_to_i02_couplers_WDATA = S_AXI_wdata[31:0];
  assign i02_couplers_to_i02_couplers_WREADY = M_AXI_wready[0];
  assign i02_couplers_to_i02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i02_couplers_to_i02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_I5GH1N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_R61KWR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [29:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [29:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [29:0]auto_cc_to_m00_couplers_ARADDR;
  wire [1:0]auto_cc_to_m00_couplers_ARBURST;
  wire [3:0]auto_cc_to_m00_couplers_ARCACHE;
  wire [3:0]auto_cc_to_m00_couplers_ARID;
  wire [7:0]auto_cc_to_m00_couplers_ARLEN;
  wire [0:0]auto_cc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire [3:0]auto_cc_to_m00_couplers_ARQOS;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire [2:0]auto_cc_to_m00_couplers_ARSIZE;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [29:0]auto_cc_to_m00_couplers_AWADDR;
  wire [1:0]auto_cc_to_m00_couplers_AWBURST;
  wire [3:0]auto_cc_to_m00_couplers_AWCACHE;
  wire [3:0]auto_cc_to_m00_couplers_AWID;
  wire [7:0]auto_cc_to_m00_couplers_AWLEN;
  wire [0:0]auto_cc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire [3:0]auto_cc_to_m00_couplers_AWQOS;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire [2:0]auto_cc_to_m00_couplers_AWSIZE;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire [3:0]auto_cc_to_m00_couplers_BID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [511:0]auto_cc_to_m00_couplers_RDATA;
  wire [3:0]auto_cc_to_m00_couplers_RID;
  wire auto_cc_to_m00_couplers_RLAST;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [511:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WLAST;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [63:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_cc_ARADDR;
  wire [1:0]m00_couplers_to_auto_cc_ARBURST;
  wire [3:0]m00_couplers_to_auto_cc_ARCACHE;
  wire [3:0]m00_couplers_to_auto_cc_ARID;
  wire [7:0]m00_couplers_to_auto_cc_ARLEN;
  wire [0:0]m00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire [3:0]m00_couplers_to_auto_cc_ARQOS;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire [3:0]m00_couplers_to_auto_cc_ARREGION;
  wire [2:0]m00_couplers_to_auto_cc_ARSIZE;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [31:0]m00_couplers_to_auto_cc_AWADDR;
  wire [1:0]m00_couplers_to_auto_cc_AWBURST;
  wire [3:0]m00_couplers_to_auto_cc_AWCACHE;
  wire [3:0]m00_couplers_to_auto_cc_AWID;
  wire [7:0]m00_couplers_to_auto_cc_AWLEN;
  wire [0:0]m00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire [3:0]m00_couplers_to_auto_cc_AWQOS;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire [3:0]m00_couplers_to_auto_cc_AWREGION;
  wire [2:0]m00_couplers_to_auto_cc_AWSIZE;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire [3:0]m00_couplers_to_auto_cc_BID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [511:0]m00_couplers_to_auto_cc_RDATA;
  wire [3:0]m00_couplers_to_auto_cc_RID;
  wire m00_couplers_to_auto_cc_RLAST;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [511:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WLAST;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [63:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[29:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = auto_cc_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock = auto_cc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[29:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = auto_cc_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock = auto_cc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[3:0] = m00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[3:0] = m00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BID = M_AXI_bid[3:0];
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_m00_couplers_RID = M_AXI_rid[3:0];
  assign auto_cc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_cc_ARID = S_AXI_arid[3:0];
  assign m00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_cc_AWID = S_AXI_awid[3:0];
  assign m00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  system_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_m00_couplers_BID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_m00_couplers_RID),
        .m_axi_rlast(auto_cc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[29:0]),
        .s_axi_arburst(m00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[29:0]),
        .s_axi_awburst(m00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_cc_BID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_cc_RID),
        .s_axi_rlast(m00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_1UBGIXM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1J5P44O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_T17W6X
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_15FU5SC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_GFBASD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_59JXRJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_1GBLMBI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module m08_couplers_imp_E05M9W
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m08_couplers_to_m08_couplers_ARADDR;
  wire m08_couplers_to_m08_couplers_ARREADY;
  wire m08_couplers_to_m08_couplers_ARVALID;
  wire [31:0]m08_couplers_to_m08_couplers_AWADDR;
  wire m08_couplers_to_m08_couplers_AWREADY;
  wire m08_couplers_to_m08_couplers_AWVALID;
  wire m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready;
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready;
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready;
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready;
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid;
endmodule

module m09_couplers_imp_17AVPN9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m09_couplers_to_m09_couplers_ARADDR;
  wire [2:0]m09_couplers_to_m09_couplers_ARPROT;
  wire [0:0]m09_couplers_to_m09_couplers_ARREADY;
  wire [0:0]m09_couplers_to_m09_couplers_ARVALID;
  wire [31:0]m09_couplers_to_m09_couplers_AWADDR;
  wire [2:0]m09_couplers_to_m09_couplers_AWPROT;
  wire [0:0]m09_couplers_to_m09_couplers_AWREADY;
  wire [0:0]m09_couplers_to_m09_couplers_AWVALID;
  wire [0:0]m09_couplers_to_m09_couplers_BREADY;
  wire [1:0]m09_couplers_to_m09_couplers_BRESP;
  wire [0:0]m09_couplers_to_m09_couplers_BVALID;
  wire [31:0]m09_couplers_to_m09_couplers_RDATA;
  wire [0:0]m09_couplers_to_m09_couplers_RREADY;
  wire [1:0]m09_couplers_to_m09_couplers_RRESP;
  wire [0:0]m09_couplers_to_m09_couplers_RVALID;
  wire [31:0]m09_couplers_to_m09_couplers_WDATA;
  wire [0:0]m09_couplers_to_m09_couplers_WREADY;
  wire [3:0]m09_couplers_to_m09_couplers_WSTRB;
  wire [0:0]m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m09_couplers_to_m09_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m09_couplers_to_m09_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready[0] = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready[0] = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready[0] = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready[0] = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid[0] = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid[0] = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready[0] = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_m09_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready[0];
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid[0];
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_m09_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready[0];
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid[0];
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready[0];
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid[0];
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready[0];
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid[0];
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready[0];
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m10_couplers_imp_1J5SI6G
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m10_couplers_to_m10_couplers_ARADDR;
  wire [2:0]m10_couplers_to_m10_couplers_ARPROT;
  wire [0:0]m10_couplers_to_m10_couplers_ARREADY;
  wire [0:0]m10_couplers_to_m10_couplers_ARVALID;
  wire [31:0]m10_couplers_to_m10_couplers_AWADDR;
  wire [2:0]m10_couplers_to_m10_couplers_AWPROT;
  wire [0:0]m10_couplers_to_m10_couplers_AWREADY;
  wire [0:0]m10_couplers_to_m10_couplers_AWVALID;
  wire [0:0]m10_couplers_to_m10_couplers_BREADY;
  wire [1:0]m10_couplers_to_m10_couplers_BRESP;
  wire [0:0]m10_couplers_to_m10_couplers_BVALID;
  wire [31:0]m10_couplers_to_m10_couplers_RDATA;
  wire [0:0]m10_couplers_to_m10_couplers_RREADY;
  wire [1:0]m10_couplers_to_m10_couplers_RRESP;
  wire [0:0]m10_couplers_to_m10_couplers_RVALID;
  wire [31:0]m10_couplers_to_m10_couplers_WDATA;
  wire [0:0]m10_couplers_to_m10_couplers_WREADY;
  wire [3:0]m10_couplers_to_m10_couplers_WSTRB;
  wire [0:0]m10_couplers_to_m10_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m10_couplers_to_m10_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m10_couplers_to_m10_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m10_couplers_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m10_couplers_to_m10_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m10_couplers_to_m10_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m10_couplers_to_m10_couplers_AWVALID;
  assign M_AXI_bready[0] = m10_couplers_to_m10_couplers_BREADY;
  assign M_AXI_rready[0] = m10_couplers_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m10_couplers_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m10_couplers_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m10_couplers_to_m10_couplers_WVALID;
  assign S_AXI_arready[0] = m10_couplers_to_m10_couplers_ARREADY;
  assign S_AXI_awready[0] = m10_couplers_to_m10_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_m10_couplers_BRESP;
  assign S_AXI_bvalid[0] = m10_couplers_to_m10_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_m10_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_m10_couplers_RRESP;
  assign S_AXI_rvalid[0] = m10_couplers_to_m10_couplers_RVALID;
  assign S_AXI_wready[0] = m10_couplers_to_m10_couplers_WREADY;
  assign m10_couplers_to_m10_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_m10_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_m10_couplers_ARREADY = M_AXI_arready[0];
  assign m10_couplers_to_m10_couplers_ARVALID = S_AXI_arvalid[0];
  assign m10_couplers_to_m10_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_m10_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_m10_couplers_AWREADY = M_AXI_awready[0];
  assign m10_couplers_to_m10_couplers_AWVALID = S_AXI_awvalid[0];
  assign m10_couplers_to_m10_couplers_BREADY = S_AXI_bready[0];
  assign m10_couplers_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign m10_couplers_to_m10_couplers_BVALID = M_AXI_bvalid[0];
  assign m10_couplers_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign m10_couplers_to_m10_couplers_RREADY = S_AXI_rready[0];
  assign m10_couplers_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign m10_couplers_to_m10_couplers_RVALID = M_AXI_rvalid[0];
  assign m10_couplers_to_m10_couplers_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_m10_couplers_WREADY = M_AXI_wready[0];
  assign m10_couplers_to_m10_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_m10_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m11_couplers_imp_T19VO9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m11_couplers_to_m11_couplers_ARADDR;
  wire [2:0]m11_couplers_to_m11_couplers_ARPROT;
  wire [0:0]m11_couplers_to_m11_couplers_ARREADY;
  wire [0:0]m11_couplers_to_m11_couplers_ARVALID;
  wire [31:0]m11_couplers_to_m11_couplers_AWADDR;
  wire [2:0]m11_couplers_to_m11_couplers_AWPROT;
  wire [0:0]m11_couplers_to_m11_couplers_AWREADY;
  wire [0:0]m11_couplers_to_m11_couplers_AWVALID;
  wire [0:0]m11_couplers_to_m11_couplers_BREADY;
  wire [1:0]m11_couplers_to_m11_couplers_BRESP;
  wire [0:0]m11_couplers_to_m11_couplers_BVALID;
  wire [31:0]m11_couplers_to_m11_couplers_RDATA;
  wire [0:0]m11_couplers_to_m11_couplers_RREADY;
  wire [1:0]m11_couplers_to_m11_couplers_RRESP;
  wire [0:0]m11_couplers_to_m11_couplers_RVALID;
  wire [31:0]m11_couplers_to_m11_couplers_WDATA;
  wire [0:0]m11_couplers_to_m11_couplers_WREADY;
  wire [3:0]m11_couplers_to_m11_couplers_WSTRB;
  wire [0:0]m11_couplers_to_m11_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m11_couplers_to_m11_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m11_couplers_to_m11_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m11_couplers_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m11_couplers_to_m11_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m11_couplers_to_m11_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m11_couplers_to_m11_couplers_AWVALID;
  assign M_AXI_bready[0] = m11_couplers_to_m11_couplers_BREADY;
  assign M_AXI_rready[0] = m11_couplers_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m11_couplers_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m11_couplers_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m11_couplers_to_m11_couplers_WVALID;
  assign S_AXI_arready[0] = m11_couplers_to_m11_couplers_ARREADY;
  assign S_AXI_awready[0] = m11_couplers_to_m11_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m11_couplers_to_m11_couplers_BRESP;
  assign S_AXI_bvalid[0] = m11_couplers_to_m11_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_m11_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m11_couplers_to_m11_couplers_RRESP;
  assign S_AXI_rvalid[0] = m11_couplers_to_m11_couplers_RVALID;
  assign S_AXI_wready[0] = m11_couplers_to_m11_couplers_WREADY;
  assign m11_couplers_to_m11_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m11_couplers_to_m11_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m11_couplers_to_m11_couplers_ARREADY = M_AXI_arready[0];
  assign m11_couplers_to_m11_couplers_ARVALID = S_AXI_arvalid[0];
  assign m11_couplers_to_m11_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_m11_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m11_couplers_to_m11_couplers_AWREADY = M_AXI_awready[0];
  assign m11_couplers_to_m11_couplers_AWVALID = S_AXI_awvalid[0];
  assign m11_couplers_to_m11_couplers_BREADY = S_AXI_bready[0];
  assign m11_couplers_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign m11_couplers_to_m11_couplers_BVALID = M_AXI_bvalid[0];
  assign m11_couplers_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign m11_couplers_to_m11_couplers_RREADY = S_AXI_rready[0];
  assign m11_couplers_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign m11_couplers_to_m11_couplers_RVALID = M_AXI_rvalid[0];
  assign m11_couplers_to_m11_couplers_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_m11_couplers_WREADY = M_AXI_wready[0];
  assign m11_couplers_to_m11_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_m11_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m12_couplers_imp_I5JGX7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m12_couplers_to_m12_couplers_ARADDR;
  wire [2:0]m12_couplers_to_m12_couplers_ARPROT;
  wire [0:0]m12_couplers_to_m12_couplers_ARREADY;
  wire [0:0]m12_couplers_to_m12_couplers_ARVALID;
  wire [31:0]m12_couplers_to_m12_couplers_AWADDR;
  wire [2:0]m12_couplers_to_m12_couplers_AWPROT;
  wire [0:0]m12_couplers_to_m12_couplers_AWREADY;
  wire [0:0]m12_couplers_to_m12_couplers_AWVALID;
  wire [0:0]m12_couplers_to_m12_couplers_BREADY;
  wire [1:0]m12_couplers_to_m12_couplers_BRESP;
  wire [0:0]m12_couplers_to_m12_couplers_BVALID;
  wire [31:0]m12_couplers_to_m12_couplers_RDATA;
  wire [0:0]m12_couplers_to_m12_couplers_RREADY;
  wire [1:0]m12_couplers_to_m12_couplers_RRESP;
  wire [0:0]m12_couplers_to_m12_couplers_RVALID;
  wire [31:0]m12_couplers_to_m12_couplers_WDATA;
  wire [0:0]m12_couplers_to_m12_couplers_WREADY;
  wire [3:0]m12_couplers_to_m12_couplers_WSTRB;
  wire [0:0]m12_couplers_to_m12_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m12_couplers_to_m12_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m12_couplers_to_m12_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m12_couplers_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m12_couplers_to_m12_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m12_couplers_to_m12_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m12_couplers_to_m12_couplers_AWVALID;
  assign M_AXI_bready[0] = m12_couplers_to_m12_couplers_BREADY;
  assign M_AXI_rready[0] = m12_couplers_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m12_couplers_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m12_couplers_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m12_couplers_to_m12_couplers_WVALID;
  assign S_AXI_arready[0] = m12_couplers_to_m12_couplers_ARREADY;
  assign S_AXI_awready[0] = m12_couplers_to_m12_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m12_couplers_to_m12_couplers_BRESP;
  assign S_AXI_bvalid[0] = m12_couplers_to_m12_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m12_couplers_to_m12_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m12_couplers_to_m12_couplers_RRESP;
  assign S_AXI_rvalid[0] = m12_couplers_to_m12_couplers_RVALID;
  assign S_AXI_wready[0] = m12_couplers_to_m12_couplers_WREADY;
  assign m12_couplers_to_m12_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m12_couplers_to_m12_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m12_couplers_to_m12_couplers_ARREADY = M_AXI_arready[0];
  assign m12_couplers_to_m12_couplers_ARVALID = S_AXI_arvalid[0];
  assign m12_couplers_to_m12_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m12_couplers_to_m12_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m12_couplers_to_m12_couplers_AWREADY = M_AXI_awready[0];
  assign m12_couplers_to_m12_couplers_AWVALID = S_AXI_awvalid[0];
  assign m12_couplers_to_m12_couplers_BREADY = S_AXI_bready[0];
  assign m12_couplers_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign m12_couplers_to_m12_couplers_BVALID = M_AXI_bvalid[0];
  assign m12_couplers_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign m12_couplers_to_m12_couplers_RREADY = S_AXI_rready[0];
  assign m12_couplers_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign m12_couplers_to_m12_couplers_RVALID = M_AXI_rvalid[0];
  assign m12_couplers_to_m12_couplers_WDATA = S_AXI_wdata[31:0];
  assign m12_couplers_to_m12_couplers_WREADY = M_AXI_wready[0];
  assign m12_couplers_to_m12_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m12_couplers_to_m12_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m13_couplers_imp_1UBI48Q
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m13_couplers_to_m13_couplers_ARADDR;
  wire [2:0]m13_couplers_to_m13_couplers_ARPROT;
  wire [0:0]m13_couplers_to_m13_couplers_ARREADY;
  wire [0:0]m13_couplers_to_m13_couplers_ARVALID;
  wire [31:0]m13_couplers_to_m13_couplers_AWADDR;
  wire [2:0]m13_couplers_to_m13_couplers_AWPROT;
  wire [0:0]m13_couplers_to_m13_couplers_AWREADY;
  wire [0:0]m13_couplers_to_m13_couplers_AWVALID;
  wire [0:0]m13_couplers_to_m13_couplers_BREADY;
  wire [1:0]m13_couplers_to_m13_couplers_BRESP;
  wire [0:0]m13_couplers_to_m13_couplers_BVALID;
  wire [31:0]m13_couplers_to_m13_couplers_RDATA;
  wire [0:0]m13_couplers_to_m13_couplers_RREADY;
  wire [1:0]m13_couplers_to_m13_couplers_RRESP;
  wire [0:0]m13_couplers_to_m13_couplers_RVALID;
  wire [31:0]m13_couplers_to_m13_couplers_WDATA;
  wire [0:0]m13_couplers_to_m13_couplers_WREADY;
  wire [3:0]m13_couplers_to_m13_couplers_WSTRB;
  wire [0:0]m13_couplers_to_m13_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m13_couplers_to_m13_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m13_couplers_to_m13_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m13_couplers_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m13_couplers_to_m13_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m13_couplers_to_m13_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m13_couplers_to_m13_couplers_AWVALID;
  assign M_AXI_bready[0] = m13_couplers_to_m13_couplers_BREADY;
  assign M_AXI_rready[0] = m13_couplers_to_m13_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m13_couplers_to_m13_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m13_couplers_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m13_couplers_to_m13_couplers_WVALID;
  assign S_AXI_arready[0] = m13_couplers_to_m13_couplers_ARREADY;
  assign S_AXI_awready[0] = m13_couplers_to_m13_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m13_couplers_to_m13_couplers_BRESP;
  assign S_AXI_bvalid[0] = m13_couplers_to_m13_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m13_couplers_to_m13_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m13_couplers_to_m13_couplers_RRESP;
  assign S_AXI_rvalid[0] = m13_couplers_to_m13_couplers_RVALID;
  assign S_AXI_wready[0] = m13_couplers_to_m13_couplers_WREADY;
  assign m13_couplers_to_m13_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m13_couplers_to_m13_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m13_couplers_to_m13_couplers_ARREADY = M_AXI_arready[0];
  assign m13_couplers_to_m13_couplers_ARVALID = S_AXI_arvalid[0];
  assign m13_couplers_to_m13_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m13_couplers_to_m13_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m13_couplers_to_m13_couplers_AWREADY = M_AXI_awready[0];
  assign m13_couplers_to_m13_couplers_AWVALID = S_AXI_awvalid[0];
  assign m13_couplers_to_m13_couplers_BREADY = S_AXI_bready[0];
  assign m13_couplers_to_m13_couplers_BRESP = M_AXI_bresp[1:0];
  assign m13_couplers_to_m13_couplers_BVALID = M_AXI_bvalid[0];
  assign m13_couplers_to_m13_couplers_RDATA = M_AXI_rdata[31:0];
  assign m13_couplers_to_m13_couplers_RREADY = S_AXI_rready[0];
  assign m13_couplers_to_m13_couplers_RRESP = M_AXI_rresp[1:0];
  assign m13_couplers_to_m13_couplers_RVALID = M_AXI_rvalid[0];
  assign m13_couplers_to_m13_couplers_WDATA = S_AXI_wdata[31:0];
  assign m13_couplers_to_m13_couplers_WREADY = M_AXI_wready[0];
  assign m13_couplers_to_m13_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m13_couplers_to_m13_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m14_couplers_imp_59NWCV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m14_couplers_to_m14_couplers_ARADDR;
  wire [2:0]m14_couplers_to_m14_couplers_ARPROT;
  wire [0:0]m14_couplers_to_m14_couplers_ARREADY;
  wire [0:0]m14_couplers_to_m14_couplers_ARVALID;
  wire [31:0]m14_couplers_to_m14_couplers_AWADDR;
  wire [2:0]m14_couplers_to_m14_couplers_AWPROT;
  wire [0:0]m14_couplers_to_m14_couplers_AWREADY;
  wire [0:0]m14_couplers_to_m14_couplers_AWVALID;
  wire [0:0]m14_couplers_to_m14_couplers_BREADY;
  wire [1:0]m14_couplers_to_m14_couplers_BRESP;
  wire [0:0]m14_couplers_to_m14_couplers_BVALID;
  wire [31:0]m14_couplers_to_m14_couplers_RDATA;
  wire [0:0]m14_couplers_to_m14_couplers_RREADY;
  wire [1:0]m14_couplers_to_m14_couplers_RRESP;
  wire [0:0]m14_couplers_to_m14_couplers_RVALID;
  wire [31:0]m14_couplers_to_m14_couplers_WDATA;
  wire [0:0]m14_couplers_to_m14_couplers_WREADY;
  wire [3:0]m14_couplers_to_m14_couplers_WSTRB;
  wire [0:0]m14_couplers_to_m14_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m14_couplers_to_m14_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m14_couplers_to_m14_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m14_couplers_to_m14_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m14_couplers_to_m14_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m14_couplers_to_m14_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m14_couplers_to_m14_couplers_AWVALID;
  assign M_AXI_bready[0] = m14_couplers_to_m14_couplers_BREADY;
  assign M_AXI_rready[0] = m14_couplers_to_m14_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m14_couplers_to_m14_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m14_couplers_to_m14_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m14_couplers_to_m14_couplers_WVALID;
  assign S_AXI_arready[0] = m14_couplers_to_m14_couplers_ARREADY;
  assign S_AXI_awready[0] = m14_couplers_to_m14_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m14_couplers_to_m14_couplers_BRESP;
  assign S_AXI_bvalid[0] = m14_couplers_to_m14_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m14_couplers_to_m14_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m14_couplers_to_m14_couplers_RRESP;
  assign S_AXI_rvalid[0] = m14_couplers_to_m14_couplers_RVALID;
  assign S_AXI_wready[0] = m14_couplers_to_m14_couplers_WREADY;
  assign m14_couplers_to_m14_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m14_couplers_to_m14_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m14_couplers_to_m14_couplers_ARREADY = M_AXI_arready[0];
  assign m14_couplers_to_m14_couplers_ARVALID = S_AXI_arvalid[0];
  assign m14_couplers_to_m14_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m14_couplers_to_m14_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m14_couplers_to_m14_couplers_AWREADY = M_AXI_awready[0];
  assign m14_couplers_to_m14_couplers_AWVALID = S_AXI_awvalid[0];
  assign m14_couplers_to_m14_couplers_BREADY = S_AXI_bready[0];
  assign m14_couplers_to_m14_couplers_BRESP = M_AXI_bresp[1:0];
  assign m14_couplers_to_m14_couplers_BVALID = M_AXI_bvalid[0];
  assign m14_couplers_to_m14_couplers_RDATA = M_AXI_rdata[31:0];
  assign m14_couplers_to_m14_couplers_RREADY = S_AXI_rready[0];
  assign m14_couplers_to_m14_couplers_RRESP = M_AXI_rresp[1:0];
  assign m14_couplers_to_m14_couplers_RVALID = M_AXI_rvalid[0];
  assign m14_couplers_to_m14_couplers_WDATA = S_AXI_wdata[31:0];
  assign m14_couplers_to_m14_couplers_WREADY = M_AXI_wready[0];
  assign m14_couplers_to_m14_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m14_couplers_to_m14_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m15_couplers_imp_1GBO6CE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m15_couplers_to_m15_couplers_ARADDR;
  wire [2:0]m15_couplers_to_m15_couplers_ARPROT;
  wire [0:0]m15_couplers_to_m15_couplers_ARREADY;
  wire [0:0]m15_couplers_to_m15_couplers_ARVALID;
  wire [31:0]m15_couplers_to_m15_couplers_AWADDR;
  wire [2:0]m15_couplers_to_m15_couplers_AWPROT;
  wire [0:0]m15_couplers_to_m15_couplers_AWREADY;
  wire [0:0]m15_couplers_to_m15_couplers_AWVALID;
  wire [0:0]m15_couplers_to_m15_couplers_BREADY;
  wire [1:0]m15_couplers_to_m15_couplers_BRESP;
  wire [0:0]m15_couplers_to_m15_couplers_BVALID;
  wire [31:0]m15_couplers_to_m15_couplers_RDATA;
  wire [0:0]m15_couplers_to_m15_couplers_RREADY;
  wire [1:0]m15_couplers_to_m15_couplers_RRESP;
  wire [0:0]m15_couplers_to_m15_couplers_RVALID;
  wire [31:0]m15_couplers_to_m15_couplers_WDATA;
  wire [0:0]m15_couplers_to_m15_couplers_WREADY;
  wire [3:0]m15_couplers_to_m15_couplers_WSTRB;
  wire [0:0]m15_couplers_to_m15_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m15_couplers_to_m15_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m15_couplers_to_m15_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m15_couplers_to_m15_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m15_couplers_to_m15_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m15_couplers_to_m15_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m15_couplers_to_m15_couplers_AWVALID;
  assign M_AXI_bready[0] = m15_couplers_to_m15_couplers_BREADY;
  assign M_AXI_rready[0] = m15_couplers_to_m15_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m15_couplers_to_m15_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m15_couplers_to_m15_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m15_couplers_to_m15_couplers_WVALID;
  assign S_AXI_arready[0] = m15_couplers_to_m15_couplers_ARREADY;
  assign S_AXI_awready[0] = m15_couplers_to_m15_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m15_couplers_to_m15_couplers_BRESP;
  assign S_AXI_bvalid[0] = m15_couplers_to_m15_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m15_couplers_to_m15_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m15_couplers_to_m15_couplers_RRESP;
  assign S_AXI_rvalid[0] = m15_couplers_to_m15_couplers_RVALID;
  assign S_AXI_wready[0] = m15_couplers_to_m15_couplers_WREADY;
  assign m15_couplers_to_m15_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m15_couplers_to_m15_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m15_couplers_to_m15_couplers_ARREADY = M_AXI_arready[0];
  assign m15_couplers_to_m15_couplers_ARVALID = S_AXI_arvalid[0];
  assign m15_couplers_to_m15_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m15_couplers_to_m15_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m15_couplers_to_m15_couplers_AWREADY = M_AXI_awready[0];
  assign m15_couplers_to_m15_couplers_AWVALID = S_AXI_awvalid[0];
  assign m15_couplers_to_m15_couplers_BREADY = S_AXI_bready[0];
  assign m15_couplers_to_m15_couplers_BRESP = M_AXI_bresp[1:0];
  assign m15_couplers_to_m15_couplers_BVALID = M_AXI_bvalid[0];
  assign m15_couplers_to_m15_couplers_RDATA = M_AXI_rdata[31:0];
  assign m15_couplers_to_m15_couplers_RREADY = S_AXI_rready[0];
  assign m15_couplers_to_m15_couplers_RRESP = M_AXI_rresp[1:0];
  assign m15_couplers_to_m15_couplers_RVALID = M_AXI_rvalid[0];
  assign m15_couplers_to_m15_couplers_WDATA = S_AXI_wdata[31:0];
  assign m15_couplers_to_m15_couplers_WREADY = M_AXI_wready[0];
  assign m15_couplers_to_m15_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m15_couplers_to_m15_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m16_couplers_imp_15FXTD8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m16_couplers_to_m16_couplers_ARADDR;
  wire [2:0]m16_couplers_to_m16_couplers_ARPROT;
  wire [0:0]m16_couplers_to_m16_couplers_ARREADY;
  wire [0:0]m16_couplers_to_m16_couplers_ARVALID;
  wire [31:0]m16_couplers_to_m16_couplers_AWADDR;
  wire [2:0]m16_couplers_to_m16_couplers_AWPROT;
  wire [0:0]m16_couplers_to_m16_couplers_AWREADY;
  wire [0:0]m16_couplers_to_m16_couplers_AWVALID;
  wire [0:0]m16_couplers_to_m16_couplers_BREADY;
  wire [1:0]m16_couplers_to_m16_couplers_BRESP;
  wire [0:0]m16_couplers_to_m16_couplers_BVALID;
  wire [31:0]m16_couplers_to_m16_couplers_RDATA;
  wire [0:0]m16_couplers_to_m16_couplers_RREADY;
  wire [1:0]m16_couplers_to_m16_couplers_RRESP;
  wire [0:0]m16_couplers_to_m16_couplers_RVALID;
  wire [31:0]m16_couplers_to_m16_couplers_WDATA;
  wire [0:0]m16_couplers_to_m16_couplers_WREADY;
  wire [3:0]m16_couplers_to_m16_couplers_WSTRB;
  wire [0:0]m16_couplers_to_m16_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m16_couplers_to_m16_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m16_couplers_to_m16_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m16_couplers_to_m16_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m16_couplers_to_m16_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m16_couplers_to_m16_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m16_couplers_to_m16_couplers_AWVALID;
  assign M_AXI_bready[0] = m16_couplers_to_m16_couplers_BREADY;
  assign M_AXI_rready[0] = m16_couplers_to_m16_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m16_couplers_to_m16_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m16_couplers_to_m16_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m16_couplers_to_m16_couplers_WVALID;
  assign S_AXI_arready[0] = m16_couplers_to_m16_couplers_ARREADY;
  assign S_AXI_awready[0] = m16_couplers_to_m16_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m16_couplers_to_m16_couplers_BRESP;
  assign S_AXI_bvalid[0] = m16_couplers_to_m16_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m16_couplers_to_m16_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m16_couplers_to_m16_couplers_RRESP;
  assign S_AXI_rvalid[0] = m16_couplers_to_m16_couplers_RVALID;
  assign S_AXI_wready[0] = m16_couplers_to_m16_couplers_WREADY;
  assign m16_couplers_to_m16_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m16_couplers_to_m16_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m16_couplers_to_m16_couplers_ARREADY = M_AXI_arready[0];
  assign m16_couplers_to_m16_couplers_ARVALID = S_AXI_arvalid[0];
  assign m16_couplers_to_m16_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m16_couplers_to_m16_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m16_couplers_to_m16_couplers_AWREADY = M_AXI_awready[0];
  assign m16_couplers_to_m16_couplers_AWVALID = S_AXI_awvalid[0];
  assign m16_couplers_to_m16_couplers_BREADY = S_AXI_bready[0];
  assign m16_couplers_to_m16_couplers_BRESP = M_AXI_bresp[1:0];
  assign m16_couplers_to_m16_couplers_BVALID = M_AXI_bvalid[0];
  assign m16_couplers_to_m16_couplers_RDATA = M_AXI_rdata[31:0];
  assign m16_couplers_to_m16_couplers_RREADY = S_AXI_rready[0];
  assign m16_couplers_to_m16_couplers_RRESP = M_AXI_rresp[1:0];
  assign m16_couplers_to_m16_couplers_RVALID = M_AXI_rvalid[0];
  assign m16_couplers_to_m16_couplers_WDATA = S_AXI_wdata[31:0];
  assign m16_couplers_to_m16_couplers_WREADY = M_AXI_wready[0];
  assign m16_couplers_to_m16_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m16_couplers_to_m16_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m17_couplers_imp_GFDJST
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m17_couplers_to_m17_couplers_ARADDR;
  wire [2:0]m17_couplers_to_m17_couplers_ARPROT;
  wire [0:0]m17_couplers_to_m17_couplers_ARREADY;
  wire [0:0]m17_couplers_to_m17_couplers_ARVALID;
  wire [31:0]m17_couplers_to_m17_couplers_AWADDR;
  wire [2:0]m17_couplers_to_m17_couplers_AWPROT;
  wire [0:0]m17_couplers_to_m17_couplers_AWREADY;
  wire [0:0]m17_couplers_to_m17_couplers_AWVALID;
  wire [0:0]m17_couplers_to_m17_couplers_BREADY;
  wire [1:0]m17_couplers_to_m17_couplers_BRESP;
  wire [0:0]m17_couplers_to_m17_couplers_BVALID;
  wire [31:0]m17_couplers_to_m17_couplers_RDATA;
  wire [0:0]m17_couplers_to_m17_couplers_RREADY;
  wire [1:0]m17_couplers_to_m17_couplers_RRESP;
  wire [0:0]m17_couplers_to_m17_couplers_RVALID;
  wire [31:0]m17_couplers_to_m17_couplers_WDATA;
  wire [0:0]m17_couplers_to_m17_couplers_WREADY;
  wire [3:0]m17_couplers_to_m17_couplers_WSTRB;
  wire [0:0]m17_couplers_to_m17_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m17_couplers_to_m17_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m17_couplers_to_m17_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m17_couplers_to_m17_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m17_couplers_to_m17_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m17_couplers_to_m17_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m17_couplers_to_m17_couplers_AWVALID;
  assign M_AXI_bready[0] = m17_couplers_to_m17_couplers_BREADY;
  assign M_AXI_rready[0] = m17_couplers_to_m17_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m17_couplers_to_m17_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m17_couplers_to_m17_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m17_couplers_to_m17_couplers_WVALID;
  assign S_AXI_arready[0] = m17_couplers_to_m17_couplers_ARREADY;
  assign S_AXI_awready[0] = m17_couplers_to_m17_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m17_couplers_to_m17_couplers_BRESP;
  assign S_AXI_bvalid[0] = m17_couplers_to_m17_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m17_couplers_to_m17_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m17_couplers_to_m17_couplers_RRESP;
  assign S_AXI_rvalid[0] = m17_couplers_to_m17_couplers_RVALID;
  assign S_AXI_wready[0] = m17_couplers_to_m17_couplers_WREADY;
  assign m17_couplers_to_m17_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m17_couplers_to_m17_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m17_couplers_to_m17_couplers_ARREADY = M_AXI_arready[0];
  assign m17_couplers_to_m17_couplers_ARVALID = S_AXI_arvalid[0];
  assign m17_couplers_to_m17_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m17_couplers_to_m17_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m17_couplers_to_m17_couplers_AWREADY = M_AXI_awready[0];
  assign m17_couplers_to_m17_couplers_AWVALID = S_AXI_awvalid[0];
  assign m17_couplers_to_m17_couplers_BREADY = S_AXI_bready[0];
  assign m17_couplers_to_m17_couplers_BRESP = M_AXI_bresp[1:0];
  assign m17_couplers_to_m17_couplers_BVALID = M_AXI_bvalid[0];
  assign m17_couplers_to_m17_couplers_RDATA = M_AXI_rdata[31:0];
  assign m17_couplers_to_m17_couplers_RREADY = S_AXI_rready[0];
  assign m17_couplers_to_m17_couplers_RRESP = M_AXI_rresp[1:0];
  assign m17_couplers_to_m17_couplers_RVALID = M_AXI_rvalid[0];
  assign m17_couplers_to_m17_couplers_WDATA = S_AXI_wdata[31:0];
  assign m17_couplers_to_m17_couplers_WREADY = M_AXI_wready[0];
  assign m17_couplers_to_m17_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m17_couplers_to_m17_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m18_couplers_imp_1EGMMH3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m18_couplers_to_m18_couplers_ARADDR;
  wire [2:0]m18_couplers_to_m18_couplers_ARPROT;
  wire [0:0]m18_couplers_to_m18_couplers_ARREADY;
  wire [0:0]m18_couplers_to_m18_couplers_ARVALID;
  wire [31:0]m18_couplers_to_m18_couplers_AWADDR;
  wire [2:0]m18_couplers_to_m18_couplers_AWPROT;
  wire [0:0]m18_couplers_to_m18_couplers_AWREADY;
  wire [0:0]m18_couplers_to_m18_couplers_AWVALID;
  wire [0:0]m18_couplers_to_m18_couplers_BREADY;
  wire [1:0]m18_couplers_to_m18_couplers_BRESP;
  wire [0:0]m18_couplers_to_m18_couplers_BVALID;
  wire [31:0]m18_couplers_to_m18_couplers_RDATA;
  wire [0:0]m18_couplers_to_m18_couplers_RREADY;
  wire [1:0]m18_couplers_to_m18_couplers_RRESP;
  wire [0:0]m18_couplers_to_m18_couplers_RVALID;
  wire [31:0]m18_couplers_to_m18_couplers_WDATA;
  wire [0:0]m18_couplers_to_m18_couplers_WREADY;
  wire [3:0]m18_couplers_to_m18_couplers_WSTRB;
  wire [0:0]m18_couplers_to_m18_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m18_couplers_to_m18_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m18_couplers_to_m18_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m18_couplers_to_m18_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m18_couplers_to_m18_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m18_couplers_to_m18_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m18_couplers_to_m18_couplers_AWVALID;
  assign M_AXI_bready[0] = m18_couplers_to_m18_couplers_BREADY;
  assign M_AXI_rready[0] = m18_couplers_to_m18_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m18_couplers_to_m18_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m18_couplers_to_m18_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m18_couplers_to_m18_couplers_WVALID;
  assign S_AXI_arready[0] = m18_couplers_to_m18_couplers_ARREADY;
  assign S_AXI_awready[0] = m18_couplers_to_m18_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m18_couplers_to_m18_couplers_BRESP;
  assign S_AXI_bvalid[0] = m18_couplers_to_m18_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m18_couplers_to_m18_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m18_couplers_to_m18_couplers_RRESP;
  assign S_AXI_rvalid[0] = m18_couplers_to_m18_couplers_RVALID;
  assign S_AXI_wready[0] = m18_couplers_to_m18_couplers_WREADY;
  assign m18_couplers_to_m18_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m18_couplers_to_m18_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m18_couplers_to_m18_couplers_ARREADY = M_AXI_arready[0];
  assign m18_couplers_to_m18_couplers_ARVALID = S_AXI_arvalid[0];
  assign m18_couplers_to_m18_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m18_couplers_to_m18_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m18_couplers_to_m18_couplers_AWREADY = M_AXI_awready[0];
  assign m18_couplers_to_m18_couplers_AWVALID = S_AXI_awvalid[0];
  assign m18_couplers_to_m18_couplers_BREADY = S_AXI_bready[0];
  assign m18_couplers_to_m18_couplers_BRESP = M_AXI_bresp[1:0];
  assign m18_couplers_to_m18_couplers_BVALID = M_AXI_bvalid[0];
  assign m18_couplers_to_m18_couplers_RDATA = M_AXI_rdata[31:0];
  assign m18_couplers_to_m18_couplers_RREADY = S_AXI_rready[0];
  assign m18_couplers_to_m18_couplers_RRESP = M_AXI_rresp[1:0];
  assign m18_couplers_to_m18_couplers_RVALID = M_AXI_rvalid[0];
  assign m18_couplers_to_m18_couplers_WDATA = S_AXI_wdata[31:0];
  assign m18_couplers_to_m18_couplers_WREADY = M_AXI_wready[0];
  assign m18_couplers_to_m18_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m18_couplers_to_m18_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m19_couplers_imp_7OTKUU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m19_couplers_to_m19_couplers_ARADDR;
  wire [2:0]m19_couplers_to_m19_couplers_ARPROT;
  wire [0:0]m19_couplers_to_m19_couplers_ARREADY;
  wire [0:0]m19_couplers_to_m19_couplers_ARVALID;
  wire [31:0]m19_couplers_to_m19_couplers_AWADDR;
  wire [2:0]m19_couplers_to_m19_couplers_AWPROT;
  wire [0:0]m19_couplers_to_m19_couplers_AWREADY;
  wire [0:0]m19_couplers_to_m19_couplers_AWVALID;
  wire [0:0]m19_couplers_to_m19_couplers_BREADY;
  wire [1:0]m19_couplers_to_m19_couplers_BRESP;
  wire [0:0]m19_couplers_to_m19_couplers_BVALID;
  wire [31:0]m19_couplers_to_m19_couplers_RDATA;
  wire [0:0]m19_couplers_to_m19_couplers_RREADY;
  wire [1:0]m19_couplers_to_m19_couplers_RRESP;
  wire [0:0]m19_couplers_to_m19_couplers_RVALID;
  wire [31:0]m19_couplers_to_m19_couplers_WDATA;
  wire [0:0]m19_couplers_to_m19_couplers_WREADY;
  wire [3:0]m19_couplers_to_m19_couplers_WSTRB;
  wire [0:0]m19_couplers_to_m19_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m19_couplers_to_m19_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m19_couplers_to_m19_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m19_couplers_to_m19_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m19_couplers_to_m19_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m19_couplers_to_m19_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m19_couplers_to_m19_couplers_AWVALID;
  assign M_AXI_bready[0] = m19_couplers_to_m19_couplers_BREADY;
  assign M_AXI_rready[0] = m19_couplers_to_m19_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m19_couplers_to_m19_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m19_couplers_to_m19_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m19_couplers_to_m19_couplers_WVALID;
  assign S_AXI_arready[0] = m19_couplers_to_m19_couplers_ARREADY;
  assign S_AXI_awready[0] = m19_couplers_to_m19_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m19_couplers_to_m19_couplers_BRESP;
  assign S_AXI_bvalid[0] = m19_couplers_to_m19_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m19_couplers_to_m19_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m19_couplers_to_m19_couplers_RRESP;
  assign S_AXI_rvalid[0] = m19_couplers_to_m19_couplers_RVALID;
  assign S_AXI_wready[0] = m19_couplers_to_m19_couplers_WREADY;
  assign m19_couplers_to_m19_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m19_couplers_to_m19_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m19_couplers_to_m19_couplers_ARREADY = M_AXI_arready[0];
  assign m19_couplers_to_m19_couplers_ARVALID = S_AXI_arvalid[0];
  assign m19_couplers_to_m19_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m19_couplers_to_m19_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m19_couplers_to_m19_couplers_AWREADY = M_AXI_awready[0];
  assign m19_couplers_to_m19_couplers_AWVALID = S_AXI_awvalid[0];
  assign m19_couplers_to_m19_couplers_BREADY = S_AXI_bready[0];
  assign m19_couplers_to_m19_couplers_BRESP = M_AXI_bresp[1:0];
  assign m19_couplers_to_m19_couplers_BVALID = M_AXI_bvalid[0];
  assign m19_couplers_to_m19_couplers_RDATA = M_AXI_rdata[31:0];
  assign m19_couplers_to_m19_couplers_RREADY = S_AXI_rready[0];
  assign m19_couplers_to_m19_couplers_RRESP = M_AXI_rresp[1:0];
  assign m19_couplers_to_m19_couplers_RVALID = M_AXI_rvalid[0];
  assign m19_couplers_to_m19_couplers_WDATA = S_AXI_wdata[31:0];
  assign m19_couplers_to_m19_couplers_WREADY = M_AXI_wready[0];
  assign m19_couplers_to_m19_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m19_couplers_to_m19_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m20_couplers_imp_15FR2BW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m20_couplers_to_m20_couplers_ARADDR;
  wire [2:0]m20_couplers_to_m20_couplers_ARPROT;
  wire [0:0]m20_couplers_to_m20_couplers_ARREADY;
  wire [0:0]m20_couplers_to_m20_couplers_ARVALID;
  wire [31:0]m20_couplers_to_m20_couplers_AWADDR;
  wire [2:0]m20_couplers_to_m20_couplers_AWPROT;
  wire [0:0]m20_couplers_to_m20_couplers_AWREADY;
  wire [0:0]m20_couplers_to_m20_couplers_AWVALID;
  wire [0:0]m20_couplers_to_m20_couplers_BREADY;
  wire [1:0]m20_couplers_to_m20_couplers_BRESP;
  wire [0:0]m20_couplers_to_m20_couplers_BVALID;
  wire [31:0]m20_couplers_to_m20_couplers_RDATA;
  wire [0:0]m20_couplers_to_m20_couplers_RREADY;
  wire [1:0]m20_couplers_to_m20_couplers_RRESP;
  wire [0:0]m20_couplers_to_m20_couplers_RVALID;
  wire [31:0]m20_couplers_to_m20_couplers_WDATA;
  wire [0:0]m20_couplers_to_m20_couplers_WREADY;
  wire [3:0]m20_couplers_to_m20_couplers_WSTRB;
  wire [0:0]m20_couplers_to_m20_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m20_couplers_to_m20_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m20_couplers_to_m20_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m20_couplers_to_m20_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m20_couplers_to_m20_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m20_couplers_to_m20_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m20_couplers_to_m20_couplers_AWVALID;
  assign M_AXI_bready[0] = m20_couplers_to_m20_couplers_BREADY;
  assign M_AXI_rready[0] = m20_couplers_to_m20_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m20_couplers_to_m20_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m20_couplers_to_m20_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m20_couplers_to_m20_couplers_WVALID;
  assign S_AXI_arready[0] = m20_couplers_to_m20_couplers_ARREADY;
  assign S_AXI_awready[0] = m20_couplers_to_m20_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m20_couplers_to_m20_couplers_BRESP;
  assign S_AXI_bvalid[0] = m20_couplers_to_m20_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m20_couplers_to_m20_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m20_couplers_to_m20_couplers_RRESP;
  assign S_AXI_rvalid[0] = m20_couplers_to_m20_couplers_RVALID;
  assign S_AXI_wready[0] = m20_couplers_to_m20_couplers_WREADY;
  assign m20_couplers_to_m20_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m20_couplers_to_m20_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m20_couplers_to_m20_couplers_ARREADY = M_AXI_arready[0];
  assign m20_couplers_to_m20_couplers_ARVALID = S_AXI_arvalid[0];
  assign m20_couplers_to_m20_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m20_couplers_to_m20_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m20_couplers_to_m20_couplers_AWREADY = M_AXI_awready[0];
  assign m20_couplers_to_m20_couplers_AWVALID = S_AXI_awvalid[0];
  assign m20_couplers_to_m20_couplers_BREADY = S_AXI_bready[0];
  assign m20_couplers_to_m20_couplers_BRESP = M_AXI_bresp[1:0];
  assign m20_couplers_to_m20_couplers_BVALID = M_AXI_bvalid[0];
  assign m20_couplers_to_m20_couplers_RDATA = M_AXI_rdata[31:0];
  assign m20_couplers_to_m20_couplers_RREADY = S_AXI_rready[0];
  assign m20_couplers_to_m20_couplers_RRESP = M_AXI_rresp[1:0];
  assign m20_couplers_to_m20_couplers_RVALID = M_AXI_rvalid[0];
  assign m20_couplers_to_m20_couplers_WDATA = S_AXI_wdata[31:0];
  assign m20_couplers_to_m20_couplers_WREADY = M_AXI_wready[0];
  assign m20_couplers_to_m20_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m20_couplers_to_m20_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m21_couplers_imp_GFT3J1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m21_couplers_to_m21_couplers_ARADDR;
  wire [2:0]m21_couplers_to_m21_couplers_ARPROT;
  wire [0:0]m21_couplers_to_m21_couplers_ARREADY;
  wire [0:0]m21_couplers_to_m21_couplers_ARVALID;
  wire [31:0]m21_couplers_to_m21_couplers_AWADDR;
  wire [2:0]m21_couplers_to_m21_couplers_AWPROT;
  wire [0:0]m21_couplers_to_m21_couplers_AWREADY;
  wire [0:0]m21_couplers_to_m21_couplers_AWVALID;
  wire [0:0]m21_couplers_to_m21_couplers_BREADY;
  wire [1:0]m21_couplers_to_m21_couplers_BRESP;
  wire [0:0]m21_couplers_to_m21_couplers_BVALID;
  wire [31:0]m21_couplers_to_m21_couplers_RDATA;
  wire [0:0]m21_couplers_to_m21_couplers_RREADY;
  wire [1:0]m21_couplers_to_m21_couplers_RRESP;
  wire [0:0]m21_couplers_to_m21_couplers_RVALID;
  wire [31:0]m21_couplers_to_m21_couplers_WDATA;
  wire [0:0]m21_couplers_to_m21_couplers_WREADY;
  wire [3:0]m21_couplers_to_m21_couplers_WSTRB;
  wire [0:0]m21_couplers_to_m21_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m21_couplers_to_m21_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m21_couplers_to_m21_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m21_couplers_to_m21_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m21_couplers_to_m21_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m21_couplers_to_m21_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m21_couplers_to_m21_couplers_AWVALID;
  assign M_AXI_bready[0] = m21_couplers_to_m21_couplers_BREADY;
  assign M_AXI_rready[0] = m21_couplers_to_m21_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m21_couplers_to_m21_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m21_couplers_to_m21_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m21_couplers_to_m21_couplers_WVALID;
  assign S_AXI_arready[0] = m21_couplers_to_m21_couplers_ARREADY;
  assign S_AXI_awready[0] = m21_couplers_to_m21_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m21_couplers_to_m21_couplers_BRESP;
  assign S_AXI_bvalid[0] = m21_couplers_to_m21_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m21_couplers_to_m21_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m21_couplers_to_m21_couplers_RRESP;
  assign S_AXI_rvalid[0] = m21_couplers_to_m21_couplers_RVALID;
  assign S_AXI_wready[0] = m21_couplers_to_m21_couplers_WREADY;
  assign m21_couplers_to_m21_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m21_couplers_to_m21_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m21_couplers_to_m21_couplers_ARREADY = M_AXI_arready[0];
  assign m21_couplers_to_m21_couplers_ARVALID = S_AXI_arvalid[0];
  assign m21_couplers_to_m21_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m21_couplers_to_m21_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m21_couplers_to_m21_couplers_AWREADY = M_AXI_awready[0];
  assign m21_couplers_to_m21_couplers_AWVALID = S_AXI_awvalid[0];
  assign m21_couplers_to_m21_couplers_BREADY = S_AXI_bready[0];
  assign m21_couplers_to_m21_couplers_BRESP = M_AXI_bresp[1:0];
  assign m21_couplers_to_m21_couplers_BVALID = M_AXI_bvalid[0];
  assign m21_couplers_to_m21_couplers_RDATA = M_AXI_rdata[31:0];
  assign m21_couplers_to_m21_couplers_RREADY = S_AXI_rready[0];
  assign m21_couplers_to_m21_couplers_RRESP = M_AXI_rresp[1:0];
  assign m21_couplers_to_m21_couplers_RVALID = M_AXI_rvalid[0];
  assign m21_couplers_to_m21_couplers_WDATA = S_AXI_wdata[31:0];
  assign m21_couplers_to_m21_couplers_WREADY = M_AXI_wready[0];
  assign m21_couplers_to_m21_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m21_couplers_to_m21_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_NYY8AY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s00_couplers_ARQOS;
  wire auto_us_df_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s00_couplers_ARSIZE;
  wire auto_us_df_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s00_couplers_AWQOS;
  wire auto_us_df_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s00_couplers_AWSIZE;
  wire auto_us_df_to_s00_couplers_AWVALID;
  wire auto_us_df_to_s00_couplers_BREADY;
  wire [1:0]auto_us_df_to_s00_couplers_BRESP;
  wire auto_us_df_to_s00_couplers_BVALID;
  wire [511:0]auto_us_df_to_s00_couplers_RDATA;
  wire auto_us_df_to_s00_couplers_RLAST;
  wire auto_us_df_to_s00_couplers_RREADY;
  wire [1:0]auto_us_df_to_s00_couplers_RRESP;
  wire auto_us_df_to_s00_couplers_RVALID;
  wire [511:0]auto_us_df_to_s00_couplers_WDATA;
  wire auto_us_df_to_s00_couplers_WLAST;
  wire auto_us_df_to_s00_couplers_WREADY;
  wire [63:0]auto_us_df_to_s00_couplers_WSTRB;
  wire auto_us_df_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_df_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_df_ARLEN;
  wire s00_couplers_to_auto_us_df_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_df_ARPROT;
  wire [3:0]s00_couplers_to_auto_us_df_ARQOS;
  wire s00_couplers_to_auto_us_df_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_df_ARSIZE;
  wire s00_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_df_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_df_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_df_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_df_AWLEN;
  wire s00_couplers_to_auto_us_df_AWLOCK;
  wire [2:0]s00_couplers_to_auto_us_df_AWPROT;
  wire [3:0]s00_couplers_to_auto_us_df_AWQOS;
  wire s00_couplers_to_auto_us_df_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_df_AWSIZE;
  wire s00_couplers_to_auto_us_df_AWVALID;
  wire s00_couplers_to_auto_us_df_BREADY;
  wire [1:0]s00_couplers_to_auto_us_df_BRESP;
  wire s00_couplers_to_auto_us_df_BVALID;
  wire [31:0]s00_couplers_to_auto_us_df_RDATA;
  wire s00_couplers_to_auto_us_df_RLAST;
  wire s00_couplers_to_auto_us_df_RREADY;
  wire [1:0]s00_couplers_to_auto_us_df_RRESP;
  wire s00_couplers_to_auto_us_df_RVALID;
  wire [31:0]s00_couplers_to_auto_us_df_WDATA;
  wire s00_couplers_to_auto_us_df_WLAST;
  wire s00_couplers_to_auto_us_df_WREADY;
  wire [3:0]s00_couplers_to_auto_us_df_WSTRB;
  wire s00_couplers_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_df_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_df_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_df_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_df_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_df_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_df_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_df_WREADY;
  assign auto_us_df_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_df_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_df_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_df_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_df_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_df_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_df_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_df_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_us_df_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_df_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_us_df_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_df_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_df_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_df_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_df_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_df_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_df_WVALID = S_AXI_wvalid;
  system_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_us_df_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_df_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_df_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_df_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_df_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_us_df_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_us_df_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_us_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_df_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_df_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_df_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_df_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_df_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_df_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_df_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_df_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_df_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_df_WVALID));
endmodule

module s00_couplers_imp_WZLZH6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s01_couplers_imp_1WTPGKB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s01_couplers_ARQOS;
  wire auto_us_df_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s01_couplers_ARSIZE;
  wire auto_us_df_to_s01_couplers_ARVALID;
  wire [511:0]auto_us_df_to_s01_couplers_RDATA;
  wire auto_us_df_to_s01_couplers_RLAST;
  wire auto_us_df_to_s01_couplers_RREADY;
  wire [1:0]auto_us_df_to_s01_couplers_RRESP;
  wire auto_us_df_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_df_ARCACHE;
  wire [7:0]s01_couplers_to_auto_us_df_ARLEN;
  wire s01_couplers_to_auto_us_df_ARLOCK;
  wire [2:0]s01_couplers_to_auto_us_df_ARPROT;
  wire [3:0]s01_couplers_to_auto_us_df_ARQOS;
  wire s01_couplers_to_auto_us_df_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_df_ARSIZE;
  wire s01_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_df_RDATA;
  wire s01_couplers_to_auto_us_df_RLAST;
  wire s01_couplers_to_auto_us_df_RREADY;
  wire [1:0]s01_couplers_to_auto_us_df_RRESP;
  wire s01_couplers_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_df_RVALID;
  assign auto_us_df_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_df_ARLOCK = S_AXI_arlock;
  assign s01_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_df_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  system_auto_us_df_1 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_us_df_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_df_ARVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_df_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_df_RVALID));
endmodule

module s02_couplers_imp_1M7AY21
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s02_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s02_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s02_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s02_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s02_couplers_ARQOS;
  wire auto_us_df_to_s02_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s02_couplers_ARSIZE;
  wire auto_us_df_to_s02_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s02_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s02_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s02_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s02_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s02_couplers_AWQOS;
  wire auto_us_df_to_s02_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s02_couplers_AWSIZE;
  wire auto_us_df_to_s02_couplers_AWVALID;
  wire auto_us_df_to_s02_couplers_BREADY;
  wire [1:0]auto_us_df_to_s02_couplers_BRESP;
  wire auto_us_df_to_s02_couplers_BVALID;
  wire [511:0]auto_us_df_to_s02_couplers_RDATA;
  wire auto_us_df_to_s02_couplers_RLAST;
  wire auto_us_df_to_s02_couplers_RREADY;
  wire [1:0]auto_us_df_to_s02_couplers_RRESP;
  wire auto_us_df_to_s02_couplers_RVALID;
  wire [511:0]auto_us_df_to_s02_couplers_WDATA;
  wire auto_us_df_to_s02_couplers_WLAST;
  wire auto_us_df_to_s02_couplers_WREADY;
  wire [63:0]auto_us_df_to_s02_couplers_WSTRB;
  wire auto_us_df_to_s02_couplers_WVALID;
  wire [31:0]s02_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s02_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s02_couplers_to_auto_us_df_ARCACHE;
  wire [7:0]s02_couplers_to_auto_us_df_ARLEN;
  wire [2:0]s02_couplers_to_auto_us_df_ARPROT;
  wire s02_couplers_to_auto_us_df_ARREADY;
  wire [2:0]s02_couplers_to_auto_us_df_ARSIZE;
  wire s02_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s02_couplers_to_auto_us_df_AWADDR;
  wire [1:0]s02_couplers_to_auto_us_df_AWBURST;
  wire [3:0]s02_couplers_to_auto_us_df_AWCACHE;
  wire [7:0]s02_couplers_to_auto_us_df_AWLEN;
  wire [2:0]s02_couplers_to_auto_us_df_AWPROT;
  wire s02_couplers_to_auto_us_df_AWREADY;
  wire [2:0]s02_couplers_to_auto_us_df_AWSIZE;
  wire s02_couplers_to_auto_us_df_AWVALID;
  wire s02_couplers_to_auto_us_df_BREADY;
  wire [1:0]s02_couplers_to_auto_us_df_BRESP;
  wire s02_couplers_to_auto_us_df_BVALID;
  wire [31:0]s02_couplers_to_auto_us_df_RDATA;
  wire s02_couplers_to_auto_us_df_RLAST;
  wire s02_couplers_to_auto_us_df_RREADY;
  wire [1:0]s02_couplers_to_auto_us_df_RRESP;
  wire s02_couplers_to_auto_us_df_RVALID;
  wire [31:0]s02_couplers_to_auto_us_df_WDATA;
  wire s02_couplers_to_auto_us_df_WLAST;
  wire s02_couplers_to_auto_us_df_WREADY;
  wire [3:0]s02_couplers_to_auto_us_df_WSTRB;
  wire s02_couplers_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s02_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s02_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_df_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_df_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_awready = s02_couplers_to_auto_us_df_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_auto_us_df_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_auto_us_df_BVALID;
  assign S_AXI_rdata[31:0] = s02_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rlast = s02_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_auto_us_df_RVALID;
  assign S_AXI_wready = s02_couplers_to_auto_us_df_WREADY;
  assign auto_us_df_to_s02_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s02_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s02_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_auto_us_df_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_auto_us_df_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_auto_us_df_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_auto_us_df_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_auto_us_df_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_auto_us_df_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_auto_us_df_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_auto_us_df_BREADY = S_AXI_bready;
  assign s02_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  assign s02_couplers_to_auto_us_df_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_auto_us_df_WLAST = S_AXI_wlast;
  assign s02_couplers_to_auto_us_df_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_auto_us_df_WVALID = S_AXI_wvalid;
  system_auto_us_df_2 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s02_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s02_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s02_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s02_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s02_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s02_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s02_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s02_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s02_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s02_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s02_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s02_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s02_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s02_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s02_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s02_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s02_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s02_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s02_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s02_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s02_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s02_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s02_couplers_to_auto_us_df_AWADDR),
        .s_axi_awburst(s02_couplers_to_auto_us_df_AWBURST),
        .s_axi_awcache(s02_couplers_to_auto_us_df_AWCACHE),
        .s_axi_awlen(s02_couplers_to_auto_us_df_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s02_couplers_to_auto_us_df_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s02_couplers_to_auto_us_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s02_couplers_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_auto_us_df_AWVALID),
        .s_axi_bready(s02_couplers_to_auto_us_df_BREADY),
        .s_axi_bresp(s02_couplers_to_auto_us_df_BRESP),
        .s_axi_bvalid(s02_couplers_to_auto_us_df_BVALID),
        .s_axi_rdata(s02_couplers_to_auto_us_df_RDATA),
        .s_axi_rlast(s02_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s02_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s02_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s02_couplers_to_auto_us_df_RVALID),
        .s_axi_wdata(s02_couplers_to_auto_us_df_WDATA),
        .s_axi_wlast(s02_couplers_to_auto_us_df_WLAST),
        .s_axi_wready(s02_couplers_to_auto_us_df_WREADY),
        .s_axi_wstrb(s02_couplers_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s02_couplers_to_auto_us_df_WVALID));
endmodule

module s03_couplers_imp_ZFB4VS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s03_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s03_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s03_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s03_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s03_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s03_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s03_couplers_ARQOS;
  wire auto_us_df_to_s03_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s03_couplers_ARSIZE;
  wire auto_us_df_to_s03_couplers_ARVALID;
  wire [511:0]auto_us_df_to_s03_couplers_RDATA;
  wire auto_us_df_to_s03_couplers_RLAST;
  wire auto_us_df_to_s03_couplers_RREADY;
  wire [1:0]auto_us_df_to_s03_couplers_RRESP;
  wire auto_us_df_to_s03_couplers_RVALID;
  wire [31:0]s03_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s03_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s03_couplers_to_auto_us_df_ARCACHE;
  wire [7:0]s03_couplers_to_auto_us_df_ARLEN;
  wire [2:0]s03_couplers_to_auto_us_df_ARPROT;
  wire s03_couplers_to_auto_us_df_ARREADY;
  wire [2:0]s03_couplers_to_auto_us_df_ARSIZE;
  wire s03_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s03_couplers_to_auto_us_df_RDATA;
  wire s03_couplers_to_auto_us_df_RLAST;
  wire s03_couplers_to_auto_us_df_RREADY;
  wire [1:0]s03_couplers_to_auto_us_df_RRESP;
  wire s03_couplers_to_auto_us_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s03_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s03_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s03_couplers_ARVALID;
  assign M_AXI_rready = auto_us_df_to_s03_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s03_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_rdata[31:0] = s03_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rlast = s03_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s03_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s03_couplers_to_auto_us_df_RVALID;
  assign auto_us_df_to_s03_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s03_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s03_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign s03_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[31:0];
  assign s03_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s03_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s03_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s03_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  system_auto_us_df_3 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s03_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s03_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s03_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s03_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s03_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s03_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s03_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s03_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s03_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s03_couplers_ARVALID),
        .m_axi_rdata(auto_us_df_to_s03_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s03_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s03_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s03_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s03_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s03_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s03_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s03_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s03_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s03_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s03_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s03_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s03_couplers_to_auto_us_df_ARVALID),
        .s_axi_rdata(s03_couplers_to_auto_us_df_RDATA),
        .s_axi_rlast(s03_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s03_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s03_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s03_couplers_to_auto_us_df_RVALID));
endmodule

module s04_couplers_imp_105UVIL
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s04_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s04_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s04_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s04_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s04_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s04_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s04_couplers_AWQOS;
  wire auto_us_df_to_s04_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s04_couplers_AWSIZE;
  wire auto_us_df_to_s04_couplers_AWVALID;
  wire auto_us_df_to_s04_couplers_BREADY;
  wire [1:0]auto_us_df_to_s04_couplers_BRESP;
  wire auto_us_df_to_s04_couplers_BVALID;
  wire [511:0]auto_us_df_to_s04_couplers_WDATA;
  wire auto_us_df_to_s04_couplers_WLAST;
  wire auto_us_df_to_s04_couplers_WREADY;
  wire [63:0]auto_us_df_to_s04_couplers_WSTRB;
  wire auto_us_df_to_s04_couplers_WVALID;
  wire [31:0]s04_couplers_to_auto_us_df_AWADDR;
  wire [1:0]s04_couplers_to_auto_us_df_AWBURST;
  wire [3:0]s04_couplers_to_auto_us_df_AWCACHE;
  wire [7:0]s04_couplers_to_auto_us_df_AWLEN;
  wire [2:0]s04_couplers_to_auto_us_df_AWPROT;
  wire s04_couplers_to_auto_us_df_AWREADY;
  wire [2:0]s04_couplers_to_auto_us_df_AWSIZE;
  wire s04_couplers_to_auto_us_df_AWVALID;
  wire s04_couplers_to_auto_us_df_BREADY;
  wire [1:0]s04_couplers_to_auto_us_df_BRESP;
  wire s04_couplers_to_auto_us_df_BVALID;
  wire [31:0]s04_couplers_to_auto_us_df_WDATA;
  wire s04_couplers_to_auto_us_df_WLAST;
  wire s04_couplers_to_auto_us_df_WREADY;
  wire [3:0]s04_couplers_to_auto_us_df_WSTRB;
  wire s04_couplers_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s04_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s04_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s04_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s04_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s04_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s04_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s04_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s04_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s04_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s04_couplers_BREADY;
  assign M_AXI_wdata[511:0] = auto_us_df_to_s04_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s04_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_df_to_s04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s04_couplers_to_auto_us_df_AWREADY;
  assign S_AXI_bresp[1:0] = s04_couplers_to_auto_us_df_BRESP;
  assign S_AXI_bvalid = s04_couplers_to_auto_us_df_BVALID;
  assign S_AXI_wready = s04_couplers_to_auto_us_df_WREADY;
  assign auto_us_df_to_s04_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s04_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s04_couplers_WREADY = M_AXI_wready;
  assign s04_couplers_to_auto_us_df_AWADDR = S_AXI_awaddr[31:0];
  assign s04_couplers_to_auto_us_df_AWBURST = S_AXI_awburst[1:0];
  assign s04_couplers_to_auto_us_df_AWCACHE = S_AXI_awcache[3:0];
  assign s04_couplers_to_auto_us_df_AWLEN = S_AXI_awlen[7:0];
  assign s04_couplers_to_auto_us_df_AWPROT = S_AXI_awprot[2:0];
  assign s04_couplers_to_auto_us_df_AWSIZE = S_AXI_awsize[2:0];
  assign s04_couplers_to_auto_us_df_AWVALID = S_AXI_awvalid;
  assign s04_couplers_to_auto_us_df_BREADY = S_AXI_bready;
  assign s04_couplers_to_auto_us_df_WDATA = S_AXI_wdata[31:0];
  assign s04_couplers_to_auto_us_df_WLAST = S_AXI_wlast;
  assign s04_couplers_to_auto_us_df_WSTRB = S_AXI_wstrb[3:0];
  assign s04_couplers_to_auto_us_df_WVALID = S_AXI_wvalid;
  system_auto_us_df_4 auto_us_df
       (.m_axi_awaddr(auto_us_df_to_s04_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s04_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s04_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s04_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s04_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s04_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s04_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s04_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s04_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s04_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s04_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s04_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s04_couplers_BVALID),
        .m_axi_wdata(auto_us_df_to_s04_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s04_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s04_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s04_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s04_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s04_couplers_to_auto_us_df_AWADDR),
        .s_axi_awburst(s04_couplers_to_auto_us_df_AWBURST),
        .s_axi_awcache(s04_couplers_to_auto_us_df_AWCACHE),
        .s_axi_awlen(s04_couplers_to_auto_us_df_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s04_couplers_to_auto_us_df_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s04_couplers_to_auto_us_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s04_couplers_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s04_couplers_to_auto_us_df_AWVALID),
        .s_axi_bready(s04_couplers_to_auto_us_df_BREADY),
        .s_axi_bresp(s04_couplers_to_auto_us_df_BRESP),
        .s_axi_bvalid(s04_couplers_to_auto_us_df_BVALID),
        .s_axi_wdata(s04_couplers_to_auto_us_df_WDATA),
        .s_axi_wlast(s04_couplers_to_auto_us_df_WLAST),
        .s_axi_wready(s04_couplers_to_auto_us_df_WREADY),
        .s_axi_wstrb(s04_couplers_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s04_couplers_to_auto_us_df_WVALID));
endmodule

module s05_couplers_imp_C9WPEK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_auto_us_df_ARADDR;
  wire [1:0]auto_pc_to_auto_us_df_ARBURST;
  wire [3:0]auto_pc_to_auto_us_df_ARCACHE;
  wire [7:0]auto_pc_to_auto_us_df_ARLEN;
  wire [0:0]auto_pc_to_auto_us_df_ARLOCK;
  wire [2:0]auto_pc_to_auto_us_df_ARPROT;
  wire [3:0]auto_pc_to_auto_us_df_ARQOS;
  wire auto_pc_to_auto_us_df_ARREADY;
  wire [3:0]auto_pc_to_auto_us_df_ARREGION;
  wire [2:0]auto_pc_to_auto_us_df_ARSIZE;
  wire auto_pc_to_auto_us_df_ARVALID;
  wire [31:0]auto_pc_to_auto_us_df_AWADDR;
  wire [1:0]auto_pc_to_auto_us_df_AWBURST;
  wire [3:0]auto_pc_to_auto_us_df_AWCACHE;
  wire [7:0]auto_pc_to_auto_us_df_AWLEN;
  wire [0:0]auto_pc_to_auto_us_df_AWLOCK;
  wire [2:0]auto_pc_to_auto_us_df_AWPROT;
  wire [3:0]auto_pc_to_auto_us_df_AWQOS;
  wire auto_pc_to_auto_us_df_AWREADY;
  wire [3:0]auto_pc_to_auto_us_df_AWREGION;
  wire [2:0]auto_pc_to_auto_us_df_AWSIZE;
  wire auto_pc_to_auto_us_df_AWVALID;
  wire auto_pc_to_auto_us_df_BREADY;
  wire [1:0]auto_pc_to_auto_us_df_BRESP;
  wire auto_pc_to_auto_us_df_BVALID;
  wire [31:0]auto_pc_to_auto_us_df_RDATA;
  wire auto_pc_to_auto_us_df_RLAST;
  wire auto_pc_to_auto_us_df_RREADY;
  wire [1:0]auto_pc_to_auto_us_df_RRESP;
  wire auto_pc_to_auto_us_df_RVALID;
  wire [31:0]auto_pc_to_auto_us_df_WDATA;
  wire auto_pc_to_auto_us_df_WLAST;
  wire auto_pc_to_auto_us_df_WREADY;
  wire [3:0]auto_pc_to_auto_us_df_WSTRB;
  wire auto_pc_to_auto_us_df_WVALID;
  wire [31:0]auto_us_df_to_s05_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s05_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s05_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s05_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s05_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s05_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s05_couplers_ARQOS;
  wire auto_us_df_to_s05_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s05_couplers_ARSIZE;
  wire auto_us_df_to_s05_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s05_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s05_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s05_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s05_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s05_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s05_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s05_couplers_AWQOS;
  wire auto_us_df_to_s05_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s05_couplers_AWSIZE;
  wire auto_us_df_to_s05_couplers_AWVALID;
  wire auto_us_df_to_s05_couplers_BREADY;
  wire [1:0]auto_us_df_to_s05_couplers_BRESP;
  wire auto_us_df_to_s05_couplers_BVALID;
  wire [511:0]auto_us_df_to_s05_couplers_RDATA;
  wire auto_us_df_to_s05_couplers_RLAST;
  wire auto_us_df_to_s05_couplers_RREADY;
  wire [1:0]auto_us_df_to_s05_couplers_RRESP;
  wire auto_us_df_to_s05_couplers_RVALID;
  wire [511:0]auto_us_df_to_s05_couplers_WDATA;
  wire auto_us_df_to_s05_couplers_WLAST;
  wire auto_us_df_to_s05_couplers_WREADY;
  wire [63:0]auto_us_df_to_s05_couplers_WSTRB;
  wire auto_us_df_to_s05_couplers_WVALID;
  wire [31:0]s05_couplers_to_auto_pc_ARADDR;
  wire [2:0]s05_couplers_to_auto_pc_ARPROT;
  wire s05_couplers_to_auto_pc_ARREADY;
  wire s05_couplers_to_auto_pc_ARVALID;
  wire [31:0]s05_couplers_to_auto_pc_AWADDR;
  wire [2:0]s05_couplers_to_auto_pc_AWPROT;
  wire s05_couplers_to_auto_pc_AWREADY;
  wire s05_couplers_to_auto_pc_AWVALID;
  wire s05_couplers_to_auto_pc_BREADY;
  wire [1:0]s05_couplers_to_auto_pc_BRESP;
  wire s05_couplers_to_auto_pc_BVALID;
  wire [31:0]s05_couplers_to_auto_pc_RDATA;
  wire s05_couplers_to_auto_pc_RREADY;
  wire [1:0]s05_couplers_to_auto_pc_RRESP;
  wire s05_couplers_to_auto_pc_RVALID;
  wire [31:0]s05_couplers_to_auto_pc_WDATA;
  wire s05_couplers_to_auto_pc_WREADY;
  wire [3:0]s05_couplers_to_auto_pc_WSTRB;
  wire s05_couplers_to_auto_pc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s05_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s05_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s05_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s05_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s05_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s05_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s05_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s05_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s05_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s05_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s05_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s05_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s05_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s05_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s05_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s05_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s05_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s05_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s05_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_df_to_s05_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s05_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_df_to_s05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s05_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s05_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s05_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s05_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s05_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = s05_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s05_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s05_couplers_to_auto_pc_WREADY;
  assign auto_us_df_to_s05_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s05_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s05_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s05_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s05_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s05_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s05_couplers_WREADY = M_AXI_wready;
  assign s05_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s05_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s05_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s05_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s05_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s05_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s05_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s05_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s05_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s05_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s05_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_auto_us_df_ARADDR),
        .m_axi_arburst(auto_pc_to_auto_us_df_ARBURST),
        .m_axi_arcache(auto_pc_to_auto_us_df_ARCACHE),
        .m_axi_arlen(auto_pc_to_auto_us_df_ARLEN),
        .m_axi_arlock(auto_pc_to_auto_us_df_ARLOCK),
        .m_axi_arprot(auto_pc_to_auto_us_df_ARPROT),
        .m_axi_arqos(auto_pc_to_auto_us_df_ARQOS),
        .m_axi_arready(auto_pc_to_auto_us_df_ARREADY),
        .m_axi_arregion(auto_pc_to_auto_us_df_ARREGION),
        .m_axi_arsize(auto_pc_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(auto_pc_to_auto_us_df_ARVALID),
        .m_axi_awaddr(auto_pc_to_auto_us_df_AWADDR),
        .m_axi_awburst(auto_pc_to_auto_us_df_AWBURST),
        .m_axi_awcache(auto_pc_to_auto_us_df_AWCACHE),
        .m_axi_awlen(auto_pc_to_auto_us_df_AWLEN),
        .m_axi_awlock(auto_pc_to_auto_us_df_AWLOCK),
        .m_axi_awprot(auto_pc_to_auto_us_df_AWPROT),
        .m_axi_awqos(auto_pc_to_auto_us_df_AWQOS),
        .m_axi_awready(auto_pc_to_auto_us_df_AWREADY),
        .m_axi_awregion(auto_pc_to_auto_us_df_AWREGION),
        .m_axi_awsize(auto_pc_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(auto_pc_to_auto_us_df_AWVALID),
        .m_axi_bready(auto_pc_to_auto_us_df_BREADY),
        .m_axi_bresp(auto_pc_to_auto_us_df_BRESP),
        .m_axi_bvalid(auto_pc_to_auto_us_df_BVALID),
        .m_axi_rdata(auto_pc_to_auto_us_df_RDATA),
        .m_axi_rlast(auto_pc_to_auto_us_df_RLAST),
        .m_axi_rready(auto_pc_to_auto_us_df_RREADY),
        .m_axi_rresp(auto_pc_to_auto_us_df_RRESP),
        .m_axi_rvalid(auto_pc_to_auto_us_df_RVALID),
        .m_axi_wdata(auto_pc_to_auto_us_df_WDATA),
        .m_axi_wlast(auto_pc_to_auto_us_df_WLAST),
        .m_axi_wready(auto_pc_to_auto_us_df_WREADY),
        .m_axi_wstrb(auto_pc_to_auto_us_df_WSTRB),
        .m_axi_wvalid(auto_pc_to_auto_us_df_WVALID),
        .s_axi_araddr(s05_couplers_to_auto_pc_ARADDR),
        .s_axi_arprot(s05_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(s05_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(s05_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s05_couplers_to_auto_pc_AWADDR),
        .s_axi_awprot(s05_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(s05_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(s05_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s05_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s05_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s05_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s05_couplers_to_auto_pc_RDATA),
        .s_axi_rready(s05_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s05_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s05_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s05_couplers_to_auto_pc_WDATA),
        .s_axi_wready(s05_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s05_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s05_couplers_to_auto_pc_WVALID));
  system_auto_us_df_5 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s05_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s05_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s05_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s05_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s05_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s05_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s05_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s05_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s05_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s05_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s05_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s05_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s05_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s05_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s05_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s05_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s05_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s05_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s05_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s05_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s05_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s05_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s05_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s05_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s05_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s05_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s05_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s05_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s05_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s05_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s05_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s05_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s05_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_pc_to_auto_us_df_ARADDR),
        .s_axi_arburst(auto_pc_to_auto_us_df_ARBURST),
        .s_axi_arcache(auto_pc_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_pc_to_auto_us_df_ARLEN),
        .s_axi_arlock(auto_pc_to_auto_us_df_ARLOCK),
        .s_axi_arprot(auto_pc_to_auto_us_df_ARPROT),
        .s_axi_arqos(auto_pc_to_auto_us_df_ARQOS),
        .s_axi_arready(auto_pc_to_auto_us_df_ARREADY),
        .s_axi_arregion(auto_pc_to_auto_us_df_ARREGION),
        .s_axi_arsize(auto_pc_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(auto_pc_to_auto_us_df_ARVALID),
        .s_axi_awaddr(auto_pc_to_auto_us_df_AWADDR),
        .s_axi_awburst(auto_pc_to_auto_us_df_AWBURST),
        .s_axi_awcache(auto_pc_to_auto_us_df_AWCACHE),
        .s_axi_awlen(auto_pc_to_auto_us_df_AWLEN),
        .s_axi_awlock(auto_pc_to_auto_us_df_AWLOCK),
        .s_axi_awprot(auto_pc_to_auto_us_df_AWPROT),
        .s_axi_awqos(auto_pc_to_auto_us_df_AWQOS),
        .s_axi_awready(auto_pc_to_auto_us_df_AWREADY),
        .s_axi_awregion(auto_pc_to_auto_us_df_AWREGION),
        .s_axi_awsize(auto_pc_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(auto_pc_to_auto_us_df_AWVALID),
        .s_axi_bready(auto_pc_to_auto_us_df_BREADY),
        .s_axi_bresp(auto_pc_to_auto_us_df_BRESP),
        .s_axi_bvalid(auto_pc_to_auto_us_df_BVALID),
        .s_axi_rdata(auto_pc_to_auto_us_df_RDATA),
        .s_axi_rlast(auto_pc_to_auto_us_df_RLAST),
        .s_axi_rready(auto_pc_to_auto_us_df_RREADY),
        .s_axi_rresp(auto_pc_to_auto_us_df_RRESP),
        .s_axi_rvalid(auto_pc_to_auto_us_df_RVALID),
        .s_axi_wdata(auto_pc_to_auto_us_df_WDATA),
        .s_axi_wlast(auto_pc_to_auto_us_df_WLAST),
        .s_axi_wready(auto_pc_to_auto_us_df_WREADY),
        .s_axi_wstrb(auto_pc_to_auto_us_df_WSTRB),
        .s_axi_wvalid(auto_pc_to_auto_us_df_WVALID));
endmodule

module s06_couplers_imp_1NI8A6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_auto_us_df_ARADDR;
  wire [1:0]auto_pc_to_auto_us_df_ARBURST;
  wire [3:0]auto_pc_to_auto_us_df_ARCACHE;
  wire [7:0]auto_pc_to_auto_us_df_ARLEN;
  wire [0:0]auto_pc_to_auto_us_df_ARLOCK;
  wire [2:0]auto_pc_to_auto_us_df_ARPROT;
  wire [3:0]auto_pc_to_auto_us_df_ARQOS;
  wire auto_pc_to_auto_us_df_ARREADY;
  wire [3:0]auto_pc_to_auto_us_df_ARREGION;
  wire [2:0]auto_pc_to_auto_us_df_ARSIZE;
  wire auto_pc_to_auto_us_df_ARVALID;
  wire [31:0]auto_pc_to_auto_us_df_AWADDR;
  wire [1:0]auto_pc_to_auto_us_df_AWBURST;
  wire [3:0]auto_pc_to_auto_us_df_AWCACHE;
  wire [7:0]auto_pc_to_auto_us_df_AWLEN;
  wire [0:0]auto_pc_to_auto_us_df_AWLOCK;
  wire [2:0]auto_pc_to_auto_us_df_AWPROT;
  wire [3:0]auto_pc_to_auto_us_df_AWQOS;
  wire auto_pc_to_auto_us_df_AWREADY;
  wire [3:0]auto_pc_to_auto_us_df_AWREGION;
  wire [2:0]auto_pc_to_auto_us_df_AWSIZE;
  wire auto_pc_to_auto_us_df_AWVALID;
  wire auto_pc_to_auto_us_df_BREADY;
  wire [1:0]auto_pc_to_auto_us_df_BRESP;
  wire auto_pc_to_auto_us_df_BVALID;
  wire [31:0]auto_pc_to_auto_us_df_RDATA;
  wire auto_pc_to_auto_us_df_RLAST;
  wire auto_pc_to_auto_us_df_RREADY;
  wire [1:0]auto_pc_to_auto_us_df_RRESP;
  wire auto_pc_to_auto_us_df_RVALID;
  wire [31:0]auto_pc_to_auto_us_df_WDATA;
  wire auto_pc_to_auto_us_df_WLAST;
  wire auto_pc_to_auto_us_df_WREADY;
  wire [3:0]auto_pc_to_auto_us_df_WSTRB;
  wire auto_pc_to_auto_us_df_WVALID;
  wire [31:0]auto_us_df_to_s06_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s06_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s06_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s06_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s06_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s06_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s06_couplers_ARQOS;
  wire auto_us_df_to_s06_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s06_couplers_ARSIZE;
  wire auto_us_df_to_s06_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s06_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s06_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s06_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s06_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s06_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s06_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s06_couplers_AWQOS;
  wire auto_us_df_to_s06_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s06_couplers_AWSIZE;
  wire auto_us_df_to_s06_couplers_AWVALID;
  wire auto_us_df_to_s06_couplers_BREADY;
  wire [1:0]auto_us_df_to_s06_couplers_BRESP;
  wire auto_us_df_to_s06_couplers_BVALID;
  wire [511:0]auto_us_df_to_s06_couplers_RDATA;
  wire auto_us_df_to_s06_couplers_RLAST;
  wire auto_us_df_to_s06_couplers_RREADY;
  wire [1:0]auto_us_df_to_s06_couplers_RRESP;
  wire auto_us_df_to_s06_couplers_RVALID;
  wire [511:0]auto_us_df_to_s06_couplers_WDATA;
  wire auto_us_df_to_s06_couplers_WLAST;
  wire auto_us_df_to_s06_couplers_WREADY;
  wire [63:0]auto_us_df_to_s06_couplers_WSTRB;
  wire auto_us_df_to_s06_couplers_WVALID;
  wire [31:0]s06_couplers_to_auto_pc_ARADDR;
  wire [2:0]s06_couplers_to_auto_pc_ARPROT;
  wire s06_couplers_to_auto_pc_ARREADY;
  wire s06_couplers_to_auto_pc_ARVALID;
  wire [31:0]s06_couplers_to_auto_pc_AWADDR;
  wire [2:0]s06_couplers_to_auto_pc_AWPROT;
  wire s06_couplers_to_auto_pc_AWREADY;
  wire s06_couplers_to_auto_pc_AWVALID;
  wire s06_couplers_to_auto_pc_BREADY;
  wire [1:0]s06_couplers_to_auto_pc_BRESP;
  wire s06_couplers_to_auto_pc_BVALID;
  wire [31:0]s06_couplers_to_auto_pc_RDATA;
  wire s06_couplers_to_auto_pc_RREADY;
  wire [1:0]s06_couplers_to_auto_pc_RRESP;
  wire s06_couplers_to_auto_pc_RVALID;
  wire [31:0]s06_couplers_to_auto_pc_WDATA;
  wire s06_couplers_to_auto_pc_WREADY;
  wire [3:0]s06_couplers_to_auto_pc_WSTRB;
  wire s06_couplers_to_auto_pc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s06_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s06_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s06_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s06_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s06_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s06_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s06_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s06_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s06_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s06_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s06_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s06_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s06_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s06_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s06_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s06_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s06_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s06_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s06_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_df_to_s06_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s06_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_df_to_s06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s06_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s06_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s06_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s06_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s06_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = s06_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s06_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s06_couplers_to_auto_pc_WREADY;
  assign auto_us_df_to_s06_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s06_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s06_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s06_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_df_to_s06_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s06_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s06_couplers_WREADY = M_AXI_wready;
  assign s06_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s06_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s06_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s06_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s06_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s06_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s06_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s06_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s06_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s06_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s06_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_auto_us_df_ARADDR),
        .m_axi_arburst(auto_pc_to_auto_us_df_ARBURST),
        .m_axi_arcache(auto_pc_to_auto_us_df_ARCACHE),
        .m_axi_arlen(auto_pc_to_auto_us_df_ARLEN),
        .m_axi_arlock(auto_pc_to_auto_us_df_ARLOCK),
        .m_axi_arprot(auto_pc_to_auto_us_df_ARPROT),
        .m_axi_arqos(auto_pc_to_auto_us_df_ARQOS),
        .m_axi_arready(auto_pc_to_auto_us_df_ARREADY),
        .m_axi_arregion(auto_pc_to_auto_us_df_ARREGION),
        .m_axi_arsize(auto_pc_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(auto_pc_to_auto_us_df_ARVALID),
        .m_axi_awaddr(auto_pc_to_auto_us_df_AWADDR),
        .m_axi_awburst(auto_pc_to_auto_us_df_AWBURST),
        .m_axi_awcache(auto_pc_to_auto_us_df_AWCACHE),
        .m_axi_awlen(auto_pc_to_auto_us_df_AWLEN),
        .m_axi_awlock(auto_pc_to_auto_us_df_AWLOCK),
        .m_axi_awprot(auto_pc_to_auto_us_df_AWPROT),
        .m_axi_awqos(auto_pc_to_auto_us_df_AWQOS),
        .m_axi_awready(auto_pc_to_auto_us_df_AWREADY),
        .m_axi_awregion(auto_pc_to_auto_us_df_AWREGION),
        .m_axi_awsize(auto_pc_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(auto_pc_to_auto_us_df_AWVALID),
        .m_axi_bready(auto_pc_to_auto_us_df_BREADY),
        .m_axi_bresp(auto_pc_to_auto_us_df_BRESP),
        .m_axi_bvalid(auto_pc_to_auto_us_df_BVALID),
        .m_axi_rdata(auto_pc_to_auto_us_df_RDATA),
        .m_axi_rlast(auto_pc_to_auto_us_df_RLAST),
        .m_axi_rready(auto_pc_to_auto_us_df_RREADY),
        .m_axi_rresp(auto_pc_to_auto_us_df_RRESP),
        .m_axi_rvalid(auto_pc_to_auto_us_df_RVALID),
        .m_axi_wdata(auto_pc_to_auto_us_df_WDATA),
        .m_axi_wlast(auto_pc_to_auto_us_df_WLAST),
        .m_axi_wready(auto_pc_to_auto_us_df_WREADY),
        .m_axi_wstrb(auto_pc_to_auto_us_df_WSTRB),
        .m_axi_wvalid(auto_pc_to_auto_us_df_WVALID),
        .s_axi_araddr(s06_couplers_to_auto_pc_ARADDR),
        .s_axi_arprot(s06_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(s06_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(s06_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s06_couplers_to_auto_pc_AWADDR),
        .s_axi_awprot(s06_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(s06_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(s06_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s06_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s06_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s06_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s06_couplers_to_auto_pc_RDATA),
        .s_axi_rready(s06_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s06_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s06_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s06_couplers_to_auto_pc_WDATA),
        .s_axi_wready(s06_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s06_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s06_couplers_to_auto_pc_WVALID));
  system_auto_us_df_6 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s06_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s06_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s06_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s06_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s06_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s06_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s06_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s06_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s06_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s06_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s06_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s06_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s06_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s06_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s06_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s06_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s06_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s06_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s06_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s06_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s06_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s06_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s06_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s06_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s06_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s06_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s06_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s06_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s06_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s06_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s06_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s06_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s06_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_pc_to_auto_us_df_ARADDR),
        .s_axi_arburst(auto_pc_to_auto_us_df_ARBURST),
        .s_axi_arcache(auto_pc_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_pc_to_auto_us_df_ARLEN),
        .s_axi_arlock(auto_pc_to_auto_us_df_ARLOCK),
        .s_axi_arprot(auto_pc_to_auto_us_df_ARPROT),
        .s_axi_arqos(auto_pc_to_auto_us_df_ARQOS),
        .s_axi_arready(auto_pc_to_auto_us_df_ARREADY),
        .s_axi_arregion(auto_pc_to_auto_us_df_ARREGION),
        .s_axi_arsize(auto_pc_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(auto_pc_to_auto_us_df_ARVALID),
        .s_axi_awaddr(auto_pc_to_auto_us_df_AWADDR),
        .s_axi_awburst(auto_pc_to_auto_us_df_AWBURST),
        .s_axi_awcache(auto_pc_to_auto_us_df_AWCACHE),
        .s_axi_awlen(auto_pc_to_auto_us_df_AWLEN),
        .s_axi_awlock(auto_pc_to_auto_us_df_AWLOCK),
        .s_axi_awprot(auto_pc_to_auto_us_df_AWPROT),
        .s_axi_awqos(auto_pc_to_auto_us_df_AWQOS),
        .s_axi_awready(auto_pc_to_auto_us_df_AWREADY),
        .s_axi_awregion(auto_pc_to_auto_us_df_AWREGION),
        .s_axi_awsize(auto_pc_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(auto_pc_to_auto_us_df_AWVALID),
        .s_axi_bready(auto_pc_to_auto_us_df_BREADY),
        .s_axi_bresp(auto_pc_to_auto_us_df_BRESP),
        .s_axi_bvalid(auto_pc_to_auto_us_df_BVALID),
        .s_axi_rdata(auto_pc_to_auto_us_df_RDATA),
        .s_axi_rlast(auto_pc_to_auto_us_df_RLAST),
        .s_axi_rready(auto_pc_to_auto_us_df_RREADY),
        .s_axi_rresp(auto_pc_to_auto_us_df_RRESP),
        .s_axi_rvalid(auto_pc_to_auto_us_df_RVALID),
        .s_axi_wdata(auto_pc_to_auto_us_df_WDATA),
        .s_axi_wlast(auto_pc_to_auto_us_df_WLAST),
        .s_axi_wready(auto_pc_to_auto_us_df_WREADY),
        .s_axi_wstrb(auto_pc_to_auto_us_df_WSTRB),
        .s_axi_wvalid(auto_pc_to_auto_us_df_WVALID));
endmodule

module s07_couplers_imp_1BM7TVJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s07_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s07_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s07_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s07_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s07_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s07_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s07_couplers_ARQOS;
  wire auto_us_cc_df_to_s07_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s07_couplers_ARSIZE;
  wire auto_us_cc_df_to_s07_couplers_ARVALID;
  wire [511:0]auto_us_cc_df_to_s07_couplers_RDATA;
  wire auto_us_cc_df_to_s07_couplers_RLAST;
  wire auto_us_cc_df_to_s07_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s07_couplers_RRESP;
  wire auto_us_cc_df_to_s07_couplers_RVALID;
  wire [31:0]s07_couplers_to_auto_us_cc_df_ARADDR;
  wire [1:0]s07_couplers_to_auto_us_cc_df_ARBURST;
  wire [3:0]s07_couplers_to_auto_us_cc_df_ARCACHE;
  wire [7:0]s07_couplers_to_auto_us_cc_df_ARLEN;
  wire [2:0]s07_couplers_to_auto_us_cc_df_ARPROT;
  wire s07_couplers_to_auto_us_cc_df_ARREADY;
  wire [2:0]s07_couplers_to_auto_us_cc_df_ARSIZE;
  wire s07_couplers_to_auto_us_cc_df_ARVALID;
  wire [63:0]s07_couplers_to_auto_us_cc_df_RDATA;
  wire s07_couplers_to_auto_us_cc_df_RREADY;
  wire [1:0]s07_couplers_to_auto_us_cc_df_RRESP;
  wire s07_couplers_to_auto_us_cc_df_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_cc_df_to_s07_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s07_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s07_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s07_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s07_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s07_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s07_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s07_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s07_couplers_ARVALID;
  assign M_AXI_rready = auto_us_cc_df_to_s07_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s07_couplers_to_auto_us_cc_df_ARREADY;
  assign S_AXI_rdata[63:0] = s07_couplers_to_auto_us_cc_df_RDATA;
  assign S_AXI_rresp[1:0] = s07_couplers_to_auto_us_cc_df_RRESP;
  assign S_AXI_rvalid = s07_couplers_to_auto_us_cc_df_RVALID;
  assign auto_us_cc_df_to_s07_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s07_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_cc_df_to_s07_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s07_couplers_RVALID = M_AXI_rvalid;
  assign s07_couplers_to_auto_us_cc_df_ARADDR = S_AXI_araddr[31:0];
  assign s07_couplers_to_auto_us_cc_df_ARBURST = S_AXI_arburst[1:0];
  assign s07_couplers_to_auto_us_cc_df_ARCACHE = S_AXI_arcache[3:0];
  assign s07_couplers_to_auto_us_cc_df_ARLEN = S_AXI_arlen[7:0];
  assign s07_couplers_to_auto_us_cc_df_ARPROT = S_AXI_arprot[2:0];
  assign s07_couplers_to_auto_us_cc_df_ARSIZE = S_AXI_arsize[2:0];
  assign s07_couplers_to_auto_us_cc_df_ARVALID = S_AXI_arvalid;
  assign s07_couplers_to_auto_us_cc_df_RREADY = S_AXI_rready;
  system_auto_us_cc_df_0 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s07_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s07_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s07_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s07_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s07_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s07_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s07_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s07_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s07_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s07_couplers_ARVALID),
        .m_axi_rdata(auto_us_cc_df_to_s07_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s07_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s07_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s07_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s07_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s07_couplers_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s07_couplers_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s07_couplers_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s07_couplers_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s07_couplers_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s07_couplers_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s07_couplers_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s07_couplers_to_auto_us_cc_df_ARVALID),
        .s_axi_rdata(s07_couplers_to_auto_us_cc_df_RDATA),
        .s_axi_rready(s07_couplers_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s07_couplers_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s07_couplers_to_auto_us_cc_df_RVALID));
endmodule

module s08_couplers_imp_AE9DQD
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s08_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s08_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s08_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s08_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s08_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s08_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s08_couplers_AWQOS;
  wire auto_us_cc_df_to_s08_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s08_couplers_AWSIZE;
  wire auto_us_cc_df_to_s08_couplers_AWVALID;
  wire auto_us_cc_df_to_s08_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s08_couplers_BRESP;
  wire auto_us_cc_df_to_s08_couplers_BVALID;
  wire [511:0]auto_us_cc_df_to_s08_couplers_WDATA;
  wire auto_us_cc_df_to_s08_couplers_WLAST;
  wire auto_us_cc_df_to_s08_couplers_WREADY;
  wire [63:0]auto_us_cc_df_to_s08_couplers_WSTRB;
  wire auto_us_cc_df_to_s08_couplers_WVALID;
  wire [31:0]s08_couplers_to_auto_us_cc_df_AWADDR;
  wire [1:0]s08_couplers_to_auto_us_cc_df_AWBURST;
  wire [3:0]s08_couplers_to_auto_us_cc_df_AWCACHE;
  wire [7:0]s08_couplers_to_auto_us_cc_df_AWLEN;
  wire [2:0]s08_couplers_to_auto_us_cc_df_AWPROT;
  wire s08_couplers_to_auto_us_cc_df_AWREADY;
  wire [2:0]s08_couplers_to_auto_us_cc_df_AWSIZE;
  wire s08_couplers_to_auto_us_cc_df_AWVALID;
  wire s08_couplers_to_auto_us_cc_df_BREADY;
  wire [1:0]s08_couplers_to_auto_us_cc_df_BRESP;
  wire s08_couplers_to_auto_us_cc_df_BVALID;
  wire [63:0]s08_couplers_to_auto_us_cc_df_WDATA;
  wire s08_couplers_to_auto_us_cc_df_WLAST;
  wire s08_couplers_to_auto_us_cc_df_WREADY;
  wire [7:0]s08_couplers_to_auto_us_cc_df_WSTRB;
  wire s08_couplers_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[31:0] = auto_us_cc_df_to_s08_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s08_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s08_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s08_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s08_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s08_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s08_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s08_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s08_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s08_couplers_BREADY;
  assign M_AXI_wdata[511:0] = auto_us_cc_df_to_s08_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s08_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_cc_df_to_s08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s08_couplers_to_auto_us_cc_df_AWREADY;
  assign S_AXI_bresp[1:0] = s08_couplers_to_auto_us_cc_df_BRESP;
  assign S_AXI_bvalid = s08_couplers_to_auto_us_cc_df_BVALID;
  assign S_AXI_wready = s08_couplers_to_auto_us_cc_df_WREADY;
  assign auto_us_cc_df_to_s08_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s08_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s08_couplers_WREADY = M_AXI_wready;
  assign s08_couplers_to_auto_us_cc_df_AWADDR = S_AXI_awaddr[31:0];
  assign s08_couplers_to_auto_us_cc_df_AWBURST = S_AXI_awburst[1:0];
  assign s08_couplers_to_auto_us_cc_df_AWCACHE = S_AXI_awcache[3:0];
  assign s08_couplers_to_auto_us_cc_df_AWLEN = S_AXI_awlen[7:0];
  assign s08_couplers_to_auto_us_cc_df_AWPROT = S_AXI_awprot[2:0];
  assign s08_couplers_to_auto_us_cc_df_AWSIZE = S_AXI_awsize[2:0];
  assign s08_couplers_to_auto_us_cc_df_AWVALID = S_AXI_awvalid;
  assign s08_couplers_to_auto_us_cc_df_BREADY = S_AXI_bready;
  assign s08_couplers_to_auto_us_cc_df_WDATA = S_AXI_wdata[63:0];
  assign s08_couplers_to_auto_us_cc_df_WLAST = S_AXI_wlast;
  assign s08_couplers_to_auto_us_cc_df_WSTRB = S_AXI_wstrb[7:0];
  assign s08_couplers_to_auto_us_cc_df_WVALID = S_AXI_wvalid;
  system_auto_us_cc_df_1 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_awaddr(auto_us_cc_df_to_s08_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s08_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s08_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s08_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s08_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s08_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s08_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s08_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s08_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s08_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s08_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s08_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s08_couplers_BVALID),
        .m_axi_wdata(auto_us_cc_df_to_s08_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s08_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s08_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s08_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s08_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s08_couplers_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s08_couplers_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s08_couplers_to_auto_us_cc_df_AWCACHE),
        .s_axi_awlen(s08_couplers_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s08_couplers_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s08_couplers_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s08_couplers_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s08_couplers_to_auto_us_cc_df_AWVALID),
        .s_axi_bready(s08_couplers_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s08_couplers_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s08_couplers_to_auto_us_cc_df_BVALID),
        .s_axi_wdata(s08_couplers_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s08_couplers_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s08_couplers_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s08_couplers_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s08_couplers_to_auto_us_cc_df_WVALID));
endmodule

module s09_couplers_imp_12LNQDW
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s09_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s09_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s09_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s09_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s09_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s09_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s09_couplers_AWQOS;
  wire auto_us_cc_df_to_s09_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s09_couplers_AWSIZE;
  wire auto_us_cc_df_to_s09_couplers_AWVALID;
  wire auto_us_cc_df_to_s09_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s09_couplers_BRESP;
  wire auto_us_cc_df_to_s09_couplers_BVALID;
  wire [511:0]auto_us_cc_df_to_s09_couplers_WDATA;
  wire auto_us_cc_df_to_s09_couplers_WLAST;
  wire auto_us_cc_df_to_s09_couplers_WREADY;
  wire [63:0]auto_us_cc_df_to_s09_couplers_WSTRB;
  wire auto_us_cc_df_to_s09_couplers_WVALID;
  wire [31:0]s09_couplers_to_auto_us_cc_df_AWADDR;
  wire [1:0]s09_couplers_to_auto_us_cc_df_AWBURST;
  wire [3:0]s09_couplers_to_auto_us_cc_df_AWCACHE;
  wire [7:0]s09_couplers_to_auto_us_cc_df_AWLEN;
  wire [2:0]s09_couplers_to_auto_us_cc_df_AWPROT;
  wire s09_couplers_to_auto_us_cc_df_AWREADY;
  wire [2:0]s09_couplers_to_auto_us_cc_df_AWSIZE;
  wire s09_couplers_to_auto_us_cc_df_AWVALID;
  wire s09_couplers_to_auto_us_cc_df_BREADY;
  wire [1:0]s09_couplers_to_auto_us_cc_df_BRESP;
  wire s09_couplers_to_auto_us_cc_df_BVALID;
  wire [63:0]s09_couplers_to_auto_us_cc_df_WDATA;
  wire s09_couplers_to_auto_us_cc_df_WLAST;
  wire s09_couplers_to_auto_us_cc_df_WREADY;
  wire [7:0]s09_couplers_to_auto_us_cc_df_WSTRB;
  wire s09_couplers_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[31:0] = auto_us_cc_df_to_s09_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s09_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s09_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s09_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s09_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s09_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s09_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s09_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s09_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s09_couplers_BREADY;
  assign M_AXI_wdata[511:0] = auto_us_cc_df_to_s09_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s09_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_cc_df_to_s09_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s09_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s09_couplers_to_auto_us_cc_df_AWREADY;
  assign S_AXI_bresp[1:0] = s09_couplers_to_auto_us_cc_df_BRESP;
  assign S_AXI_bvalid = s09_couplers_to_auto_us_cc_df_BVALID;
  assign S_AXI_wready = s09_couplers_to_auto_us_cc_df_WREADY;
  assign auto_us_cc_df_to_s09_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s09_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s09_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s09_couplers_WREADY = M_AXI_wready;
  assign s09_couplers_to_auto_us_cc_df_AWADDR = S_AXI_awaddr[31:0];
  assign s09_couplers_to_auto_us_cc_df_AWBURST = S_AXI_awburst[1:0];
  assign s09_couplers_to_auto_us_cc_df_AWCACHE = S_AXI_awcache[3:0];
  assign s09_couplers_to_auto_us_cc_df_AWLEN = S_AXI_awlen[7:0];
  assign s09_couplers_to_auto_us_cc_df_AWPROT = S_AXI_awprot[2:0];
  assign s09_couplers_to_auto_us_cc_df_AWSIZE = S_AXI_awsize[2:0];
  assign s09_couplers_to_auto_us_cc_df_AWVALID = S_AXI_awvalid;
  assign s09_couplers_to_auto_us_cc_df_BREADY = S_AXI_bready;
  assign s09_couplers_to_auto_us_cc_df_WDATA = S_AXI_wdata[63:0];
  assign s09_couplers_to_auto_us_cc_df_WLAST = S_AXI_wlast;
  assign s09_couplers_to_auto_us_cc_df_WSTRB = S_AXI_wstrb[7:0];
  assign s09_couplers_to_auto_us_cc_df_WVALID = S_AXI_wvalid;
  system_auto_us_cc_df_2 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_awaddr(auto_us_cc_df_to_s09_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s09_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s09_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s09_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s09_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s09_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s09_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s09_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s09_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s09_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s09_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s09_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s09_couplers_BVALID),
        .m_axi_wdata(auto_us_cc_df_to_s09_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s09_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s09_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s09_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s09_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s09_couplers_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s09_couplers_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s09_couplers_to_auto_us_cc_df_AWCACHE),
        .s_axi_awlen(s09_couplers_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s09_couplers_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s09_couplers_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s09_couplers_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s09_couplers_to_auto_us_cc_df_AWVALID),
        .s_axi_bready(s09_couplers_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s09_couplers_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s09_couplers_to_auto_us_cc_df_BVALID),
        .s_axi_wdata(s09_couplers_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s09_couplers_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s09_couplers_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s09_couplers_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s09_couplers_to_auto_us_cc_df_WVALID));
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=104,numReposBlks=62,numNonXlnxBlks=21,numHierBlks=42,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_mig7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_cs_n,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    dac_fifo_bypass,
    gpio0_i,
    gpio0_o,
    gpio0_t,
    gpio1_i,
    gpio1_o,
    gpio1_t,
    iic_main_scl_i,
    iic_main_scl_o,
    iic_main_scl_t,
    iic_main_sda_i,
    iic_main_sda_o,
    iic_main_sda_t,
    mb_intr_05,
    mb_intr_06,
    mdio_mdc,
    mdio_mdio_i,
    mdio_mdio_o,
    mdio_mdio_t,
    phy_clk_clk_n,
    phy_clk_clk_p,
    phy_rst_n,
    phy_sd,
    rx_data_0_n,
    rx_data_0_p,
    rx_data_1_n,
    rx_data_1_p,
    rx_data_2_n,
    rx_data_2_p,
    rx_data_3_n,
    rx_data_3_p,
    rx_ref_clk_0,
    rx_ref_clk_2,
    rx_sync_0,
    rx_sync_2,
    rx_sysref_0,
    rx_sysref_2,
    sgmii_rxn,
    sgmii_rxp,
    sgmii_txn,
    sgmii_txp,
    spi_clk_i,
    spi_clk_o,
    spi_csn_i,
    spi_csn_o,
    spi_sdi_i,
    spi_sdo_i,
    spi_sdo_o,
    sys_clk,
    sys_rst,
    tx_data_0_n,
    tx_data_0_p,
    tx_data_1_n,
    tx_data_1_p,
    tx_data_2_n,
    tx_data_2_p,
    tx_data_3_n,
    tx_data_3_p,
    tx_ref_clk_0,
    tx_sync_0,
    tx_sysref_0,
    uart_sin,
    uart_sout);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [13:0]DDR3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 BA" *) output [2:0]DDR3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CAS_N" *) output DDR3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_N" *) output [0:0]DDR3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_P" *) output [0:0]DDR3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CKE" *) output [0:0]DDR3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CS_N" *) output [0:0]DDR3_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DM" *) output [7:0]DDR3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQ" *) inout [63:0]DDR3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_N" *) inout [7:0]DDR3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_P" *) inout [7:0]DDR3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ODT" *) output [0:0]DDR3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RAS_N" *) output DDR3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RESET_N" *) output DDR3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 WE_N" *) output DDR3_we_n;
  input dac_fifo_bypass;
  input [31:0]gpio0_i;
  output [31:0]gpio0_o;
  output [31:0]gpio0_t;
  input [31:0]gpio1_i;
  output [31:0]gpio1_o;
  output [31:0]gpio1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_I" *) input iic_main_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_O" *) output iic_main_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_T" *) output iic_main_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_I" *) input iic_main_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_O" *) output iic_main_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_T" *) output iic_main_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.MB_INTR_05 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.MB_INTR_05, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input mb_intr_05;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.MB_INTR_06 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.MB_INTR_06, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input mb_intr_06;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio, CAN_DEBUG false" *) output mdio_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDIO_I" *) input mdio_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDIO_O" *) output mdio_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDIO_T" *) output mdio_mdio_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 phy_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_clk, CAN_DEBUG false, FREQ_HZ 625000000" *) input phy_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 phy_clk CLK_P" *) input phy_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PHY_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PHY_RST_N, POLARITY ACTIVE_LOW" *) output [0:0]phy_rst_n;
  input phy_sd;
  input rx_data_0_n;
  input rx_data_0_p;
  input rx_data_1_n;
  input rx_data_1_p;
  input rx_data_2_n;
  input rx_data_2_p;
  input rx_data_3_n;
  input rx_data_3_p;
  input rx_ref_clk_0;
  input rx_ref_clk_2;
  output rx_sync_0;
  output rx_sync_2;
  input rx_sysref_0;
  input rx_sysref_2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii RXN" *) input sgmii_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii RXP" *) input sgmii_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii TXN" *) output sgmii_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii TXP" *) output sgmii_txp;
  input spi_clk_i;
  output spi_clk_o;
  input [7:0]spi_csn_i;
  output [7:0]spi_csn_o;
  input spi_sdi_i;
  input spi_sdo_i;
  output spi_sdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN system_sys_clk, FREQ_HZ 200000000, PHASE 0.000" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST, POLARITY ACTIVE_HIGH" *) input sys_rst;
  output tx_data_0_n;
  output tx_data_0_p;
  output tx_data_1_n;
  output tx_data_1_p;
  output tx_data_2_n;
  output tx_data_2_p;
  output tx_data_3_n;
  output tx_data_3_p;
  input tx_ref_clk_0;
  input tx_sync_0;
  input tx_sysref_0;
  input uart_sin;
  output uart_sout;

  wire [0:31]Conn1_ABUS;
  wire Conn1_ADDRSTROBE;
  wire [0:3]Conn1_BE;
  wire Conn1_CE;
  wire [0:31]Conn1_READDBUS;
  wire Conn1_READSTROBE;
  wire Conn1_READY;
  wire Conn1_UE;
  wire Conn1_WAIT;
  wire [0:31]Conn1_WRITEDBUS;
  wire Conn1_WRITESTROBE;
  wire [0:31]Conn_ABUS;
  wire Conn_ADDRSTROBE;
  wire [0:3]Conn_BE;
  wire Conn_CE;
  wire [0:31]Conn_READDBUS;
  wire Conn_READSTROBE;
  wire Conn_READY;
  wire Conn_UE;
  wire Conn_WAIT;
  wire [0:31]Conn_WRITEDBUS;
  wire Conn_WRITESTROBE;
  wire [0:0]M00_ARESETN_1;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]S00_AXI_2_ARADDR;
  wire [1:0]S00_AXI_2_ARBURST;
  wire [3:0]S00_AXI_2_ARCACHE;
  wire [7:0]S00_AXI_2_ARLEN;
  wire S00_AXI_2_ARLOCK;
  wire [2:0]S00_AXI_2_ARPROT;
  wire [3:0]S00_AXI_2_ARQOS;
  wire S00_AXI_2_ARREADY;
  wire [2:0]S00_AXI_2_ARSIZE;
  wire S00_AXI_2_ARVALID;
  wire [31:0]S00_AXI_2_AWADDR;
  wire [1:0]S00_AXI_2_AWBURST;
  wire [3:0]S00_AXI_2_AWCACHE;
  wire [7:0]S00_AXI_2_AWLEN;
  wire S00_AXI_2_AWLOCK;
  wire [2:0]S00_AXI_2_AWPROT;
  wire [3:0]S00_AXI_2_AWQOS;
  wire S00_AXI_2_AWREADY;
  wire [2:0]S00_AXI_2_AWSIZE;
  wire S00_AXI_2_AWVALID;
  wire S00_AXI_2_BREADY;
  wire [1:0]S00_AXI_2_BRESP;
  wire S00_AXI_2_BVALID;
  wire [31:0]S00_AXI_2_RDATA;
  wire S00_AXI_2_RLAST;
  wire S00_AXI_2_RREADY;
  wire [1:0]S00_AXI_2_RRESP;
  wire S00_AXI_2_RVALID;
  wire [31:0]S00_AXI_2_WDATA;
  wire S00_AXI_2_WLAST;
  wire S00_AXI_2_WREADY;
  wire [3:0]S00_AXI_2_WSTRB;
  wire S00_AXI_2_WVALID;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire S01_AXI_1_ARLOCK;
  wire [2:0]S01_AXI_1_ARPROT;
  wire [3:0]S01_AXI_1_ARQOS;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S02_AXI_1_ARADDR;
  wire [1:0]S02_AXI_1_ARBURST;
  wire [3:0]S02_AXI_1_ARCACHE;
  wire [7:0]S02_AXI_1_ARLEN;
  wire [2:0]S02_AXI_1_ARPROT;
  wire S02_AXI_1_ARREADY;
  wire [2:0]S02_AXI_1_ARSIZE;
  wire S02_AXI_1_ARVALID;
  wire [31:0]S02_AXI_1_AWADDR;
  wire [1:0]S02_AXI_1_AWBURST;
  wire [3:0]S02_AXI_1_AWCACHE;
  wire [7:0]S02_AXI_1_AWLEN;
  wire [2:0]S02_AXI_1_AWPROT;
  wire S02_AXI_1_AWREADY;
  wire [2:0]S02_AXI_1_AWSIZE;
  wire S02_AXI_1_AWVALID;
  wire S02_AXI_1_BREADY;
  wire [1:0]S02_AXI_1_BRESP;
  wire S02_AXI_1_BVALID;
  wire [31:0]S02_AXI_1_RDATA;
  wire S02_AXI_1_RLAST;
  wire S02_AXI_1_RREADY;
  wire [1:0]S02_AXI_1_RRESP;
  wire S02_AXI_1_RVALID;
  wire [31:0]S02_AXI_1_WDATA;
  wire S02_AXI_1_WLAST;
  wire S02_AXI_1_WREADY;
  wire [3:0]S02_AXI_1_WSTRB;
  wire S02_AXI_1_WVALID;
  wire [31:0]S03_AXI_1_ARADDR;
  wire [1:0]S03_AXI_1_ARBURST;
  wire [3:0]S03_AXI_1_ARCACHE;
  wire [7:0]S03_AXI_1_ARLEN;
  wire [2:0]S03_AXI_1_ARPROT;
  wire S03_AXI_1_ARREADY;
  wire [2:0]S03_AXI_1_ARSIZE;
  wire S03_AXI_1_ARVALID;
  wire [31:0]S03_AXI_1_RDATA;
  wire S03_AXI_1_RLAST;
  wire S03_AXI_1_RREADY;
  wire [1:0]S03_AXI_1_RRESP;
  wire S03_AXI_1_RVALID;
  wire [31:0]S04_AXI_1_AWADDR;
  wire [1:0]S04_AXI_1_AWBURST;
  wire [3:0]S04_AXI_1_AWCACHE;
  wire [7:0]S04_AXI_1_AWLEN;
  wire [2:0]S04_AXI_1_AWPROT;
  wire S04_AXI_1_AWREADY;
  wire [2:0]S04_AXI_1_AWSIZE;
  wire S04_AXI_1_AWVALID;
  wire S04_AXI_1_BREADY;
  wire [1:0]S04_AXI_1_BRESP;
  wire S04_AXI_1_BVALID;
  wire [31:0]S04_AXI_1_WDATA;
  wire S04_AXI_1_WLAST;
  wire S04_AXI_1_WREADY;
  wire [3:0]S04_AXI_1_WSTRB;
  wire S04_AXI_1_WVALID;
  wire [31:0]S05_AXI_1_ARADDR;
  wire [2:0]S05_AXI_1_ARPROT;
  wire S05_AXI_1_ARREADY;
  wire S05_AXI_1_ARVALID;
  wire [31:0]S05_AXI_1_AWADDR;
  wire [2:0]S05_AXI_1_AWPROT;
  wire S05_AXI_1_AWREADY;
  wire S05_AXI_1_AWVALID;
  wire S05_AXI_1_BREADY;
  wire [1:0]S05_AXI_1_BRESP;
  wire S05_AXI_1_BVALID;
  wire [31:0]S05_AXI_1_RDATA;
  wire S05_AXI_1_RREADY;
  wire [1:0]S05_AXI_1_RRESP;
  wire S05_AXI_1_RVALID;
  wire [31:0]S05_AXI_1_WDATA;
  wire S05_AXI_1_WREADY;
  wire [3:0]S05_AXI_1_WSTRB;
  wire S05_AXI_1_WVALID;
  wire [31:0]S06_AXI_1_ARADDR;
  wire [2:0]S06_AXI_1_ARPROT;
  wire S06_AXI_1_ARREADY;
  wire S06_AXI_1_ARVALID;
  wire [31:0]S06_AXI_1_AWADDR;
  wire [2:0]S06_AXI_1_AWPROT;
  wire S06_AXI_1_AWREADY;
  wire S06_AXI_1_AWVALID;
  wire S06_AXI_1_BREADY;
  wire [1:0]S06_AXI_1_BRESP;
  wire S06_AXI_1_BVALID;
  wire [31:0]S06_AXI_1_RDATA;
  wire S06_AXI_1_RREADY;
  wire [1:0]S06_AXI_1_RRESP;
  wire S06_AXI_1_RVALID;
  wire [31:0]S06_AXI_1_WDATA;
  wire S06_AXI_1_WREADY;
  wire [3:0]S06_AXI_1_WSTRB;
  wire S06_AXI_1_WVALID;
  wire [31:0]S07_AXI_1_ARADDR;
  wire [1:0]S07_AXI_1_ARBURST;
  wire [3:0]S07_AXI_1_ARCACHE;
  wire [7:0]S07_AXI_1_ARLEN;
  wire [2:0]S07_AXI_1_ARPROT;
  wire S07_AXI_1_ARREADY;
  wire [2:0]S07_AXI_1_ARSIZE;
  wire S07_AXI_1_ARVALID;
  wire [63:0]S07_AXI_1_RDATA;
  wire S07_AXI_1_RREADY;
  wire [1:0]S07_AXI_1_RRESP;
  wire S07_AXI_1_RVALID;
  wire [31:0]S08_AXI_1_AWADDR;
  wire [1:0]S08_AXI_1_AWBURST;
  wire [3:0]S08_AXI_1_AWCACHE;
  wire [7:0]S08_AXI_1_AWLEN;
  wire [2:0]S08_AXI_1_AWPROT;
  wire S08_AXI_1_AWREADY;
  wire [2:0]S08_AXI_1_AWSIZE;
  wire S08_AXI_1_AWVALID;
  wire S08_AXI_1_BREADY;
  wire [1:0]S08_AXI_1_BRESP;
  wire S08_AXI_1_BVALID;
  wire [63:0]S08_AXI_1_WDATA;
  wire S08_AXI_1_WLAST;
  wire S08_AXI_1_WREADY;
  wire [7:0]S08_AXI_1_WSTRB;
  wire S08_AXI_1_WVALID;
  wire [31:0]S09_AXI_1_AWADDR;
  wire [1:0]S09_AXI_1_AWBURST;
  wire [3:0]S09_AXI_1_AWCACHE;
  wire [7:0]S09_AXI_1_AWLEN;
  wire [2:0]S09_AXI_1_AWPROT;
  wire S09_AXI_1_AWREADY;
  wire [2:0]S09_AXI_1_AWSIZE;
  wire S09_AXI_1_AWVALID;
  wire S09_AXI_1_BREADY;
  wire [1:0]S09_AXI_1_BRESP;
  wire S09_AXI_1_BVALID;
  wire [63:0]S09_AXI_1_WDATA;
  wire S09_AXI_1_WLAST;
  wire S09_AXI_1_WREADY;
  wire [7:0]S09_AXI_1_WSTRB;
  wire S09_AXI_1_WVALID;
  wire [15:0]axi_ad9371_core_adc_data_i0;
  wire [15:0]axi_ad9371_core_adc_data_i1;
  wire [15:0]axi_ad9371_core_adc_data_q0;
  wire [15:0]axi_ad9371_core_adc_data_q1;
  wire axi_ad9371_core_adc_enable_i0;
  wire axi_ad9371_core_adc_enable_i1;
  wire axi_ad9371_core_adc_enable_q0;
  wire axi_ad9371_core_adc_enable_q1;
  wire [31:0]axi_ad9371_core_adc_os_data_i0;
  wire [31:0]axi_ad9371_core_adc_os_data_q0;
  wire axi_ad9371_core_adc_os_enable_i0;
  wire axi_ad9371_core_adc_os_enable_q0;
  wire axi_ad9371_core_adc_os_valid_i0;
  wire axi_ad9371_core_adc_os_valid_q0;
  wire axi_ad9371_core_adc_valid_i0;
  wire axi_ad9371_core_adc_valid_i1;
  wire axi_ad9371_core_adc_valid_q0;
  wire axi_ad9371_core_adc_valid_q1;
  wire axi_ad9371_core_dac_enable_i0;
  wire axi_ad9371_core_dac_enable_i1;
  wire axi_ad9371_core_dac_enable_q0;
  wire axi_ad9371_core_dac_enable_q1;
  wire axi_ad9371_core_dac_valid_i0;
  wire axi_ad9371_core_dac_valid_i1;
  wire axi_ad9371_core_dac_valid_q0;
  wire axi_ad9371_core_dac_valid_q1;
  wire [127:0]axi_ad9371_dacfifo_dac_data;
  wire axi_ad9371_dacfifo_dac_dunf;
  wire axi_ad9371_dacfifo_dma_ready;
  wire axi_ad9371_rx_clkgen_clk_0;
  wire axi_ad9371_rx_dma_fifo_wr_overflow;
  wire axi_ad9371_rx_dma_irq;
  wire axi_ad9371_rx_jesd_irq;
  wire axi_ad9371_rx_jesd_phy_en_char_align;
  wire [0:0]axi_ad9371_rx_jesd_rstgen_peripheral_reset;
  wire [63:0]axi_ad9371_rx_jesd_rx_data_tdata;
  wire [3:0]axi_ad9371_rx_jesd_rx_sof;
  wire axi_ad9371_rx_jesd_sync;
  wire axi_ad9371_rx_os_clkgen_clk_0;
  wire axi_ad9371_rx_os_dma_fifo_wr_overflow;
  wire axi_ad9371_rx_os_dma_irq;
  wire axi_ad9371_rx_os_jesd_irq;
  wire axi_ad9371_rx_os_jesd_phy_en_char_align;
  wire [0:0]axi_ad9371_rx_os_jesd_rstgen_peripheral_reset;
  wire [63:0]axi_ad9371_rx_os_jesd_rx_data_tdata;
  wire [3:0]axi_ad9371_rx_os_jesd_rx_sof;
  wire axi_ad9371_rx_os_jesd_sync;
  wire [11:0]axi_ad9371_rx_os_xcvr_up_ch_0_addr;
  wire axi_ad9371_rx_os_xcvr_up_ch_0_enb;
  wire axi_ad9371_rx_os_xcvr_up_ch_0_lpm_dfe_n;
  wire [2:0]axi_ad9371_rx_os_xcvr_up_ch_0_out_clk_sel;
  wire axi_ad9371_rx_os_xcvr_up_ch_0_pll_locked;
  wire [2:0]axi_ad9371_rx_os_xcvr_up_ch_0_rate;
  wire [15:0]axi_ad9371_rx_os_xcvr_up_ch_0_rdata;
  wire axi_ad9371_rx_os_xcvr_up_ch_0_ready;
  wire axi_ad9371_rx_os_xcvr_up_ch_0_rst;
  wire axi_ad9371_rx_os_xcvr_up_ch_0_rst_done;
  wire [1:0]axi_ad9371_rx_os_xcvr_up_ch_0_sys_clk_sel;
  wire axi_ad9371_rx_os_xcvr_up_ch_0_user_ready;
  wire [15:0]axi_ad9371_rx_os_xcvr_up_ch_0_wdata;
  wire axi_ad9371_rx_os_xcvr_up_ch_0_wr;
  wire [11:0]axi_ad9371_rx_os_xcvr_up_ch_1_addr;
  wire axi_ad9371_rx_os_xcvr_up_ch_1_enb;
  wire axi_ad9371_rx_os_xcvr_up_ch_1_lpm_dfe_n;
  wire [2:0]axi_ad9371_rx_os_xcvr_up_ch_1_out_clk_sel;
  wire axi_ad9371_rx_os_xcvr_up_ch_1_pll_locked;
  wire [2:0]axi_ad9371_rx_os_xcvr_up_ch_1_rate;
  wire [15:0]axi_ad9371_rx_os_xcvr_up_ch_1_rdata;
  wire axi_ad9371_rx_os_xcvr_up_ch_1_ready;
  wire axi_ad9371_rx_os_xcvr_up_ch_1_rst;
  wire axi_ad9371_rx_os_xcvr_up_ch_1_rst_done;
  wire [1:0]axi_ad9371_rx_os_xcvr_up_ch_1_sys_clk_sel;
  wire axi_ad9371_rx_os_xcvr_up_ch_1_user_ready;
  wire [15:0]axi_ad9371_rx_os_xcvr_up_ch_1_wdata;
  wire axi_ad9371_rx_os_xcvr_up_ch_1_wr;
  wire [11:0]axi_ad9371_rx_os_xcvr_up_es_0_addr;
  wire axi_ad9371_rx_os_xcvr_up_es_0_enb;
  wire [15:0]axi_ad9371_rx_os_xcvr_up_es_0_rdata;
  wire axi_ad9371_rx_os_xcvr_up_es_0_ready;
  wire [15:0]axi_ad9371_rx_os_xcvr_up_es_0_wdata;
  wire axi_ad9371_rx_os_xcvr_up_es_0_wr;
  wire [11:0]axi_ad9371_rx_os_xcvr_up_es_1_addr;
  wire axi_ad9371_rx_os_xcvr_up_es_1_enb;
  wire [15:0]axi_ad9371_rx_os_xcvr_up_es_1_rdata;
  wire axi_ad9371_rx_os_xcvr_up_es_1_ready;
  wire [15:0]axi_ad9371_rx_os_xcvr_up_es_1_wdata;
  wire axi_ad9371_rx_os_xcvr_up_es_1_wr;
  wire axi_ad9371_rx_os_xcvr_up_pll_rst;
  wire [11:0]axi_ad9371_rx_xcvr_up_ch_0_addr;
  wire axi_ad9371_rx_xcvr_up_ch_0_enb;
  wire axi_ad9371_rx_xcvr_up_ch_0_lpm_dfe_n;
  wire [2:0]axi_ad9371_rx_xcvr_up_ch_0_out_clk_sel;
  wire axi_ad9371_rx_xcvr_up_ch_0_pll_locked;
  wire [2:0]axi_ad9371_rx_xcvr_up_ch_0_rate;
  wire [15:0]axi_ad9371_rx_xcvr_up_ch_0_rdata;
  wire axi_ad9371_rx_xcvr_up_ch_0_ready;
  wire axi_ad9371_rx_xcvr_up_ch_0_rst;
  wire axi_ad9371_rx_xcvr_up_ch_0_rst_done;
  wire [1:0]axi_ad9371_rx_xcvr_up_ch_0_sys_clk_sel;
  wire axi_ad9371_rx_xcvr_up_ch_0_user_ready;
  wire [15:0]axi_ad9371_rx_xcvr_up_ch_0_wdata;
  wire axi_ad9371_rx_xcvr_up_ch_0_wr;
  wire [11:0]axi_ad9371_rx_xcvr_up_ch_1_addr;
  wire axi_ad9371_rx_xcvr_up_ch_1_enb;
  wire axi_ad9371_rx_xcvr_up_ch_1_lpm_dfe_n;
  wire [2:0]axi_ad9371_rx_xcvr_up_ch_1_out_clk_sel;
  wire axi_ad9371_rx_xcvr_up_ch_1_pll_locked;
  wire [2:0]axi_ad9371_rx_xcvr_up_ch_1_rate;
  wire [15:0]axi_ad9371_rx_xcvr_up_ch_1_rdata;
  wire axi_ad9371_rx_xcvr_up_ch_1_ready;
  wire axi_ad9371_rx_xcvr_up_ch_1_rst;
  wire axi_ad9371_rx_xcvr_up_ch_1_rst_done;
  wire [1:0]axi_ad9371_rx_xcvr_up_ch_1_sys_clk_sel;
  wire axi_ad9371_rx_xcvr_up_ch_1_user_ready;
  wire [15:0]axi_ad9371_rx_xcvr_up_ch_1_wdata;
  wire axi_ad9371_rx_xcvr_up_ch_1_wr;
  wire [11:0]axi_ad9371_rx_xcvr_up_es_0_addr;
  wire axi_ad9371_rx_xcvr_up_es_0_enb;
  wire [15:0]axi_ad9371_rx_xcvr_up_es_0_rdata;
  wire axi_ad9371_rx_xcvr_up_es_0_ready;
  wire [15:0]axi_ad9371_rx_xcvr_up_es_0_wdata;
  wire axi_ad9371_rx_xcvr_up_es_0_wr;
  wire [11:0]axi_ad9371_rx_xcvr_up_es_1_addr;
  wire axi_ad9371_rx_xcvr_up_es_1_enb;
  wire [15:0]axi_ad9371_rx_xcvr_up_es_1_rdata;
  wire axi_ad9371_rx_xcvr_up_es_1_ready;
  wire [15:0]axi_ad9371_rx_xcvr_up_es_1_wdata;
  wire axi_ad9371_rx_xcvr_up_es_1_wr;
  wire axi_ad9371_rx_xcvr_up_pll_rst;
  wire axi_ad9371_tx_clkgen_clk_0;
  wire axi_ad9371_tx_dma_irq;
  wire [127:0]axi_ad9371_tx_dma_m_axis_data;
  wire axi_ad9371_tx_dma_m_axis_last;
  wire axi_ad9371_tx_dma_m_axis_valid;
  wire axi_ad9371_tx_dma_m_axis_xfer_req;
  wire axi_ad9371_tx_jesd_irq;
  wire [0:0]axi_ad9371_tx_jesd_rstgen_peripheral_reset;
  wire [3:0]axi_ad9371_tx_jesd_tx_phy0_txcharisk;
  wire [31:0]axi_ad9371_tx_jesd_tx_phy0_txdata;
  wire [3:0]axi_ad9371_tx_jesd_tx_phy1_txcharisk;
  wire [31:0]axi_ad9371_tx_jesd_tx_phy1_txdata;
  wire [3:0]axi_ad9371_tx_jesd_tx_phy2_txcharisk;
  wire [31:0]axi_ad9371_tx_jesd_tx_phy2_txdata;
  wire [3:0]axi_ad9371_tx_jesd_tx_phy3_txcharisk;
  wire [31:0]axi_ad9371_tx_jesd_tx_phy3_txdata;
  wire [11:0]axi_ad9371_tx_xcvr_up_ch_0_addr;
  wire axi_ad9371_tx_xcvr_up_ch_0_enb;
  wire axi_ad9371_tx_xcvr_up_ch_0_lpm_dfe_n;
  wire [2:0]axi_ad9371_tx_xcvr_up_ch_0_out_clk_sel;
  wire axi_ad9371_tx_xcvr_up_ch_0_pll_locked;
  wire [2:0]axi_ad9371_tx_xcvr_up_ch_0_rate;
  wire [15:0]axi_ad9371_tx_xcvr_up_ch_0_rdata;
  wire axi_ad9371_tx_xcvr_up_ch_0_ready;
  wire axi_ad9371_tx_xcvr_up_ch_0_rst;
  wire axi_ad9371_tx_xcvr_up_ch_0_rst_done;
  wire [1:0]axi_ad9371_tx_xcvr_up_ch_0_sys_clk_sel;
  wire axi_ad9371_tx_xcvr_up_ch_0_user_ready;
  wire [15:0]axi_ad9371_tx_xcvr_up_ch_0_wdata;
  wire axi_ad9371_tx_xcvr_up_ch_0_wr;
  wire [11:0]axi_ad9371_tx_xcvr_up_ch_1_addr;
  wire axi_ad9371_tx_xcvr_up_ch_1_enb;
  wire axi_ad9371_tx_xcvr_up_ch_1_lpm_dfe_n;
  wire [2:0]axi_ad9371_tx_xcvr_up_ch_1_out_clk_sel;
  wire axi_ad9371_tx_xcvr_up_ch_1_pll_locked;
  wire [2:0]axi_ad9371_tx_xcvr_up_ch_1_rate;
  wire [15:0]axi_ad9371_tx_xcvr_up_ch_1_rdata;
  wire axi_ad9371_tx_xcvr_up_ch_1_ready;
  wire axi_ad9371_tx_xcvr_up_ch_1_rst;
  wire axi_ad9371_tx_xcvr_up_ch_1_rst_done;
  wire [1:0]axi_ad9371_tx_xcvr_up_ch_1_sys_clk_sel;
  wire axi_ad9371_tx_xcvr_up_ch_1_user_ready;
  wire [15:0]axi_ad9371_tx_xcvr_up_ch_1_wdata;
  wire axi_ad9371_tx_xcvr_up_ch_1_wr;
  wire [11:0]axi_ad9371_tx_xcvr_up_ch_2_addr;
  wire axi_ad9371_tx_xcvr_up_ch_2_enb;
  wire axi_ad9371_tx_xcvr_up_ch_2_lpm_dfe_n;
  wire [2:0]axi_ad9371_tx_xcvr_up_ch_2_out_clk_sel;
  wire axi_ad9371_tx_xcvr_up_ch_2_pll_locked;
  wire [2:0]axi_ad9371_tx_xcvr_up_ch_2_rate;
  wire [15:0]axi_ad9371_tx_xcvr_up_ch_2_rdata;
  wire axi_ad9371_tx_xcvr_up_ch_2_ready;
  wire axi_ad9371_tx_xcvr_up_ch_2_rst;
  wire axi_ad9371_tx_xcvr_up_ch_2_rst_done;
  wire [1:0]axi_ad9371_tx_xcvr_up_ch_2_sys_clk_sel;
  wire axi_ad9371_tx_xcvr_up_ch_2_user_ready;
  wire [15:0]axi_ad9371_tx_xcvr_up_ch_2_wdata;
  wire axi_ad9371_tx_xcvr_up_ch_2_wr;
  wire [11:0]axi_ad9371_tx_xcvr_up_ch_3_addr;
  wire axi_ad9371_tx_xcvr_up_ch_3_enb;
  wire axi_ad9371_tx_xcvr_up_ch_3_lpm_dfe_n;
  wire [2:0]axi_ad9371_tx_xcvr_up_ch_3_out_clk_sel;
  wire axi_ad9371_tx_xcvr_up_ch_3_pll_locked;
  wire [2:0]axi_ad9371_tx_xcvr_up_ch_3_rate;
  wire [15:0]axi_ad9371_tx_xcvr_up_ch_3_rdata;
  wire axi_ad9371_tx_xcvr_up_ch_3_ready;
  wire axi_ad9371_tx_xcvr_up_ch_3_rst;
  wire axi_ad9371_tx_xcvr_up_ch_3_rst_done;
  wire [1:0]axi_ad9371_tx_xcvr_up_ch_3_sys_clk_sel;
  wire axi_ad9371_tx_xcvr_up_ch_3_user_ready;
  wire [15:0]axi_ad9371_tx_xcvr_up_ch_3_wdata;
  wire axi_ad9371_tx_xcvr_up_ch_3_wr;
  wire [11:0]axi_ad9371_tx_xcvr_up_cm_0_addr;
  wire axi_ad9371_tx_xcvr_up_cm_0_enb;
  wire [15:0]axi_ad9371_tx_xcvr_up_cm_0_rdata;
  wire axi_ad9371_tx_xcvr_up_cm_0_ready;
  wire [15:0]axi_ad9371_tx_xcvr_up_cm_0_wdata;
  wire axi_ad9371_tx_xcvr_up_cm_0_wr;
  wire axi_ad9371_tx_xcvr_up_pll_rst;
  wire [31:0]axi_cpu_interconnect_M00_AXI_ARADDR;
  wire axi_cpu_interconnect_M00_AXI_ARREADY;
  wire axi_cpu_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_AWADDR;
  wire axi_cpu_interconnect_M00_AXI_AWREADY;
  wire axi_cpu_interconnect_M00_AXI_AWVALID;
  wire axi_cpu_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M00_AXI_BRESP;
  wire axi_cpu_interconnect_M00_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_RDATA;
  wire axi_cpu_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M00_AXI_RRESP;
  wire axi_cpu_interconnect_M00_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_WDATA;
  wire axi_cpu_interconnect_M00_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M00_AXI_WSTRB;
  wire axi_cpu_interconnect_M00_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_ARADDR;
  wire axi_cpu_interconnect_M01_AXI_ARREADY;
  wire axi_cpu_interconnect_M01_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_AWADDR;
  wire axi_cpu_interconnect_M01_AXI_AWREADY;
  wire axi_cpu_interconnect_M01_AXI_AWVALID;
  wire axi_cpu_interconnect_M01_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M01_AXI_BRESP;
  wire axi_cpu_interconnect_M01_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_RDATA;
  wire axi_cpu_interconnect_M01_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M01_AXI_RRESP;
  wire axi_cpu_interconnect_M01_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_WDATA;
  wire axi_cpu_interconnect_M01_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M01_AXI_WSTRB;
  wire axi_cpu_interconnect_M01_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_ARADDR;
  wire axi_cpu_interconnect_M02_AXI_ARREADY;
  wire axi_cpu_interconnect_M02_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_AWADDR;
  wire axi_cpu_interconnect_M02_AXI_AWREADY;
  wire axi_cpu_interconnect_M02_AXI_AWVALID;
  wire axi_cpu_interconnect_M02_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M02_AXI_BRESP;
  wire axi_cpu_interconnect_M02_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_RDATA;
  wire axi_cpu_interconnect_M02_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M02_AXI_RRESP;
  wire axi_cpu_interconnect_M02_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_WDATA;
  wire axi_cpu_interconnect_M02_AXI_WREADY;
  wire axi_cpu_interconnect_M02_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_ARADDR;
  wire axi_cpu_interconnect_M03_AXI_ARREADY;
  wire axi_cpu_interconnect_M03_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_AWADDR;
  wire axi_cpu_interconnect_M03_AXI_AWREADY;
  wire axi_cpu_interconnect_M03_AXI_AWVALID;
  wire axi_cpu_interconnect_M03_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M03_AXI_BRESP;
  wire axi_cpu_interconnect_M03_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_RDATA;
  wire axi_cpu_interconnect_M03_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M03_AXI_RRESP;
  wire axi_cpu_interconnect_M03_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_WDATA;
  wire axi_cpu_interconnect_M03_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M03_AXI_WSTRB;
  wire axi_cpu_interconnect_M03_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_ARADDR;
  wire axi_cpu_interconnect_M04_AXI_ARREADY;
  wire axi_cpu_interconnect_M04_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_AWADDR;
  wire axi_cpu_interconnect_M04_AXI_AWREADY;
  wire axi_cpu_interconnect_M04_AXI_AWVALID;
  wire axi_cpu_interconnect_M04_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M04_AXI_BRESP;
  wire axi_cpu_interconnect_M04_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_RDATA;
  wire axi_cpu_interconnect_M04_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M04_AXI_RRESP;
  wire axi_cpu_interconnect_M04_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_WDATA;
  wire axi_cpu_interconnect_M04_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M04_AXI_WSTRB;
  wire axi_cpu_interconnect_M04_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_ARADDR;
  wire axi_cpu_interconnect_M05_AXI_ARREADY;
  wire axi_cpu_interconnect_M05_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_AWADDR;
  wire axi_cpu_interconnect_M05_AXI_AWREADY;
  wire axi_cpu_interconnect_M05_AXI_AWVALID;
  wire axi_cpu_interconnect_M05_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M05_AXI_BRESP;
  wire axi_cpu_interconnect_M05_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_RDATA;
  wire axi_cpu_interconnect_M05_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M05_AXI_RRESP;
  wire axi_cpu_interconnect_M05_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_WDATA;
  wire axi_cpu_interconnect_M05_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M05_AXI_WSTRB;
  wire axi_cpu_interconnect_M05_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_ARADDR;
  wire axi_cpu_interconnect_M06_AXI_ARREADY;
  wire axi_cpu_interconnect_M06_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_AWADDR;
  wire axi_cpu_interconnect_M06_AXI_AWREADY;
  wire axi_cpu_interconnect_M06_AXI_AWVALID;
  wire axi_cpu_interconnect_M06_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M06_AXI_BRESP;
  wire axi_cpu_interconnect_M06_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_RDATA;
  wire axi_cpu_interconnect_M06_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M06_AXI_RRESP;
  wire axi_cpu_interconnect_M06_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_WDATA;
  wire axi_cpu_interconnect_M06_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M06_AXI_WSTRB;
  wire axi_cpu_interconnect_M06_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M07_AXI_ARADDR;
  wire axi_cpu_interconnect_M07_AXI_ARREADY;
  wire axi_cpu_interconnect_M07_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M07_AXI_AWADDR;
  wire axi_cpu_interconnect_M07_AXI_AWREADY;
  wire axi_cpu_interconnect_M07_AXI_AWVALID;
  wire axi_cpu_interconnect_M07_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M07_AXI_BRESP;
  wire axi_cpu_interconnect_M07_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M07_AXI_RDATA;
  wire axi_cpu_interconnect_M07_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M07_AXI_RRESP;
  wire axi_cpu_interconnect_M07_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M07_AXI_WDATA;
  wire axi_cpu_interconnect_M07_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M07_AXI_WSTRB;
  wire axi_cpu_interconnect_M07_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M08_AXI_ARADDR;
  wire axi_cpu_interconnect_M08_AXI_ARREADY;
  wire axi_cpu_interconnect_M08_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M08_AXI_AWADDR;
  wire axi_cpu_interconnect_M08_AXI_AWREADY;
  wire axi_cpu_interconnect_M08_AXI_AWVALID;
  wire axi_cpu_interconnect_M08_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M08_AXI_BRESP;
  wire axi_cpu_interconnect_M08_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M08_AXI_RDATA;
  wire axi_cpu_interconnect_M08_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M08_AXI_RRESP;
  wire axi_cpu_interconnect_M08_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M08_AXI_WDATA;
  wire axi_cpu_interconnect_M08_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M08_AXI_WSTRB;
  wire axi_cpu_interconnect_M08_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M09_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M09_AXI_ARPROT;
  wire axi_cpu_interconnect_M09_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M09_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M09_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M09_AXI_AWPROT;
  wire axi_cpu_interconnect_M09_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M09_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M09_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M09_AXI_BRESP;
  wire axi_cpu_interconnect_M09_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M09_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M09_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M09_AXI_RRESP;
  wire axi_cpu_interconnect_M09_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M09_AXI_WDATA;
  wire axi_cpu_interconnect_M09_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M09_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M09_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M10_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M10_AXI_ARPROT;
  wire axi_cpu_interconnect_M10_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M10_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M10_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M10_AXI_AWPROT;
  wire axi_cpu_interconnect_M10_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M10_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M10_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M10_AXI_BRESP;
  wire axi_cpu_interconnect_M10_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M10_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M10_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M10_AXI_RRESP;
  wire axi_cpu_interconnect_M10_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M10_AXI_WDATA;
  wire axi_cpu_interconnect_M10_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M10_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M10_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M11_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M11_AXI_ARPROT;
  wire axi_cpu_interconnect_M11_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M11_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M11_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M11_AXI_AWPROT;
  wire axi_cpu_interconnect_M11_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M11_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M11_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M11_AXI_BRESP;
  wire axi_cpu_interconnect_M11_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M11_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M11_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M11_AXI_RRESP;
  wire axi_cpu_interconnect_M11_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M11_AXI_WDATA;
  wire axi_cpu_interconnect_M11_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M11_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M11_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M12_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M12_AXI_ARPROT;
  wire [0:0]axi_cpu_interconnect_M12_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M12_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M12_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M12_AXI_AWPROT;
  wire [0:0]axi_cpu_interconnect_M12_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M12_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M12_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M12_AXI_BRESP;
  wire [0:0]axi_cpu_interconnect_M12_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M12_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M12_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M12_AXI_RRESP;
  wire [0:0]axi_cpu_interconnect_M12_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M12_AXI_WDATA;
  wire [0:0]axi_cpu_interconnect_M12_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M12_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M12_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M13_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M13_AXI_ARPROT;
  wire axi_cpu_interconnect_M13_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M13_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M13_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M13_AXI_AWPROT;
  wire axi_cpu_interconnect_M13_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M13_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M13_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M13_AXI_BRESP;
  wire axi_cpu_interconnect_M13_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M13_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M13_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M13_AXI_RRESP;
  wire axi_cpu_interconnect_M13_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M13_AXI_WDATA;
  wire axi_cpu_interconnect_M13_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M13_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M13_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M14_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M14_AXI_ARPROT;
  wire axi_cpu_interconnect_M14_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M14_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M14_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M14_AXI_AWPROT;
  wire axi_cpu_interconnect_M14_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M14_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M14_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M14_AXI_BRESP;
  wire axi_cpu_interconnect_M14_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M14_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M14_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M14_AXI_RRESP;
  wire axi_cpu_interconnect_M14_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M14_AXI_WDATA;
  wire axi_cpu_interconnect_M14_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M14_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M14_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M15_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M15_AXI_ARPROT;
  wire axi_cpu_interconnect_M15_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M15_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M15_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M15_AXI_AWPROT;
  wire axi_cpu_interconnect_M15_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M15_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M15_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M15_AXI_BRESP;
  wire axi_cpu_interconnect_M15_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M15_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M15_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M15_AXI_RRESP;
  wire axi_cpu_interconnect_M15_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M15_AXI_WDATA;
  wire axi_cpu_interconnect_M15_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M15_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M15_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M16_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M16_AXI_ARPROT;
  wire [0:0]axi_cpu_interconnect_M16_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M16_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M16_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M16_AXI_AWPROT;
  wire [0:0]axi_cpu_interconnect_M16_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M16_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M16_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M16_AXI_BRESP;
  wire [0:0]axi_cpu_interconnect_M16_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M16_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M16_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M16_AXI_RRESP;
  wire [0:0]axi_cpu_interconnect_M16_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M16_AXI_WDATA;
  wire [0:0]axi_cpu_interconnect_M16_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M16_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M16_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M17_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M17_AXI_ARPROT;
  wire axi_cpu_interconnect_M17_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M17_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M17_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M17_AXI_AWPROT;
  wire axi_cpu_interconnect_M17_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M17_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M17_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M17_AXI_BRESP;
  wire axi_cpu_interconnect_M17_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M17_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M17_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M17_AXI_RRESP;
  wire axi_cpu_interconnect_M17_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M17_AXI_WDATA;
  wire axi_cpu_interconnect_M17_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M17_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M17_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M18_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M18_AXI_ARPROT;
  wire axi_cpu_interconnect_M18_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M18_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M18_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M18_AXI_AWPROT;
  wire axi_cpu_interconnect_M18_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M18_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M18_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M18_AXI_BRESP;
  wire axi_cpu_interconnect_M18_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M18_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M18_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M18_AXI_RRESP;
  wire axi_cpu_interconnect_M18_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M18_AXI_WDATA;
  wire axi_cpu_interconnect_M18_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M18_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M18_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M19_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M19_AXI_ARPROT;
  wire axi_cpu_interconnect_M19_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M19_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M19_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M19_AXI_AWPROT;
  wire axi_cpu_interconnect_M19_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M19_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M19_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M19_AXI_BRESP;
  wire axi_cpu_interconnect_M19_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M19_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M19_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M19_AXI_RRESP;
  wire axi_cpu_interconnect_M19_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M19_AXI_WDATA;
  wire axi_cpu_interconnect_M19_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M19_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M19_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M20_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M20_AXI_ARPROT;
  wire [0:0]axi_cpu_interconnect_M20_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M20_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M20_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M20_AXI_AWPROT;
  wire [0:0]axi_cpu_interconnect_M20_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M20_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M20_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M20_AXI_BRESP;
  wire [0:0]axi_cpu_interconnect_M20_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M20_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M20_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M20_AXI_RRESP;
  wire [0:0]axi_cpu_interconnect_M20_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M20_AXI_WDATA;
  wire [0:0]axi_cpu_interconnect_M20_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M20_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M20_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M21_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M21_AXI_ARPROT;
  wire axi_cpu_interconnect_M21_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M21_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M21_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M21_AXI_AWPROT;
  wire axi_cpu_interconnect_M21_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M21_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M21_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M21_AXI_BRESP;
  wire axi_cpu_interconnect_M21_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M21_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M21_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M21_AXI_RRESP;
  wire axi_cpu_interconnect_M21_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M21_AXI_WDATA;
  wire axi_cpu_interconnect_M21_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M21_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M21_AXI_WVALID;
  wire axi_ddr_cntrl_c0_ddr4_ui_clk_sync_rst;
  wire [31:0]axi_ethernet_dma_M_AXIS_CNTRL_TDATA;
  wire [3:0]axi_ethernet_dma_M_AXIS_CNTRL_TKEEP;
  wire axi_ethernet_dma_M_AXIS_CNTRL_TLAST;
  wire axi_ethernet_dma_M_AXIS_CNTRL_TREADY;
  wire axi_ethernet_dma_M_AXIS_CNTRL_TVALID;
  wire [31:0]axi_ethernet_dma_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_ethernet_dma_M_AXIS_MM2S_TKEEP;
  wire axi_ethernet_dma_M_AXIS_MM2S_TLAST;
  wire axi_ethernet_dma_M_AXIS_MM2S_TREADY;
  wire axi_ethernet_dma_M_AXIS_MM2S_TVALID;
  wire axi_ethernet_dma_mm2s_cntrl_reset_out_n;
  wire axi_ethernet_dma_mm2s_introut;
  wire axi_ethernet_dma_mm2s_prmry_reset_out_n;
  wire axi_ethernet_dma_s2mm_introut;
  wire axi_ethernet_dma_s2mm_prmry_reset_out_n;
  wire axi_ethernet_dma_s2mm_sts_reset_out_n;
  wire axi_ethernet_interrupt;
  wire [31:0]axi_ethernet_m_axis_rxd_TDATA;
  wire [3:0]axi_ethernet_m_axis_rxd_TKEEP;
  wire axi_ethernet_m_axis_rxd_TLAST;
  wire axi_ethernet_m_axis_rxd_TREADY;
  wire axi_ethernet_m_axis_rxd_TVALID;
  wire [31:0]axi_ethernet_m_axis_rxs_TDATA;
  wire [3:0]axi_ethernet_m_axis_rxs_TKEEP;
  wire axi_ethernet_m_axis_rxs_TLAST;
  wire axi_ethernet_m_axis_rxs_TREADY;
  wire axi_ethernet_m_axis_rxs_TVALID;
  wire axi_ethernet_mdio_MDC;
  wire axi_ethernet_mdio_MDIO_I;
  wire axi_ethernet_mdio_MDIO_O;
  wire axi_ethernet_mdio_MDIO_T;
  wire [0:0]axi_ethernet_phy_rst_n;
  wire axi_ethernet_sgmii_RXN;
  wire axi_ethernet_sgmii_RXP;
  wire axi_ethernet_sgmii_TXN;
  wire axi_ethernet_sgmii_TXP;
  wire [31:0]axi_gpio_gpio2_io_o;
  wire [31:0]axi_gpio_gpio2_io_t;
  wire [31:0]axi_gpio_gpio_io_o;
  wire [31:0]axi_gpio_gpio_io_t;
  wire axi_gpio_ip2intc_irpt;
  wire axi_iic_main_IIC_SCL_I;
  wire axi_iic_main_IIC_SCL_O;
  wire axi_iic_main_IIC_SCL_T;
  wire axi_iic_main_IIC_SDA_I;
  wire axi_iic_main_IIC_SDA_O;
  wire axi_iic_main_IIC_SDA_T;
  wire axi_iic_main_iic2intc_irpt;
  wire axi_intc_interrupt_INTERRUPT;
  wire [29:0]axi_mem_interconnect_M00_AXI_ARADDR;
  wire [1:0]axi_mem_interconnect_M00_AXI_ARBURST;
  wire [3:0]axi_mem_interconnect_M00_AXI_ARCACHE;
  wire [3:0]axi_mem_interconnect_M00_AXI_ARID;
  wire [7:0]axi_mem_interconnect_M00_AXI_ARLEN;
  wire axi_mem_interconnect_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_interconnect_M00_AXI_ARPROT;
  wire [3:0]axi_mem_interconnect_M00_AXI_ARQOS;
  wire axi_mem_interconnect_M00_AXI_ARREADY;
  wire [2:0]axi_mem_interconnect_M00_AXI_ARSIZE;
  wire axi_mem_interconnect_M00_AXI_ARVALID;
  wire [29:0]axi_mem_interconnect_M00_AXI_AWADDR;
  wire [1:0]axi_mem_interconnect_M00_AXI_AWBURST;
  wire [3:0]axi_mem_interconnect_M00_AXI_AWCACHE;
  wire [3:0]axi_mem_interconnect_M00_AXI_AWID;
  wire [7:0]axi_mem_interconnect_M00_AXI_AWLEN;
  wire axi_mem_interconnect_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_interconnect_M00_AXI_AWPROT;
  wire [3:0]axi_mem_interconnect_M00_AXI_AWQOS;
  wire axi_mem_interconnect_M00_AXI_AWREADY;
  wire [2:0]axi_mem_interconnect_M00_AXI_AWSIZE;
  wire axi_mem_interconnect_M00_AXI_AWVALID;
  wire [3:0]axi_mem_interconnect_M00_AXI_BID;
  wire axi_mem_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_mem_interconnect_M00_AXI_BRESP;
  wire axi_mem_interconnect_M00_AXI_BVALID;
  wire [511:0]axi_mem_interconnect_M00_AXI_RDATA;
  wire [3:0]axi_mem_interconnect_M00_AXI_RID;
  wire axi_mem_interconnect_M00_AXI_RLAST;
  wire axi_mem_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_mem_interconnect_M00_AXI_RRESP;
  wire axi_mem_interconnect_M00_AXI_RVALID;
  wire [511:0]axi_mem_interconnect_M00_AXI_WDATA;
  wire axi_mem_interconnect_M00_AXI_WLAST;
  wire axi_mem_interconnect_M00_AXI_WREADY;
  wire [63:0]axi_mem_interconnect_M00_AXI_WSTRB;
  wire axi_mem_interconnect_M00_AXI_WVALID;
  wire axi_spi_io0_o;
  wire axi_spi_ip2intc_irpt;
  wire axi_spi_sck_o;
  wire [7:0]axi_spi_ss_o;
  wire axi_timer_interrupt;
  wire axi_uart_interrupt;
  wire axi_uart_tx;
  wire dac_fifo_bypass_1;
  wire [31:0]gpio0_i_1;
  wire [31:0]gpio1_i_1;
  wire mb_intr_05_1;
  wire mb_intr_06_1;
  wire [13:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [0:0]mig_7series_0_DDR3_CS_N;
  wire [7:0]mig_7series_0_DDR3_DM;
  wire [63:0]mig_7series_0_DDR3_DQ;
  wire [7:0]mig_7series_0_DDR3_DQS_N;
  wire [7:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_mmcm_locked;
  wire phy_clk_1_CLK_N;
  wire phy_clk_1_CLK_P;
  wire phy_sd_1;
  wire rx_data_0_n_1;
  wire rx_data_0_p_1;
  wire rx_data_1_n_1;
  wire rx_data_1_p_1;
  wire rx_data_2_n_1;
  wire rx_data_2_p_1;
  wire rx_data_3_n_1;
  wire rx_data_3_p_1;
  wire rx_ref_clk_0_1;
  wire rx_ref_clk_2_1;
  wire spi_clk_i_1;
  wire [7:0]spi_csn_i_1;
  wire spi_sdi_i_1;
  wire spi_sdo_i_1;
  wire sync_1;
  wire sys_clk_1;
  wire [15:0]sys_concat_intc_dout;
  wire sys_cpu_clk;
  wire [0:0]sys_cpu_reset;
  wire [0:0]sys_cpu_resetn;
  wire [0:31]sys_dlmb_cntlr_BRAM_PORT_ADDR;
  wire sys_dlmb_cntlr_BRAM_PORT_CLK;
  wire [0:31]sys_dlmb_cntlr_BRAM_PORT_DIN;
  wire [31:0]sys_dlmb_cntlr_BRAM_PORT_DOUT;
  wire sys_dlmb_cntlr_BRAM_PORT_EN;
  wire sys_dlmb_cntlr_BRAM_PORT_RST;
  wire [0:3]sys_dlmb_cntlr_BRAM_PORT_WE;
  wire sys_dma_clk;
  wire [0:0]sys_dma_reset;
  wire [0:0]sys_dma_resetn;
  wire [0:31]sys_ilmb_cntlr_BRAM_PORT_ADDR;
  wire sys_ilmb_cntlr_BRAM_PORT_CLK;
  wire [0:31]sys_ilmb_cntlr_BRAM_PORT_DIN;
  wire [31:0]sys_ilmb_cntlr_BRAM_PORT_DOUT;
  wire sys_ilmb_cntlr_BRAM_PORT_EN;
  wire sys_ilmb_cntlr_BRAM_PORT_RST;
  wire [0:3]sys_ilmb_cntlr_BRAM_PORT_WE;
  wire [0:31]sys_mb_DLMB_ABUS;
  wire sys_mb_DLMB_ADDRSTROBE;
  wire [0:3]sys_mb_DLMB_BE;
  wire sys_mb_DLMB_CE;
  wire [0:31]sys_mb_DLMB_READDBUS;
  wire sys_mb_DLMB_READSTROBE;
  wire sys_mb_DLMB_READY;
  wire sys_mb_DLMB_UE;
  wire sys_mb_DLMB_WAIT;
  wire [0:31]sys_mb_DLMB_WRITEDBUS;
  wire sys_mb_DLMB_WRITESTROBE;
  wire [0:31]sys_mb_ILMB_ABUS;
  wire sys_mb_ILMB_ADDRSTROBE;
  wire sys_mb_ILMB_CE;
  wire [0:31]sys_mb_ILMB_READDBUS;
  wire sys_mb_ILMB_READSTROBE;
  wire sys_mb_ILMB_READY;
  wire sys_mb_ILMB_UE;
  wire sys_mb_ILMB_WAIT;
  wire sys_mb_debug_Debug_SYS_Rst;
  wire sys_mb_debug_MBDEBUG_0_CAPTURE;
  wire sys_mb_debug_MBDEBUG_0_CLK;
  wire sys_mb_debug_MBDEBUG_0_DISABLE;
  wire [0:7]sys_mb_debug_MBDEBUG_0_REG_EN;
  wire sys_mb_debug_MBDEBUG_0_RST;
  wire sys_mb_debug_MBDEBUG_0_SHIFT;
  wire sys_mb_debug_MBDEBUG_0_TDI;
  wire sys_mb_debug_MBDEBUG_0_TDO;
  wire sys_mb_debug_MBDEBUG_0_UPDATE;
  wire sys_mem_clk;
  wire sys_rst_1;
  wire [0:0]sys_rstgen_bus_struct_reset;
  wire sys_rstgen_mb_reset;
  wire sysref_1;
  wire sysref_2;
  wire sysref_3;
  wire [127:0]tx_data_tdata_1;
  wire tx_ref_clk_0_1;
  wire uart_sin_1;
  wire [63:0]util_ad9371_rx_cpack_adc_data;
  wire util_ad9371_rx_cpack_adc_sync;
  wire util_ad9371_rx_cpack_adc_valid;
  wire [63:0]util_ad9371_rx_os_cpack_adc_data;
  wire util_ad9371_rx_os_cpack_adc_sync;
  wire util_ad9371_rx_os_cpack_adc_valid;
  wire [31:0]util_ad9371_tx_upack_dac_data_0;
  wire [31:0]util_ad9371_tx_upack_dac_data_1;
  wire [31:0]util_ad9371_tx_upack_dac_data_2;
  wire [31:0]util_ad9371_tx_upack_dac_data_3;
  wire util_ad9371_tx_upack_dac_valid;
  wire [3:0]util_ad9371_xcvr_rx_0_rxcharisk;
  wire [31:0]util_ad9371_xcvr_rx_0_rxdata;
  wire [3:0]util_ad9371_xcvr_rx_0_rxdisperr;
  wire [3:0]util_ad9371_xcvr_rx_0_rxnotintable;
  wire [3:0]util_ad9371_xcvr_rx_1_rxcharisk;
  wire [31:0]util_ad9371_xcvr_rx_1_rxdata;
  wire [3:0]util_ad9371_xcvr_rx_1_rxdisperr;
  wire [3:0]util_ad9371_xcvr_rx_1_rxnotintable;
  wire [3:0]util_ad9371_xcvr_rx_2_rxcharisk;
  wire [31:0]util_ad9371_xcvr_rx_2_rxdata;
  wire [3:0]util_ad9371_xcvr_rx_2_rxdisperr;
  wire [3:0]util_ad9371_xcvr_rx_2_rxnotintable;
  wire [3:0]util_ad9371_xcvr_rx_3_rxcharisk;
  wire [31:0]util_ad9371_xcvr_rx_3_rxdata;
  wire [3:0]util_ad9371_xcvr_rx_3_rxdisperr;
  wire [3:0]util_ad9371_xcvr_rx_3_rxnotintable;
  wire util_ad9371_xcvr_rx_out_clk_0;
  wire util_ad9371_xcvr_rx_out_clk_2;
  wire util_ad9371_xcvr_tx_0_n;
  wire util_ad9371_xcvr_tx_0_p;
  wire util_ad9371_xcvr_tx_1_n;
  wire util_ad9371_xcvr_tx_1_p;
  wire util_ad9371_xcvr_tx_2_n;
  wire util_ad9371_xcvr_tx_2_p;
  wire util_ad9371_xcvr_tx_3_n;
  wire util_ad9371_xcvr_tx_3_p;
  wire util_ad9371_xcvr_tx_out_clk_0;

  assign DDR3_addr[13:0] = mig_7series_0_DDR3_ADDR;
  assign DDR3_ba[2:0] = mig_7series_0_DDR3_BA;
  assign DDR3_cas_n = mig_7series_0_DDR3_CAS_N;
  assign DDR3_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign DDR3_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign DDR3_cke[0] = mig_7series_0_DDR3_CKE;
  assign DDR3_cs_n[0] = mig_7series_0_DDR3_CS_N;
  assign DDR3_dm[7:0] = mig_7series_0_DDR3_DM;
  assign DDR3_odt[0] = mig_7series_0_DDR3_ODT;
  assign DDR3_ras_n = mig_7series_0_DDR3_RAS_N;
  assign DDR3_reset_n = mig_7series_0_DDR3_RESET_N;
  assign DDR3_we_n = mig_7series_0_DDR3_WE_N;
  assign axi_ethernet_mdio_MDIO_I = mdio_mdio_i;
  assign axi_ethernet_sgmii_RXN = sgmii_rxn;
  assign axi_ethernet_sgmii_RXP = sgmii_rxp;
  assign axi_iic_main_IIC_SCL_I = iic_main_scl_i;
  assign axi_iic_main_IIC_SDA_I = iic_main_sda_i;
  assign dac_fifo_bypass_1 = dac_fifo_bypass;
  assign gpio0_i_1 = gpio0_i[31:0];
  assign gpio0_o[31:0] = axi_gpio_gpio_io_o;
  assign gpio0_t[31:0] = axi_gpio_gpio_io_t;
  assign gpio1_i_1 = gpio1_i[31:0];
  assign gpio1_o[31:0] = axi_gpio_gpio2_io_o;
  assign gpio1_t[31:0] = axi_gpio_gpio2_io_t;
  assign iic_main_scl_o = axi_iic_main_IIC_SCL_O;
  assign iic_main_scl_t = axi_iic_main_IIC_SCL_T;
  assign iic_main_sda_o = axi_iic_main_IIC_SDA_O;
  assign iic_main_sda_t = axi_iic_main_IIC_SDA_T;
  assign mb_intr_05_1 = mb_intr_05;
  assign mb_intr_06_1 = mb_intr_06;
  assign mdio_mdc = axi_ethernet_mdio_MDC;
  assign mdio_mdio_o = axi_ethernet_mdio_MDIO_O;
  assign mdio_mdio_t = axi_ethernet_mdio_MDIO_T;
  assign phy_clk_1_CLK_N = phy_clk_clk_n;
  assign phy_clk_1_CLK_P = phy_clk_clk_p;
  assign phy_rst_n[0] = axi_ethernet_phy_rst_n;
  assign phy_sd_1 = phy_sd;
  assign rx_data_0_n_1 = rx_data_0_n;
  assign rx_data_0_p_1 = rx_data_0_p;
  assign rx_data_1_n_1 = rx_data_1_n;
  assign rx_data_1_p_1 = rx_data_1_p;
  assign rx_data_2_n_1 = rx_data_2_n;
  assign rx_data_2_p_1 = rx_data_2_p;
  assign rx_data_3_n_1 = rx_data_3_n;
  assign rx_data_3_p_1 = rx_data_3_p;
  assign rx_ref_clk_0_1 = rx_ref_clk_0;
  assign rx_ref_clk_2_1 = rx_ref_clk_2;
  assign rx_sync_0 = axi_ad9371_rx_jesd_sync;
  assign rx_sync_2 = axi_ad9371_rx_os_jesd_sync;
  assign sgmii_txn = axi_ethernet_sgmii_TXN;
  assign sgmii_txp = axi_ethernet_sgmii_TXP;
  assign spi_clk_i_1 = spi_clk_i;
  assign spi_clk_o = axi_spi_sck_o;
  assign spi_csn_i_1 = spi_csn_i[7:0];
  assign spi_csn_o[7:0] = axi_spi_ss_o;
  assign spi_sdi_i_1 = spi_sdi_i;
  assign spi_sdo_i_1 = spi_sdo_i;
  assign spi_sdo_o = axi_spi_io0_o;
  assign sync_1 = tx_sync_0;
  assign sys_clk_1 = sys_clk;
  assign sys_rst_1 = sys_rst;
  assign sysref_1 = tx_sysref_0;
  assign sysref_2 = rx_sysref_0;
  assign sysref_3 = rx_sysref_2;
  assign tx_data_0_n = util_ad9371_xcvr_tx_0_n;
  assign tx_data_0_p = util_ad9371_xcvr_tx_0_p;
  assign tx_data_1_n = util_ad9371_xcvr_tx_1_n;
  assign tx_data_1_p = util_ad9371_xcvr_tx_1_p;
  assign tx_data_2_n = util_ad9371_xcvr_tx_2_n;
  assign tx_data_2_p = util_ad9371_xcvr_tx_2_p;
  assign tx_data_3_n = util_ad9371_xcvr_tx_3_n;
  assign tx_data_3_p = util_ad9371_xcvr_tx_3_p;
  assign tx_ref_clk_0_1 = tx_ref_clk_0;
  assign uart_sin_1 = uart_sin;
  assign uart_sout = axi_uart_tx;
  system_axi_ad9371_core_0 axi_ad9371_core
       (.adc_clk(axi_ad9371_rx_clkgen_clk_0),
        .adc_data_i0(axi_ad9371_core_adc_data_i0),
        .adc_data_i1(axi_ad9371_core_adc_data_i1),
        .adc_data_q0(axi_ad9371_core_adc_data_q0),
        .adc_data_q1(axi_ad9371_core_adc_data_q1),
        .adc_dovf(axi_ad9371_rx_dma_fifo_wr_overflow),
        .adc_dunf(1'b0),
        .adc_enable_i0(axi_ad9371_core_adc_enable_i0),
        .adc_enable_i1(axi_ad9371_core_adc_enable_i1),
        .adc_enable_q0(axi_ad9371_core_adc_enable_q0),
        .adc_enable_q1(axi_ad9371_core_adc_enable_q1),
        .adc_os_clk(axi_ad9371_rx_os_clkgen_clk_0),
        .adc_os_data_i0(axi_ad9371_core_adc_os_data_i0),
        .adc_os_data_q0(axi_ad9371_core_adc_os_data_q0),
        .adc_os_dovf(axi_ad9371_rx_os_dma_fifo_wr_overflow),
        .adc_os_dunf(1'b0),
        .adc_os_enable_i0(axi_ad9371_core_adc_os_enable_i0),
        .adc_os_enable_q0(axi_ad9371_core_adc_os_enable_q0),
        .adc_os_valid_i0(axi_ad9371_core_adc_os_valid_i0),
        .adc_os_valid_q0(axi_ad9371_core_adc_os_valid_q0),
        .adc_rx_data(axi_ad9371_rx_jesd_rx_data_tdata),
        .adc_rx_os_data(axi_ad9371_rx_os_jesd_rx_data_tdata),
        .adc_rx_os_sof(axi_ad9371_rx_os_jesd_rx_sof),
        .adc_rx_os_valid(1'b0),
        .adc_rx_sof(axi_ad9371_rx_jesd_rx_sof),
        .adc_rx_valid(1'b0),
        .adc_valid_i0(axi_ad9371_core_adc_valid_i0),
        .adc_valid_i1(axi_ad9371_core_adc_valid_i1),
        .adc_valid_q0(axi_ad9371_core_adc_valid_q0),
        .adc_valid_q1(axi_ad9371_core_adc_valid_q1),
        .dac_clk(axi_ad9371_tx_clkgen_clk_0),
        .dac_data_i0(util_ad9371_tx_upack_dac_data_0),
        .dac_data_i1(util_ad9371_tx_upack_dac_data_2),
        .dac_data_q0(util_ad9371_tx_upack_dac_data_1),
        .dac_data_q1(util_ad9371_tx_upack_dac_data_3),
        .dac_dovf(1'b0),
        .dac_dunf(axi_ad9371_dacfifo_dac_dunf),
        .dac_enable_i0(axi_ad9371_core_dac_enable_i0),
        .dac_enable_i1(axi_ad9371_core_dac_enable_i1),
        .dac_enable_q0(axi_ad9371_core_dac_enable_q0),
        .dac_enable_q1(axi_ad9371_core_dac_enable_q1),
        .dac_sync_in(1'b0),
        .dac_tx_data(tx_data_tdata_1),
        .dac_tx_ready(1'b0),
        .dac_valid_i0(axi_ad9371_core_dac_valid_i0),
        .dac_valid_i1(axi_ad9371_core_dac_valid_i1),
        .dac_valid_q0(axi_ad9371_core_dac_valid_q0),
        .dac_valid_q1(axi_ad9371_core_dac_valid_q1),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M09_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M09_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M09_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M09_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M09_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M09_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M09_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M09_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M09_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M09_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M09_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M09_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M09_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M09_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M09_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M09_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M09_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M09_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M09_AXI_WVALID));
  system_axi_ad9371_dacfifo_0 axi_ad9371_dacfifo
       (.bypass(dac_fifo_bypass_1),
        .dac_clk(axi_ad9371_tx_clkgen_clk_0),
        .dac_data(axi_ad9371_dacfifo_dac_data),
        .dac_dunf(axi_ad9371_dacfifo_dac_dunf),
        .dac_rst(axi_ad9371_tx_jesd_rstgen_peripheral_reset),
        .dac_valid(util_ad9371_tx_upack_dac_valid),
        .dma_clk(sys_dma_clk),
        .dma_data(axi_ad9371_tx_dma_m_axis_data),
        .dma_ready(axi_ad9371_dacfifo_dma_ready),
        .dma_rst(sys_dma_reset),
        .dma_valid(axi_ad9371_tx_dma_m_axis_valid),
        .dma_xfer_last(axi_ad9371_tx_dma_m_axis_last),
        .dma_xfer_req(axi_ad9371_tx_dma_m_axis_xfer_req));
  system_axi_ad9371_rx_clkgen_0 axi_ad9371_rx_clkgen
       (.clk(util_ad9371_xcvr_rx_out_clk_0),
        .clk_0(axi_ad9371_rx_clkgen_clk_0),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M15_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M15_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M15_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M15_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M15_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M15_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M15_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M15_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M15_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M15_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M15_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M15_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M15_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M15_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M15_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M15_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M15_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M15_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M15_AXI_WVALID));
  system_axi_ad9371_rx_dma_0 axi_ad9371_rx_dma
       (.fifo_wr_clk(axi_ad9371_rx_clkgen_clk_0),
        .fifo_wr_din(util_ad9371_rx_cpack_adc_data),
        .fifo_wr_en(util_ad9371_rx_cpack_adc_valid),
        .fifo_wr_overflow(axi_ad9371_rx_dma_fifo_wr_overflow),
        .fifo_wr_sync(util_ad9371_rx_cpack_adc_sync),
        .irq(axi_ad9371_rx_dma_irq),
        .m_dest_axi_aclk(sys_dma_clk),
        .m_dest_axi_aresetn(sys_dma_resetn),
        .m_dest_axi_awaddr(S08_AXI_1_AWADDR),
        .m_dest_axi_awburst(S08_AXI_1_AWBURST),
        .m_dest_axi_awcache(S08_AXI_1_AWCACHE),
        .m_dest_axi_awlen(S08_AXI_1_AWLEN),
        .m_dest_axi_awprot(S08_AXI_1_AWPROT),
        .m_dest_axi_awready(S08_AXI_1_AWREADY),
        .m_dest_axi_awsize(S08_AXI_1_AWSIZE),
        .m_dest_axi_awvalid(S08_AXI_1_AWVALID),
        .m_dest_axi_bready(S08_AXI_1_BREADY),
        .m_dest_axi_bresp(S08_AXI_1_BRESP),
        .m_dest_axi_bvalid(S08_AXI_1_BVALID),
        .m_dest_axi_wdata(S08_AXI_1_WDATA),
        .m_dest_axi_wlast(S08_AXI_1_WLAST),
        .m_dest_axi_wready(S08_AXI_1_WREADY),
        .m_dest_axi_wstrb(S08_AXI_1_WSTRB),
        .m_dest_axi_wvalid(S08_AXI_1_WVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M17_AXI_ARADDR[11:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M17_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M17_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M17_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M17_AXI_AWADDR[11:0]),
        .s_axi_awprot(axi_cpu_interconnect_M17_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M17_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M17_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M17_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M17_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M17_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M17_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M17_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M17_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M17_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M17_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M17_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M17_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M17_AXI_WVALID));
  axi_ad9371_rx_jesd_imp_GUTUBY axi_ad9371_rx_jesd
       (.device_clk(axi_ad9371_rx_clkgen_clk_0),
        .irq(axi_ad9371_rx_jesd_irq),
        .phy_en_char_align(axi_ad9371_rx_jesd_phy_en_char_align),
        .rx_data_tdata(axi_ad9371_rx_jesd_rx_data_tdata),
        .rx_phy0_rxcharisk(util_ad9371_xcvr_rx_0_rxcharisk),
        .rx_phy0_rxdata(util_ad9371_xcvr_rx_0_rxdata),
        .rx_phy0_rxdisperr(util_ad9371_xcvr_rx_0_rxdisperr),
        .rx_phy0_rxnotintable(util_ad9371_xcvr_rx_0_rxnotintable),
        .rx_phy1_rxcharisk(util_ad9371_xcvr_rx_1_rxcharisk),
        .rx_phy1_rxdata(util_ad9371_xcvr_rx_1_rxdata),
        .rx_phy1_rxdisperr(util_ad9371_xcvr_rx_1_rxdisperr),
        .rx_phy1_rxnotintable(util_ad9371_xcvr_rx_1_rxnotintable),
        .rx_sof(axi_ad9371_rx_jesd_rx_sof),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M16_AXI_ARADDR),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M16_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M16_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M16_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M16_AXI_AWADDR),
        .s_axi_awprot(axi_cpu_interconnect_M16_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M16_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M16_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M16_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M16_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M16_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M16_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M16_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M16_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M16_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M16_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M16_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M16_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M16_AXI_WVALID),
        .sync(axi_ad9371_rx_jesd_sync),
        .sysref(sysref_2));
  system_axi_ad9371_rx_jesd_rstgen_0 axi_ad9371_rx_jesd_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(sys_cpu_resetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(axi_ad9371_rx_jesd_rstgen_peripheral_reset),
        .slowest_sync_clk(axi_ad9371_rx_clkgen_clk_0));
  system_axi_ad9371_rx_os_clkgen_0 axi_ad9371_rx_os_clkgen
       (.clk(util_ad9371_xcvr_rx_out_clk_2),
        .clk_0(axi_ad9371_rx_os_clkgen_clk_0),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M19_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M19_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M19_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M19_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M19_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M19_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M19_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M19_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M19_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M19_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M19_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M19_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M19_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M19_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M19_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M19_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M19_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M19_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M19_AXI_WVALID));
  system_axi_ad9371_rx_os_dma_0 axi_ad9371_rx_os_dma
       (.fifo_wr_clk(axi_ad9371_rx_os_clkgen_clk_0),
        .fifo_wr_din(util_ad9371_rx_os_cpack_adc_data),
        .fifo_wr_en(util_ad9371_rx_os_cpack_adc_valid),
        .fifo_wr_overflow(axi_ad9371_rx_os_dma_fifo_wr_overflow),
        .fifo_wr_sync(util_ad9371_rx_os_cpack_adc_sync),
        .irq(axi_ad9371_rx_os_dma_irq),
        .m_dest_axi_aclk(sys_dma_clk),
        .m_dest_axi_aresetn(sys_dma_resetn),
        .m_dest_axi_awaddr(S09_AXI_1_AWADDR),
        .m_dest_axi_awburst(S09_AXI_1_AWBURST),
        .m_dest_axi_awcache(S09_AXI_1_AWCACHE),
        .m_dest_axi_awlen(S09_AXI_1_AWLEN),
        .m_dest_axi_awprot(S09_AXI_1_AWPROT),
        .m_dest_axi_awready(S09_AXI_1_AWREADY),
        .m_dest_axi_awsize(S09_AXI_1_AWSIZE),
        .m_dest_axi_awvalid(S09_AXI_1_AWVALID),
        .m_dest_axi_bready(S09_AXI_1_BREADY),
        .m_dest_axi_bresp(S09_AXI_1_BRESP),
        .m_dest_axi_bvalid(S09_AXI_1_BVALID),
        .m_dest_axi_wdata(S09_AXI_1_WDATA),
        .m_dest_axi_wlast(S09_AXI_1_WLAST),
        .m_dest_axi_wready(S09_AXI_1_WREADY),
        .m_dest_axi_wstrb(S09_AXI_1_WSTRB),
        .m_dest_axi_wvalid(S09_AXI_1_WVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M21_AXI_ARADDR[11:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M21_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M21_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M21_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M21_AXI_AWADDR[11:0]),
        .s_axi_awprot(axi_cpu_interconnect_M21_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M21_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M21_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M21_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M21_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M21_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M21_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M21_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M21_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M21_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M21_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M21_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M21_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M21_AXI_WVALID));
  axi_ad9371_rx_os_jesd_imp_73WW27 axi_ad9371_rx_os_jesd
       (.device_clk(axi_ad9371_rx_os_clkgen_clk_0),
        .irq(axi_ad9371_rx_os_jesd_irq),
        .phy_en_char_align(axi_ad9371_rx_os_jesd_phy_en_char_align),
        .rx_data_tdata(axi_ad9371_rx_os_jesd_rx_data_tdata),
        .rx_phy0_rxcharisk(util_ad9371_xcvr_rx_2_rxcharisk),
        .rx_phy0_rxdata(util_ad9371_xcvr_rx_2_rxdata),
        .rx_phy0_rxdisperr(util_ad9371_xcvr_rx_2_rxdisperr),
        .rx_phy0_rxnotintable(util_ad9371_xcvr_rx_2_rxnotintable),
        .rx_phy1_rxcharisk(util_ad9371_xcvr_rx_3_rxcharisk),
        .rx_phy1_rxdata(util_ad9371_xcvr_rx_3_rxdata),
        .rx_phy1_rxdisperr(util_ad9371_xcvr_rx_3_rxdisperr),
        .rx_phy1_rxnotintable(util_ad9371_xcvr_rx_3_rxnotintable),
        .rx_sof(axi_ad9371_rx_os_jesd_rx_sof),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M20_AXI_ARADDR),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M20_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M20_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M20_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M20_AXI_AWADDR),
        .s_axi_awprot(axi_cpu_interconnect_M20_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M20_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M20_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M20_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M20_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M20_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M20_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M20_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M20_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M20_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M20_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M20_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M20_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M20_AXI_WVALID),
        .sync(axi_ad9371_rx_os_jesd_sync),
        .sysref(sysref_3));
  system_axi_ad9371_rx_os_jesd_rstgen_0 axi_ad9371_rx_os_jesd_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(sys_cpu_resetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(axi_ad9371_rx_os_jesd_rstgen_peripheral_reset),
        .slowest_sync_clk(axi_ad9371_rx_os_clkgen_clk_0));
  system_axi_ad9371_rx_os_xcvr_0 axi_ad9371_rx_os_xcvr
       (.m_axi_araddr(S06_AXI_1_ARADDR),
        .m_axi_arprot(S06_AXI_1_ARPROT),
        .m_axi_arready(S06_AXI_1_ARREADY),
        .m_axi_arvalid(S06_AXI_1_ARVALID),
        .m_axi_awaddr(S06_AXI_1_AWADDR),
        .m_axi_awprot(S06_AXI_1_AWPROT),
        .m_axi_awready(S06_AXI_1_AWREADY),
        .m_axi_awvalid(S06_AXI_1_AWVALID),
        .m_axi_bready(S06_AXI_1_BREADY),
        .m_axi_bresp(S06_AXI_1_BRESP),
        .m_axi_bvalid(S06_AXI_1_BVALID),
        .m_axi_rdata(S06_AXI_1_RDATA),
        .m_axi_rready(S06_AXI_1_RREADY),
        .m_axi_rresp(S06_AXI_1_RRESP),
        .m_axi_rvalid(S06_AXI_1_RVALID),
        .m_axi_wdata(S06_AXI_1_WDATA),
        .m_axi_wready(S06_AXI_1_WREADY),
        .m_axi_wstrb(S06_AXI_1_WSTRB),
        .m_axi_wvalid(S06_AXI_1_WVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M18_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M18_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M18_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M18_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M18_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M18_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M18_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M18_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M18_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M18_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M18_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M18_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M18_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M18_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M18_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M18_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M18_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M18_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M18_AXI_WVALID),
        .up_ch_addr_0(axi_ad9371_rx_os_xcvr_up_ch_0_addr),
        .up_ch_addr_1(axi_ad9371_rx_os_xcvr_up_ch_1_addr),
        .up_ch_enb_0(axi_ad9371_rx_os_xcvr_up_ch_0_enb),
        .up_ch_enb_1(axi_ad9371_rx_os_xcvr_up_ch_1_enb),
        .up_ch_lpm_dfe_n_0(axi_ad9371_rx_os_xcvr_up_ch_0_lpm_dfe_n),
        .up_ch_lpm_dfe_n_1(axi_ad9371_rx_os_xcvr_up_ch_1_lpm_dfe_n),
        .up_ch_out_clk_sel_0(axi_ad9371_rx_os_xcvr_up_ch_0_out_clk_sel),
        .up_ch_out_clk_sel_1(axi_ad9371_rx_os_xcvr_up_ch_1_out_clk_sel),
        .up_ch_pll_locked_0(axi_ad9371_rx_os_xcvr_up_ch_0_pll_locked),
        .up_ch_pll_locked_1(axi_ad9371_rx_os_xcvr_up_ch_1_pll_locked),
        .up_ch_rate_0(axi_ad9371_rx_os_xcvr_up_ch_0_rate),
        .up_ch_rate_1(axi_ad9371_rx_os_xcvr_up_ch_1_rate),
        .up_ch_rdata_0(axi_ad9371_rx_os_xcvr_up_ch_0_rdata),
        .up_ch_rdata_1(axi_ad9371_rx_os_xcvr_up_ch_1_rdata),
        .up_ch_ready_0(axi_ad9371_rx_os_xcvr_up_ch_0_ready),
        .up_ch_ready_1(axi_ad9371_rx_os_xcvr_up_ch_1_ready),
        .up_ch_rst_0(axi_ad9371_rx_os_xcvr_up_ch_0_rst),
        .up_ch_rst_1(axi_ad9371_rx_os_xcvr_up_ch_1_rst),
        .up_ch_rst_done_0(axi_ad9371_rx_os_xcvr_up_ch_0_rst_done),
        .up_ch_rst_done_1(axi_ad9371_rx_os_xcvr_up_ch_1_rst_done),
        .up_ch_sys_clk_sel_0(axi_ad9371_rx_os_xcvr_up_ch_0_sys_clk_sel),
        .up_ch_sys_clk_sel_1(axi_ad9371_rx_os_xcvr_up_ch_1_sys_clk_sel),
        .up_ch_user_ready_0(axi_ad9371_rx_os_xcvr_up_ch_0_user_ready),
        .up_ch_user_ready_1(axi_ad9371_rx_os_xcvr_up_ch_1_user_ready),
        .up_ch_wdata_0(axi_ad9371_rx_os_xcvr_up_ch_0_wdata),
        .up_ch_wdata_1(axi_ad9371_rx_os_xcvr_up_ch_1_wdata),
        .up_ch_wr_0(axi_ad9371_rx_os_xcvr_up_ch_0_wr),
        .up_ch_wr_1(axi_ad9371_rx_os_xcvr_up_ch_1_wr),
        .up_es_addr_0(axi_ad9371_rx_os_xcvr_up_es_0_addr),
        .up_es_addr_1(axi_ad9371_rx_os_xcvr_up_es_1_addr),
        .up_es_enb_0(axi_ad9371_rx_os_xcvr_up_es_0_enb),
        .up_es_enb_1(axi_ad9371_rx_os_xcvr_up_es_1_enb),
        .up_es_rdata_0(axi_ad9371_rx_os_xcvr_up_es_0_rdata),
        .up_es_rdata_1(axi_ad9371_rx_os_xcvr_up_es_1_rdata),
        .up_es_ready_0(axi_ad9371_rx_os_xcvr_up_es_0_ready),
        .up_es_ready_1(axi_ad9371_rx_os_xcvr_up_es_1_ready),
        .up_es_wdata_0(axi_ad9371_rx_os_xcvr_up_es_0_wdata),
        .up_es_wdata_1(axi_ad9371_rx_os_xcvr_up_es_1_wdata),
        .up_es_wr_0(axi_ad9371_rx_os_xcvr_up_es_0_wr),
        .up_es_wr_1(axi_ad9371_rx_os_xcvr_up_es_1_wr),
        .up_pll_rst(axi_ad9371_rx_os_xcvr_up_pll_rst));
  system_axi_ad9371_rx_xcvr_0 axi_ad9371_rx_xcvr
       (.m_axi_araddr(S05_AXI_1_ARADDR),
        .m_axi_arprot(S05_AXI_1_ARPROT),
        .m_axi_arready(S05_AXI_1_ARREADY),
        .m_axi_arvalid(S05_AXI_1_ARVALID),
        .m_axi_awaddr(S05_AXI_1_AWADDR),
        .m_axi_awprot(S05_AXI_1_AWPROT),
        .m_axi_awready(S05_AXI_1_AWREADY),
        .m_axi_awvalid(S05_AXI_1_AWVALID),
        .m_axi_bready(S05_AXI_1_BREADY),
        .m_axi_bresp(S05_AXI_1_BRESP),
        .m_axi_bvalid(S05_AXI_1_BVALID),
        .m_axi_rdata(S05_AXI_1_RDATA),
        .m_axi_rready(S05_AXI_1_RREADY),
        .m_axi_rresp(S05_AXI_1_RRESP),
        .m_axi_rvalid(S05_AXI_1_RVALID),
        .m_axi_wdata(S05_AXI_1_WDATA),
        .m_axi_wready(S05_AXI_1_WREADY),
        .m_axi_wstrb(S05_AXI_1_WSTRB),
        .m_axi_wvalid(S05_AXI_1_WVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M14_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M14_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M14_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M14_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M14_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M14_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M14_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M14_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M14_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M14_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M14_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M14_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M14_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M14_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M14_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M14_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M14_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M14_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M14_AXI_WVALID),
        .up_ch_addr_0(axi_ad9371_rx_xcvr_up_ch_0_addr),
        .up_ch_addr_1(axi_ad9371_rx_xcvr_up_ch_1_addr),
        .up_ch_enb_0(axi_ad9371_rx_xcvr_up_ch_0_enb),
        .up_ch_enb_1(axi_ad9371_rx_xcvr_up_ch_1_enb),
        .up_ch_lpm_dfe_n_0(axi_ad9371_rx_xcvr_up_ch_0_lpm_dfe_n),
        .up_ch_lpm_dfe_n_1(axi_ad9371_rx_xcvr_up_ch_1_lpm_dfe_n),
        .up_ch_out_clk_sel_0(axi_ad9371_rx_xcvr_up_ch_0_out_clk_sel),
        .up_ch_out_clk_sel_1(axi_ad9371_rx_xcvr_up_ch_1_out_clk_sel),
        .up_ch_pll_locked_0(axi_ad9371_rx_xcvr_up_ch_0_pll_locked),
        .up_ch_pll_locked_1(axi_ad9371_rx_xcvr_up_ch_1_pll_locked),
        .up_ch_rate_0(axi_ad9371_rx_xcvr_up_ch_0_rate),
        .up_ch_rate_1(axi_ad9371_rx_xcvr_up_ch_1_rate),
        .up_ch_rdata_0(axi_ad9371_rx_xcvr_up_ch_0_rdata),
        .up_ch_rdata_1(axi_ad9371_rx_xcvr_up_ch_1_rdata),
        .up_ch_ready_0(axi_ad9371_rx_xcvr_up_ch_0_ready),
        .up_ch_ready_1(axi_ad9371_rx_xcvr_up_ch_1_ready),
        .up_ch_rst_0(axi_ad9371_rx_xcvr_up_ch_0_rst),
        .up_ch_rst_1(axi_ad9371_rx_xcvr_up_ch_1_rst),
        .up_ch_rst_done_0(axi_ad9371_rx_xcvr_up_ch_0_rst_done),
        .up_ch_rst_done_1(axi_ad9371_rx_xcvr_up_ch_1_rst_done),
        .up_ch_sys_clk_sel_0(axi_ad9371_rx_xcvr_up_ch_0_sys_clk_sel),
        .up_ch_sys_clk_sel_1(axi_ad9371_rx_xcvr_up_ch_1_sys_clk_sel),
        .up_ch_user_ready_0(axi_ad9371_rx_xcvr_up_ch_0_user_ready),
        .up_ch_user_ready_1(axi_ad9371_rx_xcvr_up_ch_1_user_ready),
        .up_ch_wdata_0(axi_ad9371_rx_xcvr_up_ch_0_wdata),
        .up_ch_wdata_1(axi_ad9371_rx_xcvr_up_ch_1_wdata),
        .up_ch_wr_0(axi_ad9371_rx_xcvr_up_ch_0_wr),
        .up_ch_wr_1(axi_ad9371_rx_xcvr_up_ch_1_wr),
        .up_es_addr_0(axi_ad9371_rx_xcvr_up_es_0_addr),
        .up_es_addr_1(axi_ad9371_rx_xcvr_up_es_1_addr),
        .up_es_enb_0(axi_ad9371_rx_xcvr_up_es_0_enb),
        .up_es_enb_1(axi_ad9371_rx_xcvr_up_es_1_enb),
        .up_es_rdata_0(axi_ad9371_rx_xcvr_up_es_0_rdata),
        .up_es_rdata_1(axi_ad9371_rx_xcvr_up_es_1_rdata),
        .up_es_ready_0(axi_ad9371_rx_xcvr_up_es_0_ready),
        .up_es_ready_1(axi_ad9371_rx_xcvr_up_es_1_ready),
        .up_es_wdata_0(axi_ad9371_rx_xcvr_up_es_0_wdata),
        .up_es_wdata_1(axi_ad9371_rx_xcvr_up_es_1_wdata),
        .up_es_wr_0(axi_ad9371_rx_xcvr_up_es_0_wr),
        .up_es_wr_1(axi_ad9371_rx_xcvr_up_es_1_wr),
        .up_pll_rst(axi_ad9371_rx_xcvr_up_pll_rst));
  system_axi_ad9371_tx_clkgen_0 axi_ad9371_tx_clkgen
       (.clk(util_ad9371_xcvr_tx_out_clk_0),
        .clk_0(axi_ad9371_tx_clkgen_clk_0),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M11_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M11_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M11_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M11_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M11_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M11_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M11_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M11_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M11_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M11_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M11_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M11_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M11_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M11_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M11_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M11_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M11_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M11_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M11_AXI_WVALID));
  system_axi_ad9371_tx_dma_0 axi_ad9371_tx_dma
       (.irq(axi_ad9371_tx_dma_irq),
        .m_axis_aclk(sys_dma_clk),
        .m_axis_data(axi_ad9371_tx_dma_m_axis_data),
        .m_axis_last(axi_ad9371_tx_dma_m_axis_last),
        .m_axis_ready(axi_ad9371_dacfifo_dma_ready),
        .m_axis_valid(axi_ad9371_tx_dma_m_axis_valid),
        .m_axis_xfer_req(axi_ad9371_tx_dma_m_axis_xfer_req),
        .m_src_axi_aclk(sys_dma_clk),
        .m_src_axi_araddr(S07_AXI_1_ARADDR),
        .m_src_axi_arburst(S07_AXI_1_ARBURST),
        .m_src_axi_arcache(S07_AXI_1_ARCACHE),
        .m_src_axi_aresetn(sys_dma_resetn),
        .m_src_axi_arlen(S07_AXI_1_ARLEN),
        .m_src_axi_arprot(S07_AXI_1_ARPROT),
        .m_src_axi_arready(S07_AXI_1_ARREADY),
        .m_src_axi_arsize(S07_AXI_1_ARSIZE),
        .m_src_axi_arvalid(S07_AXI_1_ARVALID),
        .m_src_axi_rdata(S07_AXI_1_RDATA),
        .m_src_axi_rready(S07_AXI_1_RREADY),
        .m_src_axi_rresp(S07_AXI_1_RRESP),
        .m_src_axi_rvalid(S07_AXI_1_RVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M13_AXI_ARADDR[11:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M13_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M13_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M13_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M13_AXI_AWADDR[11:0]),
        .s_axi_awprot(axi_cpu_interconnect_M13_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M13_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M13_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M13_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M13_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M13_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M13_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M13_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M13_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M13_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M13_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M13_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M13_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M13_AXI_WVALID));
  axi_ad9371_tx_jesd_imp_17BPCLV axi_ad9371_tx_jesd
       (.device_clk(axi_ad9371_tx_clkgen_clk_0),
        .irq(axi_ad9371_tx_jesd_irq),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M12_AXI_ARADDR),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M12_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M12_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M12_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M12_AXI_AWADDR),
        .s_axi_awprot(axi_cpu_interconnect_M12_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M12_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M12_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M12_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M12_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M12_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M12_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M12_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M12_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M12_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M12_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M12_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M12_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M12_AXI_WVALID),
        .sync(sync_1),
        .sysref(sysref_1),
        .tx_data_tdata(tx_data_tdata_1),
        .tx_data_tvalid(1'b0),
        .tx_phy0_txcharisk(axi_ad9371_tx_jesd_tx_phy0_txcharisk),
        .tx_phy0_txdata(axi_ad9371_tx_jesd_tx_phy0_txdata),
        .tx_phy1_txcharisk(axi_ad9371_tx_jesd_tx_phy1_txcharisk),
        .tx_phy1_txdata(axi_ad9371_tx_jesd_tx_phy1_txdata),
        .tx_phy2_txcharisk(axi_ad9371_tx_jesd_tx_phy2_txcharisk),
        .tx_phy2_txdata(axi_ad9371_tx_jesd_tx_phy2_txdata),
        .tx_phy3_txcharisk(axi_ad9371_tx_jesd_tx_phy3_txcharisk),
        .tx_phy3_txdata(axi_ad9371_tx_jesd_tx_phy3_txdata));
  system_axi_ad9371_tx_jesd_rstgen_0 axi_ad9371_tx_jesd_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(sys_cpu_resetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(axi_ad9371_tx_jesd_rstgen_peripheral_reset),
        .slowest_sync_clk(axi_ad9371_tx_clkgen_clk_0));
  system_axi_ad9371_tx_xcvr_0 axi_ad9371_tx_xcvr
       (.s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M10_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M10_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M10_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M10_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M10_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M10_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M10_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M10_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M10_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M10_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M10_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M10_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M10_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M10_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M10_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M10_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M10_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M10_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M10_AXI_WVALID),
        .up_ch_addr_0(axi_ad9371_tx_xcvr_up_ch_0_addr),
        .up_ch_addr_1(axi_ad9371_tx_xcvr_up_ch_1_addr),
        .up_ch_addr_2(axi_ad9371_tx_xcvr_up_ch_2_addr),
        .up_ch_addr_3(axi_ad9371_tx_xcvr_up_ch_3_addr),
        .up_ch_enb_0(axi_ad9371_tx_xcvr_up_ch_0_enb),
        .up_ch_enb_1(axi_ad9371_tx_xcvr_up_ch_1_enb),
        .up_ch_enb_2(axi_ad9371_tx_xcvr_up_ch_2_enb),
        .up_ch_enb_3(axi_ad9371_tx_xcvr_up_ch_3_enb),
        .up_ch_lpm_dfe_n_0(axi_ad9371_tx_xcvr_up_ch_0_lpm_dfe_n),
        .up_ch_lpm_dfe_n_1(axi_ad9371_tx_xcvr_up_ch_1_lpm_dfe_n),
        .up_ch_lpm_dfe_n_2(axi_ad9371_tx_xcvr_up_ch_2_lpm_dfe_n),
        .up_ch_lpm_dfe_n_3(axi_ad9371_tx_xcvr_up_ch_3_lpm_dfe_n),
        .up_ch_out_clk_sel_0(axi_ad9371_tx_xcvr_up_ch_0_out_clk_sel),
        .up_ch_out_clk_sel_1(axi_ad9371_tx_xcvr_up_ch_1_out_clk_sel),
        .up_ch_out_clk_sel_2(axi_ad9371_tx_xcvr_up_ch_2_out_clk_sel),
        .up_ch_out_clk_sel_3(axi_ad9371_tx_xcvr_up_ch_3_out_clk_sel),
        .up_ch_pll_locked_0(axi_ad9371_tx_xcvr_up_ch_0_pll_locked),
        .up_ch_pll_locked_1(axi_ad9371_tx_xcvr_up_ch_1_pll_locked),
        .up_ch_pll_locked_2(axi_ad9371_tx_xcvr_up_ch_2_pll_locked),
        .up_ch_pll_locked_3(axi_ad9371_tx_xcvr_up_ch_3_pll_locked),
        .up_ch_rate_0(axi_ad9371_tx_xcvr_up_ch_0_rate),
        .up_ch_rate_1(axi_ad9371_tx_xcvr_up_ch_1_rate),
        .up_ch_rate_2(axi_ad9371_tx_xcvr_up_ch_2_rate),
        .up_ch_rate_3(axi_ad9371_tx_xcvr_up_ch_3_rate),
        .up_ch_rdata_0(axi_ad9371_tx_xcvr_up_ch_0_rdata),
        .up_ch_rdata_1(axi_ad9371_tx_xcvr_up_ch_1_rdata),
        .up_ch_rdata_2(axi_ad9371_tx_xcvr_up_ch_2_rdata),
        .up_ch_rdata_3(axi_ad9371_tx_xcvr_up_ch_3_rdata),
        .up_ch_ready_0(axi_ad9371_tx_xcvr_up_ch_0_ready),
        .up_ch_ready_1(axi_ad9371_tx_xcvr_up_ch_1_ready),
        .up_ch_ready_2(axi_ad9371_tx_xcvr_up_ch_2_ready),
        .up_ch_ready_3(axi_ad9371_tx_xcvr_up_ch_3_ready),
        .up_ch_rst_0(axi_ad9371_tx_xcvr_up_ch_0_rst),
        .up_ch_rst_1(axi_ad9371_tx_xcvr_up_ch_1_rst),
        .up_ch_rst_2(axi_ad9371_tx_xcvr_up_ch_2_rst),
        .up_ch_rst_3(axi_ad9371_tx_xcvr_up_ch_3_rst),
        .up_ch_rst_done_0(axi_ad9371_tx_xcvr_up_ch_0_rst_done),
        .up_ch_rst_done_1(axi_ad9371_tx_xcvr_up_ch_1_rst_done),
        .up_ch_rst_done_2(axi_ad9371_tx_xcvr_up_ch_2_rst_done),
        .up_ch_rst_done_3(axi_ad9371_tx_xcvr_up_ch_3_rst_done),
        .up_ch_sys_clk_sel_0(axi_ad9371_tx_xcvr_up_ch_0_sys_clk_sel),
        .up_ch_sys_clk_sel_1(axi_ad9371_tx_xcvr_up_ch_1_sys_clk_sel),
        .up_ch_sys_clk_sel_2(axi_ad9371_tx_xcvr_up_ch_2_sys_clk_sel),
        .up_ch_sys_clk_sel_3(axi_ad9371_tx_xcvr_up_ch_3_sys_clk_sel),
        .up_ch_user_ready_0(axi_ad9371_tx_xcvr_up_ch_0_user_ready),
        .up_ch_user_ready_1(axi_ad9371_tx_xcvr_up_ch_1_user_ready),
        .up_ch_user_ready_2(axi_ad9371_tx_xcvr_up_ch_2_user_ready),
        .up_ch_user_ready_3(axi_ad9371_tx_xcvr_up_ch_3_user_ready),
        .up_ch_wdata_0(axi_ad9371_tx_xcvr_up_ch_0_wdata),
        .up_ch_wdata_1(axi_ad9371_tx_xcvr_up_ch_1_wdata),
        .up_ch_wdata_2(axi_ad9371_tx_xcvr_up_ch_2_wdata),
        .up_ch_wdata_3(axi_ad9371_tx_xcvr_up_ch_3_wdata),
        .up_ch_wr_0(axi_ad9371_tx_xcvr_up_ch_0_wr),
        .up_ch_wr_1(axi_ad9371_tx_xcvr_up_ch_1_wr),
        .up_ch_wr_2(axi_ad9371_tx_xcvr_up_ch_2_wr),
        .up_ch_wr_3(axi_ad9371_tx_xcvr_up_ch_3_wr),
        .up_cm_addr_0(axi_ad9371_tx_xcvr_up_cm_0_addr),
        .up_cm_enb_0(axi_ad9371_tx_xcvr_up_cm_0_enb),
        .up_cm_rdata_0(axi_ad9371_tx_xcvr_up_cm_0_rdata),
        .up_cm_ready_0(axi_ad9371_tx_xcvr_up_cm_0_ready),
        .up_cm_wdata_0(axi_ad9371_tx_xcvr_up_cm_0_wdata),
        .up_cm_wr_0(axi_ad9371_tx_xcvr_up_cm_0_wr),
        .up_pll_rst(axi_ad9371_tx_xcvr_up_pll_rst));
  system_axi_cpu_interconnect_0 axi_cpu_interconnect
       (.ACLK(sys_cpu_clk),
        .ARESETN(sys_cpu_resetn),
        .M00_ACLK(sys_cpu_clk),
        .M00_ARESETN(sys_cpu_resetn),
        .M00_AXI_araddr(axi_cpu_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_cpu_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_cpu_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_cpu_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_cpu_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_cpu_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_cpu_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_cpu_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_cpu_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_cpu_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(axi_cpu_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_cpu_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_cpu_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_cpu_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(axi_cpu_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_cpu_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_cpu_interconnect_M00_AXI_WVALID),
        .M01_ACLK(sys_cpu_clk),
        .M01_ARESETN(sys_cpu_resetn),
        .M01_AXI_araddr(axi_cpu_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_cpu_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_cpu_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_cpu_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_cpu_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_cpu_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_cpu_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_cpu_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_cpu_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_cpu_interconnect_M01_AXI_RDATA),
        .M01_AXI_rready(axi_cpu_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_cpu_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_cpu_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_cpu_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(axi_cpu_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_cpu_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_cpu_interconnect_M01_AXI_WVALID),
        .M02_ACLK(sys_cpu_clk),
        .M02_ARESETN(sys_cpu_resetn),
        .M02_AXI_araddr(axi_cpu_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_cpu_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_cpu_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_cpu_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_cpu_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_cpu_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_cpu_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_cpu_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_cpu_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_cpu_interconnect_M02_AXI_RDATA),
        .M02_AXI_rready(axi_cpu_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_cpu_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_cpu_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_cpu_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(axi_cpu_interconnect_M02_AXI_WREADY),
        .M02_AXI_wvalid(axi_cpu_interconnect_M02_AXI_WVALID),
        .M03_ACLK(sys_cpu_clk),
        .M03_ARESETN(sys_cpu_resetn),
        .M03_AXI_araddr(axi_cpu_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_cpu_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_cpu_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_cpu_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_cpu_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_cpu_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_cpu_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_cpu_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_cpu_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_cpu_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(axi_cpu_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_cpu_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_cpu_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_cpu_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(axi_cpu_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_cpu_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_cpu_interconnect_M03_AXI_WVALID),
        .M04_ACLK(sys_cpu_clk),
        .M04_ARESETN(sys_cpu_resetn),
        .M04_AXI_araddr(axi_cpu_interconnect_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_cpu_interconnect_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_cpu_interconnect_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_cpu_interconnect_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_cpu_interconnect_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_cpu_interconnect_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_cpu_interconnect_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_cpu_interconnect_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_cpu_interconnect_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_cpu_interconnect_M04_AXI_RDATA),
        .M04_AXI_rready(axi_cpu_interconnect_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_cpu_interconnect_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_cpu_interconnect_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_cpu_interconnect_M04_AXI_WDATA),
        .M04_AXI_wready(axi_cpu_interconnect_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_cpu_interconnect_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_cpu_interconnect_M04_AXI_WVALID),
        .M05_ACLK(sys_cpu_clk),
        .M05_ARESETN(sys_cpu_resetn),
        .M05_AXI_araddr(axi_cpu_interconnect_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_cpu_interconnect_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_cpu_interconnect_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_cpu_interconnect_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_cpu_interconnect_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_cpu_interconnect_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_cpu_interconnect_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_cpu_interconnect_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_cpu_interconnect_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_cpu_interconnect_M05_AXI_RDATA),
        .M05_AXI_rready(axi_cpu_interconnect_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_cpu_interconnect_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_cpu_interconnect_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_cpu_interconnect_M05_AXI_WDATA),
        .M05_AXI_wready(axi_cpu_interconnect_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_cpu_interconnect_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_cpu_interconnect_M05_AXI_WVALID),
        .M06_ACLK(sys_cpu_clk),
        .M06_ARESETN(sys_cpu_resetn),
        .M06_AXI_araddr(axi_cpu_interconnect_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_cpu_interconnect_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_cpu_interconnect_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_cpu_interconnect_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_cpu_interconnect_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_cpu_interconnect_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_cpu_interconnect_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_cpu_interconnect_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_cpu_interconnect_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_cpu_interconnect_M06_AXI_RDATA),
        .M06_AXI_rready(axi_cpu_interconnect_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_cpu_interconnect_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_cpu_interconnect_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_cpu_interconnect_M06_AXI_WDATA),
        .M06_AXI_wready(axi_cpu_interconnect_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_cpu_interconnect_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_cpu_interconnect_M06_AXI_WVALID),
        .M07_ACLK(sys_cpu_clk),
        .M07_ARESETN(sys_cpu_resetn),
        .M07_AXI_araddr(axi_cpu_interconnect_M07_AXI_ARADDR),
        .M07_AXI_arready(axi_cpu_interconnect_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_cpu_interconnect_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_cpu_interconnect_M07_AXI_AWADDR),
        .M07_AXI_awready(axi_cpu_interconnect_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_cpu_interconnect_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_cpu_interconnect_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_cpu_interconnect_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_cpu_interconnect_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_cpu_interconnect_M07_AXI_RDATA),
        .M07_AXI_rready(axi_cpu_interconnect_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_cpu_interconnect_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_cpu_interconnect_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_cpu_interconnect_M07_AXI_WDATA),
        .M07_AXI_wready(axi_cpu_interconnect_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_cpu_interconnect_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_cpu_interconnect_M07_AXI_WVALID),
        .M08_ACLK(sys_cpu_clk),
        .M08_ARESETN(sys_cpu_resetn),
        .M08_AXI_araddr(axi_cpu_interconnect_M08_AXI_ARADDR),
        .M08_AXI_arready(axi_cpu_interconnect_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_cpu_interconnect_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_cpu_interconnect_M08_AXI_AWADDR),
        .M08_AXI_awready(axi_cpu_interconnect_M08_AXI_AWREADY),
        .M08_AXI_awvalid(axi_cpu_interconnect_M08_AXI_AWVALID),
        .M08_AXI_bready(axi_cpu_interconnect_M08_AXI_BREADY),
        .M08_AXI_bresp(axi_cpu_interconnect_M08_AXI_BRESP),
        .M08_AXI_bvalid(axi_cpu_interconnect_M08_AXI_BVALID),
        .M08_AXI_rdata(axi_cpu_interconnect_M08_AXI_RDATA),
        .M08_AXI_rready(axi_cpu_interconnect_M08_AXI_RREADY),
        .M08_AXI_rresp(axi_cpu_interconnect_M08_AXI_RRESP),
        .M08_AXI_rvalid(axi_cpu_interconnect_M08_AXI_RVALID),
        .M08_AXI_wdata(axi_cpu_interconnect_M08_AXI_WDATA),
        .M08_AXI_wready(axi_cpu_interconnect_M08_AXI_WREADY),
        .M08_AXI_wstrb(axi_cpu_interconnect_M08_AXI_WSTRB),
        .M08_AXI_wvalid(axi_cpu_interconnect_M08_AXI_WVALID),
        .M09_ACLK(sys_cpu_clk),
        .M09_ARESETN(sys_cpu_resetn),
        .M09_AXI_araddr(axi_cpu_interconnect_M09_AXI_ARADDR),
        .M09_AXI_arprot(axi_cpu_interconnect_M09_AXI_ARPROT),
        .M09_AXI_arready(axi_cpu_interconnect_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_cpu_interconnect_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_cpu_interconnect_M09_AXI_AWADDR),
        .M09_AXI_awprot(axi_cpu_interconnect_M09_AXI_AWPROT),
        .M09_AXI_awready(axi_cpu_interconnect_M09_AXI_AWREADY),
        .M09_AXI_awvalid(axi_cpu_interconnect_M09_AXI_AWVALID),
        .M09_AXI_bready(axi_cpu_interconnect_M09_AXI_BREADY),
        .M09_AXI_bresp(axi_cpu_interconnect_M09_AXI_BRESP),
        .M09_AXI_bvalid(axi_cpu_interconnect_M09_AXI_BVALID),
        .M09_AXI_rdata(axi_cpu_interconnect_M09_AXI_RDATA),
        .M09_AXI_rready(axi_cpu_interconnect_M09_AXI_RREADY),
        .M09_AXI_rresp(axi_cpu_interconnect_M09_AXI_RRESP),
        .M09_AXI_rvalid(axi_cpu_interconnect_M09_AXI_RVALID),
        .M09_AXI_wdata(axi_cpu_interconnect_M09_AXI_WDATA),
        .M09_AXI_wready(axi_cpu_interconnect_M09_AXI_WREADY),
        .M09_AXI_wstrb(axi_cpu_interconnect_M09_AXI_WSTRB),
        .M09_AXI_wvalid(axi_cpu_interconnect_M09_AXI_WVALID),
        .M10_ACLK(sys_cpu_clk),
        .M10_ARESETN(sys_cpu_resetn),
        .M10_AXI_araddr(axi_cpu_interconnect_M10_AXI_ARADDR),
        .M10_AXI_arprot(axi_cpu_interconnect_M10_AXI_ARPROT),
        .M10_AXI_arready(axi_cpu_interconnect_M10_AXI_ARREADY),
        .M10_AXI_arvalid(axi_cpu_interconnect_M10_AXI_ARVALID),
        .M10_AXI_awaddr(axi_cpu_interconnect_M10_AXI_AWADDR),
        .M10_AXI_awprot(axi_cpu_interconnect_M10_AXI_AWPROT),
        .M10_AXI_awready(axi_cpu_interconnect_M10_AXI_AWREADY),
        .M10_AXI_awvalid(axi_cpu_interconnect_M10_AXI_AWVALID),
        .M10_AXI_bready(axi_cpu_interconnect_M10_AXI_BREADY),
        .M10_AXI_bresp(axi_cpu_interconnect_M10_AXI_BRESP),
        .M10_AXI_bvalid(axi_cpu_interconnect_M10_AXI_BVALID),
        .M10_AXI_rdata(axi_cpu_interconnect_M10_AXI_RDATA),
        .M10_AXI_rready(axi_cpu_interconnect_M10_AXI_RREADY),
        .M10_AXI_rresp(axi_cpu_interconnect_M10_AXI_RRESP),
        .M10_AXI_rvalid(axi_cpu_interconnect_M10_AXI_RVALID),
        .M10_AXI_wdata(axi_cpu_interconnect_M10_AXI_WDATA),
        .M10_AXI_wready(axi_cpu_interconnect_M10_AXI_WREADY),
        .M10_AXI_wstrb(axi_cpu_interconnect_M10_AXI_WSTRB),
        .M10_AXI_wvalid(axi_cpu_interconnect_M10_AXI_WVALID),
        .M11_ACLK(sys_cpu_clk),
        .M11_ARESETN(sys_cpu_resetn),
        .M11_AXI_araddr(axi_cpu_interconnect_M11_AXI_ARADDR),
        .M11_AXI_arprot(axi_cpu_interconnect_M11_AXI_ARPROT),
        .M11_AXI_arready(axi_cpu_interconnect_M11_AXI_ARREADY),
        .M11_AXI_arvalid(axi_cpu_interconnect_M11_AXI_ARVALID),
        .M11_AXI_awaddr(axi_cpu_interconnect_M11_AXI_AWADDR),
        .M11_AXI_awprot(axi_cpu_interconnect_M11_AXI_AWPROT),
        .M11_AXI_awready(axi_cpu_interconnect_M11_AXI_AWREADY),
        .M11_AXI_awvalid(axi_cpu_interconnect_M11_AXI_AWVALID),
        .M11_AXI_bready(axi_cpu_interconnect_M11_AXI_BREADY),
        .M11_AXI_bresp(axi_cpu_interconnect_M11_AXI_BRESP),
        .M11_AXI_bvalid(axi_cpu_interconnect_M11_AXI_BVALID),
        .M11_AXI_rdata(axi_cpu_interconnect_M11_AXI_RDATA),
        .M11_AXI_rready(axi_cpu_interconnect_M11_AXI_RREADY),
        .M11_AXI_rresp(axi_cpu_interconnect_M11_AXI_RRESP),
        .M11_AXI_rvalid(axi_cpu_interconnect_M11_AXI_RVALID),
        .M11_AXI_wdata(axi_cpu_interconnect_M11_AXI_WDATA),
        .M11_AXI_wready(axi_cpu_interconnect_M11_AXI_WREADY),
        .M11_AXI_wstrb(axi_cpu_interconnect_M11_AXI_WSTRB),
        .M11_AXI_wvalid(axi_cpu_interconnect_M11_AXI_WVALID),
        .M12_ACLK(sys_cpu_clk),
        .M12_ARESETN(sys_cpu_resetn),
        .M12_AXI_araddr(axi_cpu_interconnect_M12_AXI_ARADDR),
        .M12_AXI_arprot(axi_cpu_interconnect_M12_AXI_ARPROT),
        .M12_AXI_arready(axi_cpu_interconnect_M12_AXI_ARREADY),
        .M12_AXI_arvalid(axi_cpu_interconnect_M12_AXI_ARVALID),
        .M12_AXI_awaddr(axi_cpu_interconnect_M12_AXI_AWADDR),
        .M12_AXI_awprot(axi_cpu_interconnect_M12_AXI_AWPROT),
        .M12_AXI_awready(axi_cpu_interconnect_M12_AXI_AWREADY),
        .M12_AXI_awvalid(axi_cpu_interconnect_M12_AXI_AWVALID),
        .M12_AXI_bready(axi_cpu_interconnect_M12_AXI_BREADY),
        .M12_AXI_bresp(axi_cpu_interconnect_M12_AXI_BRESP),
        .M12_AXI_bvalid(axi_cpu_interconnect_M12_AXI_BVALID),
        .M12_AXI_rdata(axi_cpu_interconnect_M12_AXI_RDATA),
        .M12_AXI_rready(axi_cpu_interconnect_M12_AXI_RREADY),
        .M12_AXI_rresp(axi_cpu_interconnect_M12_AXI_RRESP),
        .M12_AXI_rvalid(axi_cpu_interconnect_M12_AXI_RVALID),
        .M12_AXI_wdata(axi_cpu_interconnect_M12_AXI_WDATA),
        .M12_AXI_wready(axi_cpu_interconnect_M12_AXI_WREADY),
        .M12_AXI_wstrb(axi_cpu_interconnect_M12_AXI_WSTRB),
        .M12_AXI_wvalid(axi_cpu_interconnect_M12_AXI_WVALID),
        .M13_ACLK(sys_cpu_clk),
        .M13_ARESETN(sys_cpu_resetn),
        .M13_AXI_araddr(axi_cpu_interconnect_M13_AXI_ARADDR),
        .M13_AXI_arprot(axi_cpu_interconnect_M13_AXI_ARPROT),
        .M13_AXI_arready(axi_cpu_interconnect_M13_AXI_ARREADY),
        .M13_AXI_arvalid(axi_cpu_interconnect_M13_AXI_ARVALID),
        .M13_AXI_awaddr(axi_cpu_interconnect_M13_AXI_AWADDR),
        .M13_AXI_awprot(axi_cpu_interconnect_M13_AXI_AWPROT),
        .M13_AXI_awready(axi_cpu_interconnect_M13_AXI_AWREADY),
        .M13_AXI_awvalid(axi_cpu_interconnect_M13_AXI_AWVALID),
        .M13_AXI_bready(axi_cpu_interconnect_M13_AXI_BREADY),
        .M13_AXI_bresp(axi_cpu_interconnect_M13_AXI_BRESP),
        .M13_AXI_bvalid(axi_cpu_interconnect_M13_AXI_BVALID),
        .M13_AXI_rdata(axi_cpu_interconnect_M13_AXI_RDATA),
        .M13_AXI_rready(axi_cpu_interconnect_M13_AXI_RREADY),
        .M13_AXI_rresp(axi_cpu_interconnect_M13_AXI_RRESP),
        .M13_AXI_rvalid(axi_cpu_interconnect_M13_AXI_RVALID),
        .M13_AXI_wdata(axi_cpu_interconnect_M13_AXI_WDATA),
        .M13_AXI_wready(axi_cpu_interconnect_M13_AXI_WREADY),
        .M13_AXI_wstrb(axi_cpu_interconnect_M13_AXI_WSTRB),
        .M13_AXI_wvalid(axi_cpu_interconnect_M13_AXI_WVALID),
        .M14_ACLK(sys_cpu_clk),
        .M14_ARESETN(sys_cpu_resetn),
        .M14_AXI_araddr(axi_cpu_interconnect_M14_AXI_ARADDR),
        .M14_AXI_arprot(axi_cpu_interconnect_M14_AXI_ARPROT),
        .M14_AXI_arready(axi_cpu_interconnect_M14_AXI_ARREADY),
        .M14_AXI_arvalid(axi_cpu_interconnect_M14_AXI_ARVALID),
        .M14_AXI_awaddr(axi_cpu_interconnect_M14_AXI_AWADDR),
        .M14_AXI_awprot(axi_cpu_interconnect_M14_AXI_AWPROT),
        .M14_AXI_awready(axi_cpu_interconnect_M14_AXI_AWREADY),
        .M14_AXI_awvalid(axi_cpu_interconnect_M14_AXI_AWVALID),
        .M14_AXI_bready(axi_cpu_interconnect_M14_AXI_BREADY),
        .M14_AXI_bresp(axi_cpu_interconnect_M14_AXI_BRESP),
        .M14_AXI_bvalid(axi_cpu_interconnect_M14_AXI_BVALID),
        .M14_AXI_rdata(axi_cpu_interconnect_M14_AXI_RDATA),
        .M14_AXI_rready(axi_cpu_interconnect_M14_AXI_RREADY),
        .M14_AXI_rresp(axi_cpu_interconnect_M14_AXI_RRESP),
        .M14_AXI_rvalid(axi_cpu_interconnect_M14_AXI_RVALID),
        .M14_AXI_wdata(axi_cpu_interconnect_M14_AXI_WDATA),
        .M14_AXI_wready(axi_cpu_interconnect_M14_AXI_WREADY),
        .M14_AXI_wstrb(axi_cpu_interconnect_M14_AXI_WSTRB),
        .M14_AXI_wvalid(axi_cpu_interconnect_M14_AXI_WVALID),
        .M15_ACLK(sys_cpu_clk),
        .M15_ARESETN(sys_cpu_resetn),
        .M15_AXI_araddr(axi_cpu_interconnect_M15_AXI_ARADDR),
        .M15_AXI_arprot(axi_cpu_interconnect_M15_AXI_ARPROT),
        .M15_AXI_arready(axi_cpu_interconnect_M15_AXI_ARREADY),
        .M15_AXI_arvalid(axi_cpu_interconnect_M15_AXI_ARVALID),
        .M15_AXI_awaddr(axi_cpu_interconnect_M15_AXI_AWADDR),
        .M15_AXI_awprot(axi_cpu_interconnect_M15_AXI_AWPROT),
        .M15_AXI_awready(axi_cpu_interconnect_M15_AXI_AWREADY),
        .M15_AXI_awvalid(axi_cpu_interconnect_M15_AXI_AWVALID),
        .M15_AXI_bready(axi_cpu_interconnect_M15_AXI_BREADY),
        .M15_AXI_bresp(axi_cpu_interconnect_M15_AXI_BRESP),
        .M15_AXI_bvalid(axi_cpu_interconnect_M15_AXI_BVALID),
        .M15_AXI_rdata(axi_cpu_interconnect_M15_AXI_RDATA),
        .M15_AXI_rready(axi_cpu_interconnect_M15_AXI_RREADY),
        .M15_AXI_rresp(axi_cpu_interconnect_M15_AXI_RRESP),
        .M15_AXI_rvalid(axi_cpu_interconnect_M15_AXI_RVALID),
        .M15_AXI_wdata(axi_cpu_interconnect_M15_AXI_WDATA),
        .M15_AXI_wready(axi_cpu_interconnect_M15_AXI_WREADY),
        .M15_AXI_wstrb(axi_cpu_interconnect_M15_AXI_WSTRB),
        .M15_AXI_wvalid(axi_cpu_interconnect_M15_AXI_WVALID),
        .M16_ACLK(sys_cpu_clk),
        .M16_ARESETN(sys_cpu_resetn),
        .M16_AXI_araddr(axi_cpu_interconnect_M16_AXI_ARADDR),
        .M16_AXI_arprot(axi_cpu_interconnect_M16_AXI_ARPROT),
        .M16_AXI_arready(axi_cpu_interconnect_M16_AXI_ARREADY),
        .M16_AXI_arvalid(axi_cpu_interconnect_M16_AXI_ARVALID),
        .M16_AXI_awaddr(axi_cpu_interconnect_M16_AXI_AWADDR),
        .M16_AXI_awprot(axi_cpu_interconnect_M16_AXI_AWPROT),
        .M16_AXI_awready(axi_cpu_interconnect_M16_AXI_AWREADY),
        .M16_AXI_awvalid(axi_cpu_interconnect_M16_AXI_AWVALID),
        .M16_AXI_bready(axi_cpu_interconnect_M16_AXI_BREADY),
        .M16_AXI_bresp(axi_cpu_interconnect_M16_AXI_BRESP),
        .M16_AXI_bvalid(axi_cpu_interconnect_M16_AXI_BVALID),
        .M16_AXI_rdata(axi_cpu_interconnect_M16_AXI_RDATA),
        .M16_AXI_rready(axi_cpu_interconnect_M16_AXI_RREADY),
        .M16_AXI_rresp(axi_cpu_interconnect_M16_AXI_RRESP),
        .M16_AXI_rvalid(axi_cpu_interconnect_M16_AXI_RVALID),
        .M16_AXI_wdata(axi_cpu_interconnect_M16_AXI_WDATA),
        .M16_AXI_wready(axi_cpu_interconnect_M16_AXI_WREADY),
        .M16_AXI_wstrb(axi_cpu_interconnect_M16_AXI_WSTRB),
        .M16_AXI_wvalid(axi_cpu_interconnect_M16_AXI_WVALID),
        .M17_ACLK(sys_cpu_clk),
        .M17_ARESETN(sys_cpu_resetn),
        .M17_AXI_araddr(axi_cpu_interconnect_M17_AXI_ARADDR),
        .M17_AXI_arprot(axi_cpu_interconnect_M17_AXI_ARPROT),
        .M17_AXI_arready(axi_cpu_interconnect_M17_AXI_ARREADY),
        .M17_AXI_arvalid(axi_cpu_interconnect_M17_AXI_ARVALID),
        .M17_AXI_awaddr(axi_cpu_interconnect_M17_AXI_AWADDR),
        .M17_AXI_awprot(axi_cpu_interconnect_M17_AXI_AWPROT),
        .M17_AXI_awready(axi_cpu_interconnect_M17_AXI_AWREADY),
        .M17_AXI_awvalid(axi_cpu_interconnect_M17_AXI_AWVALID),
        .M17_AXI_bready(axi_cpu_interconnect_M17_AXI_BREADY),
        .M17_AXI_bresp(axi_cpu_interconnect_M17_AXI_BRESP),
        .M17_AXI_bvalid(axi_cpu_interconnect_M17_AXI_BVALID),
        .M17_AXI_rdata(axi_cpu_interconnect_M17_AXI_RDATA),
        .M17_AXI_rready(axi_cpu_interconnect_M17_AXI_RREADY),
        .M17_AXI_rresp(axi_cpu_interconnect_M17_AXI_RRESP),
        .M17_AXI_rvalid(axi_cpu_interconnect_M17_AXI_RVALID),
        .M17_AXI_wdata(axi_cpu_interconnect_M17_AXI_WDATA),
        .M17_AXI_wready(axi_cpu_interconnect_M17_AXI_WREADY),
        .M17_AXI_wstrb(axi_cpu_interconnect_M17_AXI_WSTRB),
        .M17_AXI_wvalid(axi_cpu_interconnect_M17_AXI_WVALID),
        .M18_ACLK(sys_cpu_clk),
        .M18_ARESETN(sys_cpu_resetn),
        .M18_AXI_araddr(axi_cpu_interconnect_M18_AXI_ARADDR),
        .M18_AXI_arprot(axi_cpu_interconnect_M18_AXI_ARPROT),
        .M18_AXI_arready(axi_cpu_interconnect_M18_AXI_ARREADY),
        .M18_AXI_arvalid(axi_cpu_interconnect_M18_AXI_ARVALID),
        .M18_AXI_awaddr(axi_cpu_interconnect_M18_AXI_AWADDR),
        .M18_AXI_awprot(axi_cpu_interconnect_M18_AXI_AWPROT),
        .M18_AXI_awready(axi_cpu_interconnect_M18_AXI_AWREADY),
        .M18_AXI_awvalid(axi_cpu_interconnect_M18_AXI_AWVALID),
        .M18_AXI_bready(axi_cpu_interconnect_M18_AXI_BREADY),
        .M18_AXI_bresp(axi_cpu_interconnect_M18_AXI_BRESP),
        .M18_AXI_bvalid(axi_cpu_interconnect_M18_AXI_BVALID),
        .M18_AXI_rdata(axi_cpu_interconnect_M18_AXI_RDATA),
        .M18_AXI_rready(axi_cpu_interconnect_M18_AXI_RREADY),
        .M18_AXI_rresp(axi_cpu_interconnect_M18_AXI_RRESP),
        .M18_AXI_rvalid(axi_cpu_interconnect_M18_AXI_RVALID),
        .M18_AXI_wdata(axi_cpu_interconnect_M18_AXI_WDATA),
        .M18_AXI_wready(axi_cpu_interconnect_M18_AXI_WREADY),
        .M18_AXI_wstrb(axi_cpu_interconnect_M18_AXI_WSTRB),
        .M18_AXI_wvalid(axi_cpu_interconnect_M18_AXI_WVALID),
        .M19_ACLK(sys_cpu_clk),
        .M19_ARESETN(sys_cpu_resetn),
        .M19_AXI_araddr(axi_cpu_interconnect_M19_AXI_ARADDR),
        .M19_AXI_arprot(axi_cpu_interconnect_M19_AXI_ARPROT),
        .M19_AXI_arready(axi_cpu_interconnect_M19_AXI_ARREADY),
        .M19_AXI_arvalid(axi_cpu_interconnect_M19_AXI_ARVALID),
        .M19_AXI_awaddr(axi_cpu_interconnect_M19_AXI_AWADDR),
        .M19_AXI_awprot(axi_cpu_interconnect_M19_AXI_AWPROT),
        .M19_AXI_awready(axi_cpu_interconnect_M19_AXI_AWREADY),
        .M19_AXI_awvalid(axi_cpu_interconnect_M19_AXI_AWVALID),
        .M19_AXI_bready(axi_cpu_interconnect_M19_AXI_BREADY),
        .M19_AXI_bresp(axi_cpu_interconnect_M19_AXI_BRESP),
        .M19_AXI_bvalid(axi_cpu_interconnect_M19_AXI_BVALID),
        .M19_AXI_rdata(axi_cpu_interconnect_M19_AXI_RDATA),
        .M19_AXI_rready(axi_cpu_interconnect_M19_AXI_RREADY),
        .M19_AXI_rresp(axi_cpu_interconnect_M19_AXI_RRESP),
        .M19_AXI_rvalid(axi_cpu_interconnect_M19_AXI_RVALID),
        .M19_AXI_wdata(axi_cpu_interconnect_M19_AXI_WDATA),
        .M19_AXI_wready(axi_cpu_interconnect_M19_AXI_WREADY),
        .M19_AXI_wstrb(axi_cpu_interconnect_M19_AXI_WSTRB),
        .M19_AXI_wvalid(axi_cpu_interconnect_M19_AXI_WVALID),
        .M20_ACLK(sys_cpu_clk),
        .M20_ARESETN(sys_cpu_resetn),
        .M20_AXI_araddr(axi_cpu_interconnect_M20_AXI_ARADDR),
        .M20_AXI_arprot(axi_cpu_interconnect_M20_AXI_ARPROT),
        .M20_AXI_arready(axi_cpu_interconnect_M20_AXI_ARREADY),
        .M20_AXI_arvalid(axi_cpu_interconnect_M20_AXI_ARVALID),
        .M20_AXI_awaddr(axi_cpu_interconnect_M20_AXI_AWADDR),
        .M20_AXI_awprot(axi_cpu_interconnect_M20_AXI_AWPROT),
        .M20_AXI_awready(axi_cpu_interconnect_M20_AXI_AWREADY),
        .M20_AXI_awvalid(axi_cpu_interconnect_M20_AXI_AWVALID),
        .M20_AXI_bready(axi_cpu_interconnect_M20_AXI_BREADY),
        .M20_AXI_bresp(axi_cpu_interconnect_M20_AXI_BRESP),
        .M20_AXI_bvalid(axi_cpu_interconnect_M20_AXI_BVALID),
        .M20_AXI_rdata(axi_cpu_interconnect_M20_AXI_RDATA),
        .M20_AXI_rready(axi_cpu_interconnect_M20_AXI_RREADY),
        .M20_AXI_rresp(axi_cpu_interconnect_M20_AXI_RRESP),
        .M20_AXI_rvalid(axi_cpu_interconnect_M20_AXI_RVALID),
        .M20_AXI_wdata(axi_cpu_interconnect_M20_AXI_WDATA),
        .M20_AXI_wready(axi_cpu_interconnect_M20_AXI_WREADY),
        .M20_AXI_wstrb(axi_cpu_interconnect_M20_AXI_WSTRB),
        .M20_AXI_wvalid(axi_cpu_interconnect_M20_AXI_WVALID),
        .M21_ACLK(sys_cpu_clk),
        .M21_ARESETN(sys_cpu_resetn),
        .M21_AXI_araddr(axi_cpu_interconnect_M21_AXI_ARADDR),
        .M21_AXI_arprot(axi_cpu_interconnect_M21_AXI_ARPROT),
        .M21_AXI_arready(axi_cpu_interconnect_M21_AXI_ARREADY),
        .M21_AXI_arvalid(axi_cpu_interconnect_M21_AXI_ARVALID),
        .M21_AXI_awaddr(axi_cpu_interconnect_M21_AXI_AWADDR),
        .M21_AXI_awprot(axi_cpu_interconnect_M21_AXI_AWPROT),
        .M21_AXI_awready(axi_cpu_interconnect_M21_AXI_AWREADY),
        .M21_AXI_awvalid(axi_cpu_interconnect_M21_AXI_AWVALID),
        .M21_AXI_bready(axi_cpu_interconnect_M21_AXI_BREADY),
        .M21_AXI_bresp(axi_cpu_interconnect_M21_AXI_BRESP),
        .M21_AXI_bvalid(axi_cpu_interconnect_M21_AXI_BVALID),
        .M21_AXI_rdata(axi_cpu_interconnect_M21_AXI_RDATA),
        .M21_AXI_rready(axi_cpu_interconnect_M21_AXI_RREADY),
        .M21_AXI_rresp(axi_cpu_interconnect_M21_AXI_RRESP),
        .M21_AXI_rvalid(axi_cpu_interconnect_M21_AXI_RVALID),
        .M21_AXI_wdata(axi_cpu_interconnect_M21_AXI_WDATA),
        .M21_AXI_wready(axi_cpu_interconnect_M21_AXI_WREADY),
        .M21_AXI_wstrb(axi_cpu_interconnect_M21_AXI_WSTRB),
        .M21_AXI_wvalid(axi_cpu_interconnect_M21_AXI_WVALID),
        .S00_ACLK(sys_cpu_clk),
        .S00_ARESETN(sys_cpu_resetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  system_axi_ddr_cntrl_rstgen_0 axi_ddr_cntrl_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(axi_ddr_cntrl_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(M00_ARESETN_1),
        .slowest_sync_clk(sys_mem_clk));
  system_axi_ethernet_0 axi_ethernet
       (.axi_rxd_arstn(axi_ethernet_dma_s2mm_prmry_reset_out_n),
        .axi_rxs_arstn(axi_ethernet_dma_s2mm_sts_reset_out_n),
        .axi_txc_arstn(axi_ethernet_dma_mm2s_cntrl_reset_out_n),
        .axi_txd_arstn(axi_ethernet_dma_mm2s_prmry_reset_out_n),
        .axis_clk(sys_cpu_clk),
        .interrupt(axi_ethernet_interrupt),
        .lvds_clk_clk_n(phy_clk_1_CLK_N),
        .lvds_clk_clk_p(phy_clk_1_CLK_P),
        .m_axis_rxd_tdata(axi_ethernet_m_axis_rxd_TDATA),
        .m_axis_rxd_tkeep(axi_ethernet_m_axis_rxd_TKEEP),
        .m_axis_rxd_tlast(axi_ethernet_m_axis_rxd_TLAST),
        .m_axis_rxd_tready(axi_ethernet_m_axis_rxd_TREADY),
        .m_axis_rxd_tvalid(axi_ethernet_m_axis_rxd_TVALID),
        .m_axis_rxs_tdata(axi_ethernet_m_axis_rxs_TDATA),
        .m_axis_rxs_tkeep(axi_ethernet_m_axis_rxs_TKEEP),
        .m_axis_rxs_tlast(axi_ethernet_m_axis_rxs_TLAST),
        .m_axis_rxs_tready(axi_ethernet_m_axis_rxs_TREADY),
        .m_axis_rxs_tvalid(axi_ethernet_m_axis_rxs_TVALID),
        .mdio_mdc(axi_ethernet_mdio_MDC),
        .mdio_mdio_i(axi_ethernet_mdio_MDIO_I),
        .mdio_mdio_o(axi_ethernet_mdio_MDIO_O),
        .mdio_mdio_t(axi_ethernet_mdio_MDIO_T),
        .phy_rst_n(axi_ethernet_phy_rst_n),
        .s_axi_araddr(axi_cpu_interconnect_M01_AXI_ARADDR[17:0]),
        .s_axi_arready(axi_cpu_interconnect_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M01_AXI_AWADDR[17:0]),
        .s_axi_awready(axi_cpu_interconnect_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M01_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M01_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M01_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M01_AXI_BVALID),
        .s_axi_lite_clk(sys_cpu_clk),
        .s_axi_lite_resetn(sys_cpu_resetn),
        .s_axi_rdata(axi_cpu_interconnect_M01_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M01_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M01_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M01_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M01_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M01_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M01_AXI_WVALID),
        .s_axis_txc_tdata(axi_ethernet_dma_M_AXIS_CNTRL_TDATA),
        .s_axis_txc_tkeep(axi_ethernet_dma_M_AXIS_CNTRL_TKEEP),
        .s_axis_txc_tlast(axi_ethernet_dma_M_AXIS_CNTRL_TLAST),
        .s_axis_txc_tready(axi_ethernet_dma_M_AXIS_CNTRL_TREADY),
        .s_axis_txc_tvalid(axi_ethernet_dma_M_AXIS_CNTRL_TVALID),
        .s_axis_txd_tdata(axi_ethernet_dma_M_AXIS_MM2S_TDATA),
        .s_axis_txd_tkeep(axi_ethernet_dma_M_AXIS_MM2S_TKEEP),
        .s_axis_txd_tlast(axi_ethernet_dma_M_AXIS_MM2S_TLAST),
        .s_axis_txd_tready(axi_ethernet_dma_M_AXIS_MM2S_TREADY),
        .s_axis_txd_tvalid(axi_ethernet_dma_M_AXIS_MM2S_TVALID),
        .sgmii_rxn(axi_ethernet_sgmii_RXN),
        .sgmii_rxp(axi_ethernet_sgmii_RXP),
        .sgmii_txn(axi_ethernet_sgmii_TXN),
        .sgmii_txp(axi_ethernet_sgmii_TXP),
        .signal_detect(phy_sd_1));
  system_axi_ethernet_dma_0 axi_ethernet_dma
       (.axi_resetn(sys_cpu_resetn),
        .m_axi_mm2s_aclk(sys_cpu_clk),
        .m_axi_mm2s_araddr(S03_AXI_1_ARADDR),
        .m_axi_mm2s_arburst(S03_AXI_1_ARBURST),
        .m_axi_mm2s_arcache(S03_AXI_1_ARCACHE),
        .m_axi_mm2s_arlen(S03_AXI_1_ARLEN),
        .m_axi_mm2s_arprot(S03_AXI_1_ARPROT),
        .m_axi_mm2s_arready(S03_AXI_1_ARREADY),
        .m_axi_mm2s_arsize(S03_AXI_1_ARSIZE),
        .m_axi_mm2s_arvalid(S03_AXI_1_ARVALID),
        .m_axi_mm2s_rdata(S03_AXI_1_RDATA),
        .m_axi_mm2s_rlast(S03_AXI_1_RLAST),
        .m_axi_mm2s_rready(S03_AXI_1_RREADY),
        .m_axi_mm2s_rresp(S03_AXI_1_RRESP),
        .m_axi_mm2s_rvalid(S03_AXI_1_RVALID),
        .m_axi_s2mm_aclk(sys_cpu_clk),
        .m_axi_s2mm_awaddr(S04_AXI_1_AWADDR),
        .m_axi_s2mm_awburst(S04_AXI_1_AWBURST),
        .m_axi_s2mm_awcache(S04_AXI_1_AWCACHE),
        .m_axi_s2mm_awlen(S04_AXI_1_AWLEN),
        .m_axi_s2mm_awprot(S04_AXI_1_AWPROT),
        .m_axi_s2mm_awready(S04_AXI_1_AWREADY),
        .m_axi_s2mm_awsize(S04_AXI_1_AWSIZE),
        .m_axi_s2mm_awvalid(S04_AXI_1_AWVALID),
        .m_axi_s2mm_bready(S04_AXI_1_BREADY),
        .m_axi_s2mm_bresp(S04_AXI_1_BRESP),
        .m_axi_s2mm_bvalid(S04_AXI_1_BVALID),
        .m_axi_s2mm_wdata(S04_AXI_1_WDATA),
        .m_axi_s2mm_wlast(S04_AXI_1_WLAST),
        .m_axi_s2mm_wready(S04_AXI_1_WREADY),
        .m_axi_s2mm_wstrb(S04_AXI_1_WSTRB),
        .m_axi_s2mm_wvalid(S04_AXI_1_WVALID),
        .m_axi_sg_aclk(sys_cpu_clk),
        .m_axi_sg_araddr(S02_AXI_1_ARADDR),
        .m_axi_sg_arburst(S02_AXI_1_ARBURST),
        .m_axi_sg_arcache(S02_AXI_1_ARCACHE),
        .m_axi_sg_arlen(S02_AXI_1_ARLEN),
        .m_axi_sg_arprot(S02_AXI_1_ARPROT),
        .m_axi_sg_arready(S02_AXI_1_ARREADY),
        .m_axi_sg_arsize(S02_AXI_1_ARSIZE),
        .m_axi_sg_arvalid(S02_AXI_1_ARVALID),
        .m_axi_sg_awaddr(S02_AXI_1_AWADDR),
        .m_axi_sg_awburst(S02_AXI_1_AWBURST),
        .m_axi_sg_awcache(S02_AXI_1_AWCACHE),
        .m_axi_sg_awlen(S02_AXI_1_AWLEN),
        .m_axi_sg_awprot(S02_AXI_1_AWPROT),
        .m_axi_sg_awready(S02_AXI_1_AWREADY),
        .m_axi_sg_awsize(S02_AXI_1_AWSIZE),
        .m_axi_sg_awvalid(S02_AXI_1_AWVALID),
        .m_axi_sg_bready(S02_AXI_1_BREADY),
        .m_axi_sg_bresp(S02_AXI_1_BRESP),
        .m_axi_sg_bvalid(S02_AXI_1_BVALID),
        .m_axi_sg_rdata(S02_AXI_1_RDATA),
        .m_axi_sg_rlast(S02_AXI_1_RLAST),
        .m_axi_sg_rready(S02_AXI_1_RREADY),
        .m_axi_sg_rresp(S02_AXI_1_RRESP),
        .m_axi_sg_rvalid(S02_AXI_1_RVALID),
        .m_axi_sg_wdata(S02_AXI_1_WDATA),
        .m_axi_sg_wlast(S02_AXI_1_WLAST),
        .m_axi_sg_wready(S02_AXI_1_WREADY),
        .m_axi_sg_wstrb(S02_AXI_1_WSTRB),
        .m_axi_sg_wvalid(S02_AXI_1_WVALID),
        .m_axis_mm2s_cntrl_tdata(axi_ethernet_dma_M_AXIS_CNTRL_TDATA),
        .m_axis_mm2s_cntrl_tkeep(axi_ethernet_dma_M_AXIS_CNTRL_TKEEP),
        .m_axis_mm2s_cntrl_tlast(axi_ethernet_dma_M_AXIS_CNTRL_TLAST),
        .m_axis_mm2s_cntrl_tready(axi_ethernet_dma_M_AXIS_CNTRL_TREADY),
        .m_axis_mm2s_cntrl_tvalid(axi_ethernet_dma_M_AXIS_CNTRL_TVALID),
        .m_axis_mm2s_tdata(axi_ethernet_dma_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_ethernet_dma_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_ethernet_dma_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_ethernet_dma_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_ethernet_dma_M_AXIS_MM2S_TVALID),
        .mm2s_cntrl_reset_out_n(axi_ethernet_dma_mm2s_cntrl_reset_out_n),
        .mm2s_introut(axi_ethernet_dma_mm2s_introut),
        .mm2s_prmry_reset_out_n(axi_ethernet_dma_mm2s_prmry_reset_out_n),
        .s2mm_introut(axi_ethernet_dma_s2mm_introut),
        .s2mm_prmry_reset_out_n(axi_ethernet_dma_s2mm_prmry_reset_out_n),
        .s2mm_sts_reset_out_n(axi_ethernet_dma_s2mm_sts_reset_out_n),
        .s_axi_lite_aclk(sys_cpu_clk),
        .s_axi_lite_araddr(axi_cpu_interconnect_M02_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_cpu_interconnect_M02_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_cpu_interconnect_M02_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_cpu_interconnect_M02_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_cpu_interconnect_M02_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_cpu_interconnect_M02_AXI_AWVALID),
        .s_axi_lite_bready(axi_cpu_interconnect_M02_AXI_BREADY),
        .s_axi_lite_bresp(axi_cpu_interconnect_M02_AXI_BRESP),
        .s_axi_lite_bvalid(axi_cpu_interconnect_M02_AXI_BVALID),
        .s_axi_lite_rdata(axi_cpu_interconnect_M02_AXI_RDATA),
        .s_axi_lite_rready(axi_cpu_interconnect_M02_AXI_RREADY),
        .s_axi_lite_rresp(axi_cpu_interconnect_M02_AXI_RRESP),
        .s_axi_lite_rvalid(axi_cpu_interconnect_M02_AXI_RVALID),
        .s_axi_lite_wdata(axi_cpu_interconnect_M02_AXI_WDATA),
        .s_axi_lite_wready(axi_cpu_interconnect_M02_AXI_WREADY),
        .s_axi_lite_wvalid(axi_cpu_interconnect_M02_AXI_WVALID),
        .s_axis_s2mm_sts_tdata(axi_ethernet_m_axis_rxs_TDATA),
        .s_axis_s2mm_sts_tkeep(axi_ethernet_m_axis_rxs_TKEEP),
        .s_axis_s2mm_sts_tlast(axi_ethernet_m_axis_rxs_TLAST),
        .s_axis_s2mm_sts_tready(axi_ethernet_m_axis_rxs_TREADY),
        .s_axis_s2mm_sts_tvalid(axi_ethernet_m_axis_rxs_TVALID),
        .s_axis_s2mm_tdata(axi_ethernet_m_axis_rxd_TDATA),
        .s_axis_s2mm_tkeep(axi_ethernet_m_axis_rxd_TKEEP),
        .s_axis_s2mm_tlast(axi_ethernet_m_axis_rxd_TLAST),
        .s_axis_s2mm_tready(axi_ethernet_m_axis_rxd_TREADY),
        .s_axis_s2mm_tvalid(axi_ethernet_m_axis_rxd_TVALID));
  system_axi_gpio_0 axi_gpio
       (.gpio2_io_i(gpio1_i_1),
        .gpio2_io_o(axi_gpio_gpio2_io_o),
        .gpio2_io_t(axi_gpio_gpio2_io_t),
        .gpio_io_i(gpio0_i_1),
        .gpio_io_o(axi_gpio_gpio_io_o),
        .gpio_io_t(axi_gpio_gpio_io_t),
        .ip2intc_irpt(axi_gpio_ip2intc_irpt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M07_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M07_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_cpu_interconnect_M07_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M07_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M07_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M07_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M07_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M07_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M07_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M07_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M07_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M07_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M07_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M07_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M07_AXI_WVALID));
  system_axi_iic_main_0 axi_iic_main
       (.iic2intc_irpt(axi_iic_main_iic2intc_irpt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M06_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M06_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_cpu_interconnect_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M06_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M06_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M06_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M06_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M06_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M06_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M06_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M06_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M06_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M06_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M06_AXI_WVALID),
        .scl_i(axi_iic_main_IIC_SCL_I),
        .scl_o(axi_iic_main_IIC_SCL_O),
        .scl_t(axi_iic_main_IIC_SCL_T),
        .sda_i(axi_iic_main_IIC_SDA_I),
        .sda_o(axi_iic_main_IIC_SDA_O),
        .sda_t(axi_iic_main_IIC_SDA_T));
  system_axi_intc_0 axi_intc
       (.intr(sys_concat_intc_dout),
        .irq(axi_intc_interrupt_INTERRUPT),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_cpu_interconnect_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M05_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M05_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M05_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M05_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M05_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M05_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M05_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M05_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M05_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M05_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M05_AXI_WVALID));
  system_axi_mem_interconnect_0 axi_mem_interconnect
       (.ACLK(sys_cpu_clk),
        .ARESETN(sys_cpu_resetn),
        .M00_ACLK(sys_mem_clk),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(axi_mem_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_interconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_interconnect_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_mem_interconnect_M00_AXI_ARID),
        .M00_AXI_arlen(axi_mem_interconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_interconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_interconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_interconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_interconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_interconnect_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_interconnect_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_interconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_interconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_interconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_interconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_interconnect_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_interconnect_M00_AXI_RDATA),
        .M00_AXI_rid(axi_mem_interconnect_M00_AXI_RID),
        .M00_AXI_rlast(axi_mem_interconnect_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_interconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_interconnect_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_interconnect_M00_AXI_WVALID),
        .S00_ACLK(sys_cpu_clk),
        .S00_ARESETN(sys_cpu_resetn),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arburst(S00_AXI_2_ARBURST),
        .S00_AXI_arcache(S00_AXI_2_ARCACHE),
        .S00_AXI_arlen(S00_AXI_2_ARLEN),
        .S00_AXI_arlock(S00_AXI_2_ARLOCK),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arqos(S00_AXI_2_ARQOS),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arsize(S00_AXI_2_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_awaddr(S00_AXI_2_AWADDR),
        .S00_AXI_awburst(S00_AXI_2_AWBURST),
        .S00_AXI_awcache(S00_AXI_2_AWCACHE),
        .S00_AXI_awlen(S00_AXI_2_AWLEN),
        .S00_AXI_awlock(S00_AXI_2_AWLOCK),
        .S00_AXI_awprot(S00_AXI_2_AWPROT),
        .S00_AXI_awqos(S00_AXI_2_AWQOS),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_awsize(S00_AXI_2_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_2_AWVALID),
        .S00_AXI_bready(S00_AXI_2_BREADY),
        .S00_AXI_bresp(S00_AXI_2_BRESP),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rlast(S00_AXI_2_RLAST),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S00_AXI_wdata(S00_AXI_2_WDATA),
        .S00_AXI_wlast(S00_AXI_2_WLAST),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S00_AXI_wstrb(S00_AXI_2_WSTRB),
        .S00_AXI_wvalid(S00_AXI_2_WVALID),
        .S01_ACLK(sys_cpu_clk),
        .S01_ARESETN(sys_cpu_resetn),
        .S01_AXI_araddr(S01_AXI_1_ARADDR),
        .S01_AXI_arburst(S01_AXI_1_ARBURST),
        .S01_AXI_arcache(S01_AXI_1_ARCACHE),
        .S01_AXI_arlen(S01_AXI_1_ARLEN),
        .S01_AXI_arlock(S01_AXI_1_ARLOCK),
        .S01_AXI_arprot(S01_AXI_1_ARPROT),
        .S01_AXI_arqos(S01_AXI_1_ARQOS),
        .S01_AXI_arready(S01_AXI_1_ARREADY),
        .S01_AXI_arsize(S01_AXI_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI_1_ARVALID),
        .S01_AXI_rdata(S01_AXI_1_RDATA),
        .S01_AXI_rlast(S01_AXI_1_RLAST),
        .S01_AXI_rready(S01_AXI_1_RREADY),
        .S01_AXI_rresp(S01_AXI_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_1_RVALID),
        .S02_ACLK(sys_cpu_clk),
        .S02_ARESETN(sys_cpu_resetn),
        .S02_AXI_araddr(S02_AXI_1_ARADDR),
        .S02_AXI_arburst(S02_AXI_1_ARBURST),
        .S02_AXI_arcache(S02_AXI_1_ARCACHE),
        .S02_AXI_arlen(S02_AXI_1_ARLEN),
        .S02_AXI_arprot(S02_AXI_1_ARPROT),
        .S02_AXI_arready(S02_AXI_1_ARREADY),
        .S02_AXI_arsize(S02_AXI_1_ARSIZE),
        .S02_AXI_arvalid(S02_AXI_1_ARVALID),
        .S02_AXI_awaddr(S02_AXI_1_AWADDR),
        .S02_AXI_awburst(S02_AXI_1_AWBURST),
        .S02_AXI_awcache(S02_AXI_1_AWCACHE),
        .S02_AXI_awlen(S02_AXI_1_AWLEN),
        .S02_AXI_awprot(S02_AXI_1_AWPROT),
        .S02_AXI_awready(S02_AXI_1_AWREADY),
        .S02_AXI_awsize(S02_AXI_1_AWSIZE),
        .S02_AXI_awvalid(S02_AXI_1_AWVALID),
        .S02_AXI_bready(S02_AXI_1_BREADY),
        .S02_AXI_bresp(S02_AXI_1_BRESP),
        .S02_AXI_bvalid(S02_AXI_1_BVALID),
        .S02_AXI_rdata(S02_AXI_1_RDATA),
        .S02_AXI_rlast(S02_AXI_1_RLAST),
        .S02_AXI_rready(S02_AXI_1_RREADY),
        .S02_AXI_rresp(S02_AXI_1_RRESP),
        .S02_AXI_rvalid(S02_AXI_1_RVALID),
        .S02_AXI_wdata(S02_AXI_1_WDATA),
        .S02_AXI_wlast(S02_AXI_1_WLAST),
        .S02_AXI_wready(S02_AXI_1_WREADY),
        .S02_AXI_wstrb(S02_AXI_1_WSTRB),
        .S02_AXI_wvalid(S02_AXI_1_WVALID),
        .S03_ACLK(sys_cpu_clk),
        .S03_ARESETN(sys_cpu_resetn),
        .S03_AXI_araddr(S03_AXI_1_ARADDR),
        .S03_AXI_arburst(S03_AXI_1_ARBURST),
        .S03_AXI_arcache(S03_AXI_1_ARCACHE),
        .S03_AXI_arlen(S03_AXI_1_ARLEN),
        .S03_AXI_arprot(S03_AXI_1_ARPROT),
        .S03_AXI_arready(S03_AXI_1_ARREADY),
        .S03_AXI_arsize(S03_AXI_1_ARSIZE),
        .S03_AXI_arvalid(S03_AXI_1_ARVALID),
        .S03_AXI_rdata(S03_AXI_1_RDATA),
        .S03_AXI_rlast(S03_AXI_1_RLAST),
        .S03_AXI_rready(S03_AXI_1_RREADY),
        .S03_AXI_rresp(S03_AXI_1_RRESP),
        .S03_AXI_rvalid(S03_AXI_1_RVALID),
        .S04_ACLK(sys_cpu_clk),
        .S04_ARESETN(sys_cpu_resetn),
        .S04_AXI_awaddr(S04_AXI_1_AWADDR),
        .S04_AXI_awburst(S04_AXI_1_AWBURST),
        .S04_AXI_awcache(S04_AXI_1_AWCACHE),
        .S04_AXI_awlen(S04_AXI_1_AWLEN),
        .S04_AXI_awprot(S04_AXI_1_AWPROT),
        .S04_AXI_awready(S04_AXI_1_AWREADY),
        .S04_AXI_awsize(S04_AXI_1_AWSIZE),
        .S04_AXI_awvalid(S04_AXI_1_AWVALID),
        .S04_AXI_bready(S04_AXI_1_BREADY),
        .S04_AXI_bresp(S04_AXI_1_BRESP),
        .S04_AXI_bvalid(S04_AXI_1_BVALID),
        .S04_AXI_wdata(S04_AXI_1_WDATA),
        .S04_AXI_wlast(S04_AXI_1_WLAST),
        .S04_AXI_wready(S04_AXI_1_WREADY),
        .S04_AXI_wstrb(S04_AXI_1_WSTRB),
        .S04_AXI_wvalid(S04_AXI_1_WVALID),
        .S05_ACLK(sys_cpu_clk),
        .S05_ARESETN(sys_cpu_resetn),
        .S05_AXI_araddr(S05_AXI_1_ARADDR),
        .S05_AXI_arprot(S05_AXI_1_ARPROT),
        .S05_AXI_arready(S05_AXI_1_ARREADY),
        .S05_AXI_arvalid(S05_AXI_1_ARVALID),
        .S05_AXI_awaddr(S05_AXI_1_AWADDR),
        .S05_AXI_awprot(S05_AXI_1_AWPROT),
        .S05_AXI_awready(S05_AXI_1_AWREADY),
        .S05_AXI_awvalid(S05_AXI_1_AWVALID),
        .S05_AXI_bready(S05_AXI_1_BREADY),
        .S05_AXI_bresp(S05_AXI_1_BRESP),
        .S05_AXI_bvalid(S05_AXI_1_BVALID),
        .S05_AXI_rdata(S05_AXI_1_RDATA),
        .S05_AXI_rready(S05_AXI_1_RREADY),
        .S05_AXI_rresp(S05_AXI_1_RRESP),
        .S05_AXI_rvalid(S05_AXI_1_RVALID),
        .S05_AXI_wdata(S05_AXI_1_WDATA),
        .S05_AXI_wready(S05_AXI_1_WREADY),
        .S05_AXI_wstrb(S05_AXI_1_WSTRB),
        .S05_AXI_wvalid(S05_AXI_1_WVALID),
        .S06_ACLK(sys_cpu_clk),
        .S06_ARESETN(sys_cpu_resetn),
        .S06_AXI_araddr(S06_AXI_1_ARADDR),
        .S06_AXI_arprot(S06_AXI_1_ARPROT),
        .S06_AXI_arready(S06_AXI_1_ARREADY),
        .S06_AXI_arvalid(S06_AXI_1_ARVALID),
        .S06_AXI_awaddr(S06_AXI_1_AWADDR),
        .S06_AXI_awprot(S06_AXI_1_AWPROT),
        .S06_AXI_awready(S06_AXI_1_AWREADY),
        .S06_AXI_awvalid(S06_AXI_1_AWVALID),
        .S06_AXI_bready(S06_AXI_1_BREADY),
        .S06_AXI_bresp(S06_AXI_1_BRESP),
        .S06_AXI_bvalid(S06_AXI_1_BVALID),
        .S06_AXI_rdata(S06_AXI_1_RDATA),
        .S06_AXI_rready(S06_AXI_1_RREADY),
        .S06_AXI_rresp(S06_AXI_1_RRESP),
        .S06_AXI_rvalid(S06_AXI_1_RVALID),
        .S06_AXI_wdata(S06_AXI_1_WDATA),
        .S06_AXI_wready(S06_AXI_1_WREADY),
        .S06_AXI_wstrb(S06_AXI_1_WSTRB),
        .S06_AXI_wvalid(S06_AXI_1_WVALID),
        .S07_ACLK(sys_dma_clk),
        .S07_ARESETN(sys_dma_resetn),
        .S07_AXI_araddr(S07_AXI_1_ARADDR),
        .S07_AXI_arburst(S07_AXI_1_ARBURST),
        .S07_AXI_arcache(S07_AXI_1_ARCACHE),
        .S07_AXI_arlen(S07_AXI_1_ARLEN),
        .S07_AXI_arprot(S07_AXI_1_ARPROT),
        .S07_AXI_arready(S07_AXI_1_ARREADY),
        .S07_AXI_arsize(S07_AXI_1_ARSIZE),
        .S07_AXI_arvalid(S07_AXI_1_ARVALID),
        .S07_AXI_rdata(S07_AXI_1_RDATA),
        .S07_AXI_rready(S07_AXI_1_RREADY),
        .S07_AXI_rresp(S07_AXI_1_RRESP),
        .S07_AXI_rvalid(S07_AXI_1_RVALID),
        .S08_ACLK(sys_dma_clk),
        .S08_ARESETN(sys_dma_resetn),
        .S08_AXI_awaddr(S08_AXI_1_AWADDR),
        .S08_AXI_awburst(S08_AXI_1_AWBURST),
        .S08_AXI_awcache(S08_AXI_1_AWCACHE),
        .S08_AXI_awlen(S08_AXI_1_AWLEN),
        .S08_AXI_awprot(S08_AXI_1_AWPROT),
        .S08_AXI_awready(S08_AXI_1_AWREADY),
        .S08_AXI_awsize(S08_AXI_1_AWSIZE),
        .S08_AXI_awvalid(S08_AXI_1_AWVALID),
        .S08_AXI_bready(S08_AXI_1_BREADY),
        .S08_AXI_bresp(S08_AXI_1_BRESP),
        .S08_AXI_bvalid(S08_AXI_1_BVALID),
        .S08_AXI_wdata(S08_AXI_1_WDATA),
        .S08_AXI_wlast(S08_AXI_1_WLAST),
        .S08_AXI_wready(S08_AXI_1_WREADY),
        .S08_AXI_wstrb(S08_AXI_1_WSTRB),
        .S08_AXI_wvalid(S08_AXI_1_WVALID),
        .S09_ACLK(sys_dma_clk),
        .S09_ARESETN(sys_dma_resetn),
        .S09_AXI_awaddr(S09_AXI_1_AWADDR),
        .S09_AXI_awburst(S09_AXI_1_AWBURST),
        .S09_AXI_awcache(S09_AXI_1_AWCACHE),
        .S09_AXI_awlen(S09_AXI_1_AWLEN),
        .S09_AXI_awprot(S09_AXI_1_AWPROT),
        .S09_AXI_awready(S09_AXI_1_AWREADY),
        .S09_AXI_awsize(S09_AXI_1_AWSIZE),
        .S09_AXI_awvalid(S09_AXI_1_AWVALID),
        .S09_AXI_bready(S09_AXI_1_BREADY),
        .S09_AXI_bresp(S09_AXI_1_BRESP),
        .S09_AXI_bvalid(S09_AXI_1_BVALID),
        .S09_AXI_wdata(S09_AXI_1_WDATA),
        .S09_AXI_wlast(S09_AXI_1_WLAST),
        .S09_AXI_wready(S09_AXI_1_WREADY),
        .S09_AXI_wstrb(S09_AXI_1_WSTRB),
        .S09_AXI_wvalid(S09_AXI_1_WVALID));
  system_axi_spi_0 axi_spi
       (.ext_spi_clk(sys_cpu_clk),
        .io0_i(spi_sdo_i_1),
        .io0_o(axi_spi_io0_o),
        .io1_i(spi_sdi_i_1),
        .ip2intc_irpt(axi_spi_ip2intc_irpt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M08_AXI_ARADDR[6:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M08_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M08_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M08_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_cpu_interconnect_M08_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M08_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M08_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M08_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M08_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M08_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M08_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M08_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M08_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M08_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M08_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M08_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M08_AXI_WVALID),
        .sck_i(spi_clk_i_1),
        .sck_o(axi_spi_sck_o),
        .ss_i(spi_csn_i_1),
        .ss_o(axi_spi_ss_o));
  system_axi_timer_0 axi_timer
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_interrupt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M04_AXI_ARADDR[4:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M04_AXI_AWADDR[4:0]),
        .s_axi_awready(axi_cpu_interconnect_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M04_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M04_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M04_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M04_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M04_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M04_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M04_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M04_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M04_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M04_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M04_AXI_WVALID));
  system_axi_uart_0 axi_uart
       (.interrupt(axi_uart_interrupt),
        .rx(uart_sin_1),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M03_AXI_ARADDR[3:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M03_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_cpu_interconnect_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M03_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M03_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M03_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M03_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M03_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M03_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M03_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M03_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M03_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M03_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M03_AXI_WVALID),
        .tx(axi_uart_tx));
  system_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({sys_dlmb_cntlr_BRAM_PORT_ADDR[0],sys_dlmb_cntlr_BRAM_PORT_ADDR[1],sys_dlmb_cntlr_BRAM_PORT_ADDR[2],sys_dlmb_cntlr_BRAM_PORT_ADDR[3],sys_dlmb_cntlr_BRAM_PORT_ADDR[4],sys_dlmb_cntlr_BRAM_PORT_ADDR[5],sys_dlmb_cntlr_BRAM_PORT_ADDR[6],sys_dlmb_cntlr_BRAM_PORT_ADDR[7],sys_dlmb_cntlr_BRAM_PORT_ADDR[8],sys_dlmb_cntlr_BRAM_PORT_ADDR[9],sys_dlmb_cntlr_BRAM_PORT_ADDR[10],sys_dlmb_cntlr_BRAM_PORT_ADDR[11],sys_dlmb_cntlr_BRAM_PORT_ADDR[12],sys_dlmb_cntlr_BRAM_PORT_ADDR[13],sys_dlmb_cntlr_BRAM_PORT_ADDR[14],sys_dlmb_cntlr_BRAM_PORT_ADDR[15],sys_dlmb_cntlr_BRAM_PORT_ADDR[16],sys_dlmb_cntlr_BRAM_PORT_ADDR[17],sys_dlmb_cntlr_BRAM_PORT_ADDR[18],sys_dlmb_cntlr_BRAM_PORT_ADDR[19],sys_dlmb_cntlr_BRAM_PORT_ADDR[20],sys_dlmb_cntlr_BRAM_PORT_ADDR[21],sys_dlmb_cntlr_BRAM_PORT_ADDR[22],sys_dlmb_cntlr_BRAM_PORT_ADDR[23],sys_dlmb_cntlr_BRAM_PORT_ADDR[24],sys_dlmb_cntlr_BRAM_PORT_ADDR[25],sys_dlmb_cntlr_BRAM_PORT_ADDR[26],sys_dlmb_cntlr_BRAM_PORT_ADDR[27],sys_dlmb_cntlr_BRAM_PORT_ADDR[28],sys_dlmb_cntlr_BRAM_PORT_ADDR[29],sys_dlmb_cntlr_BRAM_PORT_ADDR[30],sys_dlmb_cntlr_BRAM_PORT_ADDR[31]}),
        .addrb({sys_ilmb_cntlr_BRAM_PORT_ADDR[0],sys_ilmb_cntlr_BRAM_PORT_ADDR[1],sys_ilmb_cntlr_BRAM_PORT_ADDR[2],sys_ilmb_cntlr_BRAM_PORT_ADDR[3],sys_ilmb_cntlr_BRAM_PORT_ADDR[4],sys_ilmb_cntlr_BRAM_PORT_ADDR[5],sys_ilmb_cntlr_BRAM_PORT_ADDR[6],sys_ilmb_cntlr_BRAM_PORT_ADDR[7],sys_ilmb_cntlr_BRAM_PORT_ADDR[8],sys_ilmb_cntlr_BRAM_PORT_ADDR[9],sys_ilmb_cntlr_BRAM_PORT_ADDR[10],sys_ilmb_cntlr_BRAM_PORT_ADDR[11],sys_ilmb_cntlr_BRAM_PORT_ADDR[12],sys_ilmb_cntlr_BRAM_PORT_ADDR[13],sys_ilmb_cntlr_BRAM_PORT_ADDR[14],sys_ilmb_cntlr_BRAM_PORT_ADDR[15],sys_ilmb_cntlr_BRAM_PORT_ADDR[16],sys_ilmb_cntlr_BRAM_PORT_ADDR[17],sys_ilmb_cntlr_BRAM_PORT_ADDR[18],sys_ilmb_cntlr_BRAM_PORT_ADDR[19],sys_ilmb_cntlr_BRAM_PORT_ADDR[20],sys_ilmb_cntlr_BRAM_PORT_ADDR[21],sys_ilmb_cntlr_BRAM_PORT_ADDR[22],sys_ilmb_cntlr_BRAM_PORT_ADDR[23],sys_ilmb_cntlr_BRAM_PORT_ADDR[24],sys_ilmb_cntlr_BRAM_PORT_ADDR[25],sys_ilmb_cntlr_BRAM_PORT_ADDR[26],sys_ilmb_cntlr_BRAM_PORT_ADDR[27],sys_ilmb_cntlr_BRAM_PORT_ADDR[28],sys_ilmb_cntlr_BRAM_PORT_ADDR[29],sys_ilmb_cntlr_BRAM_PORT_ADDR[30],sys_ilmb_cntlr_BRAM_PORT_ADDR[31]}),
        .clka(sys_dlmb_cntlr_BRAM_PORT_CLK),
        .clkb(sys_ilmb_cntlr_BRAM_PORT_CLK),
        .dina({sys_dlmb_cntlr_BRAM_PORT_DIN[0],sys_dlmb_cntlr_BRAM_PORT_DIN[1],sys_dlmb_cntlr_BRAM_PORT_DIN[2],sys_dlmb_cntlr_BRAM_PORT_DIN[3],sys_dlmb_cntlr_BRAM_PORT_DIN[4],sys_dlmb_cntlr_BRAM_PORT_DIN[5],sys_dlmb_cntlr_BRAM_PORT_DIN[6],sys_dlmb_cntlr_BRAM_PORT_DIN[7],sys_dlmb_cntlr_BRAM_PORT_DIN[8],sys_dlmb_cntlr_BRAM_PORT_DIN[9],sys_dlmb_cntlr_BRAM_PORT_DIN[10],sys_dlmb_cntlr_BRAM_PORT_DIN[11],sys_dlmb_cntlr_BRAM_PORT_DIN[12],sys_dlmb_cntlr_BRAM_PORT_DIN[13],sys_dlmb_cntlr_BRAM_PORT_DIN[14],sys_dlmb_cntlr_BRAM_PORT_DIN[15],sys_dlmb_cntlr_BRAM_PORT_DIN[16],sys_dlmb_cntlr_BRAM_PORT_DIN[17],sys_dlmb_cntlr_BRAM_PORT_DIN[18],sys_dlmb_cntlr_BRAM_PORT_DIN[19],sys_dlmb_cntlr_BRAM_PORT_DIN[20],sys_dlmb_cntlr_BRAM_PORT_DIN[21],sys_dlmb_cntlr_BRAM_PORT_DIN[22],sys_dlmb_cntlr_BRAM_PORT_DIN[23],sys_dlmb_cntlr_BRAM_PORT_DIN[24],sys_dlmb_cntlr_BRAM_PORT_DIN[25],sys_dlmb_cntlr_BRAM_PORT_DIN[26],sys_dlmb_cntlr_BRAM_PORT_DIN[27],sys_dlmb_cntlr_BRAM_PORT_DIN[28],sys_dlmb_cntlr_BRAM_PORT_DIN[29],sys_dlmb_cntlr_BRAM_PORT_DIN[30],sys_dlmb_cntlr_BRAM_PORT_DIN[31]}),
        .dinb({sys_ilmb_cntlr_BRAM_PORT_DIN[0],sys_ilmb_cntlr_BRAM_PORT_DIN[1],sys_ilmb_cntlr_BRAM_PORT_DIN[2],sys_ilmb_cntlr_BRAM_PORT_DIN[3],sys_ilmb_cntlr_BRAM_PORT_DIN[4],sys_ilmb_cntlr_BRAM_PORT_DIN[5],sys_ilmb_cntlr_BRAM_PORT_DIN[6],sys_ilmb_cntlr_BRAM_PORT_DIN[7],sys_ilmb_cntlr_BRAM_PORT_DIN[8],sys_ilmb_cntlr_BRAM_PORT_DIN[9],sys_ilmb_cntlr_BRAM_PORT_DIN[10],sys_ilmb_cntlr_BRAM_PORT_DIN[11],sys_ilmb_cntlr_BRAM_PORT_DIN[12],sys_ilmb_cntlr_BRAM_PORT_DIN[13],sys_ilmb_cntlr_BRAM_PORT_DIN[14],sys_ilmb_cntlr_BRAM_PORT_DIN[15],sys_ilmb_cntlr_BRAM_PORT_DIN[16],sys_ilmb_cntlr_BRAM_PORT_DIN[17],sys_ilmb_cntlr_BRAM_PORT_DIN[18],sys_ilmb_cntlr_BRAM_PORT_DIN[19],sys_ilmb_cntlr_BRAM_PORT_DIN[20],sys_ilmb_cntlr_BRAM_PORT_DIN[21],sys_ilmb_cntlr_BRAM_PORT_DIN[22],sys_ilmb_cntlr_BRAM_PORT_DIN[23],sys_ilmb_cntlr_BRAM_PORT_DIN[24],sys_ilmb_cntlr_BRAM_PORT_DIN[25],sys_ilmb_cntlr_BRAM_PORT_DIN[26],sys_ilmb_cntlr_BRAM_PORT_DIN[27],sys_ilmb_cntlr_BRAM_PORT_DIN[28],sys_ilmb_cntlr_BRAM_PORT_DIN[29],sys_ilmb_cntlr_BRAM_PORT_DIN[30],sys_ilmb_cntlr_BRAM_PORT_DIN[31]}),
        .douta(sys_dlmb_cntlr_BRAM_PORT_DOUT),
        .doutb(sys_ilmb_cntlr_BRAM_PORT_DOUT),
        .ena(sys_dlmb_cntlr_BRAM_PORT_EN),
        .enb(sys_ilmb_cntlr_BRAM_PORT_EN),
        .rsta(sys_dlmb_cntlr_BRAM_PORT_RST),
        .rstb(sys_ilmb_cntlr_BRAM_PORT_RST),
        .wea({sys_dlmb_cntlr_BRAM_PORT_WE[0],sys_dlmb_cntlr_BRAM_PORT_WE[1],sys_dlmb_cntlr_BRAM_PORT_WE[2],sys_dlmb_cntlr_BRAM_PORT_WE[3]}),
        .web({sys_ilmb_cntlr_BRAM_PORT_WE[0],sys_ilmb_cntlr_BRAM_PORT_WE[1],sys_ilmb_cntlr_BRAM_PORT_WE[2],sys_ilmb_cntlr_BRAM_PORT_WE[3]}));
  system_mig_7series_0_1 mig_7series_0
       (.aresetn(M00_ARESETN_1),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_cs_n(mig_7series_0_DDR3_CS_N),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(DDR3_dq[63:0]),
        .ddr3_dqs_n(DDR3_dqs_n[7:0]),
        .ddr3_dqs_p(DDR3_dqs_p[7:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_mem_interconnect_M00_AXI_ARADDR),
        .s_axi_arburst(axi_mem_interconnect_M00_AXI_ARBURST),
        .s_axi_arcache(axi_mem_interconnect_M00_AXI_ARCACHE),
        .s_axi_arid(axi_mem_interconnect_M00_AXI_ARID),
        .s_axi_arlen(axi_mem_interconnect_M00_AXI_ARLEN),
        .s_axi_arlock(axi_mem_interconnect_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_mem_interconnect_M00_AXI_ARPROT),
        .s_axi_arqos(axi_mem_interconnect_M00_AXI_ARQOS),
        .s_axi_arready(axi_mem_interconnect_M00_AXI_ARREADY),
        .s_axi_arsize(axi_mem_interconnect_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_mem_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_mem_interconnect_M00_AXI_AWADDR),
        .s_axi_awburst(axi_mem_interconnect_M00_AXI_AWBURST),
        .s_axi_awcache(axi_mem_interconnect_M00_AXI_AWCACHE),
        .s_axi_awid(axi_mem_interconnect_M00_AXI_AWID),
        .s_axi_awlen(axi_mem_interconnect_M00_AXI_AWLEN),
        .s_axi_awlock(axi_mem_interconnect_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_mem_interconnect_M00_AXI_AWPROT),
        .s_axi_awqos(axi_mem_interconnect_M00_AXI_AWQOS),
        .s_axi_awready(axi_mem_interconnect_M00_AXI_AWREADY),
        .s_axi_awsize(axi_mem_interconnect_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_mem_interconnect_M00_AXI_AWVALID),
        .s_axi_bid(axi_mem_interconnect_M00_AXI_BID),
        .s_axi_bready(axi_mem_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(axi_mem_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(axi_mem_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(axi_mem_interconnect_M00_AXI_RDATA),
        .s_axi_rid(axi_mem_interconnect_M00_AXI_RID),
        .s_axi_rlast(axi_mem_interconnect_M00_AXI_RLAST),
        .s_axi_rready(axi_mem_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(axi_mem_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(axi_mem_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(axi_mem_interconnect_M00_AXI_WDATA),
        .s_axi_wlast(axi_mem_interconnect_M00_AXI_WLAST),
        .s_axi_wready(axi_mem_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(axi_mem_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_mem_interconnect_M00_AXI_WVALID),
        .sys_clk_i(sys_clk_1),
        .sys_rst(sys_rst_1),
        .ui_addn_clk_0(sys_cpu_clk),
        .ui_addn_clk_1(sys_dma_clk),
        .ui_clk(sys_mem_clk),
        .ui_clk_sync_rst(axi_ddr_cntrl_c0_ddr4_ui_clk_sync_rst));
  system_sys_concat_intc_0 sys_concat_intc
       (.In0(axi_timer_interrupt),
        .In1(axi_ethernet_interrupt),
        .In10(axi_spi_ip2intc_irpt),
        .In11(axi_gpio_ip2intc_irpt),
        .In12(axi_ad9371_rx_dma_irq),
        .In13(axi_ad9371_tx_dma_irq),
        .In14(axi_ad9371_rx_os_dma_irq),
        .In15(axi_ad9371_rx_jesd_irq),
        .In2(axi_ethernet_dma_mm2s_introut),
        .In3(axi_ethernet_dma_s2mm_introut),
        .In4(axi_uart_interrupt),
        .In5(mb_intr_05_1),
        .In6(mb_intr_06_1),
        .In7(axi_ad9371_tx_jesd_irq),
        .In8(axi_ad9371_rx_os_jesd_irq),
        .In9(axi_iic_main_iic2intc_irpt),
        .dout(sys_concat_intc_dout));
  system_sys_dlmb_0 sys_dlmb
       (.LMB_ABus(Conn_ABUS),
        .LMB_AddrStrobe(Conn_ADDRSTROBE),
        .LMB_BE(Conn_BE),
        .LMB_CE(sys_mb_DLMB_CE),
        .LMB_Clk(sys_cpu_clk),
        .LMB_ReadDBus(sys_mb_DLMB_READDBUS),
        .LMB_ReadStrobe(Conn_READSTROBE),
        .LMB_Ready(sys_mb_DLMB_READY),
        .LMB_UE(sys_mb_DLMB_UE),
        .LMB_Wait(sys_mb_DLMB_WAIT),
        .LMB_WriteDBus(Conn_WRITEDBUS),
        .LMB_WriteStrobe(Conn_WRITESTROBE),
        .M_ABus(sys_mb_DLMB_ABUS),
        .M_AddrStrobe(sys_mb_DLMB_ADDRSTROBE),
        .M_BE(sys_mb_DLMB_BE),
        .M_DBus(sys_mb_DLMB_WRITEDBUS),
        .M_ReadStrobe(sys_mb_DLMB_READSTROBE),
        .M_WriteStrobe(sys_mb_DLMB_WRITESTROBE),
        .SYS_Rst(sys_rstgen_bus_struct_reset),
        .Sl_CE(Conn_CE),
        .Sl_DBus(Conn_READDBUS),
        .Sl_Ready(Conn_READY),
        .Sl_UE(Conn_UE),
        .Sl_Wait(Conn_WAIT));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > system blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_sys_dlmb_cntlr_0 sys_dlmb_cntlr
       (.BRAM_Addr_A(sys_dlmb_cntlr_BRAM_PORT_ADDR),
        .BRAM_Clk_A(sys_dlmb_cntlr_BRAM_PORT_CLK),
        .BRAM_Din_A({sys_dlmb_cntlr_BRAM_PORT_DOUT[31],sys_dlmb_cntlr_BRAM_PORT_DOUT[30],sys_dlmb_cntlr_BRAM_PORT_DOUT[29],sys_dlmb_cntlr_BRAM_PORT_DOUT[28],sys_dlmb_cntlr_BRAM_PORT_DOUT[27],sys_dlmb_cntlr_BRAM_PORT_DOUT[26],sys_dlmb_cntlr_BRAM_PORT_DOUT[25],sys_dlmb_cntlr_BRAM_PORT_DOUT[24],sys_dlmb_cntlr_BRAM_PORT_DOUT[23],sys_dlmb_cntlr_BRAM_PORT_DOUT[22],sys_dlmb_cntlr_BRAM_PORT_DOUT[21],sys_dlmb_cntlr_BRAM_PORT_DOUT[20],sys_dlmb_cntlr_BRAM_PORT_DOUT[19],sys_dlmb_cntlr_BRAM_PORT_DOUT[18],sys_dlmb_cntlr_BRAM_PORT_DOUT[17],sys_dlmb_cntlr_BRAM_PORT_DOUT[16],sys_dlmb_cntlr_BRAM_PORT_DOUT[15],sys_dlmb_cntlr_BRAM_PORT_DOUT[14],sys_dlmb_cntlr_BRAM_PORT_DOUT[13],sys_dlmb_cntlr_BRAM_PORT_DOUT[12],sys_dlmb_cntlr_BRAM_PORT_DOUT[11],sys_dlmb_cntlr_BRAM_PORT_DOUT[10],sys_dlmb_cntlr_BRAM_PORT_DOUT[9],sys_dlmb_cntlr_BRAM_PORT_DOUT[8],sys_dlmb_cntlr_BRAM_PORT_DOUT[7],sys_dlmb_cntlr_BRAM_PORT_DOUT[6],sys_dlmb_cntlr_BRAM_PORT_DOUT[5],sys_dlmb_cntlr_BRAM_PORT_DOUT[4],sys_dlmb_cntlr_BRAM_PORT_DOUT[3],sys_dlmb_cntlr_BRAM_PORT_DOUT[2],sys_dlmb_cntlr_BRAM_PORT_DOUT[1],sys_dlmb_cntlr_BRAM_PORT_DOUT[0]}),
        .BRAM_Dout_A(sys_dlmb_cntlr_BRAM_PORT_DIN),
        .BRAM_EN_A(sys_dlmb_cntlr_BRAM_PORT_EN),
        .BRAM_Rst_A(sys_dlmb_cntlr_BRAM_PORT_RST),
        .BRAM_WEN_A(sys_dlmb_cntlr_BRAM_PORT_WE),
        .LMB_ABus(Conn_ABUS),
        .LMB_AddrStrobe(Conn_ADDRSTROBE),
        .LMB_BE(Conn_BE),
        .LMB_Clk(sys_cpu_clk),
        .LMB_ReadStrobe(Conn_READSTROBE),
        .LMB_Rst(sys_rstgen_bus_struct_reset),
        .LMB_WriteDBus(Conn_WRITEDBUS),
        .LMB_WriteStrobe(Conn_WRITESTROBE),
        .Sl_CE(Conn_CE),
        .Sl_DBus(Conn_READDBUS),
        .Sl_Ready(Conn_READY),
        .Sl_UE(Conn_UE),
        .Sl_Wait(Conn_WAIT));
  system_sys_dma_rstgen_0 sys_dma_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(sys_cpu_reset),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(sys_dma_resetn),
        .peripheral_reset(sys_dma_reset),
        .slowest_sync_clk(sys_dma_clk));
  system_sys_ilmb_0 sys_ilmb
       (.LMB_ABus(Conn1_ABUS),
        .LMB_AddrStrobe(Conn1_ADDRSTROBE),
        .LMB_BE(Conn1_BE),
        .LMB_CE(sys_mb_ILMB_CE),
        .LMB_Clk(sys_cpu_clk),
        .LMB_ReadDBus(sys_mb_ILMB_READDBUS),
        .LMB_ReadStrobe(Conn1_READSTROBE),
        .LMB_Ready(sys_mb_ILMB_READY),
        .LMB_UE(sys_mb_ILMB_UE),
        .LMB_Wait(sys_mb_ILMB_WAIT),
        .LMB_WriteDBus(Conn1_WRITEDBUS),
        .LMB_WriteStrobe(Conn1_WRITESTROBE),
        .M_ABus(sys_mb_ILMB_ABUS),
        .M_AddrStrobe(sys_mb_ILMB_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(sys_mb_ILMB_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(sys_rstgen_bus_struct_reset),
        .Sl_CE(Conn1_CE),
        .Sl_DBus(Conn1_READDBUS),
        .Sl_Ready(Conn1_READY),
        .Sl_UE(Conn1_UE),
        .Sl_Wait(Conn1_WAIT));
  system_sys_ilmb_cntlr_0 sys_ilmb_cntlr
       (.BRAM_Addr_A(sys_ilmb_cntlr_BRAM_PORT_ADDR),
        .BRAM_Clk_A(sys_ilmb_cntlr_BRAM_PORT_CLK),
        .BRAM_Din_A({sys_ilmb_cntlr_BRAM_PORT_DOUT[31],sys_ilmb_cntlr_BRAM_PORT_DOUT[30],sys_ilmb_cntlr_BRAM_PORT_DOUT[29],sys_ilmb_cntlr_BRAM_PORT_DOUT[28],sys_ilmb_cntlr_BRAM_PORT_DOUT[27],sys_ilmb_cntlr_BRAM_PORT_DOUT[26],sys_ilmb_cntlr_BRAM_PORT_DOUT[25],sys_ilmb_cntlr_BRAM_PORT_DOUT[24],sys_ilmb_cntlr_BRAM_PORT_DOUT[23],sys_ilmb_cntlr_BRAM_PORT_DOUT[22],sys_ilmb_cntlr_BRAM_PORT_DOUT[21],sys_ilmb_cntlr_BRAM_PORT_DOUT[20],sys_ilmb_cntlr_BRAM_PORT_DOUT[19],sys_ilmb_cntlr_BRAM_PORT_DOUT[18],sys_ilmb_cntlr_BRAM_PORT_DOUT[17],sys_ilmb_cntlr_BRAM_PORT_DOUT[16],sys_ilmb_cntlr_BRAM_PORT_DOUT[15],sys_ilmb_cntlr_BRAM_PORT_DOUT[14],sys_ilmb_cntlr_BRAM_PORT_DOUT[13],sys_ilmb_cntlr_BRAM_PORT_DOUT[12],sys_ilmb_cntlr_BRAM_PORT_DOUT[11],sys_ilmb_cntlr_BRAM_PORT_DOUT[10],sys_ilmb_cntlr_BRAM_PORT_DOUT[9],sys_ilmb_cntlr_BRAM_PORT_DOUT[8],sys_ilmb_cntlr_BRAM_PORT_DOUT[7],sys_ilmb_cntlr_BRAM_PORT_DOUT[6],sys_ilmb_cntlr_BRAM_PORT_DOUT[5],sys_ilmb_cntlr_BRAM_PORT_DOUT[4],sys_ilmb_cntlr_BRAM_PORT_DOUT[3],sys_ilmb_cntlr_BRAM_PORT_DOUT[2],sys_ilmb_cntlr_BRAM_PORT_DOUT[1],sys_ilmb_cntlr_BRAM_PORT_DOUT[0]}),
        .BRAM_Dout_A(sys_ilmb_cntlr_BRAM_PORT_DIN),
        .BRAM_EN_A(sys_ilmb_cntlr_BRAM_PORT_EN),
        .BRAM_Rst_A(sys_ilmb_cntlr_BRAM_PORT_RST),
        .BRAM_WEN_A(sys_ilmb_cntlr_BRAM_PORT_WE),
        .LMB_ABus(Conn1_ABUS),
        .LMB_AddrStrobe(Conn1_ADDRSTROBE),
        .LMB_BE(Conn1_BE),
        .LMB_Clk(sys_cpu_clk),
        .LMB_ReadStrobe(Conn1_READSTROBE),
        .LMB_Rst(sys_rstgen_bus_struct_reset),
        .LMB_WriteDBus(Conn1_WRITEDBUS),
        .LMB_WriteStrobe(Conn1_WRITESTROBE),
        .Sl_CE(Conn1_CE),
        .Sl_DBus(Conn1_READDBUS),
        .Sl_Ready(Conn1_READY),
        .Sl_UE(Conn1_UE),
        .Sl_Wait(Conn1_WAIT));
  (* BMM_INFO_PROCESSOR = "microblaze-le > system sys_dlmb_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_sys_mb_0 sys_mb
       (.Byte_Enable(sys_mb_DLMB_BE),
        .Clk(sys_cpu_clk),
        .DCE(sys_mb_DLMB_CE),
        .DReady(sys_mb_DLMB_READY),
        .DUE(sys_mb_DLMB_UE),
        .DWait(sys_mb_DLMB_WAIT),
        .D_AS(sys_mb_DLMB_ADDRSTROBE),
        .Data_Addr(sys_mb_DLMB_ABUS),
        .Data_Read(sys_mb_DLMB_READDBUS),
        .Data_Write(sys_mb_DLMB_WRITEDBUS),
        .Dbg_Capture(sys_mb_debug_MBDEBUG_0_CAPTURE),
        .Dbg_Clk(sys_mb_debug_MBDEBUG_0_CLK),
        .Dbg_Disable(sys_mb_debug_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En(sys_mb_debug_MBDEBUG_0_REG_EN),
        .Dbg_Shift(sys_mb_debug_MBDEBUG_0_SHIFT),
        .Dbg_TDI(sys_mb_debug_MBDEBUG_0_TDI),
        .Dbg_TDO(sys_mb_debug_MBDEBUG_0_TDO),
        .Dbg_Update(sys_mb_debug_MBDEBUG_0_UPDATE),
        .Debug_Rst(sys_mb_debug_MBDEBUG_0_RST),
        .ICE(sys_mb_ILMB_CE),
        .IFetch(sys_mb_ILMB_READSTROBE),
        .IReady(sys_mb_ILMB_READY),
        .IUE(sys_mb_ILMB_UE),
        .IWAIT(sys_mb_ILMB_WAIT),
        .I_AS(sys_mb_ILMB_ADDRSTROBE),
        .Instr(sys_mb_ILMB_READDBUS),
        .Instr_Addr(sys_mb_ILMB_ABUS),
        .Interrupt(axi_intc_interrupt_INTERRUPT),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DC_ARADDR(S00_AXI_2_ARADDR),
        .M_AXI_DC_ARBURST(S00_AXI_2_ARBURST),
        .M_AXI_DC_ARCACHE(S00_AXI_2_ARCACHE),
        .M_AXI_DC_ARLEN(S00_AXI_2_ARLEN),
        .M_AXI_DC_ARLOCK(S00_AXI_2_ARLOCK),
        .M_AXI_DC_ARPROT(S00_AXI_2_ARPROT),
        .M_AXI_DC_ARQOS(S00_AXI_2_ARQOS),
        .M_AXI_DC_ARREADY(S00_AXI_2_ARREADY),
        .M_AXI_DC_ARSIZE(S00_AXI_2_ARSIZE),
        .M_AXI_DC_ARVALID(S00_AXI_2_ARVALID),
        .M_AXI_DC_AWADDR(S00_AXI_2_AWADDR),
        .M_AXI_DC_AWBURST(S00_AXI_2_AWBURST),
        .M_AXI_DC_AWCACHE(S00_AXI_2_AWCACHE),
        .M_AXI_DC_AWLEN(S00_AXI_2_AWLEN),
        .M_AXI_DC_AWLOCK(S00_AXI_2_AWLOCK),
        .M_AXI_DC_AWPROT(S00_AXI_2_AWPROT),
        .M_AXI_DC_AWQOS(S00_AXI_2_AWQOS),
        .M_AXI_DC_AWREADY(S00_AXI_2_AWREADY),
        .M_AXI_DC_AWSIZE(S00_AXI_2_AWSIZE),
        .M_AXI_DC_AWVALID(S00_AXI_2_AWVALID),
        .M_AXI_DC_BID(1'b0),
        .M_AXI_DC_BREADY(S00_AXI_2_BREADY),
        .M_AXI_DC_BRESP(S00_AXI_2_BRESP),
        .M_AXI_DC_BVALID(S00_AXI_2_BVALID),
        .M_AXI_DC_RDATA(S00_AXI_2_RDATA),
        .M_AXI_DC_RID(1'b0),
        .M_AXI_DC_RLAST(S00_AXI_2_RLAST),
        .M_AXI_DC_RREADY(S00_AXI_2_RREADY),
        .M_AXI_DC_RRESP(S00_AXI_2_RRESP),
        .M_AXI_DC_RVALID(S00_AXI_2_RVALID),
        .M_AXI_DC_WDATA(S00_AXI_2_WDATA),
        .M_AXI_DC_WLAST(S00_AXI_2_WLAST),
        .M_AXI_DC_WREADY(S00_AXI_2_WREADY),
        .M_AXI_DC_WSTRB(S00_AXI_2_WSTRB),
        .M_AXI_DC_WVALID(S00_AXI_2_WVALID),
        .M_AXI_DP_ARADDR(S00_AXI_1_ARADDR),
        .M_AXI_DP_ARPROT(S00_AXI_1_ARPROT),
        .M_AXI_DP_ARREADY(S00_AXI_1_ARREADY),
        .M_AXI_DP_ARVALID(S00_AXI_1_ARVALID),
        .M_AXI_DP_AWADDR(S00_AXI_1_AWADDR),
        .M_AXI_DP_AWPROT(S00_AXI_1_AWPROT),
        .M_AXI_DP_AWREADY(S00_AXI_1_AWREADY),
        .M_AXI_DP_AWVALID(S00_AXI_1_AWVALID),
        .M_AXI_DP_BREADY(S00_AXI_1_BREADY),
        .M_AXI_DP_BRESP(S00_AXI_1_BRESP),
        .M_AXI_DP_BVALID(S00_AXI_1_BVALID),
        .M_AXI_DP_RDATA(S00_AXI_1_RDATA),
        .M_AXI_DP_RREADY(S00_AXI_1_RREADY),
        .M_AXI_DP_RRESP(S00_AXI_1_RRESP),
        .M_AXI_DP_RVALID(S00_AXI_1_RVALID),
        .M_AXI_DP_WDATA(S00_AXI_1_WDATA),
        .M_AXI_DP_WREADY(S00_AXI_1_WREADY),
        .M_AXI_DP_WSTRB(S00_AXI_1_WSTRB),
        .M_AXI_DP_WVALID(S00_AXI_1_WVALID),
        .M_AXI_IC_ARADDR(S01_AXI_1_ARADDR),
        .M_AXI_IC_ARBURST(S01_AXI_1_ARBURST),
        .M_AXI_IC_ARCACHE(S01_AXI_1_ARCACHE),
        .M_AXI_IC_ARLEN(S01_AXI_1_ARLEN),
        .M_AXI_IC_ARLOCK(S01_AXI_1_ARLOCK),
        .M_AXI_IC_ARPROT(S01_AXI_1_ARPROT),
        .M_AXI_IC_ARQOS(S01_AXI_1_ARQOS),
        .M_AXI_IC_ARREADY(S01_AXI_1_ARREADY),
        .M_AXI_IC_ARSIZE(S01_AXI_1_ARSIZE),
        .M_AXI_IC_ARVALID(S01_AXI_1_ARVALID),
        .M_AXI_IC_AWREADY(1'b0),
        .M_AXI_IC_BID(1'b0),
        .M_AXI_IC_BRESP({1'b0,1'b0}),
        .M_AXI_IC_BVALID(1'b0),
        .M_AXI_IC_RDATA(S01_AXI_1_RDATA),
        .M_AXI_IC_RID(1'b0),
        .M_AXI_IC_RLAST(S01_AXI_1_RLAST),
        .M_AXI_IC_RREADY(S01_AXI_1_RREADY),
        .M_AXI_IC_RRESP(S01_AXI_1_RRESP),
        .M_AXI_IC_RVALID(S01_AXI_1_RVALID),
        .M_AXI_IC_WREADY(1'b0),
        .Read_Strobe(sys_mb_DLMB_READSTROBE),
        .Reset(sys_rstgen_mb_reset),
        .Write_Strobe(sys_mb_DLMB_WRITESTROBE));
  system_sys_mb_debug_0 sys_mb_debug
       (.Dbg_Capture_0(sys_mb_debug_MBDEBUG_0_CAPTURE),
        .Dbg_Clk_0(sys_mb_debug_MBDEBUG_0_CLK),
        .Dbg_Disable_0(sys_mb_debug_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En_0(sys_mb_debug_MBDEBUG_0_REG_EN),
        .Dbg_Rst_0(sys_mb_debug_MBDEBUG_0_RST),
        .Dbg_Shift_0(sys_mb_debug_MBDEBUG_0_SHIFT),
        .Dbg_TDI_0(sys_mb_debug_MBDEBUG_0_TDI),
        .Dbg_TDO_0(sys_mb_debug_MBDEBUG_0_TDO),
        .Dbg_Update_0(sys_mb_debug_MBDEBUG_0_UPDATE),
        .Debug_SYS_Rst(sys_mb_debug_Debug_SYS_Rst),
        .S_AXI_ACLK(sys_cpu_clk),
        .S_AXI_ARADDR(axi_cpu_interconnect_M00_AXI_ARADDR[3:0]),
        .S_AXI_ARESETN(sys_cpu_resetn),
        .S_AXI_ARREADY(axi_cpu_interconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(axi_cpu_interconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR(axi_cpu_interconnect_M00_AXI_AWADDR[3:0]),
        .S_AXI_AWREADY(axi_cpu_interconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(axi_cpu_interconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(axi_cpu_interconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(axi_cpu_interconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(axi_cpu_interconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(axi_cpu_interconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(axi_cpu_interconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(axi_cpu_interconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(axi_cpu_interconnect_M00_AXI_RVALID),
        .S_AXI_WDATA(axi_cpu_interconnect_M00_AXI_WDATA),
        .S_AXI_WREADY(axi_cpu_interconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB(axi_cpu_interconnect_M00_AXI_WSTRB),
        .S_AXI_WVALID(axi_cpu_interconnect_M00_AXI_WVALID));
  system_sys_rstgen_0 sys_rstgen
       (.aux_reset_in(1'b1),
        .bus_struct_reset(sys_rstgen_bus_struct_reset),
        .dcm_locked(1'b1),
        .ext_reset_in(axi_ddr_cntrl_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(sys_mb_debug_Debug_SYS_Rst),
        .mb_reset(sys_rstgen_mb_reset),
        .peripheral_aresetn(sys_cpu_resetn),
        .peripheral_reset(sys_cpu_reset),
        .slowest_sync_clk(sys_cpu_clk));
  system_util_ad9371_rx_cpack_0 util_ad9371_rx_cpack
       (.adc_clk(axi_ad9371_rx_clkgen_clk_0),
        .adc_data(util_ad9371_rx_cpack_adc_data),
        .adc_data_0(axi_ad9371_core_adc_data_i0),
        .adc_data_1(axi_ad9371_core_adc_data_q0),
        .adc_data_2(axi_ad9371_core_adc_data_i1),
        .adc_data_3(axi_ad9371_core_adc_data_q1),
        .adc_enable_0(axi_ad9371_core_adc_enable_i0),
        .adc_enable_1(axi_ad9371_core_adc_enable_q0),
        .adc_enable_2(axi_ad9371_core_adc_enable_i1),
        .adc_enable_3(axi_ad9371_core_adc_enable_q1),
        .adc_rst(axi_ad9371_rx_jesd_rstgen_peripheral_reset),
        .adc_sync(util_ad9371_rx_cpack_adc_sync),
        .adc_valid(util_ad9371_rx_cpack_adc_valid),
        .adc_valid_0(axi_ad9371_core_adc_valid_i0),
        .adc_valid_1(axi_ad9371_core_adc_valid_q0),
        .adc_valid_2(axi_ad9371_core_adc_valid_i1),
        .adc_valid_3(axi_ad9371_core_adc_valid_q1));
  system_util_ad9371_rx_os_cpack_0 util_ad9371_rx_os_cpack
       (.adc_clk(axi_ad9371_rx_os_clkgen_clk_0),
        .adc_data(util_ad9371_rx_os_cpack_adc_data),
        .adc_data_0(axi_ad9371_core_adc_os_data_i0),
        .adc_data_1(axi_ad9371_core_adc_os_data_q0),
        .adc_enable_0(axi_ad9371_core_adc_os_enable_i0),
        .adc_enable_1(axi_ad9371_core_adc_os_enable_q0),
        .adc_rst(axi_ad9371_rx_os_jesd_rstgen_peripheral_reset),
        .adc_sync(util_ad9371_rx_os_cpack_adc_sync),
        .adc_valid(util_ad9371_rx_os_cpack_adc_valid),
        .adc_valid_0(axi_ad9371_core_adc_os_valid_i0),
        .adc_valid_1(axi_ad9371_core_adc_os_valid_q0));
  system_util_ad9371_tx_upack_0 util_ad9371_tx_upack
       (.dac_clk(axi_ad9371_tx_clkgen_clk_0),
        .dac_data(axi_ad9371_dacfifo_dac_data),
        .dac_data_0(util_ad9371_tx_upack_dac_data_0),
        .dac_data_1(util_ad9371_tx_upack_dac_data_1),
        .dac_data_2(util_ad9371_tx_upack_dac_data_2),
        .dac_data_3(util_ad9371_tx_upack_dac_data_3),
        .dac_enable_0(axi_ad9371_core_dac_enable_i0),
        .dac_enable_1(axi_ad9371_core_dac_enable_q0),
        .dac_enable_2(axi_ad9371_core_dac_enable_i1),
        .dac_enable_3(axi_ad9371_core_dac_enable_q1),
        .dac_valid(util_ad9371_tx_upack_dac_valid),
        .dac_valid_0(axi_ad9371_core_dac_valid_i0),
        .dac_valid_1(axi_ad9371_core_dac_valid_q0),
        .dac_valid_2(axi_ad9371_core_dac_valid_i1),
        .dac_valid_3(axi_ad9371_core_dac_valid_q1));
  system_util_ad9371_xcvr_0 util_ad9371_xcvr
       (.cpll_ref_clk_0(rx_ref_clk_0_1),
        .cpll_ref_clk_1(rx_ref_clk_0_1),
        .cpll_ref_clk_2(rx_ref_clk_2_1),
        .cpll_ref_clk_3(rx_ref_clk_2_1),
        .qpll_ref_clk_0(tx_ref_clk_0_1),
        .rx_0_n(rx_data_0_n_1),
        .rx_0_p(rx_data_0_p_1),
        .rx_1_n(rx_data_1_n_1),
        .rx_1_p(rx_data_1_p_1),
        .rx_2_n(rx_data_2_n_1),
        .rx_2_p(rx_data_2_p_1),
        .rx_3_n(rx_data_3_n_1),
        .rx_3_p(rx_data_3_p_1),
        .rx_calign_0(axi_ad9371_rx_jesd_phy_en_char_align),
        .rx_calign_1(axi_ad9371_rx_jesd_phy_en_char_align),
        .rx_calign_2(axi_ad9371_rx_os_jesd_phy_en_char_align),
        .rx_calign_3(axi_ad9371_rx_os_jesd_phy_en_char_align),
        .rx_charisk_0(util_ad9371_xcvr_rx_0_rxcharisk),
        .rx_charisk_1(util_ad9371_xcvr_rx_1_rxcharisk),
        .rx_charisk_2(util_ad9371_xcvr_rx_2_rxcharisk),
        .rx_charisk_3(util_ad9371_xcvr_rx_3_rxcharisk),
        .rx_clk_0(axi_ad9371_rx_clkgen_clk_0),
        .rx_clk_1(axi_ad9371_rx_clkgen_clk_0),
        .rx_clk_2(axi_ad9371_rx_os_clkgen_clk_0),
        .rx_clk_3(axi_ad9371_rx_os_clkgen_clk_0),
        .rx_data_0(util_ad9371_xcvr_rx_0_rxdata),
        .rx_data_1(util_ad9371_xcvr_rx_1_rxdata),
        .rx_data_2(util_ad9371_xcvr_rx_2_rxdata),
        .rx_data_3(util_ad9371_xcvr_rx_3_rxdata),
        .rx_disperr_0(util_ad9371_xcvr_rx_0_rxdisperr),
        .rx_disperr_1(util_ad9371_xcvr_rx_1_rxdisperr),
        .rx_disperr_2(util_ad9371_xcvr_rx_2_rxdisperr),
        .rx_disperr_3(util_ad9371_xcvr_rx_3_rxdisperr),
        .rx_notintable_0(util_ad9371_xcvr_rx_0_rxnotintable),
        .rx_notintable_1(util_ad9371_xcvr_rx_1_rxnotintable),
        .rx_notintable_2(util_ad9371_xcvr_rx_2_rxnotintable),
        .rx_notintable_3(util_ad9371_xcvr_rx_3_rxnotintable),
        .rx_out_clk_0(util_ad9371_xcvr_rx_out_clk_0),
        .rx_out_clk_2(util_ad9371_xcvr_rx_out_clk_2),
        .tx_0_n(util_ad9371_xcvr_tx_0_n),
        .tx_0_p(util_ad9371_xcvr_tx_0_p),
        .tx_1_n(util_ad9371_xcvr_tx_1_n),
        .tx_1_p(util_ad9371_xcvr_tx_1_p),
        .tx_2_n(util_ad9371_xcvr_tx_2_n),
        .tx_2_p(util_ad9371_xcvr_tx_2_p),
        .tx_3_n(util_ad9371_xcvr_tx_3_n),
        .tx_3_p(util_ad9371_xcvr_tx_3_p),
        .tx_charisk_0(axi_ad9371_tx_jesd_tx_phy3_txcharisk),
        .tx_charisk_1(axi_ad9371_tx_jesd_tx_phy0_txcharisk),
        .tx_charisk_2(axi_ad9371_tx_jesd_tx_phy1_txcharisk),
        .tx_charisk_3(axi_ad9371_tx_jesd_tx_phy2_txcharisk),
        .tx_clk_0(axi_ad9371_tx_clkgen_clk_0),
        .tx_clk_1(axi_ad9371_tx_clkgen_clk_0),
        .tx_clk_2(axi_ad9371_tx_clkgen_clk_0),
        .tx_clk_3(axi_ad9371_tx_clkgen_clk_0),
        .tx_data_0(axi_ad9371_tx_jesd_tx_phy3_txdata),
        .tx_data_1(axi_ad9371_tx_jesd_tx_phy0_txdata),
        .tx_data_2(axi_ad9371_tx_jesd_tx_phy1_txdata),
        .tx_data_3(axi_ad9371_tx_jesd_tx_phy2_txdata),
        .tx_out_clk_0(util_ad9371_xcvr_tx_out_clk_0),
        .up_clk(sys_cpu_clk),
        .up_cm_addr_0(axi_ad9371_tx_xcvr_up_cm_0_addr),
        .up_cm_enb_0(axi_ad9371_tx_xcvr_up_cm_0_enb),
        .up_cm_rdata_0(axi_ad9371_tx_xcvr_up_cm_0_rdata),
        .up_cm_ready_0(axi_ad9371_tx_xcvr_up_cm_0_ready),
        .up_cm_wdata_0(axi_ad9371_tx_xcvr_up_cm_0_wdata),
        .up_cm_wr_0(axi_ad9371_tx_xcvr_up_cm_0_wr),
        .up_cpll_rst_0(axi_ad9371_rx_xcvr_up_pll_rst),
        .up_cpll_rst_1(axi_ad9371_rx_xcvr_up_pll_rst),
        .up_cpll_rst_2(axi_ad9371_rx_os_xcvr_up_pll_rst),
        .up_cpll_rst_3(axi_ad9371_rx_os_xcvr_up_pll_rst),
        .up_es_addr_0(axi_ad9371_rx_xcvr_up_es_0_addr),
        .up_es_addr_1(axi_ad9371_rx_xcvr_up_es_1_addr),
        .up_es_addr_2(axi_ad9371_rx_os_xcvr_up_es_0_addr),
        .up_es_addr_3(axi_ad9371_rx_os_xcvr_up_es_1_addr),
        .up_es_enb_0(axi_ad9371_rx_xcvr_up_es_0_enb),
        .up_es_enb_1(axi_ad9371_rx_xcvr_up_es_1_enb),
        .up_es_enb_2(axi_ad9371_rx_os_xcvr_up_es_0_enb),
        .up_es_enb_3(axi_ad9371_rx_os_xcvr_up_es_1_enb),
        .up_es_rdata_0(axi_ad9371_rx_xcvr_up_es_0_rdata),
        .up_es_rdata_1(axi_ad9371_rx_xcvr_up_es_1_rdata),
        .up_es_rdata_2(axi_ad9371_rx_os_xcvr_up_es_0_rdata),
        .up_es_rdata_3(axi_ad9371_rx_os_xcvr_up_es_1_rdata),
        .up_es_ready_0(axi_ad9371_rx_xcvr_up_es_0_ready),
        .up_es_ready_1(axi_ad9371_rx_xcvr_up_es_1_ready),
        .up_es_ready_2(axi_ad9371_rx_os_xcvr_up_es_0_ready),
        .up_es_ready_3(axi_ad9371_rx_os_xcvr_up_es_1_ready),
        .up_es_wdata_0(axi_ad9371_rx_xcvr_up_es_0_wdata),
        .up_es_wdata_1(axi_ad9371_rx_xcvr_up_es_1_wdata),
        .up_es_wdata_2(axi_ad9371_rx_os_xcvr_up_es_0_wdata),
        .up_es_wdata_3(axi_ad9371_rx_os_xcvr_up_es_1_wdata),
        .up_es_wr_0(axi_ad9371_rx_xcvr_up_es_0_wr),
        .up_es_wr_1(axi_ad9371_rx_xcvr_up_es_1_wr),
        .up_es_wr_2(axi_ad9371_rx_os_xcvr_up_es_0_wr),
        .up_es_wr_3(axi_ad9371_rx_os_xcvr_up_es_1_wr),
        .up_qpll_rst_0(axi_ad9371_tx_xcvr_up_pll_rst),
        .up_rstn(sys_cpu_resetn),
        .up_rx_addr_0(axi_ad9371_rx_xcvr_up_ch_0_addr),
        .up_rx_addr_1(axi_ad9371_rx_xcvr_up_ch_1_addr),
        .up_rx_addr_2(axi_ad9371_rx_os_xcvr_up_ch_0_addr),
        .up_rx_addr_3(axi_ad9371_rx_os_xcvr_up_ch_1_addr),
        .up_rx_enb_0(axi_ad9371_rx_xcvr_up_ch_0_enb),
        .up_rx_enb_1(axi_ad9371_rx_xcvr_up_ch_1_enb),
        .up_rx_enb_2(axi_ad9371_rx_os_xcvr_up_ch_0_enb),
        .up_rx_enb_3(axi_ad9371_rx_os_xcvr_up_ch_1_enb),
        .up_rx_lpm_dfe_n_0(axi_ad9371_rx_xcvr_up_ch_0_lpm_dfe_n),
        .up_rx_lpm_dfe_n_1(axi_ad9371_rx_xcvr_up_ch_1_lpm_dfe_n),
        .up_rx_lpm_dfe_n_2(axi_ad9371_rx_os_xcvr_up_ch_0_lpm_dfe_n),
        .up_rx_lpm_dfe_n_3(axi_ad9371_rx_os_xcvr_up_ch_1_lpm_dfe_n),
        .up_rx_out_clk_sel_0(axi_ad9371_rx_xcvr_up_ch_0_out_clk_sel),
        .up_rx_out_clk_sel_1(axi_ad9371_rx_xcvr_up_ch_1_out_clk_sel),
        .up_rx_out_clk_sel_2(axi_ad9371_rx_os_xcvr_up_ch_0_out_clk_sel),
        .up_rx_out_clk_sel_3(axi_ad9371_rx_os_xcvr_up_ch_1_out_clk_sel),
        .up_rx_pll_locked_0(axi_ad9371_rx_xcvr_up_ch_0_pll_locked),
        .up_rx_pll_locked_1(axi_ad9371_rx_xcvr_up_ch_1_pll_locked),
        .up_rx_pll_locked_2(axi_ad9371_rx_os_xcvr_up_ch_0_pll_locked),
        .up_rx_pll_locked_3(axi_ad9371_rx_os_xcvr_up_ch_1_pll_locked),
        .up_rx_rate_0(axi_ad9371_rx_xcvr_up_ch_0_rate),
        .up_rx_rate_1(axi_ad9371_rx_xcvr_up_ch_1_rate),
        .up_rx_rate_2(axi_ad9371_rx_os_xcvr_up_ch_0_rate),
        .up_rx_rate_3(axi_ad9371_rx_os_xcvr_up_ch_1_rate),
        .up_rx_rdata_0(axi_ad9371_rx_xcvr_up_ch_0_rdata),
        .up_rx_rdata_1(axi_ad9371_rx_xcvr_up_ch_1_rdata),
        .up_rx_rdata_2(axi_ad9371_rx_os_xcvr_up_ch_0_rdata),
        .up_rx_rdata_3(axi_ad9371_rx_os_xcvr_up_ch_1_rdata),
        .up_rx_ready_0(axi_ad9371_rx_xcvr_up_ch_0_ready),
        .up_rx_ready_1(axi_ad9371_rx_xcvr_up_ch_1_ready),
        .up_rx_ready_2(axi_ad9371_rx_os_xcvr_up_ch_0_ready),
        .up_rx_ready_3(axi_ad9371_rx_os_xcvr_up_ch_1_ready),
        .up_rx_rst_0(axi_ad9371_rx_xcvr_up_ch_0_rst),
        .up_rx_rst_1(axi_ad9371_rx_xcvr_up_ch_1_rst),
        .up_rx_rst_2(axi_ad9371_rx_os_xcvr_up_ch_0_rst),
        .up_rx_rst_3(axi_ad9371_rx_os_xcvr_up_ch_1_rst),
        .up_rx_rst_done_0(axi_ad9371_rx_xcvr_up_ch_0_rst_done),
        .up_rx_rst_done_1(axi_ad9371_rx_xcvr_up_ch_1_rst_done),
        .up_rx_rst_done_2(axi_ad9371_rx_os_xcvr_up_ch_0_rst_done),
        .up_rx_rst_done_3(axi_ad9371_rx_os_xcvr_up_ch_1_rst_done),
        .up_rx_sys_clk_sel_0(axi_ad9371_rx_xcvr_up_ch_0_sys_clk_sel),
        .up_rx_sys_clk_sel_1(axi_ad9371_rx_xcvr_up_ch_1_sys_clk_sel),
        .up_rx_sys_clk_sel_2(axi_ad9371_rx_os_xcvr_up_ch_0_sys_clk_sel),
        .up_rx_sys_clk_sel_3(axi_ad9371_rx_os_xcvr_up_ch_1_sys_clk_sel),
        .up_rx_user_ready_0(axi_ad9371_rx_xcvr_up_ch_0_user_ready),
        .up_rx_user_ready_1(axi_ad9371_rx_xcvr_up_ch_1_user_ready),
        .up_rx_user_ready_2(axi_ad9371_rx_os_xcvr_up_ch_0_user_ready),
        .up_rx_user_ready_3(axi_ad9371_rx_os_xcvr_up_ch_1_user_ready),
        .up_rx_wdata_0(axi_ad9371_rx_xcvr_up_ch_0_wdata),
        .up_rx_wdata_1(axi_ad9371_rx_xcvr_up_ch_1_wdata),
        .up_rx_wdata_2(axi_ad9371_rx_os_xcvr_up_ch_0_wdata),
        .up_rx_wdata_3(axi_ad9371_rx_os_xcvr_up_ch_1_wdata),
        .up_rx_wr_0(axi_ad9371_rx_xcvr_up_ch_0_wr),
        .up_rx_wr_1(axi_ad9371_rx_xcvr_up_ch_1_wr),
        .up_rx_wr_2(axi_ad9371_rx_os_xcvr_up_ch_0_wr),
        .up_rx_wr_3(axi_ad9371_rx_os_xcvr_up_ch_1_wr),
        .up_tx_addr_0(axi_ad9371_tx_xcvr_up_ch_0_addr),
        .up_tx_addr_1(axi_ad9371_tx_xcvr_up_ch_1_addr),
        .up_tx_addr_2(axi_ad9371_tx_xcvr_up_ch_2_addr),
        .up_tx_addr_3(axi_ad9371_tx_xcvr_up_ch_3_addr),
        .up_tx_enb_0(axi_ad9371_tx_xcvr_up_ch_0_enb),
        .up_tx_enb_1(axi_ad9371_tx_xcvr_up_ch_1_enb),
        .up_tx_enb_2(axi_ad9371_tx_xcvr_up_ch_2_enb),
        .up_tx_enb_3(axi_ad9371_tx_xcvr_up_ch_3_enb),
        .up_tx_lpm_dfe_n_0(axi_ad9371_tx_xcvr_up_ch_0_lpm_dfe_n),
        .up_tx_lpm_dfe_n_1(axi_ad9371_tx_xcvr_up_ch_1_lpm_dfe_n),
        .up_tx_lpm_dfe_n_2(axi_ad9371_tx_xcvr_up_ch_2_lpm_dfe_n),
        .up_tx_lpm_dfe_n_3(axi_ad9371_tx_xcvr_up_ch_3_lpm_dfe_n),
        .up_tx_out_clk_sel_0(axi_ad9371_tx_xcvr_up_ch_0_out_clk_sel),
        .up_tx_out_clk_sel_1(axi_ad9371_tx_xcvr_up_ch_1_out_clk_sel),
        .up_tx_out_clk_sel_2(axi_ad9371_tx_xcvr_up_ch_2_out_clk_sel),
        .up_tx_out_clk_sel_3(axi_ad9371_tx_xcvr_up_ch_3_out_clk_sel),
        .up_tx_pll_locked_0(axi_ad9371_tx_xcvr_up_ch_0_pll_locked),
        .up_tx_pll_locked_1(axi_ad9371_tx_xcvr_up_ch_1_pll_locked),
        .up_tx_pll_locked_2(axi_ad9371_tx_xcvr_up_ch_2_pll_locked),
        .up_tx_pll_locked_3(axi_ad9371_tx_xcvr_up_ch_3_pll_locked),
        .up_tx_rate_0(axi_ad9371_tx_xcvr_up_ch_0_rate),
        .up_tx_rate_1(axi_ad9371_tx_xcvr_up_ch_1_rate),
        .up_tx_rate_2(axi_ad9371_tx_xcvr_up_ch_2_rate),
        .up_tx_rate_3(axi_ad9371_tx_xcvr_up_ch_3_rate),
        .up_tx_rdata_0(axi_ad9371_tx_xcvr_up_ch_0_rdata),
        .up_tx_rdata_1(axi_ad9371_tx_xcvr_up_ch_1_rdata),
        .up_tx_rdata_2(axi_ad9371_tx_xcvr_up_ch_2_rdata),
        .up_tx_rdata_3(axi_ad9371_tx_xcvr_up_ch_3_rdata),
        .up_tx_ready_0(axi_ad9371_tx_xcvr_up_ch_0_ready),
        .up_tx_ready_1(axi_ad9371_tx_xcvr_up_ch_1_ready),
        .up_tx_ready_2(axi_ad9371_tx_xcvr_up_ch_2_ready),
        .up_tx_ready_3(axi_ad9371_tx_xcvr_up_ch_3_ready),
        .up_tx_rst_0(axi_ad9371_tx_xcvr_up_ch_0_rst),
        .up_tx_rst_1(axi_ad9371_tx_xcvr_up_ch_1_rst),
        .up_tx_rst_2(axi_ad9371_tx_xcvr_up_ch_2_rst),
        .up_tx_rst_3(axi_ad9371_tx_xcvr_up_ch_3_rst),
        .up_tx_rst_done_0(axi_ad9371_tx_xcvr_up_ch_0_rst_done),
        .up_tx_rst_done_1(axi_ad9371_tx_xcvr_up_ch_1_rst_done),
        .up_tx_rst_done_2(axi_ad9371_tx_xcvr_up_ch_2_rst_done),
        .up_tx_rst_done_3(axi_ad9371_tx_xcvr_up_ch_3_rst_done),
        .up_tx_sys_clk_sel_0(axi_ad9371_tx_xcvr_up_ch_0_sys_clk_sel),
        .up_tx_sys_clk_sel_1(axi_ad9371_tx_xcvr_up_ch_1_sys_clk_sel),
        .up_tx_sys_clk_sel_2(axi_ad9371_tx_xcvr_up_ch_2_sys_clk_sel),
        .up_tx_sys_clk_sel_3(axi_ad9371_tx_xcvr_up_ch_3_sys_clk_sel),
        .up_tx_user_ready_0(axi_ad9371_tx_xcvr_up_ch_0_user_ready),
        .up_tx_user_ready_1(axi_ad9371_tx_xcvr_up_ch_1_user_ready),
        .up_tx_user_ready_2(axi_ad9371_tx_xcvr_up_ch_2_user_ready),
        .up_tx_user_ready_3(axi_ad9371_tx_xcvr_up_ch_3_user_ready),
        .up_tx_wdata_0(axi_ad9371_tx_xcvr_up_ch_0_wdata),
        .up_tx_wdata_1(axi_ad9371_tx_xcvr_up_ch_1_wdata),
        .up_tx_wdata_2(axi_ad9371_tx_xcvr_up_ch_2_wdata),
        .up_tx_wdata_3(axi_ad9371_tx_xcvr_up_ch_3_wdata),
        .up_tx_wr_0(axi_ad9371_tx_xcvr_up_ch_0_wr),
        .up_tx_wr_1(axi_ad9371_tx_xcvr_up_ch_1_wr),
        .up_tx_wr_2(axi_ad9371_tx_xcvr_up_ch_2_wr),
        .up_tx_wr_3(axi_ad9371_tx_xcvr_up_ch_3_wr));
endmodule

module system_axi_cpu_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arprot,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awprot,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arprot,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awprot,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arprot,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awprot,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arprot,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awprot,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arprot,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awprot,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    M14_ACLK,
    M14_ARESETN,
    M14_AXI_araddr,
    M14_AXI_arprot,
    M14_AXI_arready,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awprot,
    M14_AXI_awready,
    M14_AXI_awvalid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    M15_ACLK,
    M15_ARESETN,
    M15_AXI_araddr,
    M15_AXI_arprot,
    M15_AXI_arready,
    M15_AXI_arvalid,
    M15_AXI_awaddr,
    M15_AXI_awprot,
    M15_AXI_awready,
    M15_AXI_awvalid,
    M15_AXI_bready,
    M15_AXI_bresp,
    M15_AXI_bvalid,
    M15_AXI_rdata,
    M15_AXI_rready,
    M15_AXI_rresp,
    M15_AXI_rvalid,
    M15_AXI_wdata,
    M15_AXI_wready,
    M15_AXI_wstrb,
    M15_AXI_wvalid,
    M16_ACLK,
    M16_ARESETN,
    M16_AXI_araddr,
    M16_AXI_arprot,
    M16_AXI_arready,
    M16_AXI_arvalid,
    M16_AXI_awaddr,
    M16_AXI_awprot,
    M16_AXI_awready,
    M16_AXI_awvalid,
    M16_AXI_bready,
    M16_AXI_bresp,
    M16_AXI_bvalid,
    M16_AXI_rdata,
    M16_AXI_rready,
    M16_AXI_rresp,
    M16_AXI_rvalid,
    M16_AXI_wdata,
    M16_AXI_wready,
    M16_AXI_wstrb,
    M16_AXI_wvalid,
    M17_ACLK,
    M17_ARESETN,
    M17_AXI_araddr,
    M17_AXI_arprot,
    M17_AXI_arready,
    M17_AXI_arvalid,
    M17_AXI_awaddr,
    M17_AXI_awprot,
    M17_AXI_awready,
    M17_AXI_awvalid,
    M17_AXI_bready,
    M17_AXI_bresp,
    M17_AXI_bvalid,
    M17_AXI_rdata,
    M17_AXI_rready,
    M17_AXI_rresp,
    M17_AXI_rvalid,
    M17_AXI_wdata,
    M17_AXI_wready,
    M17_AXI_wstrb,
    M17_AXI_wvalid,
    M18_ACLK,
    M18_ARESETN,
    M18_AXI_araddr,
    M18_AXI_arprot,
    M18_AXI_arready,
    M18_AXI_arvalid,
    M18_AXI_awaddr,
    M18_AXI_awprot,
    M18_AXI_awready,
    M18_AXI_awvalid,
    M18_AXI_bready,
    M18_AXI_bresp,
    M18_AXI_bvalid,
    M18_AXI_rdata,
    M18_AXI_rready,
    M18_AXI_rresp,
    M18_AXI_rvalid,
    M18_AXI_wdata,
    M18_AXI_wready,
    M18_AXI_wstrb,
    M18_AXI_wvalid,
    M19_ACLK,
    M19_ARESETN,
    M19_AXI_araddr,
    M19_AXI_arprot,
    M19_AXI_arready,
    M19_AXI_arvalid,
    M19_AXI_awaddr,
    M19_AXI_awprot,
    M19_AXI_awready,
    M19_AXI_awvalid,
    M19_AXI_bready,
    M19_AXI_bresp,
    M19_AXI_bvalid,
    M19_AXI_rdata,
    M19_AXI_rready,
    M19_AXI_rresp,
    M19_AXI_rvalid,
    M19_AXI_wdata,
    M19_AXI_wready,
    M19_AXI_wstrb,
    M19_AXI_wvalid,
    M20_ACLK,
    M20_ARESETN,
    M20_AXI_araddr,
    M20_AXI_arprot,
    M20_AXI_arready,
    M20_AXI_arvalid,
    M20_AXI_awaddr,
    M20_AXI_awprot,
    M20_AXI_awready,
    M20_AXI_awvalid,
    M20_AXI_bready,
    M20_AXI_bresp,
    M20_AXI_bvalid,
    M20_AXI_rdata,
    M20_AXI_rready,
    M20_AXI_rresp,
    M20_AXI_rvalid,
    M20_AXI_wdata,
    M20_AXI_wready,
    M20_AXI_wstrb,
    M20_AXI_wvalid,
    M21_ACLK,
    M21_ARESETN,
    M21_AXI_araddr,
    M21_AXI_arprot,
    M21_AXI_arready,
    M21_AXI_arvalid,
    M21_AXI_awaddr,
    M21_AXI_awprot,
    M21_AXI_awready,
    M21_AXI_awvalid,
    M21_AXI_bready,
    M21_AXI_bresp,
    M21_AXI_bvalid,
    M21_AXI_rdata,
    M21_AXI_rready,
    M21_AXI_rresp,
    M21_AXI_rvalid,
    M21_AXI_wdata,
    M21_AXI_wready,
    M21_AXI_wstrb,
    M21_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  output [2:0]M09_AXI_arprot;
  input [0:0]M09_AXI_arready;
  output [0:0]M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  output [2:0]M09_AXI_awprot;
  input [0:0]M09_AXI_awready;
  output [0:0]M09_AXI_awvalid;
  output [0:0]M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input [0:0]M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output [0:0]M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input [0:0]M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input [0:0]M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output [0:0]M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  output [2:0]M10_AXI_arprot;
  input [0:0]M10_AXI_arready;
  output [0:0]M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  output [2:0]M10_AXI_awprot;
  input [0:0]M10_AXI_awready;
  output [0:0]M10_AXI_awvalid;
  output [0:0]M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input [0:0]M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output [0:0]M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input [0:0]M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input [0:0]M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output [0:0]M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [31:0]M11_AXI_araddr;
  output [2:0]M11_AXI_arprot;
  input [0:0]M11_AXI_arready;
  output [0:0]M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  output [2:0]M11_AXI_awprot;
  input [0:0]M11_AXI_awready;
  output [0:0]M11_AXI_awvalid;
  output [0:0]M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input [0:0]M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output [0:0]M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input [0:0]M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input [0:0]M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output [0:0]M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output [31:0]M12_AXI_araddr;
  output [2:0]M12_AXI_arprot;
  input [0:0]M12_AXI_arready;
  output [0:0]M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  output [2:0]M12_AXI_awprot;
  input [0:0]M12_AXI_awready;
  output [0:0]M12_AXI_awvalid;
  output [0:0]M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input [0:0]M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output [0:0]M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input [0:0]M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input [0:0]M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output [0:0]M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output [31:0]M13_AXI_araddr;
  output [2:0]M13_AXI_arprot;
  input [0:0]M13_AXI_arready;
  output [0:0]M13_AXI_arvalid;
  output [31:0]M13_AXI_awaddr;
  output [2:0]M13_AXI_awprot;
  input [0:0]M13_AXI_awready;
  output [0:0]M13_AXI_awvalid;
  output [0:0]M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input [0:0]M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output [0:0]M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input [0:0]M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input [0:0]M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output [0:0]M13_AXI_wvalid;
  input M14_ACLK;
  input M14_ARESETN;
  output [31:0]M14_AXI_araddr;
  output [2:0]M14_AXI_arprot;
  input [0:0]M14_AXI_arready;
  output [0:0]M14_AXI_arvalid;
  output [31:0]M14_AXI_awaddr;
  output [2:0]M14_AXI_awprot;
  input [0:0]M14_AXI_awready;
  output [0:0]M14_AXI_awvalid;
  output [0:0]M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input [0:0]M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  output [0:0]M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input [0:0]M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  input [0:0]M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output [0:0]M14_AXI_wvalid;
  input M15_ACLK;
  input M15_ARESETN;
  output [31:0]M15_AXI_araddr;
  output [2:0]M15_AXI_arprot;
  input [0:0]M15_AXI_arready;
  output [0:0]M15_AXI_arvalid;
  output [31:0]M15_AXI_awaddr;
  output [2:0]M15_AXI_awprot;
  input [0:0]M15_AXI_awready;
  output [0:0]M15_AXI_awvalid;
  output [0:0]M15_AXI_bready;
  input [1:0]M15_AXI_bresp;
  input [0:0]M15_AXI_bvalid;
  input [31:0]M15_AXI_rdata;
  output [0:0]M15_AXI_rready;
  input [1:0]M15_AXI_rresp;
  input [0:0]M15_AXI_rvalid;
  output [31:0]M15_AXI_wdata;
  input [0:0]M15_AXI_wready;
  output [3:0]M15_AXI_wstrb;
  output [0:0]M15_AXI_wvalid;
  input M16_ACLK;
  input M16_ARESETN;
  output [31:0]M16_AXI_araddr;
  output [2:0]M16_AXI_arprot;
  input [0:0]M16_AXI_arready;
  output [0:0]M16_AXI_arvalid;
  output [31:0]M16_AXI_awaddr;
  output [2:0]M16_AXI_awprot;
  input [0:0]M16_AXI_awready;
  output [0:0]M16_AXI_awvalid;
  output [0:0]M16_AXI_bready;
  input [1:0]M16_AXI_bresp;
  input [0:0]M16_AXI_bvalid;
  input [31:0]M16_AXI_rdata;
  output [0:0]M16_AXI_rready;
  input [1:0]M16_AXI_rresp;
  input [0:0]M16_AXI_rvalid;
  output [31:0]M16_AXI_wdata;
  input [0:0]M16_AXI_wready;
  output [3:0]M16_AXI_wstrb;
  output [0:0]M16_AXI_wvalid;
  input M17_ACLK;
  input M17_ARESETN;
  output [31:0]M17_AXI_araddr;
  output [2:0]M17_AXI_arprot;
  input [0:0]M17_AXI_arready;
  output [0:0]M17_AXI_arvalid;
  output [31:0]M17_AXI_awaddr;
  output [2:0]M17_AXI_awprot;
  input [0:0]M17_AXI_awready;
  output [0:0]M17_AXI_awvalid;
  output [0:0]M17_AXI_bready;
  input [1:0]M17_AXI_bresp;
  input [0:0]M17_AXI_bvalid;
  input [31:0]M17_AXI_rdata;
  output [0:0]M17_AXI_rready;
  input [1:0]M17_AXI_rresp;
  input [0:0]M17_AXI_rvalid;
  output [31:0]M17_AXI_wdata;
  input [0:0]M17_AXI_wready;
  output [3:0]M17_AXI_wstrb;
  output [0:0]M17_AXI_wvalid;
  input M18_ACLK;
  input M18_ARESETN;
  output [31:0]M18_AXI_araddr;
  output [2:0]M18_AXI_arprot;
  input [0:0]M18_AXI_arready;
  output [0:0]M18_AXI_arvalid;
  output [31:0]M18_AXI_awaddr;
  output [2:0]M18_AXI_awprot;
  input [0:0]M18_AXI_awready;
  output [0:0]M18_AXI_awvalid;
  output [0:0]M18_AXI_bready;
  input [1:0]M18_AXI_bresp;
  input [0:0]M18_AXI_bvalid;
  input [31:0]M18_AXI_rdata;
  output [0:0]M18_AXI_rready;
  input [1:0]M18_AXI_rresp;
  input [0:0]M18_AXI_rvalid;
  output [31:0]M18_AXI_wdata;
  input [0:0]M18_AXI_wready;
  output [3:0]M18_AXI_wstrb;
  output [0:0]M18_AXI_wvalid;
  input M19_ACLK;
  input M19_ARESETN;
  output [31:0]M19_AXI_araddr;
  output [2:0]M19_AXI_arprot;
  input [0:0]M19_AXI_arready;
  output [0:0]M19_AXI_arvalid;
  output [31:0]M19_AXI_awaddr;
  output [2:0]M19_AXI_awprot;
  input [0:0]M19_AXI_awready;
  output [0:0]M19_AXI_awvalid;
  output [0:0]M19_AXI_bready;
  input [1:0]M19_AXI_bresp;
  input [0:0]M19_AXI_bvalid;
  input [31:0]M19_AXI_rdata;
  output [0:0]M19_AXI_rready;
  input [1:0]M19_AXI_rresp;
  input [0:0]M19_AXI_rvalid;
  output [31:0]M19_AXI_wdata;
  input [0:0]M19_AXI_wready;
  output [3:0]M19_AXI_wstrb;
  output [0:0]M19_AXI_wvalid;
  input M20_ACLK;
  input M20_ARESETN;
  output [31:0]M20_AXI_araddr;
  output [2:0]M20_AXI_arprot;
  input [0:0]M20_AXI_arready;
  output [0:0]M20_AXI_arvalid;
  output [31:0]M20_AXI_awaddr;
  output [2:0]M20_AXI_awprot;
  input [0:0]M20_AXI_awready;
  output [0:0]M20_AXI_awvalid;
  output [0:0]M20_AXI_bready;
  input [1:0]M20_AXI_bresp;
  input [0:0]M20_AXI_bvalid;
  input [31:0]M20_AXI_rdata;
  output [0:0]M20_AXI_rready;
  input [1:0]M20_AXI_rresp;
  input [0:0]M20_AXI_rvalid;
  output [31:0]M20_AXI_wdata;
  input [0:0]M20_AXI_wready;
  output [3:0]M20_AXI_wstrb;
  output [0:0]M20_AXI_wvalid;
  input M21_ACLK;
  input M21_ARESETN;
  output [31:0]M21_AXI_araddr;
  output [2:0]M21_AXI_arprot;
  input [0:0]M21_AXI_arready;
  output [0:0]M21_AXI_arvalid;
  output [31:0]M21_AXI_awaddr;
  output [2:0]M21_AXI_awprot;
  input [0:0]M21_AXI_awready;
  output [0:0]M21_AXI_awvalid;
  output [0:0]M21_AXI_bready;
  input [1:0]M21_AXI_bresp;
  input [0:0]M21_AXI_bvalid;
  input [31:0]M21_AXI_rdata;
  output [0:0]M21_AXI_rready;
  input [1:0]M21_AXI_rresp;
  input [0:0]M21_AXI_rvalid;
  output [31:0]M21_AXI_wdata;
  input [0:0]M21_AXI_wready;
  output [3:0]M21_AXI_wstrb;
  output [0:0]M21_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_cpu_interconnect_ACLK_net;
  wire axi_cpu_interconnect_ARESETN_net;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_ARADDR;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_ARPROT;
  wire axi_cpu_interconnect_to_s00_couplers_ARREADY;
  wire axi_cpu_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_AWADDR;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_AWPROT;
  wire axi_cpu_interconnect_to_s00_couplers_AWREADY;
  wire axi_cpu_interconnect_to_s00_couplers_AWVALID;
  wire axi_cpu_interconnect_to_s00_couplers_BREADY;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_BRESP;
  wire axi_cpu_interconnect_to_s00_couplers_BVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_RDATA;
  wire axi_cpu_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_RRESP;
  wire axi_cpu_interconnect_to_s00_couplers_RVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_WDATA;
  wire axi_cpu_interconnect_to_s00_couplers_WREADY;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_WSTRB;
  wire axi_cpu_interconnect_to_s00_couplers_WVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_ARADDR;
  wire [2:0]i00_couplers_to_tier2_xbar_0_ARPROT;
  wire [0:0]i00_couplers_to_tier2_xbar_0_ARREADY;
  wire [0:0]i00_couplers_to_tier2_xbar_0_ARVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_AWADDR;
  wire [2:0]i00_couplers_to_tier2_xbar_0_AWPROT;
  wire [0:0]i00_couplers_to_tier2_xbar_0_AWREADY;
  wire [0:0]i00_couplers_to_tier2_xbar_0_AWVALID;
  wire [0:0]i00_couplers_to_tier2_xbar_0_BREADY;
  wire [1:0]i00_couplers_to_tier2_xbar_0_BRESP;
  wire [0:0]i00_couplers_to_tier2_xbar_0_BVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_RDATA;
  wire [0:0]i00_couplers_to_tier2_xbar_0_RREADY;
  wire [1:0]i00_couplers_to_tier2_xbar_0_RRESP;
  wire [0:0]i00_couplers_to_tier2_xbar_0_RVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_WDATA;
  wire [0:0]i00_couplers_to_tier2_xbar_0_WREADY;
  wire [3:0]i00_couplers_to_tier2_xbar_0_WSTRB;
  wire [0:0]i00_couplers_to_tier2_xbar_0_WVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_ARADDR;
  wire [2:0]i01_couplers_to_tier2_xbar_1_ARPROT;
  wire [0:0]i01_couplers_to_tier2_xbar_1_ARREADY;
  wire [0:0]i01_couplers_to_tier2_xbar_1_ARVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_AWADDR;
  wire [2:0]i01_couplers_to_tier2_xbar_1_AWPROT;
  wire [0:0]i01_couplers_to_tier2_xbar_1_AWREADY;
  wire [0:0]i01_couplers_to_tier2_xbar_1_AWVALID;
  wire [0:0]i01_couplers_to_tier2_xbar_1_BREADY;
  wire [1:0]i01_couplers_to_tier2_xbar_1_BRESP;
  wire [0:0]i01_couplers_to_tier2_xbar_1_BVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_RDATA;
  wire [0:0]i01_couplers_to_tier2_xbar_1_RREADY;
  wire [1:0]i01_couplers_to_tier2_xbar_1_RRESP;
  wire [0:0]i01_couplers_to_tier2_xbar_1_RVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_WDATA;
  wire [0:0]i01_couplers_to_tier2_xbar_1_WREADY;
  wire [3:0]i01_couplers_to_tier2_xbar_1_WSTRB;
  wire [0:0]i01_couplers_to_tier2_xbar_1_WVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_ARADDR;
  wire [2:0]i02_couplers_to_tier2_xbar_2_ARPROT;
  wire [0:0]i02_couplers_to_tier2_xbar_2_ARREADY;
  wire [0:0]i02_couplers_to_tier2_xbar_2_ARVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_AWADDR;
  wire [2:0]i02_couplers_to_tier2_xbar_2_AWPROT;
  wire [0:0]i02_couplers_to_tier2_xbar_2_AWREADY;
  wire [0:0]i02_couplers_to_tier2_xbar_2_AWVALID;
  wire [0:0]i02_couplers_to_tier2_xbar_2_BREADY;
  wire [1:0]i02_couplers_to_tier2_xbar_2_BRESP;
  wire [0:0]i02_couplers_to_tier2_xbar_2_BVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_RDATA;
  wire [0:0]i02_couplers_to_tier2_xbar_2_RREADY;
  wire [1:0]i02_couplers_to_tier2_xbar_2_RRESP;
  wire [0:0]i02_couplers_to_tier2_xbar_2_RVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_WDATA;
  wire [0:0]i02_couplers_to_tier2_xbar_2_WREADY;
  wire [3:0]i02_couplers_to_tier2_xbar_2_WSTRB;
  wire [0:0]i02_couplers_to_tier2_xbar_2_WVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_ARADDR;
  wire m00_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m00_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_AWADDR;
  wire m00_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m00_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m00_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_cpu_interconnect_BRESP;
  wire m00_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_RDATA;
  wire m00_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_cpu_interconnect_RRESP;
  wire m00_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_WDATA;
  wire m00_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m00_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m00_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_ARADDR;
  wire m01_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m01_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_AWADDR;
  wire m01_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m01_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m01_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_cpu_interconnect_BRESP;
  wire m01_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_RDATA;
  wire m01_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_cpu_interconnect_RRESP;
  wire m01_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_WDATA;
  wire m01_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m01_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m01_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_ARADDR;
  wire m02_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m02_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_AWADDR;
  wire m02_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m02_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m02_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m02_couplers_to_axi_cpu_interconnect_BRESP;
  wire m02_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_RDATA;
  wire m02_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m02_couplers_to_axi_cpu_interconnect_RRESP;
  wire m02_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_WDATA;
  wire m02_couplers_to_axi_cpu_interconnect_WREADY;
  wire m02_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_ARADDR;
  wire m03_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m03_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_AWADDR;
  wire m03_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m03_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m03_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m03_couplers_to_axi_cpu_interconnect_BRESP;
  wire m03_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_RDATA;
  wire m03_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m03_couplers_to_axi_cpu_interconnect_RRESP;
  wire m03_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_WDATA;
  wire m03_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m03_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m03_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_ARADDR;
  wire m04_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m04_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_AWADDR;
  wire m04_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m04_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m04_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m04_couplers_to_axi_cpu_interconnect_BRESP;
  wire m04_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_RDATA;
  wire m04_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m04_couplers_to_axi_cpu_interconnect_RRESP;
  wire m04_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_WDATA;
  wire m04_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m04_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m04_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_ARADDR;
  wire m05_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m05_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_AWADDR;
  wire m05_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m05_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m05_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m05_couplers_to_axi_cpu_interconnect_BRESP;
  wire m05_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_RDATA;
  wire m05_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m05_couplers_to_axi_cpu_interconnect_RRESP;
  wire m05_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_WDATA;
  wire m05_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m05_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m05_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_ARADDR;
  wire m06_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m06_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_AWADDR;
  wire m06_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m06_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m06_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m06_couplers_to_axi_cpu_interconnect_BRESP;
  wire m06_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_RDATA;
  wire m06_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m06_couplers_to_axi_cpu_interconnect_RRESP;
  wire m06_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_WDATA;
  wire m06_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m06_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m06_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m07_couplers_to_axi_cpu_interconnect_ARADDR;
  wire m07_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m07_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m07_couplers_to_axi_cpu_interconnect_AWADDR;
  wire m07_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m07_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m07_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m07_couplers_to_axi_cpu_interconnect_BRESP;
  wire m07_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m07_couplers_to_axi_cpu_interconnect_RDATA;
  wire m07_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m07_couplers_to_axi_cpu_interconnect_RRESP;
  wire m07_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m07_couplers_to_axi_cpu_interconnect_WDATA;
  wire m07_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m07_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m07_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m08_couplers_to_axi_cpu_interconnect_ARADDR;
  wire m08_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m08_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m08_couplers_to_axi_cpu_interconnect_AWADDR;
  wire m08_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m08_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m08_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m08_couplers_to_axi_cpu_interconnect_BRESP;
  wire m08_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m08_couplers_to_axi_cpu_interconnect_RDATA;
  wire m08_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m08_couplers_to_axi_cpu_interconnect_RRESP;
  wire m08_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m08_couplers_to_axi_cpu_interconnect_WDATA;
  wire m08_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m08_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m08_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m09_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m09_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m09_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m09_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m09_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m09_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m09_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m09_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m09_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m10_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m10_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m10_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m10_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m10_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m10_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m10_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m10_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m10_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m11_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m11_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m11_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m11_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m11_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m11_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m11_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m11_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m11_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m11_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m12_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m12_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m12_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m12_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m12_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m12_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m12_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m12_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m12_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m12_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m13_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m13_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m13_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m13_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m13_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m13_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m13_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m13_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m13_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m13_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m14_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m14_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m14_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m14_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m14_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m14_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m14_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m14_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m14_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m14_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m15_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m15_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m15_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m15_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m15_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m15_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m15_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m15_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m15_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m15_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m16_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m16_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m16_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m16_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m16_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m16_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m16_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m16_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m16_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m16_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m17_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m17_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m17_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m17_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m17_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m17_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m17_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m17_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m17_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m17_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m18_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m18_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m18_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m18_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m18_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m18_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m18_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m18_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m18_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m18_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m19_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m19_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m19_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m19_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m19_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m19_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m19_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m19_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m19_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m19_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m20_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m20_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m20_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m20_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m20_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m20_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m20_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m20_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m20_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m20_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m21_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m21_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m21_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m21_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m21_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m21_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m21_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m21_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m21_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m21_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_ARADDR;
  wire tier2_xbar_0_to_m00_couplers_ARREADY;
  wire [0:0]tier2_xbar_0_to_m00_couplers_ARVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_AWADDR;
  wire tier2_xbar_0_to_m00_couplers_AWREADY;
  wire [0:0]tier2_xbar_0_to_m00_couplers_AWVALID;
  wire [0:0]tier2_xbar_0_to_m00_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m00_couplers_BRESP;
  wire tier2_xbar_0_to_m00_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_RDATA;
  wire [0:0]tier2_xbar_0_to_m00_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m00_couplers_RRESP;
  wire tier2_xbar_0_to_m00_couplers_RVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_WDATA;
  wire tier2_xbar_0_to_m00_couplers_WREADY;
  wire [3:0]tier2_xbar_0_to_m00_couplers_WSTRB;
  wire [0:0]tier2_xbar_0_to_m00_couplers_WVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_ARADDR;
  wire tier2_xbar_0_to_m01_couplers_ARREADY;
  wire [1:1]tier2_xbar_0_to_m01_couplers_ARVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_AWADDR;
  wire tier2_xbar_0_to_m01_couplers_AWREADY;
  wire [1:1]tier2_xbar_0_to_m01_couplers_AWVALID;
  wire [1:1]tier2_xbar_0_to_m01_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m01_couplers_BRESP;
  wire tier2_xbar_0_to_m01_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m01_couplers_RDATA;
  wire [1:1]tier2_xbar_0_to_m01_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m01_couplers_RRESP;
  wire tier2_xbar_0_to_m01_couplers_RVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_WDATA;
  wire tier2_xbar_0_to_m01_couplers_WREADY;
  wire [7:4]tier2_xbar_0_to_m01_couplers_WSTRB;
  wire [1:1]tier2_xbar_0_to_m01_couplers_WVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_ARADDR;
  wire tier2_xbar_0_to_m02_couplers_ARREADY;
  wire [2:2]tier2_xbar_0_to_m02_couplers_ARVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_AWADDR;
  wire tier2_xbar_0_to_m02_couplers_AWREADY;
  wire [2:2]tier2_xbar_0_to_m02_couplers_AWVALID;
  wire [2:2]tier2_xbar_0_to_m02_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m02_couplers_BRESP;
  wire tier2_xbar_0_to_m02_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m02_couplers_RDATA;
  wire [2:2]tier2_xbar_0_to_m02_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m02_couplers_RRESP;
  wire tier2_xbar_0_to_m02_couplers_RVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_WDATA;
  wire tier2_xbar_0_to_m02_couplers_WREADY;
  wire [2:2]tier2_xbar_0_to_m02_couplers_WVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_ARADDR;
  wire tier2_xbar_0_to_m03_couplers_ARREADY;
  wire [3:3]tier2_xbar_0_to_m03_couplers_ARVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_AWADDR;
  wire tier2_xbar_0_to_m03_couplers_AWREADY;
  wire [3:3]tier2_xbar_0_to_m03_couplers_AWVALID;
  wire [3:3]tier2_xbar_0_to_m03_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m03_couplers_BRESP;
  wire tier2_xbar_0_to_m03_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m03_couplers_RDATA;
  wire [3:3]tier2_xbar_0_to_m03_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m03_couplers_RRESP;
  wire tier2_xbar_0_to_m03_couplers_RVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_WDATA;
  wire tier2_xbar_0_to_m03_couplers_WREADY;
  wire [15:12]tier2_xbar_0_to_m03_couplers_WSTRB;
  wire [3:3]tier2_xbar_0_to_m03_couplers_WVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_ARADDR;
  wire tier2_xbar_0_to_m04_couplers_ARREADY;
  wire [4:4]tier2_xbar_0_to_m04_couplers_ARVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_AWADDR;
  wire tier2_xbar_0_to_m04_couplers_AWREADY;
  wire [4:4]tier2_xbar_0_to_m04_couplers_AWVALID;
  wire [4:4]tier2_xbar_0_to_m04_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m04_couplers_BRESP;
  wire tier2_xbar_0_to_m04_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m04_couplers_RDATA;
  wire [4:4]tier2_xbar_0_to_m04_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m04_couplers_RRESP;
  wire tier2_xbar_0_to_m04_couplers_RVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_WDATA;
  wire tier2_xbar_0_to_m04_couplers_WREADY;
  wire [19:16]tier2_xbar_0_to_m04_couplers_WSTRB;
  wire [4:4]tier2_xbar_0_to_m04_couplers_WVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_ARADDR;
  wire tier2_xbar_0_to_m05_couplers_ARREADY;
  wire [5:5]tier2_xbar_0_to_m05_couplers_ARVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_AWADDR;
  wire tier2_xbar_0_to_m05_couplers_AWREADY;
  wire [5:5]tier2_xbar_0_to_m05_couplers_AWVALID;
  wire [5:5]tier2_xbar_0_to_m05_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m05_couplers_BRESP;
  wire tier2_xbar_0_to_m05_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m05_couplers_RDATA;
  wire [5:5]tier2_xbar_0_to_m05_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m05_couplers_RRESP;
  wire tier2_xbar_0_to_m05_couplers_RVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_WDATA;
  wire tier2_xbar_0_to_m05_couplers_WREADY;
  wire [23:20]tier2_xbar_0_to_m05_couplers_WSTRB;
  wire [5:5]tier2_xbar_0_to_m05_couplers_WVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_ARADDR;
  wire tier2_xbar_0_to_m06_couplers_ARREADY;
  wire [6:6]tier2_xbar_0_to_m06_couplers_ARVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_AWADDR;
  wire tier2_xbar_0_to_m06_couplers_AWREADY;
  wire [6:6]tier2_xbar_0_to_m06_couplers_AWVALID;
  wire [6:6]tier2_xbar_0_to_m06_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m06_couplers_BRESP;
  wire tier2_xbar_0_to_m06_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m06_couplers_RDATA;
  wire [6:6]tier2_xbar_0_to_m06_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m06_couplers_RRESP;
  wire tier2_xbar_0_to_m06_couplers_RVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_WDATA;
  wire tier2_xbar_0_to_m06_couplers_WREADY;
  wire [27:24]tier2_xbar_0_to_m06_couplers_WSTRB;
  wire [6:6]tier2_xbar_0_to_m06_couplers_WVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_ARADDR;
  wire tier2_xbar_0_to_m07_couplers_ARREADY;
  wire [7:7]tier2_xbar_0_to_m07_couplers_ARVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_AWADDR;
  wire tier2_xbar_0_to_m07_couplers_AWREADY;
  wire [7:7]tier2_xbar_0_to_m07_couplers_AWVALID;
  wire [7:7]tier2_xbar_0_to_m07_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m07_couplers_BRESP;
  wire tier2_xbar_0_to_m07_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m07_couplers_RDATA;
  wire [7:7]tier2_xbar_0_to_m07_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m07_couplers_RRESP;
  wire tier2_xbar_0_to_m07_couplers_RVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_WDATA;
  wire tier2_xbar_0_to_m07_couplers_WREADY;
  wire [31:28]tier2_xbar_0_to_m07_couplers_WSTRB;
  wire [7:7]tier2_xbar_0_to_m07_couplers_WVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_ARADDR;
  wire tier2_xbar_1_to_m08_couplers_ARREADY;
  wire [0:0]tier2_xbar_1_to_m08_couplers_ARVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_AWADDR;
  wire tier2_xbar_1_to_m08_couplers_AWREADY;
  wire [0:0]tier2_xbar_1_to_m08_couplers_AWVALID;
  wire [0:0]tier2_xbar_1_to_m08_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m08_couplers_BRESP;
  wire tier2_xbar_1_to_m08_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_RDATA;
  wire [0:0]tier2_xbar_1_to_m08_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m08_couplers_RRESP;
  wire tier2_xbar_1_to_m08_couplers_RVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_WDATA;
  wire tier2_xbar_1_to_m08_couplers_WREADY;
  wire [3:0]tier2_xbar_1_to_m08_couplers_WSTRB;
  wire [0:0]tier2_xbar_1_to_m08_couplers_WVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_ARADDR;
  wire [5:3]tier2_xbar_1_to_m09_couplers_ARPROT;
  wire [0:0]tier2_xbar_1_to_m09_couplers_ARREADY;
  wire [1:1]tier2_xbar_1_to_m09_couplers_ARVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_AWADDR;
  wire [5:3]tier2_xbar_1_to_m09_couplers_AWPROT;
  wire [0:0]tier2_xbar_1_to_m09_couplers_AWREADY;
  wire [1:1]tier2_xbar_1_to_m09_couplers_AWVALID;
  wire [1:1]tier2_xbar_1_to_m09_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m09_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m09_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m09_couplers_RDATA;
  wire [1:1]tier2_xbar_1_to_m09_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m09_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m09_couplers_RVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m09_couplers_WREADY;
  wire [7:4]tier2_xbar_1_to_m09_couplers_WSTRB;
  wire [1:1]tier2_xbar_1_to_m09_couplers_WVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_ARADDR;
  wire [8:6]tier2_xbar_1_to_m10_couplers_ARPROT;
  wire [0:0]tier2_xbar_1_to_m10_couplers_ARREADY;
  wire [2:2]tier2_xbar_1_to_m10_couplers_ARVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_AWADDR;
  wire [8:6]tier2_xbar_1_to_m10_couplers_AWPROT;
  wire [0:0]tier2_xbar_1_to_m10_couplers_AWREADY;
  wire [2:2]tier2_xbar_1_to_m10_couplers_AWVALID;
  wire [2:2]tier2_xbar_1_to_m10_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m10_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m10_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m10_couplers_RDATA;
  wire [2:2]tier2_xbar_1_to_m10_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m10_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m10_couplers_RVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m10_couplers_WREADY;
  wire [11:8]tier2_xbar_1_to_m10_couplers_WSTRB;
  wire [2:2]tier2_xbar_1_to_m10_couplers_WVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_ARADDR;
  wire [11:9]tier2_xbar_1_to_m11_couplers_ARPROT;
  wire [0:0]tier2_xbar_1_to_m11_couplers_ARREADY;
  wire [3:3]tier2_xbar_1_to_m11_couplers_ARVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_AWADDR;
  wire [11:9]tier2_xbar_1_to_m11_couplers_AWPROT;
  wire [0:0]tier2_xbar_1_to_m11_couplers_AWREADY;
  wire [3:3]tier2_xbar_1_to_m11_couplers_AWVALID;
  wire [3:3]tier2_xbar_1_to_m11_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m11_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m11_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m11_couplers_RDATA;
  wire [3:3]tier2_xbar_1_to_m11_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m11_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m11_couplers_RVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m11_couplers_WREADY;
  wire [15:12]tier2_xbar_1_to_m11_couplers_WSTRB;
  wire [3:3]tier2_xbar_1_to_m11_couplers_WVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_ARADDR;
  wire [14:12]tier2_xbar_1_to_m12_couplers_ARPROT;
  wire [0:0]tier2_xbar_1_to_m12_couplers_ARREADY;
  wire [4:4]tier2_xbar_1_to_m12_couplers_ARVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_AWADDR;
  wire [14:12]tier2_xbar_1_to_m12_couplers_AWPROT;
  wire [0:0]tier2_xbar_1_to_m12_couplers_AWREADY;
  wire [4:4]tier2_xbar_1_to_m12_couplers_AWVALID;
  wire [4:4]tier2_xbar_1_to_m12_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m12_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m12_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m12_couplers_RDATA;
  wire [4:4]tier2_xbar_1_to_m12_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m12_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m12_couplers_RVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m12_couplers_WREADY;
  wire [19:16]tier2_xbar_1_to_m12_couplers_WSTRB;
  wire [4:4]tier2_xbar_1_to_m12_couplers_WVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_ARADDR;
  wire [17:15]tier2_xbar_1_to_m13_couplers_ARPROT;
  wire [0:0]tier2_xbar_1_to_m13_couplers_ARREADY;
  wire [5:5]tier2_xbar_1_to_m13_couplers_ARVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_AWADDR;
  wire [17:15]tier2_xbar_1_to_m13_couplers_AWPROT;
  wire [0:0]tier2_xbar_1_to_m13_couplers_AWREADY;
  wire [5:5]tier2_xbar_1_to_m13_couplers_AWVALID;
  wire [5:5]tier2_xbar_1_to_m13_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m13_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m13_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m13_couplers_RDATA;
  wire [5:5]tier2_xbar_1_to_m13_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m13_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m13_couplers_RVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m13_couplers_WREADY;
  wire [23:20]tier2_xbar_1_to_m13_couplers_WSTRB;
  wire [5:5]tier2_xbar_1_to_m13_couplers_WVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_ARADDR;
  wire [20:18]tier2_xbar_1_to_m14_couplers_ARPROT;
  wire [0:0]tier2_xbar_1_to_m14_couplers_ARREADY;
  wire [6:6]tier2_xbar_1_to_m14_couplers_ARVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_AWADDR;
  wire [20:18]tier2_xbar_1_to_m14_couplers_AWPROT;
  wire [0:0]tier2_xbar_1_to_m14_couplers_AWREADY;
  wire [6:6]tier2_xbar_1_to_m14_couplers_AWVALID;
  wire [6:6]tier2_xbar_1_to_m14_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m14_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m14_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m14_couplers_RDATA;
  wire [6:6]tier2_xbar_1_to_m14_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m14_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m14_couplers_RVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m14_couplers_WREADY;
  wire [27:24]tier2_xbar_1_to_m14_couplers_WSTRB;
  wire [6:6]tier2_xbar_1_to_m14_couplers_WVALID;
  wire [255:224]tier2_xbar_1_to_m15_couplers_ARADDR;
  wire [23:21]tier2_xbar_1_to_m15_couplers_ARPROT;
  wire [0:0]tier2_xbar_1_to_m15_couplers_ARREADY;
  wire [7:7]tier2_xbar_1_to_m15_couplers_ARVALID;
  wire [255:224]tier2_xbar_1_to_m15_couplers_AWADDR;
  wire [23:21]tier2_xbar_1_to_m15_couplers_AWPROT;
  wire [0:0]tier2_xbar_1_to_m15_couplers_AWREADY;
  wire [7:7]tier2_xbar_1_to_m15_couplers_AWVALID;
  wire [7:7]tier2_xbar_1_to_m15_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m15_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m15_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m15_couplers_RDATA;
  wire [7:7]tier2_xbar_1_to_m15_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m15_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m15_couplers_RVALID;
  wire [255:224]tier2_xbar_1_to_m15_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m15_couplers_WREADY;
  wire [31:28]tier2_xbar_1_to_m15_couplers_WSTRB;
  wire [7:7]tier2_xbar_1_to_m15_couplers_WVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_ARADDR;
  wire [2:0]tier2_xbar_2_to_m16_couplers_ARPROT;
  wire [0:0]tier2_xbar_2_to_m16_couplers_ARREADY;
  wire [0:0]tier2_xbar_2_to_m16_couplers_ARVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_AWADDR;
  wire [2:0]tier2_xbar_2_to_m16_couplers_AWPROT;
  wire [0:0]tier2_xbar_2_to_m16_couplers_AWREADY;
  wire [0:0]tier2_xbar_2_to_m16_couplers_AWVALID;
  wire [0:0]tier2_xbar_2_to_m16_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m16_couplers_BRESP;
  wire [0:0]tier2_xbar_2_to_m16_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_RDATA;
  wire [0:0]tier2_xbar_2_to_m16_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m16_couplers_RRESP;
  wire [0:0]tier2_xbar_2_to_m16_couplers_RVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_WDATA;
  wire [0:0]tier2_xbar_2_to_m16_couplers_WREADY;
  wire [3:0]tier2_xbar_2_to_m16_couplers_WSTRB;
  wire [0:0]tier2_xbar_2_to_m16_couplers_WVALID;
  wire [63:32]tier2_xbar_2_to_m17_couplers_ARADDR;
  wire [5:3]tier2_xbar_2_to_m17_couplers_ARPROT;
  wire [0:0]tier2_xbar_2_to_m17_couplers_ARREADY;
  wire [1:1]tier2_xbar_2_to_m17_couplers_ARVALID;
  wire [63:32]tier2_xbar_2_to_m17_couplers_AWADDR;
  wire [5:3]tier2_xbar_2_to_m17_couplers_AWPROT;
  wire [0:0]tier2_xbar_2_to_m17_couplers_AWREADY;
  wire [1:1]tier2_xbar_2_to_m17_couplers_AWVALID;
  wire [1:1]tier2_xbar_2_to_m17_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m17_couplers_BRESP;
  wire [0:0]tier2_xbar_2_to_m17_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m17_couplers_RDATA;
  wire [1:1]tier2_xbar_2_to_m17_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m17_couplers_RRESP;
  wire [0:0]tier2_xbar_2_to_m17_couplers_RVALID;
  wire [63:32]tier2_xbar_2_to_m17_couplers_WDATA;
  wire [0:0]tier2_xbar_2_to_m17_couplers_WREADY;
  wire [7:4]tier2_xbar_2_to_m17_couplers_WSTRB;
  wire [1:1]tier2_xbar_2_to_m17_couplers_WVALID;
  wire [95:64]tier2_xbar_2_to_m18_couplers_ARADDR;
  wire [8:6]tier2_xbar_2_to_m18_couplers_ARPROT;
  wire [0:0]tier2_xbar_2_to_m18_couplers_ARREADY;
  wire [2:2]tier2_xbar_2_to_m18_couplers_ARVALID;
  wire [95:64]tier2_xbar_2_to_m18_couplers_AWADDR;
  wire [8:6]tier2_xbar_2_to_m18_couplers_AWPROT;
  wire [0:0]tier2_xbar_2_to_m18_couplers_AWREADY;
  wire [2:2]tier2_xbar_2_to_m18_couplers_AWVALID;
  wire [2:2]tier2_xbar_2_to_m18_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m18_couplers_BRESP;
  wire [0:0]tier2_xbar_2_to_m18_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m18_couplers_RDATA;
  wire [2:2]tier2_xbar_2_to_m18_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m18_couplers_RRESP;
  wire [0:0]tier2_xbar_2_to_m18_couplers_RVALID;
  wire [95:64]tier2_xbar_2_to_m18_couplers_WDATA;
  wire [0:0]tier2_xbar_2_to_m18_couplers_WREADY;
  wire [11:8]tier2_xbar_2_to_m18_couplers_WSTRB;
  wire [2:2]tier2_xbar_2_to_m18_couplers_WVALID;
  wire [127:96]tier2_xbar_2_to_m19_couplers_ARADDR;
  wire [11:9]tier2_xbar_2_to_m19_couplers_ARPROT;
  wire [0:0]tier2_xbar_2_to_m19_couplers_ARREADY;
  wire [3:3]tier2_xbar_2_to_m19_couplers_ARVALID;
  wire [127:96]tier2_xbar_2_to_m19_couplers_AWADDR;
  wire [11:9]tier2_xbar_2_to_m19_couplers_AWPROT;
  wire [0:0]tier2_xbar_2_to_m19_couplers_AWREADY;
  wire [3:3]tier2_xbar_2_to_m19_couplers_AWVALID;
  wire [3:3]tier2_xbar_2_to_m19_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m19_couplers_BRESP;
  wire [0:0]tier2_xbar_2_to_m19_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m19_couplers_RDATA;
  wire [3:3]tier2_xbar_2_to_m19_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m19_couplers_RRESP;
  wire [0:0]tier2_xbar_2_to_m19_couplers_RVALID;
  wire [127:96]tier2_xbar_2_to_m19_couplers_WDATA;
  wire [0:0]tier2_xbar_2_to_m19_couplers_WREADY;
  wire [15:12]tier2_xbar_2_to_m19_couplers_WSTRB;
  wire [3:3]tier2_xbar_2_to_m19_couplers_WVALID;
  wire [159:128]tier2_xbar_2_to_m20_couplers_ARADDR;
  wire [14:12]tier2_xbar_2_to_m20_couplers_ARPROT;
  wire [0:0]tier2_xbar_2_to_m20_couplers_ARREADY;
  wire [4:4]tier2_xbar_2_to_m20_couplers_ARVALID;
  wire [159:128]tier2_xbar_2_to_m20_couplers_AWADDR;
  wire [14:12]tier2_xbar_2_to_m20_couplers_AWPROT;
  wire [0:0]tier2_xbar_2_to_m20_couplers_AWREADY;
  wire [4:4]tier2_xbar_2_to_m20_couplers_AWVALID;
  wire [4:4]tier2_xbar_2_to_m20_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m20_couplers_BRESP;
  wire [0:0]tier2_xbar_2_to_m20_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m20_couplers_RDATA;
  wire [4:4]tier2_xbar_2_to_m20_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m20_couplers_RRESP;
  wire [0:0]tier2_xbar_2_to_m20_couplers_RVALID;
  wire [159:128]tier2_xbar_2_to_m20_couplers_WDATA;
  wire [0:0]tier2_xbar_2_to_m20_couplers_WREADY;
  wire [19:16]tier2_xbar_2_to_m20_couplers_WSTRB;
  wire [4:4]tier2_xbar_2_to_m20_couplers_WVALID;
  wire [191:160]tier2_xbar_2_to_m21_couplers_ARADDR;
  wire [17:15]tier2_xbar_2_to_m21_couplers_ARPROT;
  wire [0:0]tier2_xbar_2_to_m21_couplers_ARREADY;
  wire [5:5]tier2_xbar_2_to_m21_couplers_ARVALID;
  wire [191:160]tier2_xbar_2_to_m21_couplers_AWADDR;
  wire [17:15]tier2_xbar_2_to_m21_couplers_AWPROT;
  wire [0:0]tier2_xbar_2_to_m21_couplers_AWREADY;
  wire [5:5]tier2_xbar_2_to_m21_couplers_AWVALID;
  wire [5:5]tier2_xbar_2_to_m21_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m21_couplers_BRESP;
  wire [0:0]tier2_xbar_2_to_m21_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m21_couplers_RDATA;
  wire [5:5]tier2_xbar_2_to_m21_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m21_couplers_RRESP;
  wire [0:0]tier2_xbar_2_to_m21_couplers_RVALID;
  wire [191:160]tier2_xbar_2_to_m21_couplers_WDATA;
  wire [0:0]tier2_xbar_2_to_m21_couplers_WREADY;
  wire [23:20]tier2_xbar_2_to_m21_couplers_WSTRB;
  wire [5:5]tier2_xbar_2_to_m21_couplers_WVALID;
  wire [31:0]xbar_to_i00_couplers_ARADDR;
  wire [2:0]xbar_to_i00_couplers_ARPROT;
  wire [0:0]xbar_to_i00_couplers_ARREADY;
  wire [0:0]xbar_to_i00_couplers_ARVALID;
  wire [31:0]xbar_to_i00_couplers_AWADDR;
  wire [2:0]xbar_to_i00_couplers_AWPROT;
  wire [0:0]xbar_to_i00_couplers_AWREADY;
  wire [0:0]xbar_to_i00_couplers_AWVALID;
  wire [0:0]xbar_to_i00_couplers_BREADY;
  wire [1:0]xbar_to_i00_couplers_BRESP;
  wire [0:0]xbar_to_i00_couplers_BVALID;
  wire [31:0]xbar_to_i00_couplers_RDATA;
  wire [0:0]xbar_to_i00_couplers_RREADY;
  wire [1:0]xbar_to_i00_couplers_RRESP;
  wire [0:0]xbar_to_i00_couplers_RVALID;
  wire [31:0]xbar_to_i00_couplers_WDATA;
  wire [0:0]xbar_to_i00_couplers_WREADY;
  wire [3:0]xbar_to_i00_couplers_WSTRB;
  wire [0:0]xbar_to_i00_couplers_WVALID;
  wire [63:32]xbar_to_i01_couplers_ARADDR;
  wire [5:3]xbar_to_i01_couplers_ARPROT;
  wire [0:0]xbar_to_i01_couplers_ARREADY;
  wire [1:1]xbar_to_i01_couplers_ARVALID;
  wire [63:32]xbar_to_i01_couplers_AWADDR;
  wire [5:3]xbar_to_i01_couplers_AWPROT;
  wire [0:0]xbar_to_i01_couplers_AWREADY;
  wire [1:1]xbar_to_i01_couplers_AWVALID;
  wire [1:1]xbar_to_i01_couplers_BREADY;
  wire [1:0]xbar_to_i01_couplers_BRESP;
  wire [0:0]xbar_to_i01_couplers_BVALID;
  wire [31:0]xbar_to_i01_couplers_RDATA;
  wire [1:1]xbar_to_i01_couplers_RREADY;
  wire [1:0]xbar_to_i01_couplers_RRESP;
  wire [0:0]xbar_to_i01_couplers_RVALID;
  wire [63:32]xbar_to_i01_couplers_WDATA;
  wire [0:0]xbar_to_i01_couplers_WREADY;
  wire [7:4]xbar_to_i01_couplers_WSTRB;
  wire [1:1]xbar_to_i01_couplers_WVALID;
  wire [95:64]xbar_to_i02_couplers_ARADDR;
  wire [8:6]xbar_to_i02_couplers_ARPROT;
  wire [0:0]xbar_to_i02_couplers_ARREADY;
  wire [2:2]xbar_to_i02_couplers_ARVALID;
  wire [95:64]xbar_to_i02_couplers_AWADDR;
  wire [8:6]xbar_to_i02_couplers_AWPROT;
  wire [0:0]xbar_to_i02_couplers_AWREADY;
  wire [2:2]xbar_to_i02_couplers_AWVALID;
  wire [2:2]xbar_to_i02_couplers_BREADY;
  wire [1:0]xbar_to_i02_couplers_BRESP;
  wire [0:0]xbar_to_i02_couplers_BVALID;
  wire [31:0]xbar_to_i02_couplers_RDATA;
  wire [2:2]xbar_to_i02_couplers_RREADY;
  wire [1:0]xbar_to_i02_couplers_RRESP;
  wire [0:0]xbar_to_i02_couplers_RVALID;
  wire [95:64]xbar_to_i02_couplers_WDATA;
  wire [0:0]xbar_to_i02_couplers_WREADY;
  wire [11:8]xbar_to_i02_couplers_WSTRB;
  wire [2:2]xbar_to_i02_couplers_WVALID;
  wire [31:0]NLW_tier2_xbar_0_m_axi_wstrb_UNCONNECTED;
  wire [23:0]NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED;
  wire [23:0]NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_cpu_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_cpu_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_cpu_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_cpu_interconnect_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_cpu_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_cpu_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_cpu_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_cpu_interconnect_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_cpu_interconnect_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_cpu_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_cpu_interconnect_WDATA;
  assign M02_AXI_wvalid = m02_couplers_to_axi_cpu_interconnect_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_cpu_interconnect_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_cpu_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_cpu_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_cpu_interconnect_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_cpu_interconnect_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_cpu_interconnect_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_cpu_interconnect_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_cpu_interconnect_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_cpu_interconnect_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_cpu_interconnect_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_cpu_interconnect_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_cpu_interconnect_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_cpu_interconnect_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_cpu_interconnect_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_cpu_interconnect_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_cpu_interconnect_WVALID;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_axi_cpu_interconnect_BREADY;
  assign M07_AXI_rready = m07_couplers_to_axi_cpu_interconnect_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_cpu_interconnect_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_axi_cpu_interconnect_WVALID;
  assign M08_AXI_araddr[31:0] = m08_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_axi_cpu_interconnect_BREADY;
  assign M08_AXI_rready = m08_couplers_to_axi_cpu_interconnect_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_axi_cpu_interconnect_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_axi_cpu_interconnect_WVALID;
  assign M09_AXI_araddr[31:0] = m09_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M09_AXI_arprot[2:0] = m09_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M09_AXI_arvalid[0] = m09_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M09_AXI_awprot[2:0] = m09_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M09_AXI_awvalid[0] = m09_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M09_AXI_bready[0] = m09_couplers_to_axi_cpu_interconnect_BREADY;
  assign M09_AXI_rready[0] = m09_couplers_to_axi_cpu_interconnect_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_axi_cpu_interconnect_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M09_AXI_wvalid[0] = m09_couplers_to_axi_cpu_interconnect_WVALID;
  assign M10_AXI_araddr[31:0] = m10_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M10_AXI_arprot[2:0] = m10_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M10_AXI_arvalid[0] = m10_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M10_AXI_awprot[2:0] = m10_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M10_AXI_awvalid[0] = m10_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M10_AXI_bready[0] = m10_couplers_to_axi_cpu_interconnect_BREADY;
  assign M10_AXI_rready[0] = m10_couplers_to_axi_cpu_interconnect_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_axi_cpu_interconnect_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M10_AXI_wvalid[0] = m10_couplers_to_axi_cpu_interconnect_WVALID;
  assign M11_AXI_araddr[31:0] = m11_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M11_AXI_arprot[2:0] = m11_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M11_AXI_arvalid[0] = m11_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M11_AXI_awaddr[31:0] = m11_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M11_AXI_awprot[2:0] = m11_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M11_AXI_awvalid[0] = m11_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M11_AXI_bready[0] = m11_couplers_to_axi_cpu_interconnect_BREADY;
  assign M11_AXI_rready[0] = m11_couplers_to_axi_cpu_interconnect_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_axi_cpu_interconnect_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M11_AXI_wvalid[0] = m11_couplers_to_axi_cpu_interconnect_WVALID;
  assign M12_AXI_araddr[31:0] = m12_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M12_AXI_arprot[2:0] = m12_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M12_AXI_arvalid[0] = m12_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M12_AXI_awaddr[31:0] = m12_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M12_AXI_awprot[2:0] = m12_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M12_AXI_awvalid[0] = m12_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M12_AXI_bready[0] = m12_couplers_to_axi_cpu_interconnect_BREADY;
  assign M12_AXI_rready[0] = m12_couplers_to_axi_cpu_interconnect_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_axi_cpu_interconnect_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M12_AXI_wvalid[0] = m12_couplers_to_axi_cpu_interconnect_WVALID;
  assign M13_AXI_araddr[31:0] = m13_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M13_AXI_arprot[2:0] = m13_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M13_AXI_arvalid[0] = m13_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M13_AXI_awaddr[31:0] = m13_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M13_AXI_awprot[2:0] = m13_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M13_AXI_awvalid[0] = m13_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M13_AXI_bready[0] = m13_couplers_to_axi_cpu_interconnect_BREADY;
  assign M13_AXI_rready[0] = m13_couplers_to_axi_cpu_interconnect_RREADY;
  assign M13_AXI_wdata[31:0] = m13_couplers_to_axi_cpu_interconnect_WDATA;
  assign M13_AXI_wstrb[3:0] = m13_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M13_AXI_wvalid[0] = m13_couplers_to_axi_cpu_interconnect_WVALID;
  assign M14_AXI_araddr[31:0] = m14_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M14_AXI_arprot[2:0] = m14_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M14_AXI_arvalid[0] = m14_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M14_AXI_awaddr[31:0] = m14_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M14_AXI_awprot[2:0] = m14_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M14_AXI_awvalid[0] = m14_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M14_AXI_bready[0] = m14_couplers_to_axi_cpu_interconnect_BREADY;
  assign M14_AXI_rready[0] = m14_couplers_to_axi_cpu_interconnect_RREADY;
  assign M14_AXI_wdata[31:0] = m14_couplers_to_axi_cpu_interconnect_WDATA;
  assign M14_AXI_wstrb[3:0] = m14_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M14_AXI_wvalid[0] = m14_couplers_to_axi_cpu_interconnect_WVALID;
  assign M15_AXI_araddr[31:0] = m15_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M15_AXI_arprot[2:0] = m15_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M15_AXI_arvalid[0] = m15_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M15_AXI_awaddr[31:0] = m15_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M15_AXI_awprot[2:0] = m15_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M15_AXI_awvalid[0] = m15_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M15_AXI_bready[0] = m15_couplers_to_axi_cpu_interconnect_BREADY;
  assign M15_AXI_rready[0] = m15_couplers_to_axi_cpu_interconnect_RREADY;
  assign M15_AXI_wdata[31:0] = m15_couplers_to_axi_cpu_interconnect_WDATA;
  assign M15_AXI_wstrb[3:0] = m15_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M15_AXI_wvalid[0] = m15_couplers_to_axi_cpu_interconnect_WVALID;
  assign M16_AXI_araddr[31:0] = m16_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M16_AXI_arprot[2:0] = m16_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M16_AXI_arvalid[0] = m16_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M16_AXI_awaddr[31:0] = m16_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M16_AXI_awprot[2:0] = m16_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M16_AXI_awvalid[0] = m16_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M16_AXI_bready[0] = m16_couplers_to_axi_cpu_interconnect_BREADY;
  assign M16_AXI_rready[0] = m16_couplers_to_axi_cpu_interconnect_RREADY;
  assign M16_AXI_wdata[31:0] = m16_couplers_to_axi_cpu_interconnect_WDATA;
  assign M16_AXI_wstrb[3:0] = m16_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M16_AXI_wvalid[0] = m16_couplers_to_axi_cpu_interconnect_WVALID;
  assign M17_AXI_araddr[31:0] = m17_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M17_AXI_arprot[2:0] = m17_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M17_AXI_arvalid[0] = m17_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M17_AXI_awaddr[31:0] = m17_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M17_AXI_awprot[2:0] = m17_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M17_AXI_awvalid[0] = m17_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M17_AXI_bready[0] = m17_couplers_to_axi_cpu_interconnect_BREADY;
  assign M17_AXI_rready[0] = m17_couplers_to_axi_cpu_interconnect_RREADY;
  assign M17_AXI_wdata[31:0] = m17_couplers_to_axi_cpu_interconnect_WDATA;
  assign M17_AXI_wstrb[3:0] = m17_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M17_AXI_wvalid[0] = m17_couplers_to_axi_cpu_interconnect_WVALID;
  assign M18_AXI_araddr[31:0] = m18_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M18_AXI_arprot[2:0] = m18_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M18_AXI_arvalid[0] = m18_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M18_AXI_awaddr[31:0] = m18_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M18_AXI_awprot[2:0] = m18_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M18_AXI_awvalid[0] = m18_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M18_AXI_bready[0] = m18_couplers_to_axi_cpu_interconnect_BREADY;
  assign M18_AXI_rready[0] = m18_couplers_to_axi_cpu_interconnect_RREADY;
  assign M18_AXI_wdata[31:0] = m18_couplers_to_axi_cpu_interconnect_WDATA;
  assign M18_AXI_wstrb[3:0] = m18_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M18_AXI_wvalid[0] = m18_couplers_to_axi_cpu_interconnect_WVALID;
  assign M19_AXI_araddr[31:0] = m19_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M19_AXI_arprot[2:0] = m19_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M19_AXI_arvalid[0] = m19_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M19_AXI_awaddr[31:0] = m19_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M19_AXI_awprot[2:0] = m19_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M19_AXI_awvalid[0] = m19_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M19_AXI_bready[0] = m19_couplers_to_axi_cpu_interconnect_BREADY;
  assign M19_AXI_rready[0] = m19_couplers_to_axi_cpu_interconnect_RREADY;
  assign M19_AXI_wdata[31:0] = m19_couplers_to_axi_cpu_interconnect_WDATA;
  assign M19_AXI_wstrb[3:0] = m19_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M19_AXI_wvalid[0] = m19_couplers_to_axi_cpu_interconnect_WVALID;
  assign M20_AXI_araddr[31:0] = m20_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M20_AXI_arprot[2:0] = m20_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M20_AXI_arvalid[0] = m20_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M20_AXI_awaddr[31:0] = m20_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M20_AXI_awprot[2:0] = m20_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M20_AXI_awvalid[0] = m20_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M20_AXI_bready[0] = m20_couplers_to_axi_cpu_interconnect_BREADY;
  assign M20_AXI_rready[0] = m20_couplers_to_axi_cpu_interconnect_RREADY;
  assign M20_AXI_wdata[31:0] = m20_couplers_to_axi_cpu_interconnect_WDATA;
  assign M20_AXI_wstrb[3:0] = m20_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M20_AXI_wvalid[0] = m20_couplers_to_axi_cpu_interconnect_WVALID;
  assign M21_AXI_araddr[31:0] = m21_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M21_AXI_arprot[2:0] = m21_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M21_AXI_arvalid[0] = m21_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M21_AXI_awaddr[31:0] = m21_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M21_AXI_awprot[2:0] = m21_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M21_AXI_awvalid[0] = m21_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M21_AXI_bready[0] = m21_couplers_to_axi_cpu_interconnect_BREADY;
  assign M21_AXI_rready[0] = m21_couplers_to_axi_cpu_interconnect_RREADY;
  assign M21_AXI_wdata[31:0] = m21_couplers_to_axi_cpu_interconnect_WDATA;
  assign M21_AXI_wstrb[3:0] = m21_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M21_AXI_wvalid[0] = m21_couplers_to_axi_cpu_interconnect_WVALID;
  assign S00_AXI_arready = axi_cpu_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_cpu_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_cpu_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_cpu_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_cpu_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_cpu_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_cpu_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_cpu_interconnect_to_s00_couplers_WREADY;
  assign axi_cpu_interconnect_ACLK_net = ACLK;
  assign axi_cpu_interconnect_ARESETN_net = ARESETN;
  assign axi_cpu_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_cpu_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_cpu_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_cpu_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_cpu_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_cpu_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_cpu_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_cpu_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_cpu_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_cpu_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_cpu_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_cpu_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_cpu_interconnect_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_cpu_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_cpu_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_cpu_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_cpu_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_cpu_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_cpu_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_cpu_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_cpu_interconnect_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_cpu_interconnect_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_cpu_interconnect_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_cpu_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_cpu_interconnect_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_cpu_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_cpu_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_cpu_interconnect_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_cpu_interconnect_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_cpu_interconnect_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_cpu_interconnect_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_cpu_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_cpu_interconnect_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_cpu_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_cpu_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_cpu_interconnect_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_cpu_interconnect_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_cpu_interconnect_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_cpu_interconnect_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_cpu_interconnect_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_cpu_interconnect_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_cpu_interconnect_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_cpu_interconnect_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_cpu_interconnect_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_cpu_interconnect_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_cpu_interconnect_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_cpu_interconnect_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_cpu_interconnect_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_cpu_interconnect_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_cpu_interconnect_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_cpu_interconnect_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_cpu_interconnect_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_cpu_interconnect_WREADY = M05_AXI_wready;
  assign m06_couplers_to_axi_cpu_interconnect_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_cpu_interconnect_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_cpu_interconnect_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_cpu_interconnect_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_cpu_interconnect_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_cpu_interconnect_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_cpu_interconnect_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_cpu_interconnect_WREADY = M06_AXI_wready;
  assign m07_couplers_to_axi_cpu_interconnect_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_axi_cpu_interconnect_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_axi_cpu_interconnect_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_cpu_interconnect_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_axi_cpu_interconnect_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_cpu_interconnect_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_cpu_interconnect_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_axi_cpu_interconnect_WREADY = M07_AXI_wready;
  assign m08_couplers_to_axi_cpu_interconnect_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_axi_cpu_interconnect_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_axi_cpu_interconnect_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_cpu_interconnect_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_axi_cpu_interconnect_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_axi_cpu_interconnect_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_cpu_interconnect_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_axi_cpu_interconnect_WREADY = M08_AXI_wready;
  assign m09_couplers_to_axi_cpu_interconnect_ARREADY = M09_AXI_arready[0];
  assign m09_couplers_to_axi_cpu_interconnect_AWREADY = M09_AXI_awready[0];
  assign m09_couplers_to_axi_cpu_interconnect_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_cpu_interconnect_BVALID = M09_AXI_bvalid[0];
  assign m09_couplers_to_axi_cpu_interconnect_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_axi_cpu_interconnect_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_cpu_interconnect_RVALID = M09_AXI_rvalid[0];
  assign m09_couplers_to_axi_cpu_interconnect_WREADY = M09_AXI_wready[0];
  assign m10_couplers_to_axi_cpu_interconnect_ARREADY = M10_AXI_arready[0];
  assign m10_couplers_to_axi_cpu_interconnect_AWREADY = M10_AXI_awready[0];
  assign m10_couplers_to_axi_cpu_interconnect_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_cpu_interconnect_BVALID = M10_AXI_bvalid[0];
  assign m10_couplers_to_axi_cpu_interconnect_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_axi_cpu_interconnect_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_cpu_interconnect_RVALID = M10_AXI_rvalid[0];
  assign m10_couplers_to_axi_cpu_interconnect_WREADY = M10_AXI_wready[0];
  assign m11_couplers_to_axi_cpu_interconnect_ARREADY = M11_AXI_arready[0];
  assign m11_couplers_to_axi_cpu_interconnect_AWREADY = M11_AXI_awready[0];
  assign m11_couplers_to_axi_cpu_interconnect_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_axi_cpu_interconnect_BVALID = M11_AXI_bvalid[0];
  assign m11_couplers_to_axi_cpu_interconnect_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_axi_cpu_interconnect_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_axi_cpu_interconnect_RVALID = M11_AXI_rvalid[0];
  assign m11_couplers_to_axi_cpu_interconnect_WREADY = M11_AXI_wready[0];
  assign m12_couplers_to_axi_cpu_interconnect_ARREADY = M12_AXI_arready[0];
  assign m12_couplers_to_axi_cpu_interconnect_AWREADY = M12_AXI_awready[0];
  assign m12_couplers_to_axi_cpu_interconnect_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_axi_cpu_interconnect_BVALID = M12_AXI_bvalid[0];
  assign m12_couplers_to_axi_cpu_interconnect_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_axi_cpu_interconnect_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_axi_cpu_interconnect_RVALID = M12_AXI_rvalid[0];
  assign m12_couplers_to_axi_cpu_interconnect_WREADY = M12_AXI_wready[0];
  assign m13_couplers_to_axi_cpu_interconnect_ARREADY = M13_AXI_arready[0];
  assign m13_couplers_to_axi_cpu_interconnect_AWREADY = M13_AXI_awready[0];
  assign m13_couplers_to_axi_cpu_interconnect_BRESP = M13_AXI_bresp[1:0];
  assign m13_couplers_to_axi_cpu_interconnect_BVALID = M13_AXI_bvalid[0];
  assign m13_couplers_to_axi_cpu_interconnect_RDATA = M13_AXI_rdata[31:0];
  assign m13_couplers_to_axi_cpu_interconnect_RRESP = M13_AXI_rresp[1:0];
  assign m13_couplers_to_axi_cpu_interconnect_RVALID = M13_AXI_rvalid[0];
  assign m13_couplers_to_axi_cpu_interconnect_WREADY = M13_AXI_wready[0];
  assign m14_couplers_to_axi_cpu_interconnect_ARREADY = M14_AXI_arready[0];
  assign m14_couplers_to_axi_cpu_interconnect_AWREADY = M14_AXI_awready[0];
  assign m14_couplers_to_axi_cpu_interconnect_BRESP = M14_AXI_bresp[1:0];
  assign m14_couplers_to_axi_cpu_interconnect_BVALID = M14_AXI_bvalid[0];
  assign m14_couplers_to_axi_cpu_interconnect_RDATA = M14_AXI_rdata[31:0];
  assign m14_couplers_to_axi_cpu_interconnect_RRESP = M14_AXI_rresp[1:0];
  assign m14_couplers_to_axi_cpu_interconnect_RVALID = M14_AXI_rvalid[0];
  assign m14_couplers_to_axi_cpu_interconnect_WREADY = M14_AXI_wready[0];
  assign m15_couplers_to_axi_cpu_interconnect_ARREADY = M15_AXI_arready[0];
  assign m15_couplers_to_axi_cpu_interconnect_AWREADY = M15_AXI_awready[0];
  assign m15_couplers_to_axi_cpu_interconnect_BRESP = M15_AXI_bresp[1:0];
  assign m15_couplers_to_axi_cpu_interconnect_BVALID = M15_AXI_bvalid[0];
  assign m15_couplers_to_axi_cpu_interconnect_RDATA = M15_AXI_rdata[31:0];
  assign m15_couplers_to_axi_cpu_interconnect_RRESP = M15_AXI_rresp[1:0];
  assign m15_couplers_to_axi_cpu_interconnect_RVALID = M15_AXI_rvalid[0];
  assign m15_couplers_to_axi_cpu_interconnect_WREADY = M15_AXI_wready[0];
  assign m16_couplers_to_axi_cpu_interconnect_ARREADY = M16_AXI_arready[0];
  assign m16_couplers_to_axi_cpu_interconnect_AWREADY = M16_AXI_awready[0];
  assign m16_couplers_to_axi_cpu_interconnect_BRESP = M16_AXI_bresp[1:0];
  assign m16_couplers_to_axi_cpu_interconnect_BVALID = M16_AXI_bvalid[0];
  assign m16_couplers_to_axi_cpu_interconnect_RDATA = M16_AXI_rdata[31:0];
  assign m16_couplers_to_axi_cpu_interconnect_RRESP = M16_AXI_rresp[1:0];
  assign m16_couplers_to_axi_cpu_interconnect_RVALID = M16_AXI_rvalid[0];
  assign m16_couplers_to_axi_cpu_interconnect_WREADY = M16_AXI_wready[0];
  assign m17_couplers_to_axi_cpu_interconnect_ARREADY = M17_AXI_arready[0];
  assign m17_couplers_to_axi_cpu_interconnect_AWREADY = M17_AXI_awready[0];
  assign m17_couplers_to_axi_cpu_interconnect_BRESP = M17_AXI_bresp[1:0];
  assign m17_couplers_to_axi_cpu_interconnect_BVALID = M17_AXI_bvalid[0];
  assign m17_couplers_to_axi_cpu_interconnect_RDATA = M17_AXI_rdata[31:0];
  assign m17_couplers_to_axi_cpu_interconnect_RRESP = M17_AXI_rresp[1:0];
  assign m17_couplers_to_axi_cpu_interconnect_RVALID = M17_AXI_rvalid[0];
  assign m17_couplers_to_axi_cpu_interconnect_WREADY = M17_AXI_wready[0];
  assign m18_couplers_to_axi_cpu_interconnect_ARREADY = M18_AXI_arready[0];
  assign m18_couplers_to_axi_cpu_interconnect_AWREADY = M18_AXI_awready[0];
  assign m18_couplers_to_axi_cpu_interconnect_BRESP = M18_AXI_bresp[1:0];
  assign m18_couplers_to_axi_cpu_interconnect_BVALID = M18_AXI_bvalid[0];
  assign m18_couplers_to_axi_cpu_interconnect_RDATA = M18_AXI_rdata[31:0];
  assign m18_couplers_to_axi_cpu_interconnect_RRESP = M18_AXI_rresp[1:0];
  assign m18_couplers_to_axi_cpu_interconnect_RVALID = M18_AXI_rvalid[0];
  assign m18_couplers_to_axi_cpu_interconnect_WREADY = M18_AXI_wready[0];
  assign m19_couplers_to_axi_cpu_interconnect_ARREADY = M19_AXI_arready[0];
  assign m19_couplers_to_axi_cpu_interconnect_AWREADY = M19_AXI_awready[0];
  assign m19_couplers_to_axi_cpu_interconnect_BRESP = M19_AXI_bresp[1:0];
  assign m19_couplers_to_axi_cpu_interconnect_BVALID = M19_AXI_bvalid[0];
  assign m19_couplers_to_axi_cpu_interconnect_RDATA = M19_AXI_rdata[31:0];
  assign m19_couplers_to_axi_cpu_interconnect_RRESP = M19_AXI_rresp[1:0];
  assign m19_couplers_to_axi_cpu_interconnect_RVALID = M19_AXI_rvalid[0];
  assign m19_couplers_to_axi_cpu_interconnect_WREADY = M19_AXI_wready[0];
  assign m20_couplers_to_axi_cpu_interconnect_ARREADY = M20_AXI_arready[0];
  assign m20_couplers_to_axi_cpu_interconnect_AWREADY = M20_AXI_awready[0];
  assign m20_couplers_to_axi_cpu_interconnect_BRESP = M20_AXI_bresp[1:0];
  assign m20_couplers_to_axi_cpu_interconnect_BVALID = M20_AXI_bvalid[0];
  assign m20_couplers_to_axi_cpu_interconnect_RDATA = M20_AXI_rdata[31:0];
  assign m20_couplers_to_axi_cpu_interconnect_RRESP = M20_AXI_rresp[1:0];
  assign m20_couplers_to_axi_cpu_interconnect_RVALID = M20_AXI_rvalid[0];
  assign m20_couplers_to_axi_cpu_interconnect_WREADY = M20_AXI_wready[0];
  assign m21_couplers_to_axi_cpu_interconnect_ARREADY = M21_AXI_arready[0];
  assign m21_couplers_to_axi_cpu_interconnect_AWREADY = M21_AXI_awready[0];
  assign m21_couplers_to_axi_cpu_interconnect_BRESP = M21_AXI_bresp[1:0];
  assign m21_couplers_to_axi_cpu_interconnect_BVALID = M21_AXI_bvalid[0];
  assign m21_couplers_to_axi_cpu_interconnect_RDATA = M21_AXI_rdata[31:0];
  assign m21_couplers_to_axi_cpu_interconnect_RRESP = M21_AXI_rresp[1:0];
  assign m21_couplers_to_axi_cpu_interconnect_RVALID = M21_AXI_rvalid[0];
  assign m21_couplers_to_axi_cpu_interconnect_WREADY = M21_AXI_wready[0];
  i00_couplers_imp_KQSTVX i00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(i00_couplers_to_tier2_xbar_0_ARADDR),
        .M_AXI_arprot(i00_couplers_to_tier2_xbar_0_ARPROT),
        .M_AXI_arready(i00_couplers_to_tier2_xbar_0_ARREADY),
        .M_AXI_arvalid(i00_couplers_to_tier2_xbar_0_ARVALID),
        .M_AXI_awaddr(i00_couplers_to_tier2_xbar_0_AWADDR),
        .M_AXI_awprot(i00_couplers_to_tier2_xbar_0_AWPROT),
        .M_AXI_awready(i00_couplers_to_tier2_xbar_0_AWREADY),
        .M_AXI_awvalid(i00_couplers_to_tier2_xbar_0_AWVALID),
        .M_AXI_bready(i00_couplers_to_tier2_xbar_0_BREADY),
        .M_AXI_bresp(i00_couplers_to_tier2_xbar_0_BRESP),
        .M_AXI_bvalid(i00_couplers_to_tier2_xbar_0_BVALID),
        .M_AXI_rdata(i00_couplers_to_tier2_xbar_0_RDATA),
        .M_AXI_rready(i00_couplers_to_tier2_xbar_0_RREADY),
        .M_AXI_rresp(i00_couplers_to_tier2_xbar_0_RRESP),
        .M_AXI_rvalid(i00_couplers_to_tier2_xbar_0_RVALID),
        .M_AXI_wdata(i00_couplers_to_tier2_xbar_0_WDATA),
        .M_AXI_wready(i00_couplers_to_tier2_xbar_0_WREADY),
        .M_AXI_wstrb(i00_couplers_to_tier2_xbar_0_WSTRB),
        .M_AXI_wvalid(i00_couplers_to_tier2_xbar_0_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_i00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_i00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_i00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_i00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_i00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_i00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_i00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_i00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i00_couplers_RDATA),
        .S_AXI_rready(xbar_to_i00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i00_couplers_WDATA),
        .S_AXI_wready(xbar_to_i00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i00_couplers_WVALID));
  i01_couplers_imp_1RG3T24 i01_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(i01_couplers_to_tier2_xbar_1_ARADDR),
        .M_AXI_arprot(i01_couplers_to_tier2_xbar_1_ARPROT),
        .M_AXI_arready(i01_couplers_to_tier2_xbar_1_ARREADY),
        .M_AXI_arvalid(i01_couplers_to_tier2_xbar_1_ARVALID),
        .M_AXI_awaddr(i01_couplers_to_tier2_xbar_1_AWADDR),
        .M_AXI_awprot(i01_couplers_to_tier2_xbar_1_AWPROT),
        .M_AXI_awready(i01_couplers_to_tier2_xbar_1_AWREADY),
        .M_AXI_awvalid(i01_couplers_to_tier2_xbar_1_AWVALID),
        .M_AXI_bready(i01_couplers_to_tier2_xbar_1_BREADY),
        .M_AXI_bresp(i01_couplers_to_tier2_xbar_1_BRESP),
        .M_AXI_bvalid(i01_couplers_to_tier2_xbar_1_BVALID),
        .M_AXI_rdata(i01_couplers_to_tier2_xbar_1_RDATA),
        .M_AXI_rready(i01_couplers_to_tier2_xbar_1_RREADY),
        .M_AXI_rresp(i01_couplers_to_tier2_xbar_1_RRESP),
        .M_AXI_rvalid(i01_couplers_to_tier2_xbar_1_RVALID),
        .M_AXI_wdata(i01_couplers_to_tier2_xbar_1_WDATA),
        .M_AXI_wready(i01_couplers_to_tier2_xbar_1_WREADY),
        .M_AXI_wstrb(i01_couplers_to_tier2_xbar_1_WSTRB),
        .M_AXI_wvalid(i01_couplers_to_tier2_xbar_1_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_i01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_i01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_i01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_i01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_i01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_i01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_i01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_i01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i01_couplers_RDATA),
        .S_AXI_rready(xbar_to_i01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i01_couplers_WDATA),
        .S_AXI_wready(xbar_to_i01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i01_couplers_WVALID));
  i02_couplers_imp_1KZKN5A i02_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(i02_couplers_to_tier2_xbar_2_ARADDR),
        .M_AXI_arprot(i02_couplers_to_tier2_xbar_2_ARPROT),
        .M_AXI_arready(i02_couplers_to_tier2_xbar_2_ARREADY),
        .M_AXI_arvalid(i02_couplers_to_tier2_xbar_2_ARVALID),
        .M_AXI_awaddr(i02_couplers_to_tier2_xbar_2_AWADDR),
        .M_AXI_awprot(i02_couplers_to_tier2_xbar_2_AWPROT),
        .M_AXI_awready(i02_couplers_to_tier2_xbar_2_AWREADY),
        .M_AXI_awvalid(i02_couplers_to_tier2_xbar_2_AWVALID),
        .M_AXI_bready(i02_couplers_to_tier2_xbar_2_BREADY),
        .M_AXI_bresp(i02_couplers_to_tier2_xbar_2_BRESP),
        .M_AXI_bvalid(i02_couplers_to_tier2_xbar_2_BVALID),
        .M_AXI_rdata(i02_couplers_to_tier2_xbar_2_RDATA),
        .M_AXI_rready(i02_couplers_to_tier2_xbar_2_RREADY),
        .M_AXI_rresp(i02_couplers_to_tier2_xbar_2_RRESP),
        .M_AXI_rvalid(i02_couplers_to_tier2_xbar_2_RVALID),
        .M_AXI_wdata(i02_couplers_to_tier2_xbar_2_WDATA),
        .M_AXI_wready(i02_couplers_to_tier2_xbar_2_WREADY),
        .M_AXI_wstrb(i02_couplers_to_tier2_xbar_2_WSTRB),
        .M_AXI_wvalid(i02_couplers_to_tier2_xbar_2_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_i02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_i02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_i02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_i02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_i02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_i02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_i02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_i02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i02_couplers_RDATA),
        .S_AXI_rready(xbar_to_i02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i02_couplers_WDATA),
        .S_AXI_wready(xbar_to_i02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i02_couplers_WVALID));
  m00_couplers_imp_I5GH1N m00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m00_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m00_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m00_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m00_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m00_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m00_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m00_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m00_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m00_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m00_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m00_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m00_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m00_couplers_WVALID));
  m01_couplers_imp_1UBGIXM m01_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m01_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m01_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m01_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m01_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m01_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m01_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m01_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m01_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m01_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m01_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m01_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m01_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m01_couplers_WVALID));
  m02_couplers_imp_1J5P44O m02_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wvalid(m02_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m02_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m02_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m02_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m02_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m02_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m02_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m02_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m02_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m02_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m02_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m02_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m02_couplers_WREADY),
        .S_AXI_wvalid(tier2_xbar_0_to_m02_couplers_WVALID));
  m03_couplers_imp_T17W6X m03_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m03_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m03_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m03_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m03_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m03_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m03_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m03_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m03_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m03_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m03_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m03_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m03_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m03_couplers_WVALID));
  m04_couplers_imp_15FU5SC m04_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m04_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m04_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m04_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m04_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m04_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m04_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m04_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m04_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m04_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m04_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m04_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m04_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m04_couplers_WVALID));
  m05_couplers_imp_GFBASD m05_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m05_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m05_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m05_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m05_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m05_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m05_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m05_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m05_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m05_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m05_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m05_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m05_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m05_couplers_WVALID));
  m06_couplers_imp_59JXRJ m06_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m06_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m06_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m06_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m06_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m06_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m06_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m06_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m06_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m06_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m06_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m06_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m06_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m06_couplers_WVALID));
  m07_couplers_imp_1GBLMBI m07_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m07_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m07_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m07_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m07_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m07_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m07_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m07_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m07_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m07_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m07_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m07_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m07_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m07_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m07_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m07_couplers_WVALID));
  m08_couplers_imp_E05M9W m08_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m08_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m08_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m08_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m08_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m08_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_1_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m08_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_1_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m08_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m08_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m08_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m08_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m08_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m08_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m08_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m08_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m08_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m08_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m08_couplers_WVALID));
  m09_couplers_imp_17AVPN9 m09_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m09_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m09_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m09_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m09_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m09_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m09_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m09_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m09_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m09_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m09_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m09_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m09_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m09_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m09_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m09_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m09_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m09_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m09_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m09_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m09_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m09_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m09_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m09_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m09_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m09_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m09_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m09_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m09_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m09_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m09_couplers_WVALID));
  m10_couplers_imp_1J5SI6G m10_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m10_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m10_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m10_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m10_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m10_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m10_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m10_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m10_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m10_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m10_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m10_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m10_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m10_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m10_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m10_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m10_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m10_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m10_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m10_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m10_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m10_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m10_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m10_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m10_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m10_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m10_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m10_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m10_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m10_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m10_couplers_WVALID));
  m11_couplers_imp_T19VO9 m11_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m11_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m11_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m11_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m11_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m11_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m11_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m11_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m11_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m11_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m11_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m11_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m11_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m11_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m11_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m11_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m11_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m11_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m11_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m11_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m11_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m11_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m11_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m11_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m11_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m11_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m11_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m11_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m11_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m11_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m11_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m11_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m11_couplers_WVALID));
  m12_couplers_imp_I5JGX7 m12_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m12_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m12_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m12_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m12_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m12_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m12_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m12_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m12_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m12_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m12_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m12_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m12_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m12_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m12_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m12_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m12_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m12_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m12_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m12_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m12_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m12_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m12_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m12_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m12_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m12_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m12_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m12_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m12_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m12_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m12_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m12_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m12_couplers_WVALID));
  m13_couplers_imp_1UBI48Q m13_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m13_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m13_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m13_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m13_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m13_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m13_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m13_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m13_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m13_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m13_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m13_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m13_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m13_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m13_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m13_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m13_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m13_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m13_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m13_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m13_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m13_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m13_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m13_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m13_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m13_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m13_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m13_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m13_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m13_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m13_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m13_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m13_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m13_couplers_WVALID));
  m14_couplers_imp_59NWCV m14_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m14_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m14_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m14_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m14_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m14_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m14_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m14_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m14_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m14_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m14_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m14_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m14_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m14_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m14_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m14_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m14_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m14_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m14_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m14_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m14_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m14_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m14_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m14_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m14_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m14_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m14_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m14_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m14_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m14_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m14_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m14_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m14_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m14_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m14_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m14_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m14_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m14_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m14_couplers_WVALID));
  m15_couplers_imp_1GBO6CE m15_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m15_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m15_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m15_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m15_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m15_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m15_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m15_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m15_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m15_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m15_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m15_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m15_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m15_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m15_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m15_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m15_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m15_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m15_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m15_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m15_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m15_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m15_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m15_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m15_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m15_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m15_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m15_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m15_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m15_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m15_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m15_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m15_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m15_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m15_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m15_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m15_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m15_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m15_couplers_WVALID));
  m16_couplers_imp_15FXTD8 m16_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m16_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m16_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m16_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m16_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m16_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m16_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m16_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m16_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m16_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m16_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m16_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m16_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m16_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m16_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m16_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m16_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m16_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m16_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m16_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m16_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m16_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m16_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m16_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m16_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m16_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m16_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m16_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m16_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m16_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m16_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m16_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m16_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m16_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m16_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m16_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m16_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m16_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m16_couplers_WVALID));
  m17_couplers_imp_GFDJST m17_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m17_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m17_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m17_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m17_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m17_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m17_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m17_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m17_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m17_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m17_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m17_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m17_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m17_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m17_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m17_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m17_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m17_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m17_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m17_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m17_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m17_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m17_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m17_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m17_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m17_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m17_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m17_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m17_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m17_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m17_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m17_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m17_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m17_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m17_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m17_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m17_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m17_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m17_couplers_WVALID));
  m18_couplers_imp_1EGMMH3 m18_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m18_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m18_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m18_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m18_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m18_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m18_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m18_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m18_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m18_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m18_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m18_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m18_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m18_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m18_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m18_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m18_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m18_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m18_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m18_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m18_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m18_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m18_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m18_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m18_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m18_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m18_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m18_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m18_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m18_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m18_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m18_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m18_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m18_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m18_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m18_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m18_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m18_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m18_couplers_WVALID));
  m19_couplers_imp_7OTKUU m19_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m19_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m19_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m19_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m19_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m19_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m19_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m19_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m19_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m19_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m19_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m19_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m19_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m19_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m19_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m19_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m19_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m19_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m19_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m19_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m19_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m19_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m19_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m19_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m19_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m19_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m19_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m19_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m19_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m19_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m19_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m19_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m19_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m19_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m19_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m19_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m19_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m19_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m19_couplers_WVALID));
  m20_couplers_imp_15FR2BW m20_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m20_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m20_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m20_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m20_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m20_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m20_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m20_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m20_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m20_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m20_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m20_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m20_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m20_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m20_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m20_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m20_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m20_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m20_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m20_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m20_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m20_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m20_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m20_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m20_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m20_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m20_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m20_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m20_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m20_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m20_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m20_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m20_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m20_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m20_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m20_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m20_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m20_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m20_couplers_WVALID));
  m21_couplers_imp_GFT3J1 m21_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m21_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m21_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m21_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m21_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m21_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m21_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m21_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m21_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m21_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m21_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m21_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m21_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m21_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m21_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m21_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m21_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m21_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m21_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m21_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m21_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m21_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m21_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m21_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m21_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m21_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m21_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m21_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m21_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m21_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m21_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m21_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m21_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m21_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m21_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m21_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m21_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m21_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m21_couplers_WVALID));
  s00_couplers_imp_WZLZH6 s00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_cpu_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_cpu_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_cpu_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_cpu_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_cpu_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_cpu_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_cpu_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_cpu_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_cpu_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_cpu_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_cpu_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_cpu_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_cpu_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_cpu_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_cpu_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_cpu_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_interconnect_to_s00_couplers_WVALID));
  system_tier2_xbar_0_0 tier2_xbar_0
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({tier2_xbar_0_to_m07_couplers_ARADDR,tier2_xbar_0_to_m06_couplers_ARADDR,tier2_xbar_0_to_m05_couplers_ARADDR,tier2_xbar_0_to_m04_couplers_ARADDR,tier2_xbar_0_to_m03_couplers_ARADDR,tier2_xbar_0_to_m02_couplers_ARADDR,tier2_xbar_0_to_m01_couplers_ARADDR,tier2_xbar_0_to_m00_couplers_ARADDR}),
        .m_axi_arready({tier2_xbar_0_to_m07_couplers_ARREADY,tier2_xbar_0_to_m06_couplers_ARREADY,tier2_xbar_0_to_m05_couplers_ARREADY,tier2_xbar_0_to_m04_couplers_ARREADY,tier2_xbar_0_to_m03_couplers_ARREADY,tier2_xbar_0_to_m02_couplers_ARREADY,tier2_xbar_0_to_m01_couplers_ARREADY,tier2_xbar_0_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({tier2_xbar_0_to_m07_couplers_ARVALID,tier2_xbar_0_to_m06_couplers_ARVALID,tier2_xbar_0_to_m05_couplers_ARVALID,tier2_xbar_0_to_m04_couplers_ARVALID,tier2_xbar_0_to_m03_couplers_ARVALID,tier2_xbar_0_to_m02_couplers_ARVALID,tier2_xbar_0_to_m01_couplers_ARVALID,tier2_xbar_0_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_0_to_m07_couplers_AWADDR,tier2_xbar_0_to_m06_couplers_AWADDR,tier2_xbar_0_to_m05_couplers_AWADDR,tier2_xbar_0_to_m04_couplers_AWADDR,tier2_xbar_0_to_m03_couplers_AWADDR,tier2_xbar_0_to_m02_couplers_AWADDR,tier2_xbar_0_to_m01_couplers_AWADDR,tier2_xbar_0_to_m00_couplers_AWADDR}),
        .m_axi_awready({tier2_xbar_0_to_m07_couplers_AWREADY,tier2_xbar_0_to_m06_couplers_AWREADY,tier2_xbar_0_to_m05_couplers_AWREADY,tier2_xbar_0_to_m04_couplers_AWREADY,tier2_xbar_0_to_m03_couplers_AWREADY,tier2_xbar_0_to_m02_couplers_AWREADY,tier2_xbar_0_to_m01_couplers_AWREADY,tier2_xbar_0_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({tier2_xbar_0_to_m07_couplers_AWVALID,tier2_xbar_0_to_m06_couplers_AWVALID,tier2_xbar_0_to_m05_couplers_AWVALID,tier2_xbar_0_to_m04_couplers_AWVALID,tier2_xbar_0_to_m03_couplers_AWVALID,tier2_xbar_0_to_m02_couplers_AWVALID,tier2_xbar_0_to_m01_couplers_AWVALID,tier2_xbar_0_to_m00_couplers_AWVALID}),
        .m_axi_bready({tier2_xbar_0_to_m07_couplers_BREADY,tier2_xbar_0_to_m06_couplers_BREADY,tier2_xbar_0_to_m05_couplers_BREADY,tier2_xbar_0_to_m04_couplers_BREADY,tier2_xbar_0_to_m03_couplers_BREADY,tier2_xbar_0_to_m02_couplers_BREADY,tier2_xbar_0_to_m01_couplers_BREADY,tier2_xbar_0_to_m00_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_0_to_m07_couplers_BRESP,tier2_xbar_0_to_m06_couplers_BRESP,tier2_xbar_0_to_m05_couplers_BRESP,tier2_xbar_0_to_m04_couplers_BRESP,tier2_xbar_0_to_m03_couplers_BRESP,tier2_xbar_0_to_m02_couplers_BRESP,tier2_xbar_0_to_m01_couplers_BRESP,tier2_xbar_0_to_m00_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_0_to_m07_couplers_BVALID,tier2_xbar_0_to_m06_couplers_BVALID,tier2_xbar_0_to_m05_couplers_BVALID,tier2_xbar_0_to_m04_couplers_BVALID,tier2_xbar_0_to_m03_couplers_BVALID,tier2_xbar_0_to_m02_couplers_BVALID,tier2_xbar_0_to_m01_couplers_BVALID,tier2_xbar_0_to_m00_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_0_to_m07_couplers_RDATA,tier2_xbar_0_to_m06_couplers_RDATA,tier2_xbar_0_to_m05_couplers_RDATA,tier2_xbar_0_to_m04_couplers_RDATA,tier2_xbar_0_to_m03_couplers_RDATA,tier2_xbar_0_to_m02_couplers_RDATA,tier2_xbar_0_to_m01_couplers_RDATA,tier2_xbar_0_to_m00_couplers_RDATA}),
        .m_axi_rready({tier2_xbar_0_to_m07_couplers_RREADY,tier2_xbar_0_to_m06_couplers_RREADY,tier2_xbar_0_to_m05_couplers_RREADY,tier2_xbar_0_to_m04_couplers_RREADY,tier2_xbar_0_to_m03_couplers_RREADY,tier2_xbar_0_to_m02_couplers_RREADY,tier2_xbar_0_to_m01_couplers_RREADY,tier2_xbar_0_to_m00_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_0_to_m07_couplers_RRESP,tier2_xbar_0_to_m06_couplers_RRESP,tier2_xbar_0_to_m05_couplers_RRESP,tier2_xbar_0_to_m04_couplers_RRESP,tier2_xbar_0_to_m03_couplers_RRESP,tier2_xbar_0_to_m02_couplers_RRESP,tier2_xbar_0_to_m01_couplers_RRESP,tier2_xbar_0_to_m00_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_0_to_m07_couplers_RVALID,tier2_xbar_0_to_m06_couplers_RVALID,tier2_xbar_0_to_m05_couplers_RVALID,tier2_xbar_0_to_m04_couplers_RVALID,tier2_xbar_0_to_m03_couplers_RVALID,tier2_xbar_0_to_m02_couplers_RVALID,tier2_xbar_0_to_m01_couplers_RVALID,tier2_xbar_0_to_m00_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_0_to_m07_couplers_WDATA,tier2_xbar_0_to_m06_couplers_WDATA,tier2_xbar_0_to_m05_couplers_WDATA,tier2_xbar_0_to_m04_couplers_WDATA,tier2_xbar_0_to_m03_couplers_WDATA,tier2_xbar_0_to_m02_couplers_WDATA,tier2_xbar_0_to_m01_couplers_WDATA,tier2_xbar_0_to_m00_couplers_WDATA}),
        .m_axi_wready({tier2_xbar_0_to_m07_couplers_WREADY,tier2_xbar_0_to_m06_couplers_WREADY,tier2_xbar_0_to_m05_couplers_WREADY,tier2_xbar_0_to_m04_couplers_WREADY,tier2_xbar_0_to_m03_couplers_WREADY,tier2_xbar_0_to_m02_couplers_WREADY,tier2_xbar_0_to_m01_couplers_WREADY,tier2_xbar_0_to_m00_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_0_to_m07_couplers_WSTRB,tier2_xbar_0_to_m06_couplers_WSTRB,tier2_xbar_0_to_m05_couplers_WSTRB,tier2_xbar_0_to_m04_couplers_WSTRB,tier2_xbar_0_to_m03_couplers_WSTRB,NLW_tier2_xbar_0_m_axi_wstrb_UNCONNECTED[11:8],tier2_xbar_0_to_m01_couplers_WSTRB,tier2_xbar_0_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_0_to_m07_couplers_WVALID,tier2_xbar_0_to_m06_couplers_WVALID,tier2_xbar_0_to_m05_couplers_WVALID,tier2_xbar_0_to_m04_couplers_WVALID,tier2_xbar_0_to_m03_couplers_WVALID,tier2_xbar_0_to_m02_couplers_WVALID,tier2_xbar_0_to_m01_couplers_WVALID,tier2_xbar_0_to_m00_couplers_WVALID}),
        .s_axi_araddr(i00_couplers_to_tier2_xbar_0_ARADDR),
        .s_axi_arprot(i00_couplers_to_tier2_xbar_0_ARPROT),
        .s_axi_arready(i00_couplers_to_tier2_xbar_0_ARREADY),
        .s_axi_arvalid(i00_couplers_to_tier2_xbar_0_ARVALID),
        .s_axi_awaddr(i00_couplers_to_tier2_xbar_0_AWADDR),
        .s_axi_awprot(i00_couplers_to_tier2_xbar_0_AWPROT),
        .s_axi_awready(i00_couplers_to_tier2_xbar_0_AWREADY),
        .s_axi_awvalid(i00_couplers_to_tier2_xbar_0_AWVALID),
        .s_axi_bready(i00_couplers_to_tier2_xbar_0_BREADY),
        .s_axi_bresp(i00_couplers_to_tier2_xbar_0_BRESP),
        .s_axi_bvalid(i00_couplers_to_tier2_xbar_0_BVALID),
        .s_axi_rdata(i00_couplers_to_tier2_xbar_0_RDATA),
        .s_axi_rready(i00_couplers_to_tier2_xbar_0_RREADY),
        .s_axi_rresp(i00_couplers_to_tier2_xbar_0_RRESP),
        .s_axi_rvalid(i00_couplers_to_tier2_xbar_0_RVALID),
        .s_axi_wdata(i00_couplers_to_tier2_xbar_0_WDATA),
        .s_axi_wready(i00_couplers_to_tier2_xbar_0_WREADY),
        .s_axi_wstrb(i00_couplers_to_tier2_xbar_0_WSTRB),
        .s_axi_wvalid(i00_couplers_to_tier2_xbar_0_WVALID));
  system_tier2_xbar_1_0 tier2_xbar_1
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({tier2_xbar_1_to_m15_couplers_ARADDR,tier2_xbar_1_to_m14_couplers_ARADDR,tier2_xbar_1_to_m13_couplers_ARADDR,tier2_xbar_1_to_m12_couplers_ARADDR,tier2_xbar_1_to_m11_couplers_ARADDR,tier2_xbar_1_to_m10_couplers_ARADDR,tier2_xbar_1_to_m09_couplers_ARADDR,tier2_xbar_1_to_m08_couplers_ARADDR}),
        .m_axi_arprot({tier2_xbar_1_to_m15_couplers_ARPROT,tier2_xbar_1_to_m14_couplers_ARPROT,tier2_xbar_1_to_m13_couplers_ARPROT,tier2_xbar_1_to_m12_couplers_ARPROT,tier2_xbar_1_to_m11_couplers_ARPROT,tier2_xbar_1_to_m10_couplers_ARPROT,tier2_xbar_1_to_m09_couplers_ARPROT,NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({tier2_xbar_1_to_m15_couplers_ARREADY,tier2_xbar_1_to_m14_couplers_ARREADY,tier2_xbar_1_to_m13_couplers_ARREADY,tier2_xbar_1_to_m12_couplers_ARREADY,tier2_xbar_1_to_m11_couplers_ARREADY,tier2_xbar_1_to_m10_couplers_ARREADY,tier2_xbar_1_to_m09_couplers_ARREADY,tier2_xbar_1_to_m08_couplers_ARREADY}),
        .m_axi_arvalid({tier2_xbar_1_to_m15_couplers_ARVALID,tier2_xbar_1_to_m14_couplers_ARVALID,tier2_xbar_1_to_m13_couplers_ARVALID,tier2_xbar_1_to_m12_couplers_ARVALID,tier2_xbar_1_to_m11_couplers_ARVALID,tier2_xbar_1_to_m10_couplers_ARVALID,tier2_xbar_1_to_m09_couplers_ARVALID,tier2_xbar_1_to_m08_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_1_to_m15_couplers_AWADDR,tier2_xbar_1_to_m14_couplers_AWADDR,tier2_xbar_1_to_m13_couplers_AWADDR,tier2_xbar_1_to_m12_couplers_AWADDR,tier2_xbar_1_to_m11_couplers_AWADDR,tier2_xbar_1_to_m10_couplers_AWADDR,tier2_xbar_1_to_m09_couplers_AWADDR,tier2_xbar_1_to_m08_couplers_AWADDR}),
        .m_axi_awprot({tier2_xbar_1_to_m15_couplers_AWPROT,tier2_xbar_1_to_m14_couplers_AWPROT,tier2_xbar_1_to_m13_couplers_AWPROT,tier2_xbar_1_to_m12_couplers_AWPROT,tier2_xbar_1_to_m11_couplers_AWPROT,tier2_xbar_1_to_m10_couplers_AWPROT,tier2_xbar_1_to_m09_couplers_AWPROT,NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({tier2_xbar_1_to_m15_couplers_AWREADY,tier2_xbar_1_to_m14_couplers_AWREADY,tier2_xbar_1_to_m13_couplers_AWREADY,tier2_xbar_1_to_m12_couplers_AWREADY,tier2_xbar_1_to_m11_couplers_AWREADY,tier2_xbar_1_to_m10_couplers_AWREADY,tier2_xbar_1_to_m09_couplers_AWREADY,tier2_xbar_1_to_m08_couplers_AWREADY}),
        .m_axi_awvalid({tier2_xbar_1_to_m15_couplers_AWVALID,tier2_xbar_1_to_m14_couplers_AWVALID,tier2_xbar_1_to_m13_couplers_AWVALID,tier2_xbar_1_to_m12_couplers_AWVALID,tier2_xbar_1_to_m11_couplers_AWVALID,tier2_xbar_1_to_m10_couplers_AWVALID,tier2_xbar_1_to_m09_couplers_AWVALID,tier2_xbar_1_to_m08_couplers_AWVALID}),
        .m_axi_bready({tier2_xbar_1_to_m15_couplers_BREADY,tier2_xbar_1_to_m14_couplers_BREADY,tier2_xbar_1_to_m13_couplers_BREADY,tier2_xbar_1_to_m12_couplers_BREADY,tier2_xbar_1_to_m11_couplers_BREADY,tier2_xbar_1_to_m10_couplers_BREADY,tier2_xbar_1_to_m09_couplers_BREADY,tier2_xbar_1_to_m08_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_1_to_m15_couplers_BRESP,tier2_xbar_1_to_m14_couplers_BRESP,tier2_xbar_1_to_m13_couplers_BRESP,tier2_xbar_1_to_m12_couplers_BRESP,tier2_xbar_1_to_m11_couplers_BRESP,tier2_xbar_1_to_m10_couplers_BRESP,tier2_xbar_1_to_m09_couplers_BRESP,tier2_xbar_1_to_m08_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_1_to_m15_couplers_BVALID,tier2_xbar_1_to_m14_couplers_BVALID,tier2_xbar_1_to_m13_couplers_BVALID,tier2_xbar_1_to_m12_couplers_BVALID,tier2_xbar_1_to_m11_couplers_BVALID,tier2_xbar_1_to_m10_couplers_BVALID,tier2_xbar_1_to_m09_couplers_BVALID,tier2_xbar_1_to_m08_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_1_to_m15_couplers_RDATA,tier2_xbar_1_to_m14_couplers_RDATA,tier2_xbar_1_to_m13_couplers_RDATA,tier2_xbar_1_to_m12_couplers_RDATA,tier2_xbar_1_to_m11_couplers_RDATA,tier2_xbar_1_to_m10_couplers_RDATA,tier2_xbar_1_to_m09_couplers_RDATA,tier2_xbar_1_to_m08_couplers_RDATA}),
        .m_axi_rready({tier2_xbar_1_to_m15_couplers_RREADY,tier2_xbar_1_to_m14_couplers_RREADY,tier2_xbar_1_to_m13_couplers_RREADY,tier2_xbar_1_to_m12_couplers_RREADY,tier2_xbar_1_to_m11_couplers_RREADY,tier2_xbar_1_to_m10_couplers_RREADY,tier2_xbar_1_to_m09_couplers_RREADY,tier2_xbar_1_to_m08_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_1_to_m15_couplers_RRESP,tier2_xbar_1_to_m14_couplers_RRESP,tier2_xbar_1_to_m13_couplers_RRESP,tier2_xbar_1_to_m12_couplers_RRESP,tier2_xbar_1_to_m11_couplers_RRESP,tier2_xbar_1_to_m10_couplers_RRESP,tier2_xbar_1_to_m09_couplers_RRESP,tier2_xbar_1_to_m08_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_1_to_m15_couplers_RVALID,tier2_xbar_1_to_m14_couplers_RVALID,tier2_xbar_1_to_m13_couplers_RVALID,tier2_xbar_1_to_m12_couplers_RVALID,tier2_xbar_1_to_m11_couplers_RVALID,tier2_xbar_1_to_m10_couplers_RVALID,tier2_xbar_1_to_m09_couplers_RVALID,tier2_xbar_1_to_m08_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_1_to_m15_couplers_WDATA,tier2_xbar_1_to_m14_couplers_WDATA,tier2_xbar_1_to_m13_couplers_WDATA,tier2_xbar_1_to_m12_couplers_WDATA,tier2_xbar_1_to_m11_couplers_WDATA,tier2_xbar_1_to_m10_couplers_WDATA,tier2_xbar_1_to_m09_couplers_WDATA,tier2_xbar_1_to_m08_couplers_WDATA}),
        .m_axi_wready({tier2_xbar_1_to_m15_couplers_WREADY,tier2_xbar_1_to_m14_couplers_WREADY,tier2_xbar_1_to_m13_couplers_WREADY,tier2_xbar_1_to_m12_couplers_WREADY,tier2_xbar_1_to_m11_couplers_WREADY,tier2_xbar_1_to_m10_couplers_WREADY,tier2_xbar_1_to_m09_couplers_WREADY,tier2_xbar_1_to_m08_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_1_to_m15_couplers_WSTRB,tier2_xbar_1_to_m14_couplers_WSTRB,tier2_xbar_1_to_m13_couplers_WSTRB,tier2_xbar_1_to_m12_couplers_WSTRB,tier2_xbar_1_to_m11_couplers_WSTRB,tier2_xbar_1_to_m10_couplers_WSTRB,tier2_xbar_1_to_m09_couplers_WSTRB,tier2_xbar_1_to_m08_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_1_to_m15_couplers_WVALID,tier2_xbar_1_to_m14_couplers_WVALID,tier2_xbar_1_to_m13_couplers_WVALID,tier2_xbar_1_to_m12_couplers_WVALID,tier2_xbar_1_to_m11_couplers_WVALID,tier2_xbar_1_to_m10_couplers_WVALID,tier2_xbar_1_to_m09_couplers_WVALID,tier2_xbar_1_to_m08_couplers_WVALID}),
        .s_axi_araddr(i01_couplers_to_tier2_xbar_1_ARADDR),
        .s_axi_arprot(i01_couplers_to_tier2_xbar_1_ARPROT),
        .s_axi_arready(i01_couplers_to_tier2_xbar_1_ARREADY),
        .s_axi_arvalid(i01_couplers_to_tier2_xbar_1_ARVALID),
        .s_axi_awaddr(i01_couplers_to_tier2_xbar_1_AWADDR),
        .s_axi_awprot(i01_couplers_to_tier2_xbar_1_AWPROT),
        .s_axi_awready(i01_couplers_to_tier2_xbar_1_AWREADY),
        .s_axi_awvalid(i01_couplers_to_tier2_xbar_1_AWVALID),
        .s_axi_bready(i01_couplers_to_tier2_xbar_1_BREADY),
        .s_axi_bresp(i01_couplers_to_tier2_xbar_1_BRESP),
        .s_axi_bvalid(i01_couplers_to_tier2_xbar_1_BVALID),
        .s_axi_rdata(i01_couplers_to_tier2_xbar_1_RDATA),
        .s_axi_rready(i01_couplers_to_tier2_xbar_1_RREADY),
        .s_axi_rresp(i01_couplers_to_tier2_xbar_1_RRESP),
        .s_axi_rvalid(i01_couplers_to_tier2_xbar_1_RVALID),
        .s_axi_wdata(i01_couplers_to_tier2_xbar_1_WDATA),
        .s_axi_wready(i01_couplers_to_tier2_xbar_1_WREADY),
        .s_axi_wstrb(i01_couplers_to_tier2_xbar_1_WSTRB),
        .s_axi_wvalid(i01_couplers_to_tier2_xbar_1_WVALID));
  system_tier2_xbar_2_0 tier2_xbar_2
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({tier2_xbar_2_to_m21_couplers_ARADDR,tier2_xbar_2_to_m20_couplers_ARADDR,tier2_xbar_2_to_m19_couplers_ARADDR,tier2_xbar_2_to_m18_couplers_ARADDR,tier2_xbar_2_to_m17_couplers_ARADDR,tier2_xbar_2_to_m16_couplers_ARADDR}),
        .m_axi_arprot({tier2_xbar_2_to_m21_couplers_ARPROT,tier2_xbar_2_to_m20_couplers_ARPROT,tier2_xbar_2_to_m19_couplers_ARPROT,tier2_xbar_2_to_m18_couplers_ARPROT,tier2_xbar_2_to_m17_couplers_ARPROT,tier2_xbar_2_to_m16_couplers_ARPROT}),
        .m_axi_arready({tier2_xbar_2_to_m21_couplers_ARREADY,tier2_xbar_2_to_m20_couplers_ARREADY,tier2_xbar_2_to_m19_couplers_ARREADY,tier2_xbar_2_to_m18_couplers_ARREADY,tier2_xbar_2_to_m17_couplers_ARREADY,tier2_xbar_2_to_m16_couplers_ARREADY}),
        .m_axi_arvalid({tier2_xbar_2_to_m21_couplers_ARVALID,tier2_xbar_2_to_m20_couplers_ARVALID,tier2_xbar_2_to_m19_couplers_ARVALID,tier2_xbar_2_to_m18_couplers_ARVALID,tier2_xbar_2_to_m17_couplers_ARVALID,tier2_xbar_2_to_m16_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_2_to_m21_couplers_AWADDR,tier2_xbar_2_to_m20_couplers_AWADDR,tier2_xbar_2_to_m19_couplers_AWADDR,tier2_xbar_2_to_m18_couplers_AWADDR,tier2_xbar_2_to_m17_couplers_AWADDR,tier2_xbar_2_to_m16_couplers_AWADDR}),
        .m_axi_awprot({tier2_xbar_2_to_m21_couplers_AWPROT,tier2_xbar_2_to_m20_couplers_AWPROT,tier2_xbar_2_to_m19_couplers_AWPROT,tier2_xbar_2_to_m18_couplers_AWPROT,tier2_xbar_2_to_m17_couplers_AWPROT,tier2_xbar_2_to_m16_couplers_AWPROT}),
        .m_axi_awready({tier2_xbar_2_to_m21_couplers_AWREADY,tier2_xbar_2_to_m20_couplers_AWREADY,tier2_xbar_2_to_m19_couplers_AWREADY,tier2_xbar_2_to_m18_couplers_AWREADY,tier2_xbar_2_to_m17_couplers_AWREADY,tier2_xbar_2_to_m16_couplers_AWREADY}),
        .m_axi_awvalid({tier2_xbar_2_to_m21_couplers_AWVALID,tier2_xbar_2_to_m20_couplers_AWVALID,tier2_xbar_2_to_m19_couplers_AWVALID,tier2_xbar_2_to_m18_couplers_AWVALID,tier2_xbar_2_to_m17_couplers_AWVALID,tier2_xbar_2_to_m16_couplers_AWVALID}),
        .m_axi_bready({tier2_xbar_2_to_m21_couplers_BREADY,tier2_xbar_2_to_m20_couplers_BREADY,tier2_xbar_2_to_m19_couplers_BREADY,tier2_xbar_2_to_m18_couplers_BREADY,tier2_xbar_2_to_m17_couplers_BREADY,tier2_xbar_2_to_m16_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_2_to_m21_couplers_BRESP,tier2_xbar_2_to_m20_couplers_BRESP,tier2_xbar_2_to_m19_couplers_BRESP,tier2_xbar_2_to_m18_couplers_BRESP,tier2_xbar_2_to_m17_couplers_BRESP,tier2_xbar_2_to_m16_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_2_to_m21_couplers_BVALID,tier2_xbar_2_to_m20_couplers_BVALID,tier2_xbar_2_to_m19_couplers_BVALID,tier2_xbar_2_to_m18_couplers_BVALID,tier2_xbar_2_to_m17_couplers_BVALID,tier2_xbar_2_to_m16_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_2_to_m21_couplers_RDATA,tier2_xbar_2_to_m20_couplers_RDATA,tier2_xbar_2_to_m19_couplers_RDATA,tier2_xbar_2_to_m18_couplers_RDATA,tier2_xbar_2_to_m17_couplers_RDATA,tier2_xbar_2_to_m16_couplers_RDATA}),
        .m_axi_rready({tier2_xbar_2_to_m21_couplers_RREADY,tier2_xbar_2_to_m20_couplers_RREADY,tier2_xbar_2_to_m19_couplers_RREADY,tier2_xbar_2_to_m18_couplers_RREADY,tier2_xbar_2_to_m17_couplers_RREADY,tier2_xbar_2_to_m16_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_2_to_m21_couplers_RRESP,tier2_xbar_2_to_m20_couplers_RRESP,tier2_xbar_2_to_m19_couplers_RRESP,tier2_xbar_2_to_m18_couplers_RRESP,tier2_xbar_2_to_m17_couplers_RRESP,tier2_xbar_2_to_m16_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_2_to_m21_couplers_RVALID,tier2_xbar_2_to_m20_couplers_RVALID,tier2_xbar_2_to_m19_couplers_RVALID,tier2_xbar_2_to_m18_couplers_RVALID,tier2_xbar_2_to_m17_couplers_RVALID,tier2_xbar_2_to_m16_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_2_to_m21_couplers_WDATA,tier2_xbar_2_to_m20_couplers_WDATA,tier2_xbar_2_to_m19_couplers_WDATA,tier2_xbar_2_to_m18_couplers_WDATA,tier2_xbar_2_to_m17_couplers_WDATA,tier2_xbar_2_to_m16_couplers_WDATA}),
        .m_axi_wready({tier2_xbar_2_to_m21_couplers_WREADY,tier2_xbar_2_to_m20_couplers_WREADY,tier2_xbar_2_to_m19_couplers_WREADY,tier2_xbar_2_to_m18_couplers_WREADY,tier2_xbar_2_to_m17_couplers_WREADY,tier2_xbar_2_to_m16_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_2_to_m21_couplers_WSTRB,tier2_xbar_2_to_m20_couplers_WSTRB,tier2_xbar_2_to_m19_couplers_WSTRB,tier2_xbar_2_to_m18_couplers_WSTRB,tier2_xbar_2_to_m17_couplers_WSTRB,tier2_xbar_2_to_m16_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_2_to_m21_couplers_WVALID,tier2_xbar_2_to_m20_couplers_WVALID,tier2_xbar_2_to_m19_couplers_WVALID,tier2_xbar_2_to_m18_couplers_WVALID,tier2_xbar_2_to_m17_couplers_WVALID,tier2_xbar_2_to_m16_couplers_WVALID}),
        .s_axi_araddr(i02_couplers_to_tier2_xbar_2_ARADDR),
        .s_axi_arprot(i02_couplers_to_tier2_xbar_2_ARPROT),
        .s_axi_arready(i02_couplers_to_tier2_xbar_2_ARREADY),
        .s_axi_arvalid(i02_couplers_to_tier2_xbar_2_ARVALID),
        .s_axi_awaddr(i02_couplers_to_tier2_xbar_2_AWADDR),
        .s_axi_awprot(i02_couplers_to_tier2_xbar_2_AWPROT),
        .s_axi_awready(i02_couplers_to_tier2_xbar_2_AWREADY),
        .s_axi_awvalid(i02_couplers_to_tier2_xbar_2_AWVALID),
        .s_axi_bready(i02_couplers_to_tier2_xbar_2_BREADY),
        .s_axi_bresp(i02_couplers_to_tier2_xbar_2_BRESP),
        .s_axi_bvalid(i02_couplers_to_tier2_xbar_2_BVALID),
        .s_axi_rdata(i02_couplers_to_tier2_xbar_2_RDATA),
        .s_axi_rready(i02_couplers_to_tier2_xbar_2_RREADY),
        .s_axi_rresp(i02_couplers_to_tier2_xbar_2_RRESP),
        .s_axi_rvalid(i02_couplers_to_tier2_xbar_2_RVALID),
        .s_axi_wdata(i02_couplers_to_tier2_xbar_2_WDATA),
        .s_axi_wready(i02_couplers_to_tier2_xbar_2_WREADY),
        .s_axi_wstrb(i02_couplers_to_tier2_xbar_2_WSTRB),
        .s_axi_wvalid(i02_couplers_to_tier2_xbar_2_WVALID));
  system_xbar_0 xbar
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_i02_couplers_ARADDR,xbar_to_i01_couplers_ARADDR,xbar_to_i00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_i02_couplers_ARPROT,xbar_to_i01_couplers_ARPROT,xbar_to_i00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_i02_couplers_ARREADY,xbar_to_i01_couplers_ARREADY,xbar_to_i00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_i02_couplers_ARVALID,xbar_to_i01_couplers_ARVALID,xbar_to_i00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_i02_couplers_AWADDR,xbar_to_i01_couplers_AWADDR,xbar_to_i00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_i02_couplers_AWPROT,xbar_to_i01_couplers_AWPROT,xbar_to_i00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_i02_couplers_AWREADY,xbar_to_i01_couplers_AWREADY,xbar_to_i00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_i02_couplers_AWVALID,xbar_to_i01_couplers_AWVALID,xbar_to_i00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_i02_couplers_BREADY,xbar_to_i01_couplers_BREADY,xbar_to_i00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_i02_couplers_BRESP,xbar_to_i01_couplers_BRESP,xbar_to_i00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_i02_couplers_BVALID,xbar_to_i01_couplers_BVALID,xbar_to_i00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_i02_couplers_RDATA,xbar_to_i01_couplers_RDATA,xbar_to_i00_couplers_RDATA}),
        .m_axi_rready({xbar_to_i02_couplers_RREADY,xbar_to_i01_couplers_RREADY,xbar_to_i00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_i02_couplers_RRESP,xbar_to_i01_couplers_RRESP,xbar_to_i00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_i02_couplers_RVALID,xbar_to_i01_couplers_RVALID,xbar_to_i00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_i02_couplers_WDATA,xbar_to_i01_couplers_WDATA,xbar_to_i00_couplers_WDATA}),
        .m_axi_wready({xbar_to_i02_couplers_WREADY,xbar_to_i01_couplers_WREADY,xbar_to_i00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_i02_couplers_WSTRB,xbar_to_i01_couplers_WSTRB,xbar_to_i00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_i02_couplers_WVALID,xbar_to_i01_couplers_WVALID,xbar_to_i00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module system_axi_mem_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arprot,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arlen,
    S03_AXI_arprot,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_arvalid,
    S03_AXI_rdata,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S04_ACLK,
    S04_ARESETN,
    S04_AXI_awaddr,
    S04_AXI_awburst,
    S04_AXI_awcache,
    S04_AXI_awlen,
    S04_AXI_awprot,
    S04_AXI_awready,
    S04_AXI_awsize,
    S04_AXI_awvalid,
    S04_AXI_bready,
    S04_AXI_bresp,
    S04_AXI_bvalid,
    S04_AXI_wdata,
    S04_AXI_wlast,
    S04_AXI_wready,
    S04_AXI_wstrb,
    S04_AXI_wvalid,
    S05_ACLK,
    S05_ARESETN,
    S05_AXI_araddr,
    S05_AXI_arprot,
    S05_AXI_arready,
    S05_AXI_arvalid,
    S05_AXI_awaddr,
    S05_AXI_awprot,
    S05_AXI_awready,
    S05_AXI_awvalid,
    S05_AXI_bready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_rdata,
    S05_AXI_rready,
    S05_AXI_rresp,
    S05_AXI_rvalid,
    S05_AXI_wdata,
    S05_AXI_wready,
    S05_AXI_wstrb,
    S05_AXI_wvalid,
    S06_ACLK,
    S06_ARESETN,
    S06_AXI_araddr,
    S06_AXI_arprot,
    S06_AXI_arready,
    S06_AXI_arvalid,
    S06_AXI_awaddr,
    S06_AXI_awprot,
    S06_AXI_awready,
    S06_AXI_awvalid,
    S06_AXI_bready,
    S06_AXI_bresp,
    S06_AXI_bvalid,
    S06_AXI_rdata,
    S06_AXI_rready,
    S06_AXI_rresp,
    S06_AXI_rvalid,
    S06_AXI_wdata,
    S06_AXI_wready,
    S06_AXI_wstrb,
    S06_AXI_wvalid,
    S07_ACLK,
    S07_ARESETN,
    S07_AXI_araddr,
    S07_AXI_arburst,
    S07_AXI_arcache,
    S07_AXI_arlen,
    S07_AXI_arprot,
    S07_AXI_arready,
    S07_AXI_arsize,
    S07_AXI_arvalid,
    S07_AXI_rdata,
    S07_AXI_rready,
    S07_AXI_rresp,
    S07_AXI_rvalid,
    S08_ACLK,
    S08_ARESETN,
    S08_AXI_awaddr,
    S08_AXI_awburst,
    S08_AXI_awcache,
    S08_AXI_awlen,
    S08_AXI_awprot,
    S08_AXI_awready,
    S08_AXI_awsize,
    S08_AXI_awvalid,
    S08_AXI_bready,
    S08_AXI_bresp,
    S08_AXI_bvalid,
    S08_AXI_wdata,
    S08_AXI_wlast,
    S08_AXI_wready,
    S08_AXI_wstrb,
    S08_AXI_wvalid,
    S09_ACLK,
    S09_ARESETN,
    S09_AXI_awaddr,
    S09_AXI_awburst,
    S09_AXI_awcache,
    S09_AXI_awlen,
    S09_AXI_awprot,
    S09_AXI_awready,
    S09_AXI_awsize,
    S09_AXI_awvalid,
    S09_AXI_bready,
    S09_AXI_bresp,
    S09_AXI_bvalid,
    S09_AXI_wdata,
    S09_AXI_wlast,
    S09_AXI_wready,
    S09_AXI_wstrb,
    S09_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [29:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [29:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [3:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [3:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arprot;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [31:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [7:0]S03_AXI_arlen;
  input [2:0]S03_AXI_arprot;
  output S03_AXI_arready;
  input [2:0]S03_AXI_arsize;
  input S03_AXI_arvalid;
  output [31:0]S03_AXI_rdata;
  output S03_AXI_rlast;
  input S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rvalid;
  input S04_ACLK;
  input S04_ARESETN;
  input [31:0]S04_AXI_awaddr;
  input [1:0]S04_AXI_awburst;
  input [3:0]S04_AXI_awcache;
  input [7:0]S04_AXI_awlen;
  input [2:0]S04_AXI_awprot;
  output S04_AXI_awready;
  input [2:0]S04_AXI_awsize;
  input S04_AXI_awvalid;
  input S04_AXI_bready;
  output [1:0]S04_AXI_bresp;
  output S04_AXI_bvalid;
  input [31:0]S04_AXI_wdata;
  input S04_AXI_wlast;
  output S04_AXI_wready;
  input [3:0]S04_AXI_wstrb;
  input S04_AXI_wvalid;
  input S05_ACLK;
  input S05_ARESETN;
  input [31:0]S05_AXI_araddr;
  input [2:0]S05_AXI_arprot;
  output S05_AXI_arready;
  input S05_AXI_arvalid;
  input [31:0]S05_AXI_awaddr;
  input [2:0]S05_AXI_awprot;
  output S05_AXI_awready;
  input S05_AXI_awvalid;
  input S05_AXI_bready;
  output [1:0]S05_AXI_bresp;
  output S05_AXI_bvalid;
  output [31:0]S05_AXI_rdata;
  input S05_AXI_rready;
  output [1:0]S05_AXI_rresp;
  output S05_AXI_rvalid;
  input [31:0]S05_AXI_wdata;
  output S05_AXI_wready;
  input [3:0]S05_AXI_wstrb;
  input S05_AXI_wvalid;
  input S06_ACLK;
  input S06_ARESETN;
  input [31:0]S06_AXI_araddr;
  input [2:0]S06_AXI_arprot;
  output S06_AXI_arready;
  input S06_AXI_arvalid;
  input [31:0]S06_AXI_awaddr;
  input [2:0]S06_AXI_awprot;
  output S06_AXI_awready;
  input S06_AXI_awvalid;
  input S06_AXI_bready;
  output [1:0]S06_AXI_bresp;
  output S06_AXI_bvalid;
  output [31:0]S06_AXI_rdata;
  input S06_AXI_rready;
  output [1:0]S06_AXI_rresp;
  output S06_AXI_rvalid;
  input [31:0]S06_AXI_wdata;
  output S06_AXI_wready;
  input [3:0]S06_AXI_wstrb;
  input S06_AXI_wvalid;
  input S07_ACLK;
  input S07_ARESETN;
  input [31:0]S07_AXI_araddr;
  input [1:0]S07_AXI_arburst;
  input [3:0]S07_AXI_arcache;
  input [7:0]S07_AXI_arlen;
  input [2:0]S07_AXI_arprot;
  output S07_AXI_arready;
  input [2:0]S07_AXI_arsize;
  input S07_AXI_arvalid;
  output [63:0]S07_AXI_rdata;
  input S07_AXI_rready;
  output [1:0]S07_AXI_rresp;
  output S07_AXI_rvalid;
  input S08_ACLK;
  input S08_ARESETN;
  input [31:0]S08_AXI_awaddr;
  input [1:0]S08_AXI_awburst;
  input [3:0]S08_AXI_awcache;
  input [7:0]S08_AXI_awlen;
  input [2:0]S08_AXI_awprot;
  output S08_AXI_awready;
  input [2:0]S08_AXI_awsize;
  input S08_AXI_awvalid;
  input S08_AXI_bready;
  output [1:0]S08_AXI_bresp;
  output S08_AXI_bvalid;
  input [63:0]S08_AXI_wdata;
  input S08_AXI_wlast;
  output S08_AXI_wready;
  input [7:0]S08_AXI_wstrb;
  input S08_AXI_wvalid;
  input S09_ACLK;
  input S09_ARESETN;
  input [31:0]S09_AXI_awaddr;
  input [1:0]S09_AXI_awburst;
  input [3:0]S09_AXI_awcache;
  input [7:0]S09_AXI_awlen;
  input [2:0]S09_AXI_awprot;
  output S09_AXI_awready;
  input [2:0]S09_AXI_awsize;
  input S09_AXI_awvalid;
  input S09_AXI_bready;
  output [1:0]S09_AXI_bresp;
  output S09_AXI_bvalid;
  input [63:0]S09_AXI_wdata;
  input S09_AXI_wlast;
  output S09_AXI_wready;
  input [7:0]S09_AXI_wstrb;
  input S09_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire S03_ACLK_1;
  wire S03_ARESETN_1;
  wire S04_ACLK_1;
  wire S04_ARESETN_1;
  wire S05_ACLK_1;
  wire S05_ARESETN_1;
  wire S06_ACLK_1;
  wire S06_ARESETN_1;
  wire S07_ACLK_1;
  wire S07_ARESETN_1;
  wire S08_ACLK_1;
  wire S08_ARESETN_1;
  wire S09_ACLK_1;
  wire S09_ARESETN_1;
  wire axi_mem_interconnect_ACLK_net;
  wire axi_mem_interconnect_ARESETN_net;
  wire [31:0]axi_mem_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]axi_mem_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]axi_mem_interconnect_to_s00_couplers_ARCACHE;
  wire [7:0]axi_mem_interconnect_to_s00_couplers_ARLEN;
  wire axi_mem_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]axi_mem_interconnect_to_s00_couplers_ARPROT;
  wire [3:0]axi_mem_interconnect_to_s00_couplers_ARQOS;
  wire axi_mem_interconnect_to_s00_couplers_ARREADY;
  wire [2:0]axi_mem_interconnect_to_s00_couplers_ARSIZE;
  wire axi_mem_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]axi_mem_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_interconnect_to_s00_couplers_AWCACHE;
  wire [7:0]axi_mem_interconnect_to_s00_couplers_AWLEN;
  wire axi_mem_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_interconnect_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_interconnect_to_s00_couplers_AWQOS;
  wire axi_mem_interconnect_to_s00_couplers_AWREADY;
  wire [2:0]axi_mem_interconnect_to_s00_couplers_AWSIZE;
  wire axi_mem_interconnect_to_s00_couplers_AWVALID;
  wire axi_mem_interconnect_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_interconnect_to_s00_couplers_BRESP;
  wire axi_mem_interconnect_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_interconnect_to_s00_couplers_RDATA;
  wire axi_mem_interconnect_to_s00_couplers_RLAST;
  wire axi_mem_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_mem_interconnect_to_s00_couplers_RRESP;
  wire axi_mem_interconnect_to_s00_couplers_RVALID;
  wire [31:0]axi_mem_interconnect_to_s00_couplers_WDATA;
  wire axi_mem_interconnect_to_s00_couplers_WLAST;
  wire axi_mem_interconnect_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_interconnect_to_s00_couplers_WSTRB;
  wire axi_mem_interconnect_to_s00_couplers_WVALID;
  wire [31:0]axi_mem_interconnect_to_s01_couplers_ARADDR;
  wire [1:0]axi_mem_interconnect_to_s01_couplers_ARBURST;
  wire [3:0]axi_mem_interconnect_to_s01_couplers_ARCACHE;
  wire [7:0]axi_mem_interconnect_to_s01_couplers_ARLEN;
  wire axi_mem_interconnect_to_s01_couplers_ARLOCK;
  wire [2:0]axi_mem_interconnect_to_s01_couplers_ARPROT;
  wire [3:0]axi_mem_interconnect_to_s01_couplers_ARQOS;
  wire axi_mem_interconnect_to_s01_couplers_ARREADY;
  wire [2:0]axi_mem_interconnect_to_s01_couplers_ARSIZE;
  wire axi_mem_interconnect_to_s01_couplers_ARVALID;
  wire [31:0]axi_mem_interconnect_to_s01_couplers_RDATA;
  wire axi_mem_interconnect_to_s01_couplers_RLAST;
  wire axi_mem_interconnect_to_s01_couplers_RREADY;
  wire [1:0]axi_mem_interconnect_to_s01_couplers_RRESP;
  wire axi_mem_interconnect_to_s01_couplers_RVALID;
  wire [31:0]axi_mem_interconnect_to_s02_couplers_ARADDR;
  wire [1:0]axi_mem_interconnect_to_s02_couplers_ARBURST;
  wire [3:0]axi_mem_interconnect_to_s02_couplers_ARCACHE;
  wire [7:0]axi_mem_interconnect_to_s02_couplers_ARLEN;
  wire [2:0]axi_mem_interconnect_to_s02_couplers_ARPROT;
  wire axi_mem_interconnect_to_s02_couplers_ARREADY;
  wire [2:0]axi_mem_interconnect_to_s02_couplers_ARSIZE;
  wire axi_mem_interconnect_to_s02_couplers_ARVALID;
  wire [31:0]axi_mem_interconnect_to_s02_couplers_AWADDR;
  wire [1:0]axi_mem_interconnect_to_s02_couplers_AWBURST;
  wire [3:0]axi_mem_interconnect_to_s02_couplers_AWCACHE;
  wire [7:0]axi_mem_interconnect_to_s02_couplers_AWLEN;
  wire [2:0]axi_mem_interconnect_to_s02_couplers_AWPROT;
  wire axi_mem_interconnect_to_s02_couplers_AWREADY;
  wire [2:0]axi_mem_interconnect_to_s02_couplers_AWSIZE;
  wire axi_mem_interconnect_to_s02_couplers_AWVALID;
  wire axi_mem_interconnect_to_s02_couplers_BREADY;
  wire [1:0]axi_mem_interconnect_to_s02_couplers_BRESP;
  wire axi_mem_interconnect_to_s02_couplers_BVALID;
  wire [31:0]axi_mem_interconnect_to_s02_couplers_RDATA;
  wire axi_mem_interconnect_to_s02_couplers_RLAST;
  wire axi_mem_interconnect_to_s02_couplers_RREADY;
  wire [1:0]axi_mem_interconnect_to_s02_couplers_RRESP;
  wire axi_mem_interconnect_to_s02_couplers_RVALID;
  wire [31:0]axi_mem_interconnect_to_s02_couplers_WDATA;
  wire axi_mem_interconnect_to_s02_couplers_WLAST;
  wire axi_mem_interconnect_to_s02_couplers_WREADY;
  wire [3:0]axi_mem_interconnect_to_s02_couplers_WSTRB;
  wire axi_mem_interconnect_to_s02_couplers_WVALID;
  wire [31:0]axi_mem_interconnect_to_s03_couplers_ARADDR;
  wire [1:0]axi_mem_interconnect_to_s03_couplers_ARBURST;
  wire [3:0]axi_mem_interconnect_to_s03_couplers_ARCACHE;
  wire [7:0]axi_mem_interconnect_to_s03_couplers_ARLEN;
  wire [2:0]axi_mem_interconnect_to_s03_couplers_ARPROT;
  wire axi_mem_interconnect_to_s03_couplers_ARREADY;
  wire [2:0]axi_mem_interconnect_to_s03_couplers_ARSIZE;
  wire axi_mem_interconnect_to_s03_couplers_ARVALID;
  wire [31:0]axi_mem_interconnect_to_s03_couplers_RDATA;
  wire axi_mem_interconnect_to_s03_couplers_RLAST;
  wire axi_mem_interconnect_to_s03_couplers_RREADY;
  wire [1:0]axi_mem_interconnect_to_s03_couplers_RRESP;
  wire axi_mem_interconnect_to_s03_couplers_RVALID;
  wire [31:0]axi_mem_interconnect_to_s04_couplers_AWADDR;
  wire [1:0]axi_mem_interconnect_to_s04_couplers_AWBURST;
  wire [3:0]axi_mem_interconnect_to_s04_couplers_AWCACHE;
  wire [7:0]axi_mem_interconnect_to_s04_couplers_AWLEN;
  wire [2:0]axi_mem_interconnect_to_s04_couplers_AWPROT;
  wire axi_mem_interconnect_to_s04_couplers_AWREADY;
  wire [2:0]axi_mem_interconnect_to_s04_couplers_AWSIZE;
  wire axi_mem_interconnect_to_s04_couplers_AWVALID;
  wire axi_mem_interconnect_to_s04_couplers_BREADY;
  wire [1:0]axi_mem_interconnect_to_s04_couplers_BRESP;
  wire axi_mem_interconnect_to_s04_couplers_BVALID;
  wire [31:0]axi_mem_interconnect_to_s04_couplers_WDATA;
  wire axi_mem_interconnect_to_s04_couplers_WLAST;
  wire axi_mem_interconnect_to_s04_couplers_WREADY;
  wire [3:0]axi_mem_interconnect_to_s04_couplers_WSTRB;
  wire axi_mem_interconnect_to_s04_couplers_WVALID;
  wire [31:0]axi_mem_interconnect_to_s05_couplers_ARADDR;
  wire [2:0]axi_mem_interconnect_to_s05_couplers_ARPROT;
  wire axi_mem_interconnect_to_s05_couplers_ARREADY;
  wire axi_mem_interconnect_to_s05_couplers_ARVALID;
  wire [31:0]axi_mem_interconnect_to_s05_couplers_AWADDR;
  wire [2:0]axi_mem_interconnect_to_s05_couplers_AWPROT;
  wire axi_mem_interconnect_to_s05_couplers_AWREADY;
  wire axi_mem_interconnect_to_s05_couplers_AWVALID;
  wire axi_mem_interconnect_to_s05_couplers_BREADY;
  wire [1:0]axi_mem_interconnect_to_s05_couplers_BRESP;
  wire axi_mem_interconnect_to_s05_couplers_BVALID;
  wire [31:0]axi_mem_interconnect_to_s05_couplers_RDATA;
  wire axi_mem_interconnect_to_s05_couplers_RREADY;
  wire [1:0]axi_mem_interconnect_to_s05_couplers_RRESP;
  wire axi_mem_interconnect_to_s05_couplers_RVALID;
  wire [31:0]axi_mem_interconnect_to_s05_couplers_WDATA;
  wire axi_mem_interconnect_to_s05_couplers_WREADY;
  wire [3:0]axi_mem_interconnect_to_s05_couplers_WSTRB;
  wire axi_mem_interconnect_to_s05_couplers_WVALID;
  wire [31:0]axi_mem_interconnect_to_s06_couplers_ARADDR;
  wire [2:0]axi_mem_interconnect_to_s06_couplers_ARPROT;
  wire axi_mem_interconnect_to_s06_couplers_ARREADY;
  wire axi_mem_interconnect_to_s06_couplers_ARVALID;
  wire [31:0]axi_mem_interconnect_to_s06_couplers_AWADDR;
  wire [2:0]axi_mem_interconnect_to_s06_couplers_AWPROT;
  wire axi_mem_interconnect_to_s06_couplers_AWREADY;
  wire axi_mem_interconnect_to_s06_couplers_AWVALID;
  wire axi_mem_interconnect_to_s06_couplers_BREADY;
  wire [1:0]axi_mem_interconnect_to_s06_couplers_BRESP;
  wire axi_mem_interconnect_to_s06_couplers_BVALID;
  wire [31:0]axi_mem_interconnect_to_s06_couplers_RDATA;
  wire axi_mem_interconnect_to_s06_couplers_RREADY;
  wire [1:0]axi_mem_interconnect_to_s06_couplers_RRESP;
  wire axi_mem_interconnect_to_s06_couplers_RVALID;
  wire [31:0]axi_mem_interconnect_to_s06_couplers_WDATA;
  wire axi_mem_interconnect_to_s06_couplers_WREADY;
  wire [3:0]axi_mem_interconnect_to_s06_couplers_WSTRB;
  wire axi_mem_interconnect_to_s06_couplers_WVALID;
  wire [31:0]axi_mem_interconnect_to_s07_couplers_ARADDR;
  wire [1:0]axi_mem_interconnect_to_s07_couplers_ARBURST;
  wire [3:0]axi_mem_interconnect_to_s07_couplers_ARCACHE;
  wire [7:0]axi_mem_interconnect_to_s07_couplers_ARLEN;
  wire [2:0]axi_mem_interconnect_to_s07_couplers_ARPROT;
  wire axi_mem_interconnect_to_s07_couplers_ARREADY;
  wire [2:0]axi_mem_interconnect_to_s07_couplers_ARSIZE;
  wire axi_mem_interconnect_to_s07_couplers_ARVALID;
  wire [63:0]axi_mem_interconnect_to_s07_couplers_RDATA;
  wire axi_mem_interconnect_to_s07_couplers_RREADY;
  wire [1:0]axi_mem_interconnect_to_s07_couplers_RRESP;
  wire axi_mem_interconnect_to_s07_couplers_RVALID;
  wire [31:0]axi_mem_interconnect_to_s08_couplers_AWADDR;
  wire [1:0]axi_mem_interconnect_to_s08_couplers_AWBURST;
  wire [3:0]axi_mem_interconnect_to_s08_couplers_AWCACHE;
  wire [7:0]axi_mem_interconnect_to_s08_couplers_AWLEN;
  wire [2:0]axi_mem_interconnect_to_s08_couplers_AWPROT;
  wire axi_mem_interconnect_to_s08_couplers_AWREADY;
  wire [2:0]axi_mem_interconnect_to_s08_couplers_AWSIZE;
  wire axi_mem_interconnect_to_s08_couplers_AWVALID;
  wire axi_mem_interconnect_to_s08_couplers_BREADY;
  wire [1:0]axi_mem_interconnect_to_s08_couplers_BRESP;
  wire axi_mem_interconnect_to_s08_couplers_BVALID;
  wire [63:0]axi_mem_interconnect_to_s08_couplers_WDATA;
  wire axi_mem_interconnect_to_s08_couplers_WLAST;
  wire axi_mem_interconnect_to_s08_couplers_WREADY;
  wire [7:0]axi_mem_interconnect_to_s08_couplers_WSTRB;
  wire axi_mem_interconnect_to_s08_couplers_WVALID;
  wire [31:0]axi_mem_interconnect_to_s09_couplers_AWADDR;
  wire [1:0]axi_mem_interconnect_to_s09_couplers_AWBURST;
  wire [3:0]axi_mem_interconnect_to_s09_couplers_AWCACHE;
  wire [7:0]axi_mem_interconnect_to_s09_couplers_AWLEN;
  wire [2:0]axi_mem_interconnect_to_s09_couplers_AWPROT;
  wire axi_mem_interconnect_to_s09_couplers_AWREADY;
  wire [2:0]axi_mem_interconnect_to_s09_couplers_AWSIZE;
  wire axi_mem_interconnect_to_s09_couplers_AWVALID;
  wire axi_mem_interconnect_to_s09_couplers_BREADY;
  wire [1:0]axi_mem_interconnect_to_s09_couplers_BRESP;
  wire axi_mem_interconnect_to_s09_couplers_BVALID;
  wire [63:0]axi_mem_interconnect_to_s09_couplers_WDATA;
  wire axi_mem_interconnect_to_s09_couplers_WLAST;
  wire axi_mem_interconnect_to_s09_couplers_WREADY;
  wire [7:0]axi_mem_interconnect_to_s09_couplers_WSTRB;
  wire axi_mem_interconnect_to_s09_couplers_WVALID;
  wire [29:0]m00_couplers_to_axi_mem_interconnect_ARADDR;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_ARBURST;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_ARCACHE;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_ARID;
  wire [7:0]m00_couplers_to_axi_mem_interconnect_ARLEN;
  wire m00_couplers_to_axi_mem_interconnect_ARLOCK;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_ARPROT;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_ARQOS;
  wire m00_couplers_to_axi_mem_interconnect_ARREADY;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_ARSIZE;
  wire m00_couplers_to_axi_mem_interconnect_ARVALID;
  wire [29:0]m00_couplers_to_axi_mem_interconnect_AWADDR;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_AWBURST;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_AWCACHE;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_AWID;
  wire [7:0]m00_couplers_to_axi_mem_interconnect_AWLEN;
  wire m00_couplers_to_axi_mem_interconnect_AWLOCK;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_AWPROT;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_AWQOS;
  wire m00_couplers_to_axi_mem_interconnect_AWREADY;
  wire [2:0]m00_couplers_to_axi_mem_interconnect_AWSIZE;
  wire m00_couplers_to_axi_mem_interconnect_AWVALID;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_BID;
  wire m00_couplers_to_axi_mem_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_BRESP;
  wire m00_couplers_to_axi_mem_interconnect_BVALID;
  wire [511:0]m00_couplers_to_axi_mem_interconnect_RDATA;
  wire [3:0]m00_couplers_to_axi_mem_interconnect_RID;
  wire m00_couplers_to_axi_mem_interconnect_RLAST;
  wire m00_couplers_to_axi_mem_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_mem_interconnect_RRESP;
  wire m00_couplers_to_axi_mem_interconnect_RVALID;
  wire [511:0]m00_couplers_to_axi_mem_interconnect_WDATA;
  wire m00_couplers_to_axi_mem_interconnect_WLAST;
  wire m00_couplers_to_axi_mem_interconnect_WREADY;
  wire [63:0]m00_couplers_to_axi_mem_interconnect_WSTRB;
  wire m00_couplers_to_axi_mem_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [1535:1024]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [511:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [63:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire s03_couplers_to_xbar_ARVALID;
  wire [2047:1536]s03_couplers_to_xbar_RDATA;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [31:0]s04_couplers_to_xbar_AWADDR;
  wire [1:0]s04_couplers_to_xbar_AWBURST;
  wire [3:0]s04_couplers_to_xbar_AWCACHE;
  wire [7:0]s04_couplers_to_xbar_AWLEN;
  wire [0:0]s04_couplers_to_xbar_AWLOCK;
  wire [2:0]s04_couplers_to_xbar_AWPROT;
  wire [3:0]s04_couplers_to_xbar_AWQOS;
  wire [4:4]s04_couplers_to_xbar_AWREADY;
  wire [2:0]s04_couplers_to_xbar_AWSIZE;
  wire s04_couplers_to_xbar_AWVALID;
  wire s04_couplers_to_xbar_BREADY;
  wire [9:8]s04_couplers_to_xbar_BRESP;
  wire [4:4]s04_couplers_to_xbar_BVALID;
  wire [511:0]s04_couplers_to_xbar_WDATA;
  wire s04_couplers_to_xbar_WLAST;
  wire [4:4]s04_couplers_to_xbar_WREADY;
  wire [63:0]s04_couplers_to_xbar_WSTRB;
  wire s04_couplers_to_xbar_WVALID;
  wire [31:0]s05_couplers_to_xbar_ARADDR;
  wire [1:0]s05_couplers_to_xbar_ARBURST;
  wire [3:0]s05_couplers_to_xbar_ARCACHE;
  wire [7:0]s05_couplers_to_xbar_ARLEN;
  wire [0:0]s05_couplers_to_xbar_ARLOCK;
  wire [2:0]s05_couplers_to_xbar_ARPROT;
  wire [3:0]s05_couplers_to_xbar_ARQOS;
  wire [5:5]s05_couplers_to_xbar_ARREADY;
  wire [2:0]s05_couplers_to_xbar_ARSIZE;
  wire s05_couplers_to_xbar_ARVALID;
  wire [31:0]s05_couplers_to_xbar_AWADDR;
  wire [1:0]s05_couplers_to_xbar_AWBURST;
  wire [3:0]s05_couplers_to_xbar_AWCACHE;
  wire [7:0]s05_couplers_to_xbar_AWLEN;
  wire [0:0]s05_couplers_to_xbar_AWLOCK;
  wire [2:0]s05_couplers_to_xbar_AWPROT;
  wire [3:0]s05_couplers_to_xbar_AWQOS;
  wire [5:5]s05_couplers_to_xbar_AWREADY;
  wire [2:0]s05_couplers_to_xbar_AWSIZE;
  wire s05_couplers_to_xbar_AWVALID;
  wire s05_couplers_to_xbar_BREADY;
  wire [11:10]s05_couplers_to_xbar_BRESP;
  wire [5:5]s05_couplers_to_xbar_BVALID;
  wire [3071:2560]s05_couplers_to_xbar_RDATA;
  wire [5:5]s05_couplers_to_xbar_RLAST;
  wire s05_couplers_to_xbar_RREADY;
  wire [11:10]s05_couplers_to_xbar_RRESP;
  wire [5:5]s05_couplers_to_xbar_RVALID;
  wire [511:0]s05_couplers_to_xbar_WDATA;
  wire s05_couplers_to_xbar_WLAST;
  wire [5:5]s05_couplers_to_xbar_WREADY;
  wire [63:0]s05_couplers_to_xbar_WSTRB;
  wire s05_couplers_to_xbar_WVALID;
  wire [31:0]s06_couplers_to_xbar_ARADDR;
  wire [1:0]s06_couplers_to_xbar_ARBURST;
  wire [3:0]s06_couplers_to_xbar_ARCACHE;
  wire [7:0]s06_couplers_to_xbar_ARLEN;
  wire [0:0]s06_couplers_to_xbar_ARLOCK;
  wire [2:0]s06_couplers_to_xbar_ARPROT;
  wire [3:0]s06_couplers_to_xbar_ARQOS;
  wire [6:6]s06_couplers_to_xbar_ARREADY;
  wire [2:0]s06_couplers_to_xbar_ARSIZE;
  wire s06_couplers_to_xbar_ARVALID;
  wire [31:0]s06_couplers_to_xbar_AWADDR;
  wire [1:0]s06_couplers_to_xbar_AWBURST;
  wire [3:0]s06_couplers_to_xbar_AWCACHE;
  wire [7:0]s06_couplers_to_xbar_AWLEN;
  wire [0:0]s06_couplers_to_xbar_AWLOCK;
  wire [2:0]s06_couplers_to_xbar_AWPROT;
  wire [3:0]s06_couplers_to_xbar_AWQOS;
  wire [6:6]s06_couplers_to_xbar_AWREADY;
  wire [2:0]s06_couplers_to_xbar_AWSIZE;
  wire s06_couplers_to_xbar_AWVALID;
  wire s06_couplers_to_xbar_BREADY;
  wire [13:12]s06_couplers_to_xbar_BRESP;
  wire [6:6]s06_couplers_to_xbar_BVALID;
  wire [3583:3072]s06_couplers_to_xbar_RDATA;
  wire [6:6]s06_couplers_to_xbar_RLAST;
  wire s06_couplers_to_xbar_RREADY;
  wire [13:12]s06_couplers_to_xbar_RRESP;
  wire [6:6]s06_couplers_to_xbar_RVALID;
  wire [511:0]s06_couplers_to_xbar_WDATA;
  wire s06_couplers_to_xbar_WLAST;
  wire [6:6]s06_couplers_to_xbar_WREADY;
  wire [63:0]s06_couplers_to_xbar_WSTRB;
  wire s06_couplers_to_xbar_WVALID;
  wire [31:0]s07_couplers_to_xbar_ARADDR;
  wire [1:0]s07_couplers_to_xbar_ARBURST;
  wire [3:0]s07_couplers_to_xbar_ARCACHE;
  wire [7:0]s07_couplers_to_xbar_ARLEN;
  wire [0:0]s07_couplers_to_xbar_ARLOCK;
  wire [2:0]s07_couplers_to_xbar_ARPROT;
  wire [3:0]s07_couplers_to_xbar_ARQOS;
  wire [7:7]s07_couplers_to_xbar_ARREADY;
  wire [2:0]s07_couplers_to_xbar_ARSIZE;
  wire s07_couplers_to_xbar_ARVALID;
  wire [4095:3584]s07_couplers_to_xbar_RDATA;
  wire [7:7]s07_couplers_to_xbar_RLAST;
  wire s07_couplers_to_xbar_RREADY;
  wire [15:14]s07_couplers_to_xbar_RRESP;
  wire [7:7]s07_couplers_to_xbar_RVALID;
  wire [31:0]s08_couplers_to_xbar_AWADDR;
  wire [1:0]s08_couplers_to_xbar_AWBURST;
  wire [3:0]s08_couplers_to_xbar_AWCACHE;
  wire [7:0]s08_couplers_to_xbar_AWLEN;
  wire [0:0]s08_couplers_to_xbar_AWLOCK;
  wire [2:0]s08_couplers_to_xbar_AWPROT;
  wire [3:0]s08_couplers_to_xbar_AWQOS;
  wire [8:8]s08_couplers_to_xbar_AWREADY;
  wire [2:0]s08_couplers_to_xbar_AWSIZE;
  wire s08_couplers_to_xbar_AWVALID;
  wire s08_couplers_to_xbar_BREADY;
  wire [17:16]s08_couplers_to_xbar_BRESP;
  wire [8:8]s08_couplers_to_xbar_BVALID;
  wire [511:0]s08_couplers_to_xbar_WDATA;
  wire s08_couplers_to_xbar_WLAST;
  wire [8:8]s08_couplers_to_xbar_WREADY;
  wire [63:0]s08_couplers_to_xbar_WSTRB;
  wire s08_couplers_to_xbar_WVALID;
  wire [31:0]s09_couplers_to_xbar_AWADDR;
  wire [1:0]s09_couplers_to_xbar_AWBURST;
  wire [3:0]s09_couplers_to_xbar_AWCACHE;
  wire [7:0]s09_couplers_to_xbar_AWLEN;
  wire [0:0]s09_couplers_to_xbar_AWLOCK;
  wire [2:0]s09_couplers_to_xbar_AWPROT;
  wire [3:0]s09_couplers_to_xbar_AWQOS;
  wire [9:9]s09_couplers_to_xbar_AWREADY;
  wire [2:0]s09_couplers_to_xbar_AWSIZE;
  wire s09_couplers_to_xbar_AWVALID;
  wire s09_couplers_to_xbar_BREADY;
  wire [19:18]s09_couplers_to_xbar_BRESP;
  wire [9:9]s09_couplers_to_xbar_BVALID;
  wire [511:0]s09_couplers_to_xbar_WDATA;
  wire s09_couplers_to_xbar_WLAST;
  wire [9:9]s09_couplers_to_xbar_WREADY;
  wire [63:0]s09_couplers_to_xbar_WSTRB;
  wire s09_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [3:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [3:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [3:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [3:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [9:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [19:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [5119:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [19:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[29:0] = m00_couplers_to_axi_mem_interconnect_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_mem_interconnect_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_mem_interconnect_ARCACHE;
  assign M00_AXI_arid[3:0] = m00_couplers_to_axi_mem_interconnect_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_mem_interconnect_ARLEN;
  assign M00_AXI_arlock = m00_couplers_to_axi_mem_interconnect_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_mem_interconnect_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_mem_interconnect_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_mem_interconnect_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_mem_interconnect_ARVALID;
  assign M00_AXI_awaddr[29:0] = m00_couplers_to_axi_mem_interconnect_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_mem_interconnect_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_mem_interconnect_AWCACHE;
  assign M00_AXI_awid[3:0] = m00_couplers_to_axi_mem_interconnect_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_mem_interconnect_AWLEN;
  assign M00_AXI_awlock = m00_couplers_to_axi_mem_interconnect_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_mem_interconnect_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_mem_interconnect_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_mem_interconnect_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_mem_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_mem_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_mem_interconnect_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_axi_mem_interconnect_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_mem_interconnect_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_axi_mem_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_mem_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_mem_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_mem_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_mem_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_mem_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_mem_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_mem_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_mem_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_mem_interconnect_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_mem_interconnect_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[31:0] = axi_mem_interconnect_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_mem_interconnect_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_mem_interconnect_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_mem_interconnect_to_s01_couplers_RVALID;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = axi_mem_interconnect_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = axi_mem_interconnect_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = axi_mem_interconnect_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_mem_interconnect_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[31:0] = axi_mem_interconnect_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = axi_mem_interconnect_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = axi_mem_interconnect_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_mem_interconnect_to_s02_couplers_RVALID;
  assign S02_AXI_wready = axi_mem_interconnect_to_s02_couplers_WREADY;
  assign S03_ACLK_1 = S03_ACLK;
  assign S03_ARESETN_1 = S03_ARESETN;
  assign S03_AXI_arready = axi_mem_interconnect_to_s03_couplers_ARREADY;
  assign S03_AXI_rdata[31:0] = axi_mem_interconnect_to_s03_couplers_RDATA;
  assign S03_AXI_rlast = axi_mem_interconnect_to_s03_couplers_RLAST;
  assign S03_AXI_rresp[1:0] = axi_mem_interconnect_to_s03_couplers_RRESP;
  assign S03_AXI_rvalid = axi_mem_interconnect_to_s03_couplers_RVALID;
  assign S04_ACLK_1 = S04_ACLK;
  assign S04_ARESETN_1 = S04_ARESETN;
  assign S04_AXI_awready = axi_mem_interconnect_to_s04_couplers_AWREADY;
  assign S04_AXI_bresp[1:0] = axi_mem_interconnect_to_s04_couplers_BRESP;
  assign S04_AXI_bvalid = axi_mem_interconnect_to_s04_couplers_BVALID;
  assign S04_AXI_wready = axi_mem_interconnect_to_s04_couplers_WREADY;
  assign S05_ACLK_1 = S05_ACLK;
  assign S05_ARESETN_1 = S05_ARESETN;
  assign S05_AXI_arready = axi_mem_interconnect_to_s05_couplers_ARREADY;
  assign S05_AXI_awready = axi_mem_interconnect_to_s05_couplers_AWREADY;
  assign S05_AXI_bresp[1:0] = axi_mem_interconnect_to_s05_couplers_BRESP;
  assign S05_AXI_bvalid = axi_mem_interconnect_to_s05_couplers_BVALID;
  assign S05_AXI_rdata[31:0] = axi_mem_interconnect_to_s05_couplers_RDATA;
  assign S05_AXI_rresp[1:0] = axi_mem_interconnect_to_s05_couplers_RRESP;
  assign S05_AXI_rvalid = axi_mem_interconnect_to_s05_couplers_RVALID;
  assign S05_AXI_wready = axi_mem_interconnect_to_s05_couplers_WREADY;
  assign S06_ACLK_1 = S06_ACLK;
  assign S06_ARESETN_1 = S06_ARESETN;
  assign S06_AXI_arready = axi_mem_interconnect_to_s06_couplers_ARREADY;
  assign S06_AXI_awready = axi_mem_interconnect_to_s06_couplers_AWREADY;
  assign S06_AXI_bresp[1:0] = axi_mem_interconnect_to_s06_couplers_BRESP;
  assign S06_AXI_bvalid = axi_mem_interconnect_to_s06_couplers_BVALID;
  assign S06_AXI_rdata[31:0] = axi_mem_interconnect_to_s06_couplers_RDATA;
  assign S06_AXI_rresp[1:0] = axi_mem_interconnect_to_s06_couplers_RRESP;
  assign S06_AXI_rvalid = axi_mem_interconnect_to_s06_couplers_RVALID;
  assign S06_AXI_wready = axi_mem_interconnect_to_s06_couplers_WREADY;
  assign S07_ACLK_1 = S07_ACLK;
  assign S07_ARESETN_1 = S07_ARESETN;
  assign S07_AXI_arready = axi_mem_interconnect_to_s07_couplers_ARREADY;
  assign S07_AXI_rdata[63:0] = axi_mem_interconnect_to_s07_couplers_RDATA;
  assign S07_AXI_rresp[1:0] = axi_mem_interconnect_to_s07_couplers_RRESP;
  assign S07_AXI_rvalid = axi_mem_interconnect_to_s07_couplers_RVALID;
  assign S08_ACLK_1 = S08_ACLK;
  assign S08_ARESETN_1 = S08_ARESETN;
  assign S08_AXI_awready = axi_mem_interconnect_to_s08_couplers_AWREADY;
  assign S08_AXI_bresp[1:0] = axi_mem_interconnect_to_s08_couplers_BRESP;
  assign S08_AXI_bvalid = axi_mem_interconnect_to_s08_couplers_BVALID;
  assign S08_AXI_wready = axi_mem_interconnect_to_s08_couplers_WREADY;
  assign S09_ACLK_1 = S09_ACLK;
  assign S09_ARESETN_1 = S09_ARESETN;
  assign S09_AXI_awready = axi_mem_interconnect_to_s09_couplers_AWREADY;
  assign S09_AXI_bresp[1:0] = axi_mem_interconnect_to_s09_couplers_BRESP;
  assign S09_AXI_bvalid = axi_mem_interconnect_to_s09_couplers_BVALID;
  assign S09_AXI_wready = axi_mem_interconnect_to_s09_couplers_WREADY;
  assign axi_mem_interconnect_ACLK_net = ACLK;
  assign axi_mem_interconnect_ARESETN_net = ARESETN;
  assign axi_mem_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_mem_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_mem_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_mem_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_mem_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_mem_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_mem_interconnect_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_mem_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_mem_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_mem_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_mem_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_interconnect_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_mem_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_mem_interconnect_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_mem_interconnect_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_mem_interconnect_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_mem_interconnect_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_mem_interconnect_to_s01_couplers_ARLOCK = S01_AXI_arlock;
  assign axi_mem_interconnect_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_mem_interconnect_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_mem_interconnect_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_mem_interconnect_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_mem_interconnect_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_mem_interconnect_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign axi_mem_interconnect_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign axi_mem_interconnect_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign axi_mem_interconnect_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_mem_interconnect_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign axi_mem_interconnect_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign axi_mem_interconnect_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_mem_interconnect_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign axi_mem_interconnect_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_mem_interconnect_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_mem_interconnect_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_mem_interconnect_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_mem_interconnect_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_mem_interconnect_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_mem_interconnect_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_mem_interconnect_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_mem_interconnect_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign axi_mem_interconnect_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_mem_interconnect_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign axi_mem_interconnect_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign axi_mem_interconnect_to_s03_couplers_ARADDR = S03_AXI_araddr[31:0];
  assign axi_mem_interconnect_to_s03_couplers_ARBURST = S03_AXI_arburst[1:0];
  assign axi_mem_interconnect_to_s03_couplers_ARCACHE = S03_AXI_arcache[3:0];
  assign axi_mem_interconnect_to_s03_couplers_ARLEN = S03_AXI_arlen[7:0];
  assign axi_mem_interconnect_to_s03_couplers_ARPROT = S03_AXI_arprot[2:0];
  assign axi_mem_interconnect_to_s03_couplers_ARSIZE = S03_AXI_arsize[2:0];
  assign axi_mem_interconnect_to_s03_couplers_ARVALID = S03_AXI_arvalid;
  assign axi_mem_interconnect_to_s03_couplers_RREADY = S03_AXI_rready;
  assign axi_mem_interconnect_to_s04_couplers_AWADDR = S04_AXI_awaddr[31:0];
  assign axi_mem_interconnect_to_s04_couplers_AWBURST = S04_AXI_awburst[1:0];
  assign axi_mem_interconnect_to_s04_couplers_AWCACHE = S04_AXI_awcache[3:0];
  assign axi_mem_interconnect_to_s04_couplers_AWLEN = S04_AXI_awlen[7:0];
  assign axi_mem_interconnect_to_s04_couplers_AWPROT = S04_AXI_awprot[2:0];
  assign axi_mem_interconnect_to_s04_couplers_AWSIZE = S04_AXI_awsize[2:0];
  assign axi_mem_interconnect_to_s04_couplers_AWVALID = S04_AXI_awvalid;
  assign axi_mem_interconnect_to_s04_couplers_BREADY = S04_AXI_bready;
  assign axi_mem_interconnect_to_s04_couplers_WDATA = S04_AXI_wdata[31:0];
  assign axi_mem_interconnect_to_s04_couplers_WLAST = S04_AXI_wlast;
  assign axi_mem_interconnect_to_s04_couplers_WSTRB = S04_AXI_wstrb[3:0];
  assign axi_mem_interconnect_to_s04_couplers_WVALID = S04_AXI_wvalid;
  assign axi_mem_interconnect_to_s05_couplers_ARADDR = S05_AXI_araddr[31:0];
  assign axi_mem_interconnect_to_s05_couplers_ARPROT = S05_AXI_arprot[2:0];
  assign axi_mem_interconnect_to_s05_couplers_ARVALID = S05_AXI_arvalid;
  assign axi_mem_interconnect_to_s05_couplers_AWADDR = S05_AXI_awaddr[31:0];
  assign axi_mem_interconnect_to_s05_couplers_AWPROT = S05_AXI_awprot[2:0];
  assign axi_mem_interconnect_to_s05_couplers_AWVALID = S05_AXI_awvalid;
  assign axi_mem_interconnect_to_s05_couplers_BREADY = S05_AXI_bready;
  assign axi_mem_interconnect_to_s05_couplers_RREADY = S05_AXI_rready;
  assign axi_mem_interconnect_to_s05_couplers_WDATA = S05_AXI_wdata[31:0];
  assign axi_mem_interconnect_to_s05_couplers_WSTRB = S05_AXI_wstrb[3:0];
  assign axi_mem_interconnect_to_s05_couplers_WVALID = S05_AXI_wvalid;
  assign axi_mem_interconnect_to_s06_couplers_ARADDR = S06_AXI_araddr[31:0];
  assign axi_mem_interconnect_to_s06_couplers_ARPROT = S06_AXI_arprot[2:0];
  assign axi_mem_interconnect_to_s06_couplers_ARVALID = S06_AXI_arvalid;
  assign axi_mem_interconnect_to_s06_couplers_AWADDR = S06_AXI_awaddr[31:0];
  assign axi_mem_interconnect_to_s06_couplers_AWPROT = S06_AXI_awprot[2:0];
  assign axi_mem_interconnect_to_s06_couplers_AWVALID = S06_AXI_awvalid;
  assign axi_mem_interconnect_to_s06_couplers_BREADY = S06_AXI_bready;
  assign axi_mem_interconnect_to_s06_couplers_RREADY = S06_AXI_rready;
  assign axi_mem_interconnect_to_s06_couplers_WDATA = S06_AXI_wdata[31:0];
  assign axi_mem_interconnect_to_s06_couplers_WSTRB = S06_AXI_wstrb[3:0];
  assign axi_mem_interconnect_to_s06_couplers_WVALID = S06_AXI_wvalid;
  assign axi_mem_interconnect_to_s07_couplers_ARADDR = S07_AXI_araddr[31:0];
  assign axi_mem_interconnect_to_s07_couplers_ARBURST = S07_AXI_arburst[1:0];
  assign axi_mem_interconnect_to_s07_couplers_ARCACHE = S07_AXI_arcache[3:0];
  assign axi_mem_interconnect_to_s07_couplers_ARLEN = S07_AXI_arlen[7:0];
  assign axi_mem_interconnect_to_s07_couplers_ARPROT = S07_AXI_arprot[2:0];
  assign axi_mem_interconnect_to_s07_couplers_ARSIZE = S07_AXI_arsize[2:0];
  assign axi_mem_interconnect_to_s07_couplers_ARVALID = S07_AXI_arvalid;
  assign axi_mem_interconnect_to_s07_couplers_RREADY = S07_AXI_rready;
  assign axi_mem_interconnect_to_s08_couplers_AWADDR = S08_AXI_awaddr[31:0];
  assign axi_mem_interconnect_to_s08_couplers_AWBURST = S08_AXI_awburst[1:0];
  assign axi_mem_interconnect_to_s08_couplers_AWCACHE = S08_AXI_awcache[3:0];
  assign axi_mem_interconnect_to_s08_couplers_AWLEN = S08_AXI_awlen[7:0];
  assign axi_mem_interconnect_to_s08_couplers_AWPROT = S08_AXI_awprot[2:0];
  assign axi_mem_interconnect_to_s08_couplers_AWSIZE = S08_AXI_awsize[2:0];
  assign axi_mem_interconnect_to_s08_couplers_AWVALID = S08_AXI_awvalid;
  assign axi_mem_interconnect_to_s08_couplers_BREADY = S08_AXI_bready;
  assign axi_mem_interconnect_to_s08_couplers_WDATA = S08_AXI_wdata[63:0];
  assign axi_mem_interconnect_to_s08_couplers_WLAST = S08_AXI_wlast;
  assign axi_mem_interconnect_to_s08_couplers_WSTRB = S08_AXI_wstrb[7:0];
  assign axi_mem_interconnect_to_s08_couplers_WVALID = S08_AXI_wvalid;
  assign axi_mem_interconnect_to_s09_couplers_AWADDR = S09_AXI_awaddr[31:0];
  assign axi_mem_interconnect_to_s09_couplers_AWBURST = S09_AXI_awburst[1:0];
  assign axi_mem_interconnect_to_s09_couplers_AWCACHE = S09_AXI_awcache[3:0];
  assign axi_mem_interconnect_to_s09_couplers_AWLEN = S09_AXI_awlen[7:0];
  assign axi_mem_interconnect_to_s09_couplers_AWPROT = S09_AXI_awprot[2:0];
  assign axi_mem_interconnect_to_s09_couplers_AWSIZE = S09_AXI_awsize[2:0];
  assign axi_mem_interconnect_to_s09_couplers_AWVALID = S09_AXI_awvalid;
  assign axi_mem_interconnect_to_s09_couplers_BREADY = S09_AXI_bready;
  assign axi_mem_interconnect_to_s09_couplers_WDATA = S09_AXI_wdata[63:0];
  assign axi_mem_interconnect_to_s09_couplers_WLAST = S09_AXI_wlast;
  assign axi_mem_interconnect_to_s09_couplers_WSTRB = S09_AXI_wstrb[7:0];
  assign axi_mem_interconnect_to_s09_couplers_WVALID = S09_AXI_wvalid;
  assign m00_couplers_to_axi_mem_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_mem_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_mem_interconnect_BID = M00_AXI_bid[3:0];
  assign m00_couplers_to_axi_mem_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_mem_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_mem_interconnect_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_axi_mem_interconnect_RID = M00_AXI_rid[3:0];
  assign m00_couplers_to_axi_mem_interconnect_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_mem_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_mem_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_mem_interconnect_WREADY = M00_AXI_wready;
  m00_couplers_imp_R61KWR m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_mem_interconnect_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_mem_interconnect_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_mem_interconnect_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_mem_interconnect_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_mem_interconnect_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_mem_interconnect_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_mem_interconnect_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_mem_interconnect_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_mem_interconnect_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_mem_interconnect_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_mem_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_mem_interconnect_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_mem_interconnect_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_mem_interconnect_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_mem_interconnect_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_mem_interconnect_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_mem_interconnect_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_mem_interconnect_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_mem_interconnect_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_mem_interconnect_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_mem_interconnect_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_mem_interconnect_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_mem_interconnect_BID),
        .M_AXI_bready(m00_couplers_to_axi_mem_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_mem_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_mem_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_mem_interconnect_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_mem_interconnect_RID),
        .M_AXI_rlast(m00_couplers_to_axi_mem_interconnect_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_mem_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_mem_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_mem_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_mem_interconnect_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_mem_interconnect_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_mem_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_mem_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_mem_interconnect_WVALID),
        .S_ACLK(axi_mem_interconnect_ACLK_net),
        .S_ARESETN(axi_mem_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_NYY8AY s00_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_mem_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_interconnect_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_mem_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_interconnect_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_mem_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_mem_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_mem_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_mem_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_mem_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_mem_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_interconnect_to_s00_couplers_WVALID));
  s01_couplers_imp_1WTPGKB s01_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_mem_interconnect_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_interconnect_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_interconnect_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_interconnect_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_mem_interconnect_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_mem_interconnect_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_mem_interconnect_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_mem_interconnect_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_interconnect_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_interconnect_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_mem_interconnect_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_mem_interconnect_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_mem_interconnect_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_mem_interconnect_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_interconnect_to_s01_couplers_RVALID));
  s02_couplers_imp_1M7AY21 s02_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(axi_mem_interconnect_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_interconnect_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_interconnect_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_interconnect_to_s02_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_interconnect_to_s02_couplers_ARPROT),
        .S_AXI_arready(axi_mem_interconnect_to_s02_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_interconnect_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_interconnect_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_interconnect_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_interconnect_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_interconnect_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_interconnect_to_s02_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_interconnect_to_s02_couplers_AWPROT),
        .S_AXI_awready(axi_mem_interconnect_to_s02_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_interconnect_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_interconnect_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_mem_interconnect_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_mem_interconnect_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_interconnect_to_s02_couplers_BVALID),
        .S_AXI_rdata(axi_mem_interconnect_to_s02_couplers_RDATA),
        .S_AXI_rlast(axi_mem_interconnect_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_mem_interconnect_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_mem_interconnect_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_interconnect_to_s02_couplers_RVALID),
        .S_AXI_wdata(axi_mem_interconnect_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_mem_interconnect_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_mem_interconnect_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_interconnect_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_interconnect_to_s02_couplers_WVALID));
  s03_couplers_imp_ZFB4VS s03_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .S_ACLK(S03_ACLK_1),
        .S_ARESETN(S03_ARESETN_1),
        .S_AXI_araddr(axi_mem_interconnect_to_s03_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_interconnect_to_s03_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_interconnect_to_s03_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_interconnect_to_s03_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_interconnect_to_s03_couplers_ARPROT),
        .S_AXI_arready(axi_mem_interconnect_to_s03_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_interconnect_to_s03_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_interconnect_to_s03_couplers_ARVALID),
        .S_AXI_rdata(axi_mem_interconnect_to_s03_couplers_RDATA),
        .S_AXI_rlast(axi_mem_interconnect_to_s03_couplers_RLAST),
        .S_AXI_rready(axi_mem_interconnect_to_s03_couplers_RREADY),
        .S_AXI_rresp(axi_mem_interconnect_to_s03_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_interconnect_to_s03_couplers_RVALID));
  s04_couplers_imp_105UVIL s04_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_awaddr(s04_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s04_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s04_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s04_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s04_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s04_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s04_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s04_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s04_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s04_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s04_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s04_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s04_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s04_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s04_couplers_to_xbar_WLAST),
        .M_AXI_wready(s04_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s04_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s04_couplers_to_xbar_WVALID),
        .S_ACLK(S04_ACLK_1),
        .S_ARESETN(S04_ARESETN_1),
        .S_AXI_awaddr(axi_mem_interconnect_to_s04_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_interconnect_to_s04_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_interconnect_to_s04_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_interconnect_to_s04_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_interconnect_to_s04_couplers_AWPROT),
        .S_AXI_awready(axi_mem_interconnect_to_s04_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_interconnect_to_s04_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_interconnect_to_s04_couplers_AWVALID),
        .S_AXI_bready(axi_mem_interconnect_to_s04_couplers_BREADY),
        .S_AXI_bresp(axi_mem_interconnect_to_s04_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_interconnect_to_s04_couplers_BVALID),
        .S_AXI_wdata(axi_mem_interconnect_to_s04_couplers_WDATA),
        .S_AXI_wlast(axi_mem_interconnect_to_s04_couplers_WLAST),
        .S_AXI_wready(axi_mem_interconnect_to_s04_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_interconnect_to_s04_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_interconnect_to_s04_couplers_WVALID));
  s05_couplers_imp_C9WPEK s05_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_araddr(s05_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s05_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s05_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s05_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s05_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s05_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s05_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s05_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s05_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s05_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s05_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s05_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s05_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s05_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s05_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s05_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s05_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s05_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s05_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s05_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s05_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s05_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s05_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s05_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s05_couplers_to_xbar_RLAST),
        .M_AXI_rready(s05_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s05_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s05_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s05_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s05_couplers_to_xbar_WLAST),
        .M_AXI_wready(s05_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s05_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s05_couplers_to_xbar_WVALID),
        .S_ACLK(S05_ACLK_1),
        .S_ARESETN(S05_ARESETN_1),
        .S_AXI_araddr(axi_mem_interconnect_to_s05_couplers_ARADDR),
        .S_AXI_arprot(axi_mem_interconnect_to_s05_couplers_ARPROT),
        .S_AXI_arready(axi_mem_interconnect_to_s05_couplers_ARREADY),
        .S_AXI_arvalid(axi_mem_interconnect_to_s05_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_interconnect_to_s05_couplers_AWADDR),
        .S_AXI_awprot(axi_mem_interconnect_to_s05_couplers_AWPROT),
        .S_AXI_awready(axi_mem_interconnect_to_s05_couplers_AWREADY),
        .S_AXI_awvalid(axi_mem_interconnect_to_s05_couplers_AWVALID),
        .S_AXI_bready(axi_mem_interconnect_to_s05_couplers_BREADY),
        .S_AXI_bresp(axi_mem_interconnect_to_s05_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_interconnect_to_s05_couplers_BVALID),
        .S_AXI_rdata(axi_mem_interconnect_to_s05_couplers_RDATA),
        .S_AXI_rready(axi_mem_interconnect_to_s05_couplers_RREADY),
        .S_AXI_rresp(axi_mem_interconnect_to_s05_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_interconnect_to_s05_couplers_RVALID),
        .S_AXI_wdata(axi_mem_interconnect_to_s05_couplers_WDATA),
        .S_AXI_wready(axi_mem_interconnect_to_s05_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_interconnect_to_s05_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_interconnect_to_s05_couplers_WVALID));
  s06_couplers_imp_1NI8A6 s06_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_araddr(s06_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s06_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s06_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s06_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s06_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s06_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s06_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s06_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s06_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s06_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s06_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s06_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s06_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s06_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s06_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s06_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s06_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s06_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s06_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s06_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s06_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s06_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s06_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s06_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s06_couplers_to_xbar_RLAST),
        .M_AXI_rready(s06_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s06_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s06_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s06_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s06_couplers_to_xbar_WLAST),
        .M_AXI_wready(s06_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s06_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s06_couplers_to_xbar_WVALID),
        .S_ACLK(S06_ACLK_1),
        .S_ARESETN(S06_ARESETN_1),
        .S_AXI_araddr(axi_mem_interconnect_to_s06_couplers_ARADDR),
        .S_AXI_arprot(axi_mem_interconnect_to_s06_couplers_ARPROT),
        .S_AXI_arready(axi_mem_interconnect_to_s06_couplers_ARREADY),
        .S_AXI_arvalid(axi_mem_interconnect_to_s06_couplers_ARVALID),
        .S_AXI_awaddr(axi_mem_interconnect_to_s06_couplers_AWADDR),
        .S_AXI_awprot(axi_mem_interconnect_to_s06_couplers_AWPROT),
        .S_AXI_awready(axi_mem_interconnect_to_s06_couplers_AWREADY),
        .S_AXI_awvalid(axi_mem_interconnect_to_s06_couplers_AWVALID),
        .S_AXI_bready(axi_mem_interconnect_to_s06_couplers_BREADY),
        .S_AXI_bresp(axi_mem_interconnect_to_s06_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_interconnect_to_s06_couplers_BVALID),
        .S_AXI_rdata(axi_mem_interconnect_to_s06_couplers_RDATA),
        .S_AXI_rready(axi_mem_interconnect_to_s06_couplers_RREADY),
        .S_AXI_rresp(axi_mem_interconnect_to_s06_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_interconnect_to_s06_couplers_RVALID),
        .S_AXI_wdata(axi_mem_interconnect_to_s06_couplers_WDATA),
        .S_AXI_wready(axi_mem_interconnect_to_s06_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_interconnect_to_s06_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_interconnect_to_s06_couplers_WVALID));
  s07_couplers_imp_1BM7TVJ s07_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_araddr(s07_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s07_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s07_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s07_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s07_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s07_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s07_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s07_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s07_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s07_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s07_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s07_couplers_to_xbar_RLAST),
        .M_AXI_rready(s07_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s07_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s07_couplers_to_xbar_RVALID),
        .S_ACLK(S07_ACLK_1),
        .S_ARESETN(S07_ARESETN_1),
        .S_AXI_araddr(axi_mem_interconnect_to_s07_couplers_ARADDR),
        .S_AXI_arburst(axi_mem_interconnect_to_s07_couplers_ARBURST),
        .S_AXI_arcache(axi_mem_interconnect_to_s07_couplers_ARCACHE),
        .S_AXI_arlen(axi_mem_interconnect_to_s07_couplers_ARLEN),
        .S_AXI_arprot(axi_mem_interconnect_to_s07_couplers_ARPROT),
        .S_AXI_arready(axi_mem_interconnect_to_s07_couplers_ARREADY),
        .S_AXI_arsize(axi_mem_interconnect_to_s07_couplers_ARSIZE),
        .S_AXI_arvalid(axi_mem_interconnect_to_s07_couplers_ARVALID),
        .S_AXI_rdata(axi_mem_interconnect_to_s07_couplers_RDATA),
        .S_AXI_rready(axi_mem_interconnect_to_s07_couplers_RREADY),
        .S_AXI_rresp(axi_mem_interconnect_to_s07_couplers_RRESP),
        .S_AXI_rvalid(axi_mem_interconnect_to_s07_couplers_RVALID));
  s08_couplers_imp_AE9DQD s08_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_awaddr(s08_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s08_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s08_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s08_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s08_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s08_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s08_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s08_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s08_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s08_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s08_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s08_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s08_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s08_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s08_couplers_to_xbar_WLAST),
        .M_AXI_wready(s08_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s08_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s08_couplers_to_xbar_WVALID),
        .S_ACLK(S08_ACLK_1),
        .S_ARESETN(S08_ARESETN_1),
        .S_AXI_awaddr(axi_mem_interconnect_to_s08_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_interconnect_to_s08_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_interconnect_to_s08_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_interconnect_to_s08_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_interconnect_to_s08_couplers_AWPROT),
        .S_AXI_awready(axi_mem_interconnect_to_s08_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_interconnect_to_s08_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_interconnect_to_s08_couplers_AWVALID),
        .S_AXI_bready(axi_mem_interconnect_to_s08_couplers_BREADY),
        .S_AXI_bresp(axi_mem_interconnect_to_s08_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_interconnect_to_s08_couplers_BVALID),
        .S_AXI_wdata(axi_mem_interconnect_to_s08_couplers_WDATA),
        .S_AXI_wlast(axi_mem_interconnect_to_s08_couplers_WLAST),
        .S_AXI_wready(axi_mem_interconnect_to_s08_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_interconnect_to_s08_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_interconnect_to_s08_couplers_WVALID));
  s09_couplers_imp_12LNQDW s09_couplers
       (.M_ACLK(axi_mem_interconnect_ACLK_net),
        .M_ARESETN(axi_mem_interconnect_ARESETN_net),
        .M_AXI_awaddr(s09_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s09_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s09_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s09_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s09_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s09_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s09_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s09_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s09_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s09_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s09_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s09_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s09_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s09_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s09_couplers_to_xbar_WLAST),
        .M_AXI_wready(s09_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s09_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s09_couplers_to_xbar_WVALID),
        .S_ACLK(S09_ACLK_1),
        .S_ARESETN(S09_ARESETN_1),
        .S_AXI_awaddr(axi_mem_interconnect_to_s09_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_interconnect_to_s09_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_interconnect_to_s09_couplers_AWCACHE),
        .S_AXI_awlen(axi_mem_interconnect_to_s09_couplers_AWLEN),
        .S_AXI_awprot(axi_mem_interconnect_to_s09_couplers_AWPROT),
        .S_AXI_awready(axi_mem_interconnect_to_s09_couplers_AWREADY),
        .S_AXI_awsize(axi_mem_interconnect_to_s09_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_interconnect_to_s09_couplers_AWVALID),
        .S_AXI_bready(axi_mem_interconnect_to_s09_couplers_BREADY),
        .S_AXI_bresp(axi_mem_interconnect_to_s09_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_interconnect_to_s09_couplers_BVALID),
        .S_AXI_wdata(axi_mem_interconnect_to_s09_couplers_WDATA),
        .S_AXI_wlast(axi_mem_interconnect_to_s09_couplers_WLAST),
        .S_AXI_wready(axi_mem_interconnect_to_s09_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_interconnect_to_s09_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_interconnect_to_s09_couplers_WVALID));
  system_xbar_1 xbar
       (.aclk(axi_mem_interconnect_ACLK_net),
        .aresetn(axi_mem_interconnect_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s07_couplers_to_xbar_ARADDR,s06_couplers_to_xbar_ARADDR,s05_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_ARADDR,s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,1'b0,1'b0,s07_couplers_to_xbar_ARBURST,s06_couplers_to_xbar_ARBURST,s05_couplers_to_xbar_ARBURST,1'b0,1'b0,s03_couplers_to_xbar_ARBURST,s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s07_couplers_to_xbar_ARCACHE,s06_couplers_to_xbar_ARCACHE,s05_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_ARCACHE,s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s07_couplers_to_xbar_ARLEN,s06_couplers_to_xbar_ARLEN,s05_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_ARLEN,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,1'b0,s07_couplers_to_xbar_ARLOCK,s06_couplers_to_xbar_ARLOCK,s05_couplers_to_xbar_ARLOCK,1'b0,s03_couplers_to_xbar_ARLOCK,s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s07_couplers_to_xbar_ARPROT,s06_couplers_to_xbar_ARPROT,s05_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s03_couplers_to_xbar_ARPROT,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s07_couplers_to_xbar_ARQOS,s06_couplers_to_xbar_ARQOS,s05_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_ARQOS,s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s07_couplers_to_xbar_ARREADY,s06_couplers_to_xbar_ARREADY,s05_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[4],s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s07_couplers_to_xbar_ARSIZE,s06_couplers_to_xbar_ARSIZE,s05_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,s03_couplers_to_xbar_ARSIZE,s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,1'b0,s07_couplers_to_xbar_ARVALID,s06_couplers_to_xbar_ARVALID,s05_couplers_to_xbar_ARVALID,1'b0,s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s09_couplers_to_xbar_AWADDR,s08_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_AWADDR,s05_couplers_to_xbar_AWADDR,s04_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s09_couplers_to_xbar_AWBURST,s08_couplers_to_xbar_AWBURST,1'b0,1'b0,s06_couplers_to_xbar_AWBURST,s05_couplers_to_xbar_AWBURST,s04_couplers_to_xbar_AWBURST,1'b0,1'b0,s02_couplers_to_xbar_AWBURST,1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s09_couplers_to_xbar_AWCACHE,s08_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_AWCACHE,s05_couplers_to_xbar_AWCACHE,s04_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s09_couplers_to_xbar_AWLEN,s08_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_AWLEN,s05_couplers_to_xbar_AWLEN,s04_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s09_couplers_to_xbar_AWLOCK,s08_couplers_to_xbar_AWLOCK,1'b0,s06_couplers_to_xbar_AWLOCK,s05_couplers_to_xbar_AWLOCK,s04_couplers_to_xbar_AWLOCK,1'b0,s02_couplers_to_xbar_AWLOCK,1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s09_couplers_to_xbar_AWPROT,s08_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s06_couplers_to_xbar_AWPROT,s05_couplers_to_xbar_AWPROT,s04_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s09_couplers_to_xbar_AWQOS,s08_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_AWQOS,s05_couplers_to_xbar_AWQOS,s04_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s09_couplers_to_xbar_AWREADY,s08_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[7],s06_couplers_to_xbar_AWREADY,s05_couplers_to_xbar_AWREADY,s04_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[3],s02_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[1],s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s09_couplers_to_xbar_AWSIZE,s08_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,s06_couplers_to_xbar_AWSIZE,s05_couplers_to_xbar_AWSIZE,s04_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWSIZE,1'b1,1'b0,1'b1,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s09_couplers_to_xbar_AWVALID,s08_couplers_to_xbar_AWVALID,1'b0,s06_couplers_to_xbar_AWVALID,s05_couplers_to_xbar_AWVALID,s04_couplers_to_xbar_AWVALID,1'b0,s02_couplers_to_xbar_AWVALID,1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s09_couplers_to_xbar_BREADY,s08_couplers_to_xbar_BREADY,1'b0,s06_couplers_to_xbar_BREADY,s05_couplers_to_xbar_BREADY,s04_couplers_to_xbar_BREADY,1'b0,s02_couplers_to_xbar_BREADY,1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s09_couplers_to_xbar_BRESP,s08_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[15:14],s06_couplers_to_xbar_BRESP,s05_couplers_to_xbar_BRESP,s04_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[7:6],s02_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[3:2],s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s09_couplers_to_xbar_BVALID,s08_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[7],s06_couplers_to_xbar_BVALID,s05_couplers_to_xbar_BVALID,s04_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[3],s02_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[1],s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s07_couplers_to_xbar_RDATA,s06_couplers_to_xbar_RDATA,s05_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[2559:2048],s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s07_couplers_to_xbar_RLAST,s06_couplers_to_xbar_RLAST,s05_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[4],s03_couplers_to_xbar_RLAST,s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({1'b0,1'b0,s07_couplers_to_xbar_RREADY,s06_couplers_to_xbar_RREADY,s05_couplers_to_xbar_RREADY,1'b0,s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s07_couplers_to_xbar_RRESP,s06_couplers_to_xbar_RRESP,s05_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[9:8],s03_couplers_to_xbar_RRESP,s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s07_couplers_to_xbar_RVALID,s06_couplers_to_xbar_RVALID,s05_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[4],s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s09_couplers_to_xbar_WDATA,s08_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s06_couplers_to_xbar_WDATA,s05_couplers_to_xbar_WDATA,s04_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s09_couplers_to_xbar_WLAST,s08_couplers_to_xbar_WLAST,1'b0,s06_couplers_to_xbar_WLAST,s05_couplers_to_xbar_WLAST,s04_couplers_to_xbar_WLAST,1'b0,s02_couplers_to_xbar_WLAST,1'b0,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s09_couplers_to_xbar_WREADY,s08_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[7],s06_couplers_to_xbar_WREADY,s05_couplers_to_xbar_WREADY,s04_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[3],s02_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[1],s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s09_couplers_to_xbar_WSTRB,s08_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s06_couplers_to_xbar_WSTRB,s05_couplers_to_xbar_WSTRB,s04_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s02_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s09_couplers_to_xbar_WVALID,s08_couplers_to_xbar_WVALID,1'b0,s06_couplers_to_xbar_WVALID,s05_couplers_to_xbar_WVALID,s04_couplers_to_xbar_WVALID,1'b0,s02_couplers_to_xbar_WVALID,1'b0,s00_couplers_to_xbar_WVALID}));
endmodule
