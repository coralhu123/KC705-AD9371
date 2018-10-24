//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_sgmii_eye_monitor.v
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
// Description:  This module monitors the N-node IDELAY to determine the margin of the current 
//  P-node (data) IDELAY tap value.    
//------------------------------------------------------------------------------
`timescale 1ns / 1ps
module bd_55cd_pcs_pma_0_sgmii_eye_monitor(
   input wire clk104,
   input wire rst,
   input wire enable_eye_mon,
   output reg o_eye_mon_done,
   
   input wire [11:0] rx_data,
   input wire [11:0] rx_mon,
   input wire [4:0] data_idelay_val,

   input wire [11:0] eye_mon_wait_time,
   
   output wire [4:0] o_mon_idelay_val,
   output wire o_mon_idelay_update,
   
   output reg [4:0] right_margin,
   output reg [4:0] left_margin
   
   //output wire [31:0] cs_eye_mon

);

reg [11:0] wait_cntr;
reg cid_error;       // Too many continuous identical digits to be 8b/10b
reg mismatch_error;  // data != ~mon
reg data_bad;        // Sticky bit flagging that monitor and data don't vibe
reg [9:0] old_em_state;
reg [4:0] mon_idly_val;
reg mon_idly_update;
reg [9:0] em_state;
wire tap_edge_error;

parameter RST            = 10'b0000000001;
parameter IDLE           = 10'b0000000010;
parameter DEC            = 10'b0000000100;
parameter WAIT_LEFT      = 10'b0000001000;
parameter CHECK_LEFT     = 10'b0000010000;
parameter SAVE_LEFT      = 10'b0000100000;
parameter INC            = 10'b0001000000;
parameter WAIT_RIGHT     = 10'b0010000000;
parameter CHECK_RIGHT    = 10'b0100000000;
parameter SAVE_RIGHT     = 10'b1000000000;

// *** Eye Monitor FSM ***
always@(posedge clk104) begin
	if (rst) begin
		em_state <= RST;
	end
	else begin
		(* PARALLEL_CASE *) case (em_state)
		RST : begin
			em_state <= IDLE;
		end
		IDLE : begin
			if (enable_eye_mon) em_state <= DEC;
         else                em_state <= IDLE;
		end
		DEC : begin
			em_state <= WAIT_LEFT;
		end
		WAIT_LEFT : begin
			if (wait_cntr == eye_mon_wait_time) em_state <= CHECK_LEFT;
         else                              em_state <= WAIT_LEFT;
		end		
		CHECK_LEFT : begin
         if (data_bad) em_state <= SAVE_LEFT;
         else          em_state <= DEC;
		end
		SAVE_LEFT : begin
         em_state <= INC;
		end
		INC : begin
			em_state <= WAIT_RIGHT;
		end
		WAIT_RIGHT : begin
			if (wait_cntr == eye_mon_wait_time) em_state <= CHECK_RIGHT;
         else                              em_state <= WAIT_RIGHT;			
		end		
		CHECK_RIGHT : begin
         if (data_bad) em_state <= SAVE_RIGHT;
         else          em_state <= INC;
		end
		SAVE_RIGHT : begin
         em_state <= IDLE;
		end
         default : em_state <= RST; 

	endcase
end // end else
end

always @(posedge clk104) begin
   if (em_state == RST || enable_eye_mon) o_eye_mon_done <= 1'b0;
   else if (em_state == SAVE_RIGHT) o_eye_mon_done <= 1'b1;
   else o_eye_mon_done <= o_eye_mon_done;
end


// Register Updates
always @(posedge clk104) old_em_state <= em_state;

always @(posedge clk104) begin
   if (em_state != WAIT_LEFT && em_state != WAIT_RIGHT) wait_cntr <= 12'h000;
   else wait_cntr <= wait_cntr + 1'b1;
end

// Manipulate and control MONITOR Idelay value.  
always @(posedge clk104) begin
   if (em_state == RST) mon_idly_val <= 5'b0;
   else if (em_state == IDLE || em_state == SAVE_LEFT) mon_idly_val <= data_idelay_val;
   else if (em_state == DEC && mon_idly_val != 5'b00000) mon_idly_val <= mon_idly_val - 1'b1;
   else if (em_state == INC && mon_idly_val != 5'b11111) mon_idly_val <= mon_idly_val + 1'b1;
   else mon_idly_val <= mon_idly_val;
end

always @(posedge clk104) begin
   if ((em_state == WAIT_LEFT && old_em_state == DEC) || 
      (em_state == WAIT_RIGHT && old_em_state == INC) || 
      (em_state == IDLE && old_em_state == SAVE_RIGHT) ) mon_idly_update <= 1'b1;
   else mon_idly_update <= 1'b0;
end

assign o_mon_idelay_val = mon_idly_val;
assign o_mon_idelay_update = mon_idly_update;

// Update margin output register
always @(posedge clk104) begin
   //if (em_state == RST || em_state == DEC) left_margin <= 5'b0;
   if (em_state == RST) left_margin <= 5'b0;
   else if (em_state == CHECK_LEFT && data_bad) left_margin <= data_idelay_val - mon_idly_val;
   else left_margin <= left_margin;
end

always @(posedge clk104) begin
   //if (em_state == RST || em_state == DEC) right_margin <= 5'b0;
   if (em_state == RST) right_margin <= 5'b0;
   else if (em_state == CHECK_RIGHT && data_bad) right_margin <= mon_idly_val - data_idelay_val;
   else right_margin <= right_margin;
end

// Determine if current monitor IDELAY value is sitting on a good tap or on a metastable tap.
always @(posedge clk104) begin
   if ( rst || (wait_cntr < 12'h00F) ) data_bad <= 1'b0;
   else if (cid_error || mismatch_error || tap_edge_error) data_bad <= 1'b1;
   else data_bad <= data_bad;
end

assign tap_edge_error = (mon_idly_val == 5'b00000) || (mon_idly_val == 5'b11111);
always @(posedge clk104) cid_error <= (rx_data == 12'h000 || rx_data == 12'hFFF)? 1'b1 : 1'b0;
always @(posedge clk104) mismatch_error <= (rx_data != ~rx_mon) ? 1'b1 : 1'b0;


endmodule

