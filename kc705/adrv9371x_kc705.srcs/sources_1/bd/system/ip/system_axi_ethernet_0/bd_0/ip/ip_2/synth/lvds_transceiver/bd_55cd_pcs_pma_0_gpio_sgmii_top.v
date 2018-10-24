//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_gpio_sgmii_top.v
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
// Description:   This module is the top level for GPIO based SGMII's.  
//  It's responsible for:
//  1)  TX TBI -> Output DDR.
//  2)  RX - READ PHY Calibration
//------------------------------------------------------------------------------
`timescale 1ns / 1ps

module bd_55cd_pcs_pma_0_gpio_sgmii_top(

input wire         reset, 
input wire         soft_tx_reset,
input wire         soft_rx_reset,
input wire         clk625,
input wire         clk208,
input wire         clk104,

input  wire        enable_initial_cal,
output wire        o_init_cal_done,
output reg         o_loss_of_sync,
input  wire [5:0]  tx_data_6b,
output wire [5:0]  o_rx_data_6b,
input  wire        code_error,

input  wire [11:0] eye_mon_wait_time,

input  wire        pin_sgmii_rxp,  
input  wire        pin_sgmii_rxn,  
output wire        pin_sgmii_txp,  
output wire        pin_sgmii_txn,

output wire [4:0]  o_r_margin,
output wire [4:0]  o_l_margin

);

// SGMII 0
wire [11:0] rx_data_12b_raw;
wire [11:0] rx_mon_12b;
wire [4:0]  data_dly_val_in0;
wire [4:0]  data_dly_val_out0;
wire [4:0]  mon_dly_val_in0;
wire [4:0]  mon_dly_val_out0;
wire        enable_eye_mon;
wire        eye_mon_done;
wire        initial_cal_done;
wire        data_idly_update0;
wire        mon_idly_update0;
wire [4:0]  right_margin0;
wire [4:0]  left_margin0;
reg         bad_mon_trig;
reg  [3:0]  panic_bucket;
wire        code_error_r;
reg  [23:0] eye_mon_timeout;  // Periodically enable the eye monitor FSM 
reg         eye_mon_timeout_r;
wire [1:0]  eye_mon_done_fe;
wire        rx_rst;

assign rx_rst          = reset || soft_rx_reset;
assign o_init_cal_done = initial_cal_done;

assign o_r_margin      = right_margin0;
assign o_l_margin      = left_margin0;


// *** SGMII PHY IOB's ***
bd_55cd_pcs_pma_0_sgmii_phy_iob sgmii_phy_iob (
   .clk625             (clk625), 
   .clk208             (clk208), 
   .clk104             (clk104), 
   .rst                (reset), 
   .soft_tx_reset      (soft_tx_reset), 
   .soft_rx_reset      (soft_rx_reset), 
   .data_idly_rst      (data_idly_update0), 
   .mon_idly_rst       (mon_idly_update0),

   .data_dly_val_in    (data_dly_val_in0), 
   .data_dly_val_out   (data_dly_val_out0), 
   .mon_dly_val_in     (mon_dly_val_in0), 
   .mon_dly_val_out    (mon_dly_val_out0), 

   .o_rx_data_12b      (rx_data_12b_raw), 
   .o_rx_mon           (rx_mon_12b), 
   
   .o_rx_data_6b       (o_rx_data_6b),   
   .tx_data_6b         (tx_data_6b), 

   .pin_sgmii_rxp      (pin_sgmii_rxp), 
   .pin_sgmii_rxn      (pin_sgmii_rxn), 
   .pin_sgmii_txp      (pin_sgmii_txp), 
   .pin_sgmii_txn      (pin_sgmii_txn)
   );

// This FSM monitors the eye width and reports it
bd_55cd_pcs_pma_0_sgmii_eye_monitor sgmii_eye_mon (
   .clk104              (clk104), 
   .rst                 (rx_rst), 
   .enable_eye_mon      (enable_eye_mon | eye_mon_timeout_r ), 
   .o_eye_mon_done      (eye_mon_done), 
   .rx_data             (rx_data_12b_raw), 
   .rx_mon              (rx_mon_12b), 
   .eye_mon_wait_time   (eye_mon_wait_time),
   .data_idelay_val     (data_dly_val_out0), 
   .o_mon_idelay_val    (mon_dly_val_in0), 
   .o_mon_idelay_update (mon_idly_update0), 
   .right_margin        (right_margin0), 
   .left_margin         (left_margin0) 
   )/* synthesis syn_sharing=off */;
    
always @(posedge clk104) begin // Periodically enable eye monitor 
  if (!eye_mon_done) eye_mon_timeout <= 24'h000000;
  else               eye_mon_timeout <= eye_mon_timeout + 1'b1;
end

always @(posedge clk104) eye_mon_timeout_r <= |eye_mon_timeout;

// This FSM update the RX Data capture IDELAY values  
bd_55cd_pcs_pma_0_sgmii_phy_calibration sgmii_phy_cal (
    .clk104               (clk104), 
    .rst                  (rx_rst), 
    .enable_initial_cal   (enable_initial_cal), 
    .o_initial_cal_done   (initial_cal_done), 
    .o_enable_eye_mon     (enable_eye_mon), 
    .eye_mon_done         (eye_mon_done), 
    .o_eye_mon_done_fe    (eye_mon_done_fe),
    .left_margin          (left_margin0), 
    .right_margin         (right_margin0), 
    .o_data_idelay_val    (data_dly_val_in0), 
    .o_data_idelay_update (data_idly_update0) 
    )/* synthesis syn_sharing=off */;

// gearbox_4b_10b - Converts 4b @ 312.5 MHz to 10b @ 125 MHz.

always @(posedge clk104) bad_mon_trig <= (initial_cal_done && eye_mon_done_fe == 2'b10 && (left_margin0 <= 5'h02 || right_margin0 <= 5'h02) ) ? 1'b1 : 1'b0;
always @(posedge clk104) o_loss_of_sync <= &panic_bucket;

// *** Panic Bucket ***
// This logic flags a high probability that the Strider stopped transmitting
// Leaky Bucket that accumulates errors and slowly forgives them.  Errors include:
// - 8b/10b code error bucket overflow has been detected
// - Eye shrinking (bad_mon_trig) 

bd_55cd_pcs_pma_0_sync_block sync_block_code_error
(
   .clk             (clk104),
   .data_in         (code_error),
   .data_out        (code_error_r)
);

// Leacky Bucket for 8b/10b code group errors
always @(posedge clk104) begin
   if      (rx_rst)                                    panic_bucket <= 4'h0;
   else if (code_error_r && bad_mon_trig)              panic_bucket <= (panic_bucket == 4'hF) ? panic_bucket : panic_bucket + 1'b1;
   else if (eye_mon_done_fe == 2'b10 && !code_error_r) panic_bucket <= (panic_bucket == 4'h0) ? panic_bucket : panic_bucket - 1'b1;
   else                                                panic_bucket <= panic_bucket;
end

endmodule
