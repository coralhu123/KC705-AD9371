//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_lvds_transceiver_k7.v
// Author     : Xilinx
//------------------------------------------------------------------------------
// (c) Copyright 2006 Xilinx, Inc. All rights reserved.
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
//
//------------------------------------------------------------------------------
// Description:  This module makes the GPIO SGMII logic look like a hardened SERDES.
//  Making it easier to hook into the existing GEMAC+PCS/PMA cores
//------------------------------------------------------------------------------


`timescale 1 ps / 1 ps

module bd_55cd_pcs_pma_0_lvds_transceiver_k7 (
// Transceiver Transmitter Interface (synchronous to clk125m)
input  wire          txchardispmode,
input  wire          txchardispval,
input  wire          txcharisk,
input  wire  [ 7:0]  txdata,
output wire          txbuferr,

// Transceiver Receiver Interface (synchronous to clk125m)
input  wire          enmcommaalign,
input  wire          enpcommaalign,
output wire          rxchariscomma,
output wire          rxcharisk,
output wire [ 2:0]   rxclkcorcnt,
output wire [ 7:0]   rxdata,
output wire          rxdisperr,
output wire          rxnotintable,
output wire          rxrundisp,
output wire          rxbuferr,

// clocks and reset
output wire          phy_cdr_lock,
input  wire          clk625,
input  wire          clk208,
input  wire          clk104,
input  wire          clk125,
input  wire          soft_tx_reset,
input  wire          soft_rx_reset,
input  wire          reset, // CLK125

output wire [4:0]    o_r_margin,
output wire [4:0]    o_l_margin,

input  wire [11:0]   eye_mon_wait_time,

// Serial input wire and output wire differential pairs
output wire          pin_sgmii_txn,
output wire          pin_sgmii_txp,
input  wire          pin_sgmii_rxn,
input  wire          pin_sgmii_rxp
);

// Wires and Regs
wire [5:0] rx_data_6b;
wire [9:0] rx_data_10b;
wire [5:0] tx_data_6b;
wire [9:0] tx_data_10b;
wire       phy_init_cal_done_104;
wire       phy_loss_of_sync_104;
wire       phy_init_cal_done;
reg        phy_init_cal_done_r;
reg        phy_loss_of_sync_r;
wire       bitslip;
wire       reset_104;
wire       soft_tx_reset_104;
wire       soft_rx_reset_104;
wire       rx_rst;
wire       tx_rst;

// Assignments

assign txbuferr     = 1'b0; // There is no TX buffer
assign rxbuferr     = 1'b0; // There is no RX Elastic Buffer
assign rxclkcorcnt  = 3'd0;

assign phy_cdr_lock = phy_init_cal_done;

bd_55cd_pcs_pma_0_sync_block sync_block_phy_init_cal_done (
   .clk             (clk125),
   .data_in         (phy_init_cal_done_r),
   .data_out        (phy_init_cal_done)
);

bd_55cd_pcs_pma_0_reset_sync reset_sync_reset_104 (
   .clk       (clk104),
   .reset_in  (reset),
   .reset_out (reset_104)
);

bd_55cd_pcs_pma_0_reset_sync reset_sync_soft_tx_reset_104 (
   .clk       (clk104),
   .reset_in  (soft_tx_reset),
   .reset_out (soft_tx_reset_104)
);

bd_55cd_pcs_pma_0_reset_sync reset_sync_soft_rx_reset_104 (
   .clk       (clk104),
   .reset_in  (soft_rx_reset),
   .reset_out (soft_rx_reset_104)
);

always @(posedge clk104) phy_init_cal_done_r <= phy_init_cal_done_104;
always @(posedge clk104) phy_loss_of_sync_r <= phy_loss_of_sync_104;

assign tx_rst    = reset || soft_tx_reset;
assign rx_rst    = reset || soft_rx_reset;

//----------------------------------------------------------------------------
// TX Data Path
//----------------------------------------------------------------------------

// TX Gearbox - Converts 10b @ 125MHz -to- 6b @ 208 MHz
bd_55cd_pcs_pma_0_gearbox_10b_6b tx_gearbox_i (
   .reset       (tx_rst), 
   .clk125      (clk125), 
   .txdata_10b  (tx_data_10b), 
   .clk208      (clk208), 
   .o_txdata_6b (tx_data_6b)
    );

// 8b/10b from XAPP 1122
bd_55cd_pcs_pma_0_encode_8b10b_lut_base #
  (
    .C_HAS_DISP_IN     (1),
    .C_HAS_FORCE_CODE  (0),
    .C_FORCE_CODE_VAL  (1),
    .C_FORCE_CODE_DISP (1),
    .C_HAS_ND          (0),
    .C_HAS_KERR        (0)

  ) encode_8b10b (
    .din               (txdata),  // 8 bit
    .kin               (txcharisk),
    .clk               (clk125),  // 125 MHz
    .dout              (tx_data_10b),  // 10 bit
    .ce                (1'b1),
    .force_code        (1'b0),
    .force_disp        (txchardispmode),
    .disp_in           (txchardispval),
    .disp_out          (),
    .kerr              (),
    .nd                ()
  );


//----------------------------------------------------------------------------
// RX Data Path
//----------------------------------------------------------------------------

// RX Gearbox - Converts 6b @ 208 MHz -to- 10b @ 125MHz
bd_55cd_pcs_pma_0_gearbox_6b_10b rx_gearbox_i (
   .reset        (rx_rst), 
   .clk208       (clk208), 
   .rxdata_6b    (rx_data_6b), 
   .bitslip      (bitslip), 
   .clk125       (clk125), 
   .o_rxdata_10b (rx_data_10b)
    );

// Comma Alignment    
wire [9:0] rx_data_10b_swapped;
assign rx_data_10b_swapped [9] = rx_data_10b[0];
assign rx_data_10b_swapped [8] = rx_data_10b[1];
assign rx_data_10b_swapped [7] = rx_data_10b[2];
assign rx_data_10b_swapped [6] = rx_data_10b[3];
assign rx_data_10b_swapped [5] = rx_data_10b[4];
assign rx_data_10b_swapped [4] = rx_data_10b[5];
assign rx_data_10b_swapped [3] = rx_data_10b[6];
assign rx_data_10b_swapped [2] = rx_data_10b[7];
assign rx_data_10b_swapped [1] = rx_data_10b[8];
assign rx_data_10b_swapped [0] = rx_data_10b[9];

// This module toggles bitslip to the RX Gearbox, which does the actual alignment
bd_55cd_pcs_pma_0_sgmii_comma_alignment comma_alignment_inst
   (
   .clk                   (clk125),
   .reset                 (rx_rst),
   .clken                 (1'b1),
   .enablealign           ( enmcommaalign & enpcommaalign & phy_init_cal_done ),

   .data_in               ( rx_data_10b_swapped ),
   .comma_det             (rxchariscomma),
   .bitslip               (bitslip)
   );    

    
// 8b/10b Decoder
  bd_55cd_pcs_pma_0_decode_8b10b_lut_base #
  (
    .C_HAS_CODE_ERR        (1),
    .C_HAS_DISP_ERR        (1),
    .C_HAS_DISP_IN         (0),
    .C_HAS_ND              (0),
    .C_HAS_SYM_DISP        (0),
    .C_HAS_RUN_DISP        (1),
    .C_SINIT_DOUT          (8'b0),
    .C_SINIT_KOUT          (0),
    .C_SINIT_RUN_DISP      (0)

  ) decode_8b10b (
    .clk                   (clk125),
    .din                   (rx_data_10b),
    .dout                  (rxdata),
    .kout                  (rxcharisk),

    .ce                    (1'b1),
    .disp_in               (1'b0),
    .sinit                 (1'b0),
    .code_err              (rxnotintable),
    .disp_err              (rxdisperr),
    .nd                    (),
    .run_disp              (rxrundisp),
    .sym_disp              ()
  );
   
// Pulse Strectcher 8b/10b code group errors
reg [3:0] code_error_stretch;

always @(posedge clk125) begin
   if (rx_rst)                          code_error_stretch <= 4'h0;
   else if (rxdisperr || rxnotintable)  code_error_stretch <= 4'hF;
   else if (code_error_stretch != 4'h0) code_error_stretch <= code_error_stretch - 1'b1;
   else                                 code_error_stretch <= code_error_stretch;
end

  
//----------------------------------------------------------------------------
// LVDS PHY
//----------------------------------------------------------------------------
reg [3:0] rst_dly;
always @(posedge clk104) begin
   if (reset_104) rst_dly <= 4'b0;
   else if (rst_dly == 4'hF)              rst_dly <= rst_dly;
   else                                   rst_dly <= rst_dly + 1'b1;
end

bd_55cd_pcs_pma_0_gpio_sgmii_top gpio_sgmii_top_i (

   .reset              (~rst_dly[3]), // CLK104 
   .soft_tx_reset      (soft_tx_reset_104),
   .soft_rx_reset      (soft_rx_reset_104 || phy_loss_of_sync_104),
   .clk625             (clk625), 
   .clk208             (clk208), 
   .clk104             (clk104), 

   .enable_initial_cal ( &rst_dly  ),
   .o_init_cal_done    (phy_init_cal_done_104),
   .o_loss_of_sync     (phy_loss_of_sync_104),
   .tx_data_6b         (tx_data_6b),
   .o_rx_data_6b       (rx_data_6b),
   .code_error         ( |code_error_stretch ),

   .eye_mon_wait_time  (eye_mon_wait_time),

   .pin_sgmii_rxp      (pin_sgmii_rxp), 
   .pin_sgmii_rxn      (pin_sgmii_rxn), 
   .pin_sgmii_txp      (pin_sgmii_txp), 
   .pin_sgmii_txn      (pin_sgmii_txn),
   
   .o_r_margin         (o_r_margin),
   .o_l_margin         (o_l_margin)
 )/* synthesis syn_sharing=off */;

endmodule
