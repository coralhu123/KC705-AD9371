//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_gearbox_6b_10b.v
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
// Description:  RX Side - This module converts 6-bit @ 208 MHz to 10-bits @ 125 MHz.
//------------------------------------------------------------------------------
`timescale 1ps / 1ps

module bd_55cd_pcs_pma_0_gearbox_6b_10b (

   input wire reset,
   input wire clk208,
   input wire [5:0] rxdata_6b,
   
   input wire bitslip,
   input wire clk125,
   output reg [9:0] o_rxdata_10b

);

wire reset_208;
reg [59:0] accumulator_60b;
reg [5:0] rxdata_6b_r;
reg [4:0] bitslip_position;

reg [3:0] wr_ptr; 
reg [2:0] rd_ptr;

bd_55cd_pcs_pma_0_reset_sync reset_sync_reset_208 (
   .clk       (clk208),
   .reset_in  (reset),
   .reset_out (reset_208)
);

always @(posedge clk208) rxdata_6b_r <= rxdata_6b; // Register input of block for timing

// Step the Read Pointer
always @(posedge clk125) begin
   if (reset) rd_ptr <= 3'd0;
   else if (rd_ptr == 3'd5) rd_ptr <= 3'd0;
   else rd_ptr <= rd_ptr + 1'b1;
end

// Step the Write Pointer
always @(posedge clk208) begin
   if (reset_208) wr_ptr <= 4'd0;
   else if (wr_ptr == 4'd9) wr_ptr <= 4'd0;
   else wr_ptr <= wr_ptr + 1'b1;
end


// Fill the accumulator (Write)
always @(posedge clk208) begin
   if (reset_208) accumulator_60b <= 60'd0;
   else if (wr_ptr == 4'd0) begin  
      accumulator_60b[5:0]   <= rxdata_6b_r;
      accumulator_60b[11:6]  <= accumulator_60b[11:6];
      accumulator_60b[17:12] <= accumulator_60b[17:12];
      accumulator_60b[23:18] <= accumulator_60b[23:18];
      accumulator_60b[29:24] <= accumulator_60b[29:24];
      accumulator_60b[35:30] <= accumulator_60b[35:30];
      accumulator_60b[41:36] <= accumulator_60b[41:36];
      accumulator_60b[47:42] <= accumulator_60b[47:42];
      accumulator_60b[53:48] <= accumulator_60b[53:48];
      accumulator_60b[59:54] <= accumulator_60b[59:54];
   end
   else if (wr_ptr == 4'd1) begin  
      accumulator_60b[5:0]   <= accumulator_60b[5:0];
      accumulator_60b[11:6]  <= rxdata_6b_r;
      accumulator_60b[17:12] <= accumulator_60b[17:12];
      accumulator_60b[23:18] <= accumulator_60b[23:18];
      accumulator_60b[29:24] <= accumulator_60b[29:24];
      accumulator_60b[35:30] <= accumulator_60b[35:30];
      accumulator_60b[41:36] <= accumulator_60b[41:36];
      accumulator_60b[47:42] <= accumulator_60b[47:42];
      accumulator_60b[53:48] <= accumulator_60b[53:48];
      accumulator_60b[59:54] <= accumulator_60b[59:54];
   end
   else if (wr_ptr == 4'd2) begin  
      accumulator_60b[5:0]   <= accumulator_60b[5:0];
      accumulator_60b[11:6]  <= accumulator_60b[11:6];
      accumulator_60b[17:12] <= rxdata_6b_r;
      accumulator_60b[23:18] <= accumulator_60b[23:18];
      accumulator_60b[29:24] <= accumulator_60b[29:24];
      accumulator_60b[35:30] <= accumulator_60b[35:30];
      accumulator_60b[41:36] <= accumulator_60b[41:36];
      accumulator_60b[47:42] <= accumulator_60b[47:42];
      accumulator_60b[53:48] <= accumulator_60b[53:48];
      accumulator_60b[59:54] <= accumulator_60b[59:54];
   end
   else if (wr_ptr == 4'd3) begin  
      accumulator_60b[5:0]   <= accumulator_60b[5:0];
      accumulator_60b[11:6]  <= accumulator_60b[11:6];
      accumulator_60b[17:12] <= accumulator_60b[17:12];
      accumulator_60b[23:18] <= rxdata_6b_r;
      accumulator_60b[29:24] <= accumulator_60b[29:24];
      accumulator_60b[35:30] <= accumulator_60b[35:30];
      accumulator_60b[41:36] <= accumulator_60b[41:36];
      accumulator_60b[47:42] <= accumulator_60b[47:42];
      accumulator_60b[53:48] <= accumulator_60b[53:48];
      accumulator_60b[59:54] <= accumulator_60b[59:54];
   end   
   else if (wr_ptr == 4'd4) begin  
      accumulator_60b[5:0]   <= accumulator_60b[5:0];
      accumulator_60b[11:6]  <= accumulator_60b[11:6];
      accumulator_60b[17:12] <= accumulator_60b[17:12];
      accumulator_60b[23:18] <= accumulator_60b[23:18];
      accumulator_60b[29:24] <= rxdata_6b_r;
      accumulator_60b[35:30] <= accumulator_60b[35:30];
      accumulator_60b[41:36] <= accumulator_60b[41:36];
      accumulator_60b[47:42] <= accumulator_60b[47:42];
      accumulator_60b[53:48] <= accumulator_60b[53:48];
      accumulator_60b[59:54] <= accumulator_60b[59:54];
   end   
   else if (wr_ptr == 4'd5) begin  
      accumulator_60b[5:0]   <= accumulator_60b[5:0];
      accumulator_60b[11:6]  <= accumulator_60b[11:6];
      accumulator_60b[17:12] <= accumulator_60b[17:12];
      accumulator_60b[23:18] <= accumulator_60b[23:18];
      accumulator_60b[29:24] <= accumulator_60b[29:24];
      accumulator_60b[35:30] <= rxdata_6b_r;
      accumulator_60b[41:36] <= accumulator_60b[41:36];
      accumulator_60b[47:42] <= accumulator_60b[47:42];
      accumulator_60b[53:48] <= accumulator_60b[53:48];
      accumulator_60b[59:54] <= accumulator_60b[59:54];
   end
   else if (wr_ptr == 4'd6) begin  
      accumulator_60b[5:0]   <= accumulator_60b[5:0];
      accumulator_60b[11:6]  <= accumulator_60b[11:6];
      accumulator_60b[17:12] <= accumulator_60b[17:12];
      accumulator_60b[23:18] <= accumulator_60b[23:18];
      accumulator_60b[29:24] <= accumulator_60b[29:24];
      accumulator_60b[35:30] <= accumulator_60b[35:30];
      accumulator_60b[41:36] <= rxdata_6b_r;
      accumulator_60b[47:42] <= accumulator_60b[47:42];
      accumulator_60b[53:48] <= accumulator_60b[53:48];
      accumulator_60b[59:54] <= accumulator_60b[59:54];
   end
   else if (wr_ptr == 4'd7) begin  
      accumulator_60b[5:0]   <= accumulator_60b[5:0];
      accumulator_60b[11:6]  <= accumulator_60b[11:6];
      accumulator_60b[17:12] <= accumulator_60b[17:12];
      accumulator_60b[23:18] <= accumulator_60b[23:18];
      accumulator_60b[29:24] <= accumulator_60b[29:24];
      accumulator_60b[35:30] <= accumulator_60b[35:30];
      accumulator_60b[41:36] <= accumulator_60b[41:36];
      accumulator_60b[47:42] <= rxdata_6b_r;
      accumulator_60b[53:48] <= accumulator_60b[53:48];
      accumulator_60b[59:54] <= accumulator_60b[59:54];
   end
   else if (wr_ptr == 4'd8) begin  
      accumulator_60b[5:0]   <= accumulator_60b[5:0];
      accumulator_60b[11:6]  <= accumulator_60b[11:6];
      accumulator_60b[17:12] <= accumulator_60b[17:12];
      accumulator_60b[23:18] <= accumulator_60b[23:18];
      accumulator_60b[29:24] <= accumulator_60b[29:24];
      accumulator_60b[35:30] <= accumulator_60b[35:30];
      accumulator_60b[41:36] <= accumulator_60b[41:36];
      accumulator_60b[47:42] <= accumulator_60b[47:42];
      accumulator_60b[53:48] <= rxdata_6b_r;
      accumulator_60b[59:54] <= accumulator_60b[59:54];
   end
   else if (wr_ptr == 4'd9) begin  
      accumulator_60b[5:0]   <= accumulator_60b[5:0];
      accumulator_60b[11:6]  <= accumulator_60b[11:6];
      accumulator_60b[17:12] <= accumulator_60b[17:12];
      accumulator_60b[23:18] <= accumulator_60b[23:18];
      accumulator_60b[29:24] <= accumulator_60b[29:24];
      accumulator_60b[35:30] <= accumulator_60b[35:30];
      accumulator_60b[41:36] <= accumulator_60b[41:36];
      accumulator_60b[47:42] <= accumulator_60b[47:42];
      accumulator_60b[53:48] <= accumulator_60b[53:48];
      accumulator_60b[59:54] <= rxdata_6b_r;
   end
end

// Pull from the Accumulator (Read)
reg [19:0] rxdata_10b_r;

always @(posedge clk125) begin
   if (reset) rxdata_10b_r[19:10] <= 10'd0;
   else if (rd_ptr == 3'd0) rxdata_10b_r[19:10] <= accumulator_60b[ 9: 0];
   else if (rd_ptr == 3'd1) rxdata_10b_r[19:10] <= accumulator_60b[19:10];
   else if (rd_ptr == 3'd2) rxdata_10b_r[19:10] <= accumulator_60b[29:20];
   else if (rd_ptr == 3'd3) rxdata_10b_r[19:10] <= accumulator_60b[39:30];
   else if (rd_ptr == 3'd4) rxdata_10b_r[19:10] <= accumulator_60b[49:40];
   else if (rd_ptr == 3'd5) rxdata_10b_r[19:10] <= accumulator_60b[59:50];
end // always
always @(posedge clk125) rxdata_10b_r[9:0] <= rxdata_10b_r[19:10];

// Bitslip operation for comma alignment
always @(posedge clk125) begin
   if (reset) bitslip_position <= 5'd8;  // change for simulation alignment
   else if (bitslip) bitslip_position <= (bitslip_position == 5'd9) ? bitslip_position <= 5'd0 : bitslip_position + 1'd1;
   else bitslip_position <= bitslip_position;
end

always @(posedge clk125) begin
   if (reset)                     o_rxdata_10b <= 10'd0;
   else if (bitslip_position == 5'd0) o_rxdata_10b <= rxdata_10b_r[9 :0];
   else if (bitslip_position == 5'd1) o_rxdata_10b <= rxdata_10b_r[10:1];
   else if (bitslip_position == 5'd2) o_rxdata_10b <= rxdata_10b_r[11:2];
   else if (bitslip_position == 5'd3) o_rxdata_10b <= rxdata_10b_r[12:3];
   else if (bitslip_position == 5'd4) o_rxdata_10b <= rxdata_10b_r[13:4];
   else if (bitslip_position == 5'd5) o_rxdata_10b <= rxdata_10b_r[14:5];
   else if (bitslip_position == 5'd6) o_rxdata_10b <= rxdata_10b_r[15:6];
   else if (bitslip_position == 5'd7) o_rxdata_10b <= rxdata_10b_r[16:7];
   else if (bitslip_position == 5'd8) o_rxdata_10b <= rxdata_10b_r[17:8];
   else if (bitslip_position == 5'd9) o_rxdata_10b <= rxdata_10b_r[18:9];
   else o_rxdata_10b <= rxdata_10b_r[19:10];
end

endmodule


