//------------------------------------------------------------------------------
// Title      : 
// Project    : 1G/2.5G Ethernet PCS/PMA or SGMII LogiCORE
// File       : bd_55cd_pcs_pma_0_sgmii_phy_calibration.v
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
// Description: This module uses the Eye_monitor block to determine the optimal RXD idelay
//  sample point.   
//------------------------------------------------------------------------------

`timescale 1ns / 1ps

module bd_55cd_pcs_pma_0_sgmii_phy_calibration(
   input wire clk104,
   input wire rst,
   input wire enable_initial_cal,
   output reg o_initial_cal_done,
   
   output wire o_enable_eye_mon,
   input wire eye_mon_done,
   input wire [4:0] left_margin,
   input wire [4:0] right_margin,
   
   output wire [4:0] o_data_idelay_val,
   output reg o_data_idelay_update,
   
   output reg [1:0] o_eye_mon_done_fe
);

reg viable_tap_found;
reg initial_cal_complete;
reg [4:0] best_tap;
reg [4:0] best_tap_window;
reg [4:0] current_tap;
reg [4:0] current_tap_window;
reg [4:0] maint_best_tap;
reg [11:0] cal_state;

parameter RST            = 12'b000000000001;
parameter SET_VAL        = 12'b000000000010;
parameter LOAD_VAL       = 12'b000000000100;
parameter WAIT_EYE_MON   = 12'b000000001000;
parameter INIT_CALC_EYE  = 12'b000000010000;
parameter INIT_COMPARE   = 12'b000000100000;
parameter INIT_INC       = 12'b000001000000;
parameter MAINT_BEGIN    = 12'b000010000000;
parameter MAINT_IDLE     = 12'b000100000000;
parameter MAINT_CALC_VAL = 12'b001000000000;
parameter MAINT_SET_VAL  = 12'b010000000000;
parameter MAINT_LOAD_VAL = 12'b100000000000;


// *** Initial RX Data Calibration FSM ***
always@(posedge clk104) begin
   if (rst) begin
      cal_state <= RST;
   end
   else begin
      (* PARALLEL_CASE *) case (cal_state)
      RST : begin
         if (enable_initial_cal) cal_state <= SET_VAL;
         else                    cal_state <= RST;
      end
      SET_VAL : begin
         cal_state <= LOAD_VAL;
      end
      LOAD_VAL : begin // And Enable Eye Scan
         cal_state <= WAIT_EYE_MON;
      end      
      WAIT_EYE_MON : begin
         //if (eye_mon_done && initial_cal_complete)       cal_state <= MAINT_BEGIN;
         //else if (eye_mon_done && ~initial_cal_complete) cal_state <= INIT_CALC_EYE;
         if (o_eye_mon_done_fe == 2'b10 && initial_cal_complete)       cal_state <= MAINT_BEGIN;
         else if (o_eye_mon_done_fe == 2'b10 && ~initial_cal_complete) cal_state <= INIT_CALC_EYE;
         else                                            cal_state <= WAIT_EYE_MON;
      end
// * Initial part * 
      INIT_CALC_EYE : begin
         cal_state <= INIT_COMPARE;
      end
      INIT_COMPARE : begin
         cal_state <= INIT_INC;
      end
      INIT_INC : begin
         cal_state <= SET_VAL;
      end      
// * Maintenance part * 
// Needs to:
// 1) Periodically update Capture taps by monitoring left and right margin.
//
      MAINT_BEGIN : begin
         if (current_tap != best_tap) cal_state <= SET_VAL;
         else cal_state <= MAINT_IDLE;
      end      
      MAINT_IDLE : begin
         if (o_eye_mon_done_fe == 2'b10) begin
            if (left_margin == right_margin || 
                left_margin == right_margin + 1'b1 ||
                left_margin == right_margin - 1'b1 ) cal_state <= MAINT_IDLE;
            else cal_state <= MAINT_CALC_VAL;
         end else 
         cal_state <= MAINT_IDLE;
      end   
      MAINT_CALC_VAL : begin
         cal_state <= MAINT_SET_VAL; 
      end
      MAINT_SET_VAL : begin
         cal_state <= MAINT_LOAD_VAL; 
      end
      MAINT_LOAD_VAL : begin
         cal_state <= MAINT_IDLE; 
      end     
      default : cal_state <=  RST;     
   endcase
end // end else
end

always @(posedge clk104) begin
   if (rst)                          o_initial_cal_done <= 1'b0; 
   else if (cal_state == MAINT_IDLE) o_initial_cal_done <= 1'b1;
   else                              o_initial_cal_done <= o_initial_cal_done;
end

// current_tap
always @(posedge clk104) begin
   if (cal_state == RST) current_tap <= 5'b10001;
   else if (cal_state == INIT_INC)      current_tap <= (current_tap == 5'd23) ? 5'd8 : current_tap + 1'b1;
   else if (cal_state == MAINT_BEGIN)   current_tap <= best_tap;
   else if (cal_state == MAINT_SET_VAL) current_tap <= maint_best_tap;
   else current_tap <= current_tap;
end

// In maintenence mode, the best tap value is determined by Left/Right margin
always @(posedge clk104) begin
   if (cal_state == RST) maint_best_tap <= 5'b0;
   else if (cal_state == MAINT_CALC_VAL) begin
      if (left_margin >= right_margin) maint_best_tap <= current_tap - 1'b1; 
      else                             maint_best_tap <= current_tap + 1'b1; 
   end else begin
      maint_best_tap <= maint_best_tap;
   end
end

// In Initialization mode, the best tap value is determined by Eye Width.
always @(posedge clk104) begin
   if (cal_state == RST || cal_state == LOAD_VAL) current_tap_window <= 5'b0;
   else if (cal_state == INIT_CALC_EYE) begin
      if (right_margin <= left_margin) current_tap_window <= right_margin;
      else current_tap_window <= left_margin;
   end 
   else current_tap_window <= current_tap_window;
end

always @(posedge clk104) begin
   if (cal_state == RST) begin
      best_tap_window <= 5'b0;
      best_tap <= 5'b0;
   end else if ( (cal_state == INIT_COMPARE) && (current_tap_window > best_tap_window) ) begin
      best_tap_window <= current_tap_window;
      best_tap <= current_tap;
   end else begin
      best_tap_window <= best_tap_window;
      best_tap <= best_tap;
   end
end

// Status updates for the State Machine
always @(posedge clk104) begin
   if (cal_state == RST) viable_tap_found <= 1'b0;
   else if (cal_state == INIT_INC) viable_tap_found <= (best_tap_window > 5'h02) ? 1'b1 : 1'b0;
   else viable_tap_found <= viable_tap_found;
end

always @(posedge clk104) begin
   if (cal_state == RST) initial_cal_complete <= 1'b0;
   else if (current_tap == 5'd22 && viable_tap_found) initial_cal_complete <= 1'b1;
   else initial_cal_complete <= initial_cal_complete;
end

always @(posedge clk104) begin
   if (cal_state == RST) o_eye_mon_done_fe <= 2'd0;
   else begin 
      o_eye_mon_done_fe [0] <= eye_mon_done;
      o_eye_mon_done_fe [1] <= o_eye_mon_done_fe[0];
   end
end

always @(posedge clk104) o_data_idelay_update <= ( cal_state == LOAD_VAL || cal_state == MAINT_LOAD_VAL );
assign o_data_idelay_val = current_tap;
assign o_enable_eye_mon = ( cal_state == LOAD_VAL );

endmodule

