//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_gearbox_10b_6b.v
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
// Description:  TX Side - This module converts 10-bit @ 125 MHz to 6-bits @ 208 MHz.
//------------------------------------------------------------------------------

`timescale 1ps / 1ps
module bd_55cd_pcs_pma_0_gearbox_10b_6b (

   input wire reset,
   input wire clk125,
   input wire [9:0] txdata_10b,
   
   input wire clk208,
   output reg [5:0] o_txdata_6b

);

wire reset_208;
reg [59:0] accumulator_60b;
reg [9:0] txdata_10b_r;

reg [2:0] wr_ptr; 
reg [3:0] rd_ptr;

bd_55cd_pcs_pma_0_reset_sync reset_sync_reset_208 (
   .clk       (clk208),
   .reset_in  (reset),
   .reset_out (reset_208)
);


always @(posedge clk125) txdata_10b_r <= txdata_10b; // Register input of block for timing

// Step the Write Pointer
always @(posedge clk125) begin
   if (reset) wr_ptr <= 3'd0;
   else if (wr_ptr == 3'd5) wr_ptr <= 3'd0;
   else wr_ptr <= wr_ptr + 1'b1;
end

// Step the Read Pointer
always @(posedge clk208) begin
   if (reset_208) rd_ptr <= 4'd0;
   else if (rd_ptr == 4'd9) rd_ptr <= 4'd0;
   else rd_ptr <= rd_ptr + 1'b1;
end


// Fill the accumulator (Write)
always @(posedge clk125) begin
   if (reset) accumulator_60b <= 60'd0;
   else if (wr_ptr == 3'd0) begin  
      accumulator_60b[9:0]   <= txdata_10b_r;
      accumulator_60b[19:10] <= accumulator_60b[19:10];
      accumulator_60b[29:20] <= accumulator_60b[29:20];
      accumulator_60b[39:30] <= accumulator_60b[39:30];
      accumulator_60b[49:40] <= accumulator_60b[49:40];
      accumulator_60b[59:50] <= accumulator_60b[59:50];
   end
   else if (wr_ptr == 3'd1) begin  
      accumulator_60b[9:0]   <= accumulator_60b[9:0];
      accumulator_60b[19:10] <= txdata_10b_r;
      accumulator_60b[29:20] <= accumulator_60b[29:20];
      accumulator_60b[39:30] <= accumulator_60b[39:30];
      accumulator_60b[49:40] <= accumulator_60b[49:40];
      accumulator_60b[59:50] <= accumulator_60b[59:50];
   end
   else if (wr_ptr == 3'd2) begin  
      accumulator_60b[9:0]   <= accumulator_60b[9:0];
      accumulator_60b[19:10] <= accumulator_60b[19:10];
      accumulator_60b[29:20] <= txdata_10b_r;
      accumulator_60b[39:30] <= accumulator_60b[39:30];
      accumulator_60b[49:40] <= accumulator_60b[49:40];
      accumulator_60b[59:50] <= accumulator_60b[59:50];
   end
   else if (wr_ptr == 3'd3) begin  
      accumulator_60b[9:0]   <= accumulator_60b[9:0];
      accumulator_60b[19:10] <= accumulator_60b[19:10];
      accumulator_60b[29:20] <= accumulator_60b[29:20];
      accumulator_60b[39:30] <= txdata_10b_r;
      accumulator_60b[49:40] <= accumulator_60b[49:40];
      accumulator_60b[59:50] <= accumulator_60b[59:50];
   end
   else if (wr_ptr == 3'd4) begin  
      accumulator_60b[9:0]   <= accumulator_60b[9:0];
      accumulator_60b[19:10] <= accumulator_60b[19:10];
      accumulator_60b[29:20] <= accumulator_60b[29:20];
      accumulator_60b[39:30] <= accumulator_60b[39:30];
      accumulator_60b[49:40] <= txdata_10b_r;
      accumulator_60b[59:50] <= accumulator_60b[59:50];
   end
   else if (wr_ptr == 3'd5) begin  
      accumulator_60b[9:0]   <= accumulator_60b[9:0];
      accumulator_60b[19:10] <= accumulator_60b[19:10];
      accumulator_60b[29:20] <= accumulator_60b[29:20];
      accumulator_60b[39:30] <= accumulator_60b[39:30];
      accumulator_60b[49:40] <= accumulator_60b[49:40];
      accumulator_60b[59:50] <= txdata_10b_r;
   end
end

// Pull from the Accumulator (Read)

always @(posedge clk208) begin
   if (reset_208) o_txdata_6b <= 6'd0;
   else if (rd_ptr == 4'd0) o_txdata_6b <= accumulator_60b[ 5: 0];
   else if (rd_ptr == 4'd1) o_txdata_6b <= accumulator_60b[11: 6];
   else if (rd_ptr == 4'd2) o_txdata_6b <= accumulator_60b[17:12];
   else if (rd_ptr == 4'd3) o_txdata_6b <= accumulator_60b[23:18];
   else if (rd_ptr == 4'd4) o_txdata_6b <= accumulator_60b[29:24];
   else if (rd_ptr == 4'd5) o_txdata_6b <= accumulator_60b[35:30];
   else if (rd_ptr == 4'd6) o_txdata_6b <= accumulator_60b[41:36];
   else if (rd_ptr == 4'd7) o_txdata_6b <= accumulator_60b[47:42];
   else if (rd_ptr == 4'd8) o_txdata_6b <= accumulator_60b[53:48];
   else if (rd_ptr == 4'd9) o_txdata_6b <= accumulator_60b[59:54];
end // always


endmodule













