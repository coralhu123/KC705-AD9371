//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_block.v
// Author     : Xilinx Inc.
//------------------------------------------------------------------------------
// (c) Copyright 2009 Xilinx, Inc. All rights reserved.
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
//              The SGMII adaptation module is provided to convert
//              between 1Gbps and 10/100 Mbps rates.  This is connected
//              to the MAC side of the core to provide a GMII style
//              interface.  When the core is running at 1Gbps speeds,
//              the GMII (8-bitdata pathway) is used at a clock
//              frequency of 125MHz.  When the core is running at
//              100Mbps, a clock frequency of 12.5MHz is used.  When
//              running at 100Mbps speeds, a clock frequency of 1.25MHz
//              is used.
//
//    ----------------------------------------------------------------
//    |                   Core Block Level Wrapper                   |
//    |                                                              |
//    |                                                              |
//    |                  --------------          --------------      |
//    |                  |    Core    |          |    LVDS    |      |
//    |                  |            |          | transceiver|      |
//    |    ---------     |            |          |            |      |
//    |    |       |     |            |          |            |      |
//    |    | SGMII |     |            |          |            |      |
//  ------>| Adapt |---->| GMII       |--------->|        TXP |-------->
//    |    | Module|     | Tx         |          |        TXN |      |
//    |    |       |     |            |          |            |      |
//    |    |       |     |            |  trans-  |            |      |
//    |    |       |     |            | ceiver   |            |      |
//    |    |       |     |            |    I/F   |            |      |
//    |    |       |     |            |          |            |      |
//    |    |       |     | GMII       |          |        RXP |      |
//  <------|       |<----| Rx         |<---------|        RXN |<--------
//    |    |       |     |            |          |            |      |
//    |    ---------     --------------          --------------      |
//    |                                                              |
//    ----------------------------------------------------------------
//
//


`timescale 1 ps/1 ps
(* DowngradeIPIdentifiedWarnings="yes" *)

//------------------------------------------------------------------------------
// The module declaration for the Core Block wrapper.
//------------------------------------------------------------------------------

module bd_55cd_pcs_pma_0_block #
   (
    parameter EXAMPLE_SIMULATION                     =  0
   ) 
   (
      // LVDS transceiver Interface
      //---------------------------


      output       txp,                   // Differential +ve of serial transmission from PMA to PMD.
      output       txn,                   // Differential -ve of serial transmission from PMA to PMD.
      input        rxp,                   // Differential +ve for serial reception from PMD to PMA.
      input        rxn,                   // Differential -ve for serial reception from PMD to PMA.


      input wire   clk125m,
      input        mmcm_locked, 
      output       sgmii_clk_r,             // Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      output       sgmii_clk_f,             // Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      output       sgmii_clk_en,          // Clock enable for client MAC
      input wire   clk625,
      input wire   clk208,
      input wire   clk104,
      // Speed Control
      //--------------
      input        speed_is_10_100,       // Core should operate at either 10Mbps or 100Mbps speeds
      input        speed_is_100,          // Core should operate at 100Mbps speed
      input [7:0]  gmii_txd,              // Transmit data from client MAC.
      input        gmii_tx_en,            // Transmit control signal from client MAC.
      input        gmii_tx_er,            // Transmit control signal from client MAC.
      output [7:0] gmii_rxd,              // Received Data to client MAC.
      output       gmii_rx_dv,            // Received control signal to client MAC.
      output       gmii_rx_er,            // Received control signal to client MAC.
      output       gmii_isolate,          // Tristate control to electrically isolate GMII.
      output       ext_mdc,                   // Management Data Clock
      input        ext_mdio_i,                // Management Data In
      output       ext_mdio_o,                // Management Data Out
      output       ext_mdio_t,                // Management Data Tristate 
      input        mdio_t_in,                 // Management tristate In
      // Management: MDIO Interface
      //---------------------------

      input        mdc,                   // Management Data Clock
      input        mdio_i,                // Management Data In
      output       mdio_o,                // Management Data Out
      output       mdio_t,                // Management Data Tristate
      input [4:0]  phyaddr,
      input [4:0]  configuration_vector, // Alternative to MDIO interface.
      input        configuration_valid,  // Validation signal for Config vector

      output       an_interrupt,          // Interrupt to processor to signal that Auto-Negotiation has completed
      input [15:0] an_adv_config_vector, // Alternate interface to program REG4 (AN ADV)
      input        an_adv_config_val,    // Validation signal for AN ADV
      input        an_restart_config,    // Alternate signal to modify AN restart bit in REG0

      // General IO's
      //-------------
      output [15:0] status_vector,         // Core status.
      input        reset,                 // Asynchronous reset for entire core.
      input        signal_detect          // Input from PMD to indicate presence of optical input.
   );


   //---------------------------------------------------------------------------
   // Internal signals used in this block level wrapper.
   //---------------------------------------------------------------------------

   // GMII signals routed between core and SGMII Adaptation Module
   wire [7:0]   gmii_txd_int;             // Internal gmii_txd signal (between core and SGMII adaptation module).
   wire         gmii_tx_en_int;           // Internal gmii_tx_en signal (between core and SGMII adaptation module).
   wire         gmii_tx_er_int;           // Internal gmii_tx_er signal (between core and SGMII adaptation module).
   wire [7:0]   gmii_rxd_int;             // Internal gmii_rxd signal (between core and SGMII adaptation module).
   wire         gmii_rx_dv_int;           // Internal gmii_rx_dv signal (between core and SGMII adaptation module).
   wire         gmii_rx_er_int;           // Internal gmii_rx_er signal (between core and SGMII adaptation module).
   wire         lvds_phy_ready; 
   wire [1:0]   rxbufstatus;              // Elastic Buffer Status (bit 1 asserted indicates  overflow or underflow).
   wire         rxchariscomma;            // Comma detected in RXDATA.
   wire         rxcharisk;                // K character received (or extra data bit) in RXDATA.
   wire [2:0]   rxclkcorcnt;              // Indicates clock correction.
   wire [7:0]   rxdata;                   // Data after 8B/10B decoding.
   wire         rxrundisp;                // Running Disparity after current byte, becomes 9th data bit when RXNOTINTABLE='1'.
   wire         rxdisperr;                // Disparity-error in RXDATA.
   wire         rxnotintable;             // Non-existent 8B/10 code indicated.
   wire         txbuferr;                 // TX Buffer error (overflow or underflow).
   wire         txchardispmode;           // Set running disparity for current byte.
   wire         txchardispval;            // Set running disparity value.
   wire         txcharisk;                // K character transmitted in TXDATA.
   wire [7:0]   txdata;                   // Data for 8B/10B encoding.
   wire         enablealign;              // Allow the transceivers to serially realign to a comma character.
   wire         lvds_phy_rdy_sig_det;
   wire         mgt_tx_reset;
   wire         mgt_rx_reset;
   wire         mmcm_locked_sync_125;
   wire [11:0]  eye_mon_wait_time ;
   wire         wtd_reset ;

  wire [9:0] link_timer_value;
  assign link_timer_value = (EXAMPLE_SIMULATION == 1 ) ? 10'b0000000100 : 10'b0000110010 ;


  wire mdio_o_int;
  assign ext_mdc          = mdc;
  assign mdio_o           = (mdio_t ==1'b1) ? ext_mdio_i :mdio_o_int;
  assign ext_mdio_o       = mdio_i; 
  assign ext_mdio_t       = mdio_t_in;

   bd_55cd_pcs_pma_0_reset_wtd_timer # (
       .WAIT_TIME (24'H59682F)
     )
   reset_wtd_timer
          (
             .clk             (clk125m),
             .data_valid      (status_vector[1]),
             .reset           (wtd_reset)
          );

  //----------------------------------------------------------------------------
  // Eye Monitor Wait timer value is set to 12'03F for reducing simulation
  // time. The value is 12'FFF for normal runs
  //----------------------------------------------------------------------------
  assign eye_mon_wait_time = (EXAMPLE_SIMULATION  == 0) ? 12'b111111111111 : 12'b000000111111 ;



bd_55cd_pcs_pma_0_sync_block sync_block_mmcm_locked
        (
           .clk             (clk125m),
           .data_in         (mmcm_locked),
           .data_out        (mmcm_locked_sync_125)
        );

   //---------------------------------------------------------------------------
   // Component Instantiation for the SGMII adaptation module
   //---------------------------------------------------------------------------

   bd_55cd_pcs_pma_0_sgmii_adapt sgmii_logic (
      .reset                 (mgt_tx_reset),
      .clk125m               (clk125m),
      .sgmii_clk_r           (sgmii_clk_r),
      .sgmii_clk_f           (sgmii_clk_f),
      .sgmii_clk_en          (sgmii_clk_en),
      .gmii_txd_in           (gmii_txd),
      .gmii_tx_en_in         (gmii_tx_en),
      .gmii_tx_er_in         (gmii_tx_er),
      .gmii_rxd_in           (gmii_rxd_int),
      .gmii_rx_dv_in         (gmii_rx_dv_int),
      .gmii_rx_er_in         (gmii_rx_er_int),
      .gmii_txd_out          (gmii_txd_int),
      .gmii_tx_en_out        (gmii_tx_en_int),
      .gmii_tx_er_out        (gmii_tx_er_int),
      .gmii_rxd_out          (gmii_rxd),
      .gmii_rx_dv_out        (gmii_rx_dv),
      .gmii_rx_er_out        (gmii_rx_er),
      .speed_is_10_100       (speed_is_10_100),
      .speed_is_100          (speed_is_100)
      );


   //---------------------------------------------------------------------------
   // Instantiate the core
   //---------------------------------------------------------------------------
   gig_ethernet_pcs_pma_v16_1_2 #(
       .C_ELABORATION_TRANSIENT_DIR ("BlankString"),
       .C_COMPONENT_NAME            ("bd_55cd_pcs_pma_0"),
       .C_FAMILY                    ("kintex7"),
       .C_IS_SGMII                  (1'b1),
       .C_USE_TRANSCEIVER           (1'b0),
       .C_HAS_TEMAC                 (1'b1),
       .C_USE_TBI                   (1'b0),
       .C_USE_LVDS                  (1'b1),
       .C_HAS_AN                    (1'b1),
       .C_HAS_MDIO                  (1'b1),
       .C_SGMII_PHY_MODE            (1'b0),
       .C_DYNAMIC_SWITCHING         (1'b0),
       .C_SGMII_FABRIC_BUFFER       (1'b1)
     )
   bd_55cd_pcs_pma_0_core
     (
      .userclk               (clk125m),
      .userclk2              (clk125m),
      //speed bits required only in 1588 mode with MDIO for latency register re-load on speed change,
      //in other modes it can be tied to zero
      .speed_is_10_100       (1'b0),
      .speed_is_100          (1'b0),
      .rx_gt_nominal_latency (16'b0000000011001000),
      .rxchariscomma         (rxchariscomma),
      .rxcharisk             (rxcharisk),
      .rxclkcorcnt           (rxclkcorcnt),
      .rxdata                (rxdata),
      .rxdisperr             (rxdisperr),
      .rxnotintable          (rxnotintable),
      .rxrundisp             (rxrundisp),
      .txbuferr              (txbuferr),
      .powerdown             (),
      .txchardispmode        (txchardispmode),
      .txchardispval         (txchardispval),
      .txcharisk             (txcharisk),
      .txdata                (txdata),
      .enablealign           (enablealign),
      .rxbufstatus           (2'b00),
      .dcm_locked            (mmcm_locked_sync_125),
      .mgt_rx_reset          (mgt_rx_reset),
      .mgt_tx_reset          (mgt_tx_reset),
      .gmii_txd              (gmii_txd_int),
      .gmii_tx_en            (gmii_tx_en_int),
      .gmii_tx_er            (gmii_tx_er_int),
      .gmii_rxd              (gmii_rxd_int),
      .gmii_rx_dv            (gmii_rx_dv_int),
      .gmii_rx_er            (gmii_rx_er_int),
      .gmii_isolate          (gmii_isolate),
      
      .mdc                   (mdc),
      .mdio_in               (mdio_i),
      .mdio_out              (mdio_o_int),
      .mdio_tri              (mdio_t),
      .phyad                 (phyaddr),
      .configuration_vector  (configuration_vector),
      .configuration_valid   (configuration_valid),
      .an_interrupt          (an_interrupt),
      .an_adv_config_vector  (an_adv_config_vector),
      .an_adv_config_val     (an_adv_config_val),
      .an_restart_config     (an_restart_config),
      .link_timer_value      (link_timer_value),
      .status_vector         (status_vector),
      .an_enable             (),
      .speed_selection       (),
      .reset                 (reset),
      .signal_detect         (lvds_phy_rdy_sig_det),
      // drp interface used in 1588 mode
      .drp_dclk              (1'b0),
      .drp_gnt               (1'b0),        
      .drp_drdy              (1'b0),        
      .drp_do                (16'b0),
      .drp_req               (),
      .drp_den               (),
      .drp_dwe               (),
      .drp_daddr             (),
      .drp_di                (),
      // 1588 Timer input
      .systemtimer_s_field   (48'b0),
      .systemtimer_ns_field  (32'b0),
      .correction_timer      (64'b0),
      .rxphy_s_field          (),
      .rxphy_ns_field         (),
      .rxphy_correction_timer (),
      
      .gtx_clk               (1'b0),
      .link_timer_basex      (10'b0),
      .link_timer_sgmii      (10'b0),
      .basex_or_sgmii        (1'b0),
      .rxrecclk              (1'b0),
      .rx_code_group0        (10'b0),
      .rx_code_group1        (10'b0),
      .pma_rx_clk0           (1'b0),
      .pma_rx_clk1           (1'b0),
      .tx_code_group         (),
      .loc_ref               (),
      .ewrap                 (),
      .en_cdet               (),
      .reset_done            (1'b1)

    );


   //---------------------------------------------------------------------------
   //  Component Instantiation for the LVDS Transceiver
   //---------------------------------------------------------------------------

   bd_55cd_pcs_pma_0_lvds_transceiver_k7 lvds_transceiver_mw (
      .enmcommaalign         (enablealign),
      .enpcommaalign         (enablealign),
      .rxclkcorcnt           (rxclkcorcnt),
      .txchardispmode        (txchardispmode),
      .txchardispval         (txchardispval),
      .txcharisk             (txcharisk),
      .txdata                (txdata),
      .rxchariscomma         (rxchariscomma),
      .rxcharisk             (rxcharisk),
      .rxdata                (rxdata),
      .rxdisperr             (rxdisperr),
      .rxnotintable          (rxnotintable),
      .rxrundisp             (rxrundisp),
      .txbuferr              (txbuferr),
      .clk125                (clk125m), 
      .clk625                (clk625), 
      .clk208                (clk208), 
      .clk104                (clk104), 
      .phy_cdr_lock          (lvds_phy_ready),
      .o_r_margin            (),
      .o_l_margin            (),    
      .eye_mon_wait_time     (eye_mon_wait_time),
      .pin_sgmii_txn         (txn), 
      .pin_sgmii_txp         (txp),
      .pin_sgmii_rxn         (rxn),
      .pin_sgmii_rxp         (rxp),
      .rxbuferr              (),
      .soft_tx_reset         (mgt_tx_reset),
      .soft_rx_reset         (mgt_rx_reset || wtd_reset),
      .reset                 (reset)
   );

  // Unused
 assign rxbufstatus[0]       = 1'b0;
 assign lvds_phy_rdy_sig_det = signal_detect && lvds_phy_ready;

endmodule // bd_55cd_pcs_pma_0_block

