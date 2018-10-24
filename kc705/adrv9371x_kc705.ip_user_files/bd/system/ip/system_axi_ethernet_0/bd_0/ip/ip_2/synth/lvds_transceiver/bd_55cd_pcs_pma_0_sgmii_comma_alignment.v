//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_sgmii_comma_alignment.v
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
// Description: Accepts the input stream (10 bit unaligned data obtained from
//              the DRU).  This module will detect for the presence of comma
//              characters in this data stream, and will produce the bitslip
//              control signal: this is connected to the bitslip input of the
//              DRU and the effect will be to shift the comma to occur in the
//              correct position, to obtain correct 10-bit alignment.



`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings="yes" *)

//------------------------------------------------------------------------------
// Module declaration.
//------------------------------------------------------------------------------

module bd_55cd_pcs_pma_0_sgmii_comma_alignment
(
  input           clk,
  input           reset,
  input           clken,
  input           enablealign,

  input  [9:0]    data_in,
  output reg      comma_det,
  output reg      bitslip
);



  //----------------------------------------------------------------------------
  // Signal declarations
  //----------------------------------------------------------------------------

  wire  [9:0]     comma_position;
  reg   [9:0]     data_reg;
  reg   [4:0]     timer;

  reg enablealign_r;

  //----------------------------------------------------------------------------
  // Comma Detection comparators
  //----------------------------------------------------------------------------


  // register the input data for comparator pipelining
  always @(posedge clk)
  begin
    if (reset == 1'b1) begin
      data_reg    <= 10'b0000000000;
    end

    else if (clken == 1'b1) begin
        data_reg  <= data_in;
    end
  end


  // Detect a comma in the correct position of the data_in word
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  ----------  |  0011111--- | -ve comma
  // |  ----------  |  1100000--- | +ve comma
  // |----------------------------|
  assign comma_position[0] =
       (data_in[9:3] == 7'b0011111 ||
        data_in[9:3] == 7'b1100000)
  ? 1'b1 : 1'b0;


  // Detect a comma which is slipped by 1 bit from the correct position
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  ---------0  |  011111---- | -ve comma
  // |  ---------1  |  100000---- | +ve comma
  // |----------------------------|
  assign comma_position[1] =
       ({data_reg[0], data_in[9:4]} == 7'b0011111 ||
        {data_reg[0], data_in[9:4]} == 7'b1100000)
  ? 1'b1 : 1'b0;


  // Detect a comma which is slipped by 2 bits from the correct position
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  --------00  |  11111----- | -ve comma
  // |  --------11  |  10000----- | +ve comma
  // |----------------------------|
  assign comma_position[2] =
       ({data_reg[1:0], data_in[9:5]} == 7'b0011111 ||
        {data_reg[1:0], data_in[9:5]} == 7'b1100000)
  ? 1'b1 : 1'b0;


  // Detect a comma which is slipped by 3 bits from the correct position
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  -------001  |  1111------ | -ve comma
  // |  -------110  |  1000------ | +ve comma
  // |----------------------------|
  assign comma_position[3] =
       ({data_reg[2:0], data_in[9:6]} == 7'b0011111 ||
        {data_reg[2:0], data_in[9:6]} == 7'b1100000)
  ? 1'b1 : 1'b0;


  // Detect a comma which is slipped by 4 bits from the correct position
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  ------0011  |  111------- | -ve comma
  // |  ------1100  |  100------- | +ve comma
  // |----------------------------|
  assign comma_position[4] =
       ({data_reg[3:0], data_in[9:7]} == 7'b0011111 ||
        {data_reg[3:0], data_in[9:7]} == 7'b1100000)
  ? 1'b1 : 1'b0;


  // Detect a comma which is slipped by 5 bits from the correct position
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  -----00111  |  11-------- | -ve comma
  // |  -----11000  |  10-------- | +ve comma
  // |----------------------------|
  assign comma_position[5] =
       ({data_reg[4:0], data_in[9:8]} == 7'b0011111 ||
        {data_reg[4:0], data_in[9:8]} == 7'b1100000)
  ? 1'b1 : 1'b0;


  // Detect a comma which is slipped by 6 bits from the correct position
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  ----001111  |  1--------- | -ve comma
  // |  ----110000  |  1--------- | +ve comma
  // |----------------------------|
  assign comma_position[6] =
       ({data_reg[5:0], data_in[9]} == 7'b0011111 ||
        {data_reg[5:0], data_in[9]} == 7'b1100000)
  ? 1'b1 : 1'b0;


  // Detect a comma which is slipped by 7 bits from the correct position
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  ---0011111  |  ---------- | -ve comma
  // |  ---1100000  |  ---------- | +ve comma
  // |----------------------------|
  assign comma_position[7] =
       (data_in[6:0] == 7'b0011111 ||
        data_in[6:0] == 7'b1100000)
  ? 1'b1 : 1'b0;


  // Detect a comma which is slipped by 8 bits from the correct position
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  --0011111-  |  ---------- | -ve comma
  // |  --1100000-  |  ---------- | +ve comma
  // |----------------------------|
  assign comma_position[8] =
       (data_in[7:1] == 7'b0011111 ||
        data_in[7:1] == 7'b1100000)
  ? 1'b1 : 1'b0;


  // Detect a comma which is slipped by 9 bits from the correct position
  // |----------------------------|
  // |   data_reg   |   data_in   |
  // |----------------------------|
  // |  -0011111--  |  ---------- | -ve comma
  // |  -1100000--  |  ---------- | +ve comma
  // |----------------------------|
  assign comma_position[9] =
       (data_in[8:2] == 7'b0011111 ||
        data_in[8:2] == 7'b1100000)
  ? 1'b1 : 1'b0;


always @(posedge clk) enablealign_r <= enablealign;

always @(posedge clk) begin
   if ( reset ) bitslip <= 1'b0;
   else if ( enablealign_r == 1'b1 && comma_position[9:1] != 9'b000000000 && timer == 5'b11111 ) bitslip <= 1'b1;
   else bitslip <= 1'b0;
end

always @(posedge clk) begin
   if (reset)        timer <= 5'b0;
   else if (bitslip) timer <= 5'd0;
   else              timer <= (timer == 5'b11111) ? timer : timer + 1'b1;
end

always @(posedge clk) begin
   if ( reset ) comma_det <= 1'b0;
   else if ( comma_position[0] == 1'b1 ) comma_det <= 1'b1;
   else comma_det <= 1'b0;
end


endmodule
