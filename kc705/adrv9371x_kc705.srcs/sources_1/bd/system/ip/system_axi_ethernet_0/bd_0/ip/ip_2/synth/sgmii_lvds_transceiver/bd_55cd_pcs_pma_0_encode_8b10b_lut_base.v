//------------------------------------------------------------------------------
// File        : bd_55cd_pcs_pma_0_encode_8b10b_lut_base.v
// Author      : Xilinx Inc.
//------------------------------------------------------------------------------
// Description : this file has been translated into Verilog from the VHDL file
//               of the same name taken from Xilinx Application Note XAPP1122.
//
//               The module implements a LUT based 8b10b encoding function
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



`timescale 1 ps/1 ps


//------------------------------------------------------------------------------
// The module declaration
//------------------------------------------------------------------------------

module bd_55cd_pcs_pma_0_encode_8b10b_lut_base #
  (
    parameter        C_HAS_DISP_IN     =0,
    parameter        C_HAS_FORCE_CODE  =0,
    parameter        C_FORCE_CODE_VAL  =10'b1010101010,
    parameter        C_FORCE_CODE_DISP =0,
    parameter        C_HAS_ND          =0,
    parameter        C_HAS_KERR        =0
  )

  (
    input      [7:0] din,
    input            kin,
    input            clk,
    output reg [9:0] dout,
    input            ce,
    input            force_code,
    input            force_disp,
    input            disp_in,
    output           disp_out,
    output           kerr,
    output reg       nd
);



  //----------------------------------------------------------------------------
  // Signal Declarations
  //----------------------------------------------------------------------------
  reg   [5:0] b6;
  reg   [3:0] b4;
  reg         pdes6;
  reg         pdes4;
  wire        k28;
  wire        l13;
  wire        l31;
  wire        a7;
  reg         disp_in_i;
  reg         disp_run;
  reg         kerr_i;



  //----------------------------------------------------------------------------
  // Create Alias'
  //----------------------------------------------------------------------------
  wire         a;
  wire         b;
  wire         c;
  wire         d;
  wire         e;
  wire  [4:0]  b5;
  wire  [2:0]  b3;

  assign a     = din[0];
  assign b     = din[1];
  assign c     = din[2];
  assign d     = din[3];
  assign e     = din[4];
  assign b5    = din[4:0];
  assign b3    = din[7:5];



  //----------------------------------------------------------------------------
  // Set all initial values
  //----------------------------------------------------------------------------

  initial
  begin : initial_values

    // Module outputs registers
    dout              <= C_FORCE_CODE_VAL;
    nd                <= 1'b0;

    // Internal signals registers
    b6                <= 6'b0;
    b4                <= 4'b0;
    pdes6             <= 1'b0;
    pdes4             <= 1'b0;
    disp_in_i         <= 1'b0;
    disp_run          <= C_FORCE_CODE_DISP;
    kerr_i            <= 1'b0;

  end



  //----------------------------------------------------------------------------
  // Map internal signals to proper port names
  //----------------------------------------------------------------------------
  assign disp_out = disp_run;
  assign kerr     = kerr_i;



  //----------------------------------------------------------------------------
  // Calculate intermediate terms using notation & logic from 8b/10b spec
  //----------------------------------------------------------------------------
  assign k28 = kin & (b5 == 5'b11100);
  assign l13 = ((a ^ b) & !(c | d)) | ((c ^ d) & !(a | b));
  assign l31 = ((a ^ b) &  (c & d)) | ((c ^ d) &  (a & b));
  assign a7  = (kin | ((l31 & d & !e & disp_in_i) |
               (l13 & !d & e & !disp_in_i)));



  //----------------------------------------------------------------------------
  // Check for invalid K codes
  //----------------------------------------------------------------------------
  generate if (C_HAS_KERR == 1) begin : gke

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin

        if (force_code == 1'b1) begin
          kerr_i <= 1'b0;
        end

        else if (b5 == 5'b11100) begin
          kerr_i <= 1'b0;
        end

        else if (b3 != 3'b111) begin
          kerr_i <= kin;
        end

        else if ((b5 != 5'b10111) & (b5 != 5'b11011) & (b5 != 5'b11101)
               & (b5 != 5'b11110)) begin
          kerr_i <= kin;
        end

        else begin
          kerr_i <= 1'b0;
        end
      end
    end

  end
  endgenerate


  generate if (C_HAS_KERR != 1) begin : ngke
    always @ (kerr_i)
    begin
      kerr_i <= 1'b0;
    end
  end
  endgenerate



  //----------------------------------------------------------------------------
  // Do the 5B/6B conversion (calculate the 6b symbol)
  //----------------------------------------------------------------------------
  always @ (b5 or k28 or disp_in_i)
  begin
    if (k28 == 1'b1) begin                     // K.28
      if (disp_in_i == 1'b0) begin
        b6 <= 7'b111100;
      end
      else begin
        b6 <= 7'b000011;
      end
    end

    else begin
      case (b5)

        5'b00000 : begin                   // D.0
          if (disp_in_i == 1'b1) begin
            b6          <= 7'b000110;
          end
          else begin
            b6          <= 7'b111001;
          end
        end

        5'b00001 : begin                   // D.1
          if (disp_in_i == 1'b1) begin
            b6          <= 7'b010001;
          end
          else begin
            b6          <= 7'b101110;
          end
        end

        5'b00010 : begin                   // D.2
          if (disp_in_i == 1'b1) begin
            b6          <= 7'b010010;
          end
          else begin
            b6          <= 7'b101101;
          end
        end

        5'b00011 : begin
          b6 <= 7'b100011;  // D.3
        end

        5'b00100 : begin                   // D.4
          if (disp_in_i == 1'b1) begin
            b6          <= 7'b010100;
          end
          else begin
            b6          <= 7'b101011;
          end
        end

        5'b00101 : begin
          b6 <= 7'b100101;  // D.5
        end

        5'b00110 : begin
          b6 <= 7'b100110;  // D.6
        end

        5'b00111 : begin                   // D.7
          if (disp_in_i == 1'b0) begin
            b6          <= 7'b000111;
          end
          else begin
            b6          <= 7'b111000;
          end
        end

        5'b01000 : begin                   // D.8
          if (disp_in_i == 1'b1) begin
            b6          <= 7'b011000;
          end
          else begin
            b6          <= 7'b100111;
          end
        end

        5'b01001 : begin
          b6 <= 7'b101001;  // D.9
        end

        5'b01010 : begin
          b6 <= 7'b101010;  // D.10
        end

        5'b01011 : begin
          b6 <= 7'b001011;  // D.11
        end

        5'b01100 : begin
          b6 <= 7'b101100;  // D.12
        end

        5'b01101 : begin
          b6 <= 7'b001101;  // D.13
        end

        5'b01110 : begin
          b6 <= 7'b001110;  // D.14
        end

        5'b01111 : begin                   // D.15
          if (disp_in_i == 1'b1) begin
            b6          <= 7'b000101;
          end
          else begin
            b6          <= 7'b111010;
          end
        end

        5'b10000 : begin                   // D.16
          if (disp_in_i == 1'b0) begin
            b6          <= 7'b110110;
          end
          else begin
            b6          <= 7'b001001;
          end
        end

        5'b10001 : begin
          b6 <= 7'b110001;  // D.17
        end

        5'b10010 : begin
          b6 <= 7'b110010;  // D.18
        end

        5'b10011 : begin
          b6 <= 7'b010011;  // D.19
        end

        5'b10100 : begin
          b6 <= 7'b110100;  // D.20
        end

        5'b10101 : begin
          b6 <= 7'b010101;  // D.21
        end

        5'b10110 : begin
          b6 <= 7'b010110;  // D.22
        end

        5'b10111 : begin                   // D/K.23
          if (disp_in_i == 1'b0) begin
            b6          <= 7'b010111;
          end
          else begin
            b6          <= 7'b101000;
          end
        end

        5'b11000 : begin                   // D.24
          if (disp_in_i == 1'b1) begin
            b6          <= 7'b001100;
          end
          else begin
            b6          <= 7'b110011;
          end
        end

        5'b11001 : begin
          b6 <= 7'b011001;  // D.25
        end

        5'b11010 : begin
          b6 <= 7'b011010;  // D.26
        end

        5'b11011 : begin                   // D/K.27
          if (disp_in_i == 1'b0) begin
            b6          <= 7'b011011;
          end
          else begin
            b6          <= 7'b100100;
          end
        end

        5'b11100 : begin
          b6 <= 7'b011100;  // D.28
        end

        5'b11101 : begin                   // D/K.29
          if (disp_in_i == 1'b0) begin
            b6          <= 7'b011101;
          end
          else begin
            b6          <= 7'b100010;
          end
        end

        5'b11110 : begin                   // D/K.30
          if (disp_in_i == 1'b0) begin
            b6          <= 7'b011110;
          end
          else begin
            b6          <= 7'b100001;
          end
        end

        5'b11111 : begin                   // D.31
          if (disp_in_i == 1'b0) begin
            b6          <= 7'b110101;
          end
          else begin
            b6          <= 7'b001010;
          end
        end

        default : begin
            b6          <= 7'b110101;
        end

      endcase
    end
  end



  //----------------------------------------------------------------------------
  // Calculate the running disparity -after- the 6B symbol
  //----------------------------------------------------------------------------
  always @ (b5 or k28 or disp_in_i)
  begin
    if (k28 == 1'b1) begin
      pdes6                   <= !(disp_in_i);
    end

    else begin
      case (b5)
        5'b00000 : pdes6 <= !(disp_in_i);
        5'b00001 : pdes6 <= !(disp_in_i);
        5'b00010 : pdes6 <= !(disp_in_i);
        5'b00011 : pdes6 <= disp_in_i;
        5'b00100 : pdes6 <= !(disp_in_i);
        5'b00101 : pdes6 <= disp_in_i;
        5'b00110 : pdes6 <= disp_in_i;
        5'b00111 : pdes6 <= disp_in_i;

        5'b01000 : pdes6 <= !(disp_in_i);
        5'b01001 : pdes6 <= disp_in_i;
        5'b01010 : pdes6 <= disp_in_i;
        5'b01011 : pdes6 <= disp_in_i;
        5'b01100 : pdes6 <= disp_in_i;
        5'b01101 : pdes6 <= disp_in_i;
        5'b01110 : pdes6 <= disp_in_i;
        5'b01111 : pdes6 <= !(disp_in_i);

        5'b10000 : pdes6 <= !(disp_in_i);
        5'b10001 : pdes6 <= disp_in_i;
        5'b10010 : pdes6 <= disp_in_i;
        5'b10011 : pdes6 <= disp_in_i;
        5'b10100 : pdes6 <= disp_in_i;
        5'b10101 : pdes6 <= disp_in_i;
        5'b10110 : pdes6 <= disp_in_i;
        5'b10111 : pdes6 <= !(disp_in_i);

        5'b11000 : pdes6 <= !(disp_in_i);
        5'b11001 : pdes6 <= disp_in_i;
        5'b11010 : pdes6 <= disp_in_i;
        5'b11011 : pdes6 <= !(disp_in_i);
        5'b11100 : pdes6 <= disp_in_i;
        5'b11101 : pdes6 <= !(disp_in_i);
        5'b11110 : pdes6 <= !(disp_in_i);
        5'b11111 : pdes6 <= !(disp_in_i);
        default  : pdes6 <= disp_in_i;
      endcase
    end
  end



  //----------------------------------------------------------------------------
  // Do the 3B/4B conversion (calculate the 4b symbol)
  //----------------------------------------------------------------------------
  always @ (b3 or k28 or pdes6 or a7)
  begin
    case (b3)

      3'b000 : begin                    // D/K.x.0
        if (pdes6 == 1'b1) begin
          b4         <= 4'b0010;
        end
        else begin
          b4         <= 4'b1101;
        end
      end

      3'b001 : begin                    // D/K.x.1
        if ((k28 == 1'b1) & (pdes6 == 1'b0)) begin
          b4         <= 4'b0110;
        end
        else begin
          b4         <= 4'b1001;
        end
      end

      3'b010 : begin                    // D/K.x.2
        if ((k28 == 1'b1) & (pdes6 == 1'b0)) begin
          b4         <= 4'b0101;
        end
        else begin
          b4         <= 4'b1010;
        end
      end

      3'b011 : begin                    // D/K.x.3
        if (pdes6 == 1'b0) begin
          b4         <= 4'b0011;
        end
        else begin
          b4         <= 4'b1100;
        end
      end

      3'b100 : begin                    // D/K.x.4
        if (pdes6 == 1'b1) begin
          b4         <= 4'b0100;
        end
        else begin
          b4         <= 4'b1011;
        end
      end

      3'b101 : begin                    // D/K.x.5
        if ((k28 == 1'b1) & (pdes6 == 1'b0)) begin
          b4         <= 4'b1010;
        end
        else begin
          b4         <= 4'b0101;
        end
      end

      3'b110 : begin                    // D/K.x.6
        if ((k28 == 1'b1) & (pdes6 == 1'b0)) begin
          b4         <= 4'b1001;
        end
        else begin
          b4         <= 4'b0110;
        end
      end

      3'b111 : begin                    // D.x.P7
        if (a7 != 1'b1) begin
          if (pdes6 == 1'b0) begin
            b4       <= 4'b0111;
          end
          else begin
            b4       <= 4'b1000;
          end
	end
        else begin                           // D/K.y.A7
          if (pdes6 == 1'b0) begin
            b4       <= 4'b1110;
          end
          else begin
            b4       <= 4'b0001;
          end
        end
      end

      default : begin
        b4       <= 4'b0001;
      end

    endcase
  end



  //----------------------------------------------------------------------------
  // Calculate the running disparity -after- the 4B symbol
  //----------------------------------------------------------------------------
 always @ (b3 or pdes6)
 begin
    case (b3)
      3'b000 : pdes4 <= !(pdes6);
      3'b001 : pdes4 <= pdes6;
      3'b010 : pdes4 <= pdes6;
      3'b011 : pdes4 <= pdes6;
      3'b100 : pdes4 <= !(pdes6);
      3'b101 : pdes4 <= pdes6;
      3'b110 : pdes4 <= pdes6;
      3'b111 : pdes4 <= !(pdes6);
      default: pdes4 <= pdes6;
    endcase
  end



  //----------------------------------------------------------------------------
  // Update the running disparity on the clock
  //----------------------------------------------------------------------------

  generate if ((C_HAS_FORCE_CODE == 1) & (C_FORCE_CODE_DISP == 1)) begin : gdr

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        if (force_code == 1'b1) begin
          disp_run <= 1'b1;
        end
        else begin
          disp_run <= pdes4;
        end
      end
    end

  end
  endgenerate


  generate if ((C_HAS_FORCE_CODE == 1) & (C_FORCE_CODE_DISP == 0)) begin : gdc

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        if (force_code == 1'b1) begin
          disp_run <= 1'b0;
        end
        else begin
          disp_run <= pdes4;
        end
      end
    end

  end
  endgenerate


  generate if (C_HAS_FORCE_CODE == 0) begin : ngdb

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        disp_run <= pdes4;
      end
    end

  end
  endgenerate



  //----------------------------------------------------------------------------
  // Override the internal running disparity if force_disp=1
  //----------------------------------------------------------------------------

  generate if (C_HAS_DISP_IN == 1) begin : gpd

    always @ (force_disp or disp_in or disp_run)
    begin
      if (force_disp == 1'b1) begin
        disp_in_i <= disp_in;
      end
      else begin
        disp_in_i <= disp_run;
      end
    end

  end
  endgenerate


  generate if (C_HAS_DISP_IN == 0) begin : ngpd
    always @ (disp_run)
    begin
      disp_in_i <= disp_run;
    end
  end
  endgenerate



  //----------------------------------------------------------------------------
  // Update the data output on the clock
  //----------------------------------------------------------------------------
  always @ (posedge clk)
  begin
    if (ce == 1'b1) begin
      if (force_code == 1'b1) begin
        dout <= C_FORCE_CODE_VAL;
      end
      else begin
        dout <= {b4, b6};
      end
    end
  end



  //----------------------------------------------------------------------------
  // Update the nd output on the clock
  //----------------------------------------------------------------------------
  generate if (C_HAS_ND == 1) begin : gnd

    always @ (posedge clk)
    begin
      if (force_code == 1'b1) begin
        nd <= 1'b0;
      end
      else begin
        nd <= ce;
      end
    end

  end
  endgenerate

  generate if (C_HAS_ND == 0) begin : ngnd
    always @ (posedge clk)
    begin
      nd <= 1'b0;
    end
  end
  endgenerate


endmodule

