//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
//Date        : Thu Sep 20 11:54:34 2018
//Host        : hu-PC running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dm_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n,
    dac_fifo_bypass,
    gpio0_i,
    gpio0_o,
    gpio0_t,
    gpio1_i,
    gpio1_o,
    gpio1_t,
    iic_main_scl_io,
    iic_main_sda_io,
    mb_intr_05,
    mb_intr_06,
    mdio_mdc,
    mdio_mdio_io,
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
    sys_clk_clk_n,
    sys_clk_clk_p,
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
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output c0_ddr4_bg;
  output c0_ddr4_ck_c;
  output c0_ddr4_ck_t;
  output c0_ddr4_cke;
  output c0_ddr4_cs_n;
  inout [7:0]c0_ddr4_dm_n;
  inout [63:0]c0_ddr4_dq;
  inout [7:0]c0_ddr4_dqs_c;
  inout [7:0]c0_ddr4_dqs_t;
  output c0_ddr4_odt;
  output c0_ddr4_reset_n;
  input dac_fifo_bypass;
  input [31:0]gpio0_i;
  output [31:0]gpio0_o;
  output [31:0]gpio0_t;
  input [31:0]gpio1_i;
  output [31:0]gpio1_o;
  output [31:0]gpio1_t;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  input mb_intr_05;
  input mb_intr_06;
  output mdio_mdc;
  inout mdio_mdio_io;
  input phy_clk_clk_n;
  input phy_clk_clk_p;
  output [0:0]phy_rst_n;
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
  input sgmii_rxn;
  input sgmii_rxp;
  output sgmii_txn;
  output sgmii_txp;
  input spi_clk_i;
  output spi_clk_o;
  input [7:0]spi_csn_i;
  output [7:0]spi_csn_o;
  input spi_sdi_i;
  input spi_sdo_i;
  output spi_sdo_o;
  input sys_clk_clk_n;
  input sys_clk_clk_p;
  input sys_rst;
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

  wire c0_ddr4_act_n;
  wire [16:0]c0_ddr4_adr;
  wire [1:0]c0_ddr4_ba;
  wire c0_ddr4_bg;
  wire c0_ddr4_ck_c;
  wire c0_ddr4_ck_t;
  wire c0_ddr4_cke;
  wire c0_ddr4_cs_n;
  wire [7:0]c0_ddr4_dm_n;
  wire [63:0]c0_ddr4_dq;
  wire [7:0]c0_ddr4_dqs_c;
  wire [7:0]c0_ddr4_dqs_t;
  wire c0_ddr4_odt;
  wire c0_ddr4_reset_n;
  wire dac_fifo_bypass;
  wire [31:0]gpio0_i;
  wire [31:0]gpio0_o;
  wire [31:0]gpio0_t;
  wire [31:0]gpio1_i;
  wire [31:0]gpio1_o;
  wire [31:0]gpio1_t;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire mb_intr_05;
  wire mb_intr_06;
  wire mdio_mdc;
  wire mdio_mdio_i;
  wire mdio_mdio_io;
  wire mdio_mdio_o;
  wire mdio_mdio_t;
  wire phy_clk_clk_n;
  wire phy_clk_clk_p;
  wire [0:0]phy_rst_n;
  wire phy_sd;
  wire rx_data_0_n;
  wire rx_data_0_p;
  wire rx_data_1_n;
  wire rx_data_1_p;
  wire rx_data_2_n;
  wire rx_data_2_p;
  wire rx_data_3_n;
  wire rx_data_3_p;
  wire rx_ref_clk_0;
  wire rx_ref_clk_2;
  wire rx_sync_0;
  wire rx_sync_2;
  wire rx_sysref_0;
  wire rx_sysref_2;
  wire sgmii_rxn;
  wire sgmii_rxp;
  wire sgmii_txn;
  wire sgmii_txp;
  wire spi_clk_i;
  wire spi_clk_o;
  wire [7:0]spi_csn_i;
  wire [7:0]spi_csn_o;
  wire spi_sdi_i;
  wire spi_sdo_i;
  wire spi_sdo_o;
  wire sys_clk_clk_n;
  wire sys_clk_clk_p;
  wire sys_rst;
  wire tx_data_0_n;
  wire tx_data_0_p;
  wire tx_data_1_n;
  wire tx_data_1_p;
  wire tx_data_2_n;
  wire tx_data_2_p;
  wire tx_data_3_n;
  wire tx_data_3_p;
  wire tx_ref_clk_0;
  wire tx_sync_0;
  wire tx_sysref_0;
  wire uart_sin;
  wire uart_sout;

  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
  IOBUF mdio_mdio_iobuf
       (.I(mdio_mdio_o),
        .IO(mdio_mdio_io),
        .O(mdio_mdio_i),
        .T(mdio_mdio_t));
  system system_i
       (.c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dm_n(c0_ddr4_dm_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .dac_fifo_bypass(dac_fifo_bypass),
        .gpio0_i(gpio0_i),
        .gpio0_o(gpio0_o),
        .gpio0_t(gpio0_t),
        .gpio1_i(gpio1_i),
        .gpio1_o(gpio1_o),
        .gpio1_t(gpio1_t),
        .iic_main_scl_i(iic_main_scl_i),
        .iic_main_scl_o(iic_main_scl_o),
        .iic_main_scl_t(iic_main_scl_t),
        .iic_main_sda_i(iic_main_sda_i),
        .iic_main_sda_o(iic_main_sda_o),
        .iic_main_sda_t(iic_main_sda_t),
        .mb_intr_05(mb_intr_05),
        .mb_intr_06(mb_intr_06),
        .mdio_mdc(mdio_mdc),
        .mdio_mdio_i(mdio_mdio_i),
        .mdio_mdio_o(mdio_mdio_o),
        .mdio_mdio_t(mdio_mdio_t),
        .phy_clk_clk_n(phy_clk_clk_n),
        .phy_clk_clk_p(phy_clk_clk_p),
        .phy_rst_n(phy_rst_n),
        .phy_sd(phy_sd),
        .rx_data_0_n(rx_data_0_n),
        .rx_data_0_p(rx_data_0_p),
        .rx_data_1_n(rx_data_1_n),
        .rx_data_1_p(rx_data_1_p),
        .rx_data_2_n(rx_data_2_n),
        .rx_data_2_p(rx_data_2_p),
        .rx_data_3_n(rx_data_3_n),
        .rx_data_3_p(rx_data_3_p),
        .rx_ref_clk_0(rx_ref_clk_0),
        .rx_ref_clk_2(rx_ref_clk_2),
        .rx_sync_0(rx_sync_0),
        .rx_sync_2(rx_sync_2),
        .rx_sysref_0(rx_sysref_0),
        .rx_sysref_2(rx_sysref_2),
        .sgmii_rxn(sgmii_rxn),
        .sgmii_rxp(sgmii_rxp),
        .sgmii_txn(sgmii_txn),
        .sgmii_txp(sgmii_txp),
        .spi_clk_i(spi_clk_i),
        .spi_clk_o(spi_clk_o),
        .spi_csn_i(spi_csn_i),
        .spi_csn_o(spi_csn_o),
        .spi_sdi_i(spi_sdi_i),
        .spi_sdo_i(spi_sdo_i),
        .spi_sdo_o(spi_sdo_o),
        .sys_clk_clk_n(sys_clk_clk_n),
        .sys_clk_clk_p(sys_clk_clk_p),
        .sys_rst(sys_rst),
        .tx_data_0_n(tx_data_0_n),
        .tx_data_0_p(tx_data_0_p),
        .tx_data_1_n(tx_data_1_n),
        .tx_data_1_p(tx_data_1_p),
        .tx_data_2_n(tx_data_2_n),
        .tx_data_2_p(tx_data_2_p),
        .tx_data_3_n(tx_data_3_n),
        .tx_data_3_p(tx_data_3_p),
        .tx_ref_clk_0(tx_ref_clk_0),
        .tx_sync_0(tx_sync_0),
        .tx_sysref_0(tx_sysref_0),
        .uart_sin(uart_sin),
        .uart_sout(uart_sout));
endmodule
