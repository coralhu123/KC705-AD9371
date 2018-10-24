//------------------------------------------------------------------------------
// File        : bd_55cd_pcs_pma_0_decode_8b10b_lut_base.v
// Author      : Xilinx Inc.
//------------------------------------------------------------------------------
// Description : this file has been translated into Verilog from the VHDL file
//               of the same name taken from Xilinx Application Note XAPP1112.
//
//               The module implements a LUT based 8b10b decoding function
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

module bd_55cd_pcs_pma_0_decode_8b10b_lut_base #
  (
    parameter        C_HAS_CODE_ERR   = 0,
    parameter        C_HAS_DISP_ERR   = 0,
    parameter        C_HAS_DISP_IN    = 0,
    parameter        C_HAS_ND         = 0,
    parameter        C_HAS_SYM_DISP   = 0,
    parameter        C_HAS_RUN_DISP   = 0,
    parameter        C_SINIT_DOUT     = 8'b00000000,
    parameter        C_SINIT_KOUT     = 0,
    parameter        C_SINIT_RUN_DISP = 0
  )

  (
    input            clk,
    input      [9:0] din,
    output     [7:0] dout,
    output           kout,

    input            ce,
    input            disp_in,
    input            sinit,
    output reg       code_err,
    output reg       disp_err,
    output reg       nd,
    output           run_disp,
    output     [1:0] sym_disp
  );



  //---------------------------------------------------------------------------
  // Type Declarations
  //---------------------------------------------------------------------------

  // In the VHDL description, the following parameters are defined to be states
  // within a "disparity" type declaration.
  parameter  neg       = 3'b001;
  parameter  pos       = 3'b010;
  parameter  zero      = 3'b000;
  parameter  invalid   = 3'b111;
  parameter  specneg   = 3'b110;
  parameter  specpos   = 3'b101;

  // The states defined by the parameters above can be held by the following
  // signals
  reg  [2:0] b6_disp;
  reg  [2:0] b4_disp;



  //---------------------------------------------------------------------------
  // Constant Declarations
  //---------------------------------------------------------------------------
  // set the default decoder output for invalid codes
  parameter  DEFAULTB5 = 5'b11111;
  parameter  DEFAULTB3 = 3'b111;



  //----------------------------------------------------------------------------
  // Signal Declarations
  //----------------------------------------------------------------------------

  reg  [7:0] dout_i;
  reg        kout_i;
  reg        run_disp_i;
  reg  [1:0] sym_disp_i;
  wire       code_err_i;

  reg  [3:0] symrd;

  reg  [4:0] b5;
  reg  [7:5] b3;
  wire       k;
  wire       k28;

  // Signals for calculating code_error
  reg        p04;
  reg        p13;
  reg        p22;
  reg        p31;
  reg        p40;
  wire       fghj;
  wire       eifgh;
  wire       sk28;
  wire       e_i;
  wire       ighj;
  wire       i_ghj;
  wire       kx7;
  wire       invr6;
  wire       pdbr6;
  wire       ndbr6;
  wire       pdur6;
  wire       pdbr4;
  wire       ndrr4;
  wire       ndur6;
  wire       ndbr4;
  wire       pdrr4;
  wire       fgh;
  wire       invby_a;
  wire       invby_b;
  wire       invby_c;
  wire       invby_d;
  wire       invby_e;
  wire       invby_f;
  wire       invby_g;
  wire       invby_h;



  //----------------------------------------------------------------------------
  // Create Alias'
  //----------------------------------------------------------------------------

  wire [5:0] b6; //iedcba
  wire [3:0] b4; //jhgf
  wire       a;
  wire       b;
  wire       c;
  wire       d;
  wire       e;
  wire       i;
  wire       f;
  wire       g;
  wire       h;
  wire       j;

  assign b6  = din[5:0]; //iedcba
  assign b4  = din[9:6]; //jhgf
  assign a   = din[0];
  assign b   = din[1];
  assign c   = din[2];
  assign d   = din[3];
  assign e   = din[4];
  assign i   = din[5];
  assign f   = din[6];
  assign g   = din[7];
  assign h   = din[8];
  assign j   = din[9];



  //----------------------------------------------------------------------------
  // Set all initial values
  //----------------------------------------------------------------------------

  initial
  begin : initial_values

    // Module outputs registers
    code_err          <= 1'b0;
    disp_err          <= 1'b0;
    nd                <= 1'b0;

    // Internal signals registers
    dout_i            <= C_SINIT_DOUT;
    kout_i            <= C_SINIT_KOUT;
    run_disp_i        <= C_SINIT_RUN_DISP;
    sym_disp_i        <= C_SINIT_RUN_DISP;
    b6_disp           <= zero;
    b4_disp           <= zero;
    b5                <= DEFAULTB5;
    b3                <= DEFAULTB3;
    p04               <= 1'b0;
    p13               <= 1'b0;
    p22               <= 1'b0;
    p31               <= 1'b0;
    p40               <= 1'b0;

  end



  //----------------------------------------------------------------------------
  // Conditionally tie optional ports to internal signals
  //----------------------------------------------------------------------------

  // New Data
  generate if (C_HAS_ND == 1) begin : gnd

    // Update the New Data output
    always @ (posedge clk)
    begin
      if (ce == 1'b1 & sinit == 1'b1) begin
        if (sinit == 1'b1) begin
          nd <= 1'b0;
        end
        else begin
          nd <= ce;
        end
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


  // Code Error
  generate if (C_HAS_CODE_ERR == 1) begin : gcerr

    // Update code_err output
    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        if (sinit == 1'b1) begin
          code_err <= 1'b0;
        end
        else begin
          code_err <= code_err_i;
        end
      end
    end

  end
  endgenerate



// The following code uses notation and logic from the 8b/10b specification

  //----------------------------------------------------------------------------
  // Set the value of k28 signal
  //----------------------------------------------------------------------------
  assign k28 = !((c | d | e | i) | !(h ^ j)) ;



  //----------------------------------------------------------------------------
  // Do the 6B/5B conversion
  //----------------------------------------------------------------------------

  always @ (b6)
  begin
    case (b6)
      6'b000110 : b5 <= 5'b00000 ;   //D.0
      6'b111001 : b5 <= 5'b00000 ;   //D.0
      6'b010001 : b5 <= 5'b00001 ;   //D.1
      6'b101110 : b5 <= 5'b00001 ;   //D.1
      6'b010010 : b5 <= 5'b00010 ;   //D.2
      6'b101101 : b5 <= 5'b00010 ;   //D.2
      6'b100011 : b5 <= 5'b00011 ;   //D.3
      6'b010100 : b5 <= 5'b00100 ;   //D.4
      6'b101011 : b5 <= 5'b00100 ;   //D.4
      6'b100101 : b5 <= 5'b00101 ;   //D.5
      6'b100110 : b5 <= 5'b00110 ;   //D.6
      6'b000111 : b5 <= 5'b00111 ;   //D.7
      6'b111000 : b5 <= 5'b00111 ;   //D.7
      6'b011000 : b5 <= 5'b01000 ;   //D.8
      6'b100111 : b5 <= 5'b01000 ;   //D.8
      6'b101001 : b5 <= 5'b01001 ;   //D.9
      6'b101010 : b5 <= 5'b01010 ;   //D.10
      6'b001011 : b5 <= 5'b01011 ;   //D.11
      6'b101100 : b5 <= 5'b01100 ;   //D.12
      6'b001101 : b5 <= 5'b01101 ;   //D.13
      6'b001110 : b5 <= 5'b01110 ;   //D.14
      6'b000101 : b5 <= 5'b01111 ;   //D.15
      6'b111010 : b5 <= 5'b01111 ;   //D.15

      6'b110110 : b5 <= 5'b10000 ;   //D.16
      6'b001001 : b5 <= 5'b10000 ;   //D.16
      6'b110001 : b5 <= 5'b10001 ;   //D.17
      6'b110010 : b5 <= 5'b10010 ;   //D.18
      6'b010011 : b5 <= 5'b10011 ;   //D.19
      6'b110100 : b5 <= 5'b10100 ;   //D.20
      6'b010101 : b5 <= 5'b10101 ;   //D.21
      6'b010110 : b5 <= 5'b10110 ;   //D.22
      6'b010111 : b5 <= 5'b10111 ;   //D/K.23
      6'b101000 : b5 <= 5'b10111 ;   //D/K.23
      6'b001100 : b5 <= 5'b11000 ;   //D.24
      6'b110011 : b5 <= 5'b11000 ;   //D.24
      6'b011001 : b5 <= 5'b11001 ;   //D.25
      6'b011010 : b5 <= 5'b11010 ;   //D.26
      6'b011011 : b5 <= 5'b11011 ;   //D/K.27
      6'b100100 : b5 <= 5'b11011 ;   //D/K.27
      6'b011100 : b5 <= 5'b11100 ;   //D.28
      6'b111100 : b5 <= 5'b11100 ;   //K.28
      6'b000011 : b5 <= 5'b11100 ;   //K.28
      6'b011101 : b5 <= 5'b11101 ;   //D/K.29
      6'b100010 : b5 <= 5'b11101 ;   //D/K.29
      6'b011110 : b5 <= 5'b11110 ;   //D.30
      6'b100001 : b5 <= 5'b11110 ;   //D.30
      6'b110101 : b5 <= 5'b11111 ;   //D.31
      6'b001010 : b5 <= 5'b11111 ;   //D.31
      default   : b5 <= DEFAULTB5 ; //CODE VIOLATION!
    endcase
  end



  //----------------------------------------------------------------------------
  // Disparity for the 6B block
  //----------------------------------------------------------------------------
  always @ (b6)
  begin
    case (b6)
      6'b000000 : b6_disp <= neg ;    //invalid ;
      6'b000001 : b6_disp <= neg ;    //invalid ;
      6'b000010 : b6_disp <= neg ;    //invalid ;
      6'b000011 : b6_disp <= neg ;    //K.28
      6'b000100 : b6_disp <= neg ;    //invalid ;
      6'b000101 : b6_disp <= neg ;    //D.15
      6'b000110 : b6_disp <= neg ;    //D.0
      6'b000111 : b6_disp <= specneg; //D.7
      6'b001000 : b6_disp <= neg ;    //invalid ;
      6'b001001 : b6_disp <= neg ;    //D.16
      6'b001010 : b6_disp <= neg ;    //D.31
      6'b001011 : b6_disp <= zero ;   //D.11
      6'b001100 : b6_disp <= neg ;    //D.24
      6'b001101 : b6_disp <= zero ;   //D.13
      6'b001110 : b6_disp <= zero ;   //D.14
      6'b001111 : b6_disp <= pos ;    //invalid ;

      6'b010000 : b6_disp <= neg ;    //invalid ;
      6'b010001 : b6_disp <= neg ;    //D.1
      6'b010010 : b6_disp <= neg ;    //D.2
      6'b010011 : b6_disp <= zero ;   //D.19
      6'b010100 : b6_disp <= neg ;    //D.4
      6'b010101 : b6_disp <= zero ;   //D.21
      6'b010110 : b6_disp <= zero ;   //D.22
      6'b010111 : b6_disp <= pos ;    //D.23
      6'b011000 : b6_disp <= neg ;    //D.8
      6'b011001 : b6_disp <= zero ;   //D.25
      6'b011010 : b6_disp <= zero ;   //D.26
      6'b011011 : b6_disp <= pos ;    //D.27
      6'b011100 : b6_disp <= zero ;   //D.28
      6'b011101 : b6_disp <= pos ;    //D.29
      6'b011110 : b6_disp <= pos ;    //D.30
      6'b011111 : b6_disp <= pos ;    //invalid ;

      6'b100000 : b6_disp <= neg ;    //invalid ;
      6'b100001 : b6_disp <= neg ;    //D.30 ;
      6'b100010 : b6_disp <= neg ;    //D.29 ;
      6'b100011 : b6_disp <= zero ;   //D.3
      6'b100100 : b6_disp <= neg ;    //D.27
      6'b100101 : b6_disp <= zero ;   //D.5
      6'b100110 : b6_disp <= zero ;   //D.6
      6'b100111 : b6_disp <= pos ;    //D.8
      6'b101000 : b6_disp <= neg ;    //D.23
      6'b101001 : b6_disp <= zero ;   //D.9
      6'b101010 : b6_disp <= zero ;   //D.10
      6'b101011 : b6_disp <= pos ;    //D.4
      6'b101100 : b6_disp <= zero ;   //D.12
      6'b101101 : b6_disp <= pos ;    //D.2
      6'b101110 : b6_disp <= pos ;    //D.1
      6'b101111 : b6_disp <= pos ;    //invalid ;

      6'b110000 : b6_disp <= neg ;    //invalid ;
      6'b110001 : b6_disp <= zero ;   //D.17
      6'b110010 : b6_disp <= zero ;   //D.18
      6'b110011 : b6_disp <= pos ;    //D.24
      6'b110100 : b6_disp <= zero ;   //D.20
      6'b110101 : b6_disp <= pos ;    //D.31
      6'b110110 : b6_disp <= pos ;    //D.16
      6'b110111 : b6_disp <= pos ;    //invalid ;
      6'b111000 : b6_disp <= specpos; //D.7
      6'b111001 : b6_disp <= pos ;    //D.0
      6'b111010 : b6_disp <= pos ;    //D.15
      6'b111011 : b6_disp <= pos ;    //invalid ;
      6'b111100 : b6_disp <= pos ;    //K.28
      6'b111101 : b6_disp <= pos ;    //invalid ;
      6'b111110 : b6_disp <= pos ;    //invalid ;
      6'b111111 : b6_disp <= pos ;    //invalid ;

      default   : b6_disp <= zero ;
    endcase
  end



  //----------------------------------------------------------------------------
  // Do the 3B/4B conversion
  //----------------------------------------------------------------------------

  always @ (b4 or k28)
  begin
    case (b4)
      4'b0010  : b3 <= 3'b000 ;      //D/K.x.0
      4'b1101  : b3 <= 3'b000 ;      //D/K.x.0

      4'b1001  : begin
        if (k28 == 1'b0) begin
          b3        <= 3'b001 ;      //D/K.x.1
        end
        else begin
         b3         <= 3'b110 ;      //K28.6
        end
      end

      4'b0110  : begin
        if (k28 == 1'b1) begin
          b3        <= 3'b001 ;      //D/K.x.1
        end
        else begin
         b3         <= 3'b110 ;      //K28.6
        end
      end

      4'b1010  : begin
        if (k28 == 1'b0) begin
          b3        <= 3'b010 ;      //D/K.x.1
        end
        else begin
         b3         <= 3'b101 ;      //K28.6
        end
      end

      4'b0101  : begin
        if (k28 == 1'b1) begin
          b3        <= 3'b010 ;      //D/K.x.1
        end
        else begin
         b3         <= 3'b101 ;      //K28.6
        end
      end

      4'b0011  : b3 <= 3'b011 ;      //D/K.x.3
      4'b1100  : b3 <= 3'b011 ;      //D/K.x.3
      4'b0100  : b3 <= 3'b100 ;      //D/K.x.4
      4'b1011  : b3 <= 3'b100 ;      //D/K.x.4
      4'b0111  : b3 <= 3'b111 ;      //D.x.7
      4'b1000  : b3 <= 3'b111 ;      //D.x.7
      4'b1110  : b3 <= 3'b111 ;      //D/K.x.7
      4'b0001  : b3 <= 3'b111 ;      //D/K.x.7
      default  : b3 <= DEFAULTB3 ;  //CODE VIOLATION!
    endcase
  end



  //----------------------------------------------------------------------------
  // Disparity for the 4B block
  //----------------------------------------------------------------------------
  always @ (b4)
  begin
    case (b4)
      4'b0000 : b4_disp <= neg ;
      4'b0001 : b4_disp <= neg ;
      4'b0010 : b4_disp <= neg ;
      4'b0011 : b4_disp <= specneg;
      4'b0100 : b4_disp <= neg ;
      4'b0101 : b4_disp <= zero ;
      4'b0110 : b4_disp <= zero ;
      4'b0111 : b4_disp <= pos ;
      4'b1000 : b4_disp <= neg ;
      4'b1001 : b4_disp <= zero ;
      4'b1010 : b4_disp <= zero ;
      4'b1011 : b4_disp <= pos ;
      4'b1100 : b4_disp <= specpos;
      4'b1101 : b4_disp <= pos ;
      4'b1110 : b4_disp <= pos ;
      4'b1111 : b4_disp <= pos ;
      default : b4_disp <= zero ;
    endcase
  end



  //----------------------------------------------------------------------------
  // Special Code for calculating symrd[3:0]
  //
  //    +---------+---------+-------+------------+-------+------------+
  //    |         |         |                  symrd                  |
  //    |         |         |   + Start Disp     |   - Start Disp     |
  //    | b6_disp | b4_disp | Error | NewRunDisp | Error | NewRunDisp |
  //    +---------+---------+-------+------------+-------+------------+
  //    |    +    |    +    |   1   |     1      |   1   |      1     |
  //    |    +    |    -    |   1   |     0      |   0   |      0     |
  //    |    +    |    0    |   1   |     1      |   0   |      1     |
  //    |    -    |    +    |   0   |     1      |   1   |      1     |
  //    |    -    |    -    |   1   |     0      |   1   |      0     |
  //    |    -    |    0    |   0   |     0      |   1   |      0     |
  //    |    0    |    +    |   1   |     1      |   0   |      1     |
  //    |    0    |    -    |   0   |     0      |   1   |      0     |
  //    |    0    |    0    |   0   |     1      |   0   |      0     |
  //    +---------+---------+-------+------------+-------+------------+
  //
  //----------------------------------------------------------------------------

  always @ (b4_disp or b6_disp)
  begin
    case (b6_disp)
      pos : begin
        case (b4_disp)
          pos     : symrd[3:0] <= 4'b1111;
          neg     : symrd[3:0] <= 4'b1000;
          specpos : symrd[3:0] <= 4'b1101; //Ex: D1.3-
          specneg : symrd[3:0] <= 4'b1000;
          zero    : symrd[3:0] <= 4'b1101;
          default : symrd[3:0] <= 4'bXXXX;
        endcase
      end

      neg : begin
        case (b4_disp)
          pos     : symrd[3:0] <= 4'b0111;
          neg     : symrd[3:0] <= 4'b1010;
          specpos : symrd[3:0] <= 4'b0111;
          specneg : symrd[3:0] <= 4'b0010; //Ex: D1.3+
          zero    : symrd[3:0] <= 4'b0010;
          default : symrd[3:0] <= 4'bXXXX;
        endcase
      end

      zero : begin
        case (b4_disp)
          pos     : symrd[3:0] <= 4'b1101;
          neg     : symrd[3:0] <= 4'b0010;
          specpos : symrd[3:0] <= 4'b0111; //Ex: D11.3+
          specneg : symrd[3:0] <= 4'b1000; //Ex: D11.3-
          zero    : symrd[3:0] <= 4'b0100;
          default : symrd[3:0] <= 4'bXXXX;
        endcase
      end

      specpos : begin
        case (b4_disp)
          pos     : symrd[3:0] <= 4'b1111;
          neg     : symrd[3:0] <= 4'b0010; //Ex: D7.0+
          specpos : symrd[3:0] <= 4'b0111; //Ex: D7.3+
          specneg : symrd[3:0] <= 4'b1010;
          zero    : symrd[3:0] <= 4'b0111; //Ex: D7.5+
          default : symrd[3:0] <= 4'bXXXX;
        endcase
      end

      specneg : begin
        case (b4_disp)
          pos     : symrd[3:0] <= 4'b1101; //Ex: D7.0-
          neg     : symrd[3:0] <= 4'b1010;
          specpos : symrd[3:0] <= 4'b1111;
          specneg : symrd[3:0] <= 4'b1000; //Ex: D7.3-
          zero    : symrd[3:0] <= 4'b1000; //Ex: D7.5-
          default : symrd[3:0] <= 4'bXXXX;
        endcase
      end

      default     : symrd[3:0] <= 4'b0000;

    endcase
  end



  generate if ((C_HAS_DISP_IN == 1) & (C_HAS_RUN_DISP == 1)) begin : grdi

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        if (sinit == 1'b1) begin
          run_disp_i <= C_SINIT_RUN_DISP;
        end
        else if (disp_in == 1'b1) begin
          run_disp_i <= symrd[2];
        end
        else begin
          run_disp_i <= symrd[0];
        end
      end
    end

  end
  endgenerate



  // the new running disparity is calculated from the old running disparity
  //  and the disparity of the 10-bit word.  run_disp is also used to
  //  calculate disp_err and sym_disp when disp_in is not present
  generate if (C_HAS_DISP_IN == 0 & (C_HAS_RUN_DISP == 1 |
                                     C_HAS_DISP_ERR == 1 |
                                     C_HAS_SYM_DISP == 1)) begin : grdni

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        if (sinit == 1'b1) begin
          run_disp_i <= C_SINIT_RUN_DISP;
        end
        else if (run_disp_i == 1'b1) begin
          run_disp_i <= symrd[2];
        end
        else begin
          run_disp_i <= symrd[0];
        end
      end
    end

  end
  endgenerate



  generate if ((C_HAS_DISP_IN == 1) & (C_HAS_DISP_ERR == 1)) begin : gdei

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        if (sinit == 1'b1) begin
          disp_err <= 1'b0;
        end
        else if (disp_in == 1'b1) begin
          disp_err <= symrd[3];
        end
        else begin
          disp_err <= symrd[1];
        end
      end
    end

  end
  endgenerate



  generate if ((C_HAS_DISP_IN == 0) & (C_HAS_DISP_ERR == 1)) begin : gdeni

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        if (sinit == 1'b1) begin
          disp_err <= 1'b0;
        end
        else if (run_disp_i == 1'b1) begin
          disp_err <= symrd[3];
        end
        else begin
          disp_err <= symrd[1];
        end
      end
    end

  end
  endgenerate



  generate if ((C_HAS_DISP_IN == 1) & (C_HAS_SYM_DISP == 1)) begin : gsdi

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        if (sinit == 1'b1) begin
          sym_disp_i <= C_SINIT_RUN_DISP;
        end
        else if (disp_in == 1'b1) begin
          sym_disp_i <= symrd[3:2];
        end
        else begin
          sym_disp_i <= symrd[1:0];
        end
      end
    end

  end
  endgenerate



  generate if ((C_HAS_DISP_IN == 0) & (C_HAS_SYM_DISP == 1)) begin : gsdni

    always @ (posedge clk)
    begin
      if (ce == 1'b1) begin
        if (sinit == 1'b1) begin
          sym_disp_i <= C_SINIT_RUN_DISP;
        end
        else if (run_disp_i == 1'b1) begin
          sym_disp_i <= symrd[3:2];
        end
        else begin
          sym_disp_i <= symrd[1:0];
        end
      end
    end

  end
  endgenerate

  generate if (C_HAS_SYM_DISP == 0) begin : ngsdn
    always @ (posedge clk)
    begin
         sym_disp_i <= 2'b0;
    end
  end
  endgenerate


  // map internal signals to outputs
  assign run_disp = run_disp_i;
  assign sym_disp = sym_disp_i;



  //----------------------------------------------------------------------------
  // Decode the K codes
  //----------------------------------------------------------------------------
   assign k = (c & d & e & i) | !(c | d | e | i) |
              ((e ^ i) & ((i & g & h & j) | !(i | g | h | j))) ;



  //----------------------------------------------------------------------------
  // Update the outputs on the clock
  //----------------------------------------------------------------------------

  // Update dout output
  always @ (posedge clk)
  begin
    if (ce == 1'b1) begin
      if (sinit == 1'b1) begin
        dout_i <= C_SINIT_DOUT;
      end
      else begin
        dout_i <= {b3, b5};
      end
    end
  end
  assign dout = dout_i;


  // Update kout output
  always @ (posedge clk)
  begin
    if (ce == 1'b1) begin
      if (sinit == 1'b1) begin
        kout_i <= C_SINIT_KOUT;
      end
      else begin
        kout_i <= k;
      end
    end
  end
  assign kout = kout_i;



  //----------------------------------------------------------------------------
  // Calculate code_error (uses notation from IBM spec)
  //----------------------------------------------------------------------------
  always @ (din)
  begin
    case (din[3:0])
      4'b0000 : begin
        p04 <= 1'b1;
        p13 <= 1'b0;
        p22 <= 1'b0;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b0001 : begin
        p04 <= 1'b0;
        p13 <= 1'b1;
        p22 <= 1'b0;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b0010 : begin
        p04 <= 1'b0;
        p13 <= 1'b1;
        p22 <= 1'b0;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b0011 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b1;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b0100 : begin
        p04 <= 1'b0;
        p13 <= 1'b1;
        p22 <= 1'b0;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b0101 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b1;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b0110 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b1;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b0111 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b0;
        p31 <= 1'b1;
        p40 <= 1'b0;
      end

      4'b1000 : begin
        p04 <= 1'b0;
        p13 <= 1'b1;
        p22 <= 1'b0;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b1001 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b1;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b1010 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b1;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b1011 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b0;
        p31 <= 1'b1;
        p40 <= 1'b0;
      end

      4'b1100 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b1;
        p31 <= 1'b0;
        p40 <= 1'b0;
      end

      4'b1101 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b0;
        p31 <= 1'b1;
        p40 <= 1'b0;
      end

      4'b1110 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b0;
        p31 <= 1'b1;
        p40 <= 1'b0;
      end

      4'b1111 : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b0;
        p31 <= 1'b0;
        p40 <= 1'b1;
      end

      default : begin
        p04 <= 1'b0;
        p13 <= 1'b0;
        p22 <= 1'b0;
        p31 <= 1'b0;
        p40 <= 1'b1;
      end

    endcase
  end



  assign fghj    = (f & g & h & j) | (!f & !g & !h & !j);
  assign eifgh   = (e & i & f & g & h) | (!e & !i & !f & !g
                                          & !h);
  assign sk28    = (c & d & e & i) | (!c & !d & !e & !i);
  assign e_i     = (e & !i) | (!e & i);
  assign ighj    = (i & g & h & j) | (!i & !g & !h & !j);
  assign i_ghj   = (!i & g & h & j) | (i & !g & !h & !j);
  assign kx7     = e_i & ighj;
  assign invr6   = p40 | p04 | (p31 & e & i) | (p13 & !e & !i);
  assign pdbr6   = (p31 & (e | i)) | (p22 & e & i) | p40;
  assign ndbr6   = (p13 & (!e | !i)) | (p22 & !e & !i) | p04;
  assign pdur6   = pdbr6 | (d & e & i);
  assign pdbr4   = (f & g & (h | j)) | ((f | g) & h & j);
  assign ndrr4   = pdbr4 | (f & g);
  assign ndur6   = ndbr6 | (!d & !e & !i);
  assign fgh     = (f & g & h) | (!f & !g & !h);
  assign ndbr4   = (!f & !g & (!h | !j)) | ((!f | !g) &
                                             !h & !j);
  assign pdrr4   = ndbr4 | (!f & !g);

  assign invby_a = invr6;
  assign invby_b = fghj;
  assign invby_c = eifgh;
  assign invby_d = (!sk28 & i_ghj);
  assign invby_e = (sk28 & fgh);
  assign invby_f = (kx7 & !pdbr6 & !ndbr6);
  assign invby_g = (pdur6 & ndrr4);
  assign invby_h = (ndur6 & pdrr4);

  //Update internal code error signal
  assign code_err_i = invby_a | invby_b | invby_c | invby_d |
                      invby_e | invby_f | invby_g | invby_h;


endmodule


