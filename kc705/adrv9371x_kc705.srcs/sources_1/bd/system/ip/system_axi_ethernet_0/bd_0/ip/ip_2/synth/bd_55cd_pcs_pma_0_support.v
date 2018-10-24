
//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_support.v
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
//------------------------------------------------------------------------------
// Description: This module holds the support level for the pcs/pma core
//              This can be used as-is in a single core design, or adapted
//              for use with multi-core implementations
//              In case of multiple core instantiation make sure that  
//              multiple lanes are synchronous to each other


`timescale 1 ps/1 ps
(* DowngradeIPIdentifiedWarnings="yes" *)

//------------------------------------------------------------------------------
// The module declaration for the Core Block wrapper.
//------------------------------------------------------------------------------

module bd_55cd_pcs_pma_0_support 
  #( parameter EXAMPLE_SIMULATION                     =  0 )
   (
      // LVDS transceiver Interface
      //---------------------------


      output       txp,                   // Differential +ve of serial transmission from PMA to PMD.
      output       txn,                   // Differential -ve of serial transmission from PMA to PMD.
      input        rxp,                   // Differential +ve for serial reception from PMD to PMA.
      input        rxn,                   // Differential -ve for serial reception from PMD to PMA.


      input wire  refclk625_p,
      input wire  refclk625_n,
      output        mmcm_locked_out, 
      output       sgmii_clk_r,             // Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      output       sgmii_clk_f,             // Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      output       sgmii_clk_en,          // Clock enable for client MAC
      // Speed Control
      //--------------
      input        speed_is_10_100,       // Core should operate at either 10Mbps or 100Mbps speeds
      input        speed_is_100,          // Core should operate at 100Mbps speed
      output clk125_out,
      output clk625_out,
      output clk208_out,
      output clk104_out,
      output rst_125_out,


      // GMII Interface
      //---------------
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



  wire clk_125_i     ;
  wire clk_104_i     ;
  wire clk_208_i     ;
  wire clk_625_i     ;
  wire rst_125_i     ;
  wire mmcm_locked_i ;
  
bd_55cd_pcs_pma_0_block  # ( .EXAMPLE_SIMULATION             (EXAMPLE_SIMULATION) )  
pcs_pma_block_i
   (
      // LVDS transceiver Interface
      //---------------------------


      .txp                   (txp),
      .txn                   (txn),
      .rxp                   (rxp),
      .rxn                   (rxn),


      .clk125m               (clk_125_i),
      .mmcm_locked           (mmcm_locked_i),
      .sgmii_clk_f             (sgmii_clk_f),
      .sgmii_clk_r             (sgmii_clk_r),
      .sgmii_clk_en          (sgmii_clk_en),
      // Speed Control
      //--------------
      .speed_is_10_100       (speed_is_10_100),
      .speed_is_100          (speed_is_100),
      .clk625                (clk_625_i),
      .clk208                (clk_208_i),
      .clk104                (clk_104_i),

      // GMII Interface
      //---------------
      .gmii_txd              (gmii_txd),
      .gmii_tx_en            (gmii_tx_en),
      .gmii_tx_er            (gmii_tx_er),
      .gmii_rxd              (gmii_rxd),
      .gmii_rx_dv            (gmii_rx_dv),
      .gmii_rx_er            (gmii_rx_er),
      .gmii_isolate          (gmii_isolate),

      .ext_mdc               (ext_mdc),                   // Management Data Clock
      .ext_mdio_i            (ext_mdio_i),                // Management Data In
      .ext_mdio_o            (ext_mdio_o),                // Management Data Out
      .ext_mdio_t            (ext_mdio_t),
      .mdio_t_in             (mdio_t_in),
      // Management: MDIO Interface
      //---------------------------

      .mdc                   (mdc),
      .mdio_i                (mdio_i),
      .mdio_o                (mdio_o),
      .mdio_t                (mdio_t),
      .phyaddr               (phyaddr),
      .configuration_vector  (configuration_vector),
      .configuration_valid   (configuration_valid),

      .an_interrupt          (an_interrupt),
      .an_adv_config_vector  (an_adv_config_vector),
      .an_adv_config_val     (an_adv_config_val),
      .an_restart_config     (an_restart_config),

      // General IO's
      //-------------
      .status_vector         (status_vector),
      .reset                 (rst_125_i),
      .signal_detect         (signal_detect)
   );

   bd_55cd_pcs_pma_0_sgmii_phy_clk_gen core_clocking_i
    (
    .refclk625_p (refclk625_p),
    .refclk625_n (refclk625_n),
    .rst (reset),
    .o_clk625(clk_625_i),
    .o_clk208(clk_208_i),
    .o_clk104(clk_104_i),
    .o_clk125(clk_125_i),

    .o_mmcm_locked(mmcm_locked_i)
    );

 bd_55cd_pcs_pma_0_sgmii_phy_reset_gen core_resets_i
    (
    .clk125(clk_125_i),
    .reset(reset),
    .mmcm_locked(mmcm_locked_i),
    .rst_125(rst_125_i)
    );

assign rst_125_out = rst_125_i ;
assign clk125_out  = clk_125_i;
assign clk625_out  = clk_625_i;
assign clk104_out  = clk_104_i;
assign clk208_out  = clk_208_i;
assign mmcm_locked_out = mmcm_locked_i;

endmodule // bd_55cd_pcs_pma_0_support


