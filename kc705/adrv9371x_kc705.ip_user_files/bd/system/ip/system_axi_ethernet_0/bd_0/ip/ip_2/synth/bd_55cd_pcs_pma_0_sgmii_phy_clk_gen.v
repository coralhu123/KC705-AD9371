//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_sgmii_phy_clk_gen.v
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
// Description:   This module takes in a 125 MHz clock from the MB and builds all the clocks
// neccessary for GPIO-SGMII.
//------------------------------------------------------------------------------


`timescale 1ns / 1ps
module bd_55cd_pcs_pma_0_sgmii_phy_clk_gen(
    input  wire refclk625_p,
    input  wire refclk625_n,
    input  wire rst,
    output wire o_clk625,
    output wire o_clk208,
    output wire o_clk104,
    output wire o_clk125,

    output wire o_mmcm_locked
    );
    
wire clk625_i;
wire clk208_i;
wire clk104_i;
wire o_clk208_i;
wire o_clk104_i;
wire idelayctrl_rdy;
wire clk125_i;
wire clk625_in;
wire o_clk625_i;
wire o_clk125_i;
wire o_mmcm_locked_i;
wire clk_fb, clk_fb_i;
// Global Clock Inputs
IBUFGDS #(
   .DIFF_TERM("FALSE"),
   .IBUF_LOW_PWR("FALSE")	
) clk625_ibufg (
   .O   (clk625_in),  
   .I   (refclk625_p),  
   .IB  (refclk625_n) 
);   


MMCME2_BASE #(
      .BANDWIDTH("HIGH"),   
      .CLKFBOUT_MULT_F(2.0),   
      .CLKIN1_PERIOD(1.6),    
      .DIVCLK_DIVIDE(2),         
      .CLKFBOUT_PHASE(0.0),    
      // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
		.CLKOUT0_DIVIDE_F(1.0), 
      .CLKOUT1_DIVIDE(3),
      .CLKOUT2_DIVIDE(6),
      .CLKOUT3_DIVIDE(5),
      .CLKOUT4_DIVIDE(1),
      .CLKOUT5_DIVIDE(1),
      .CLKOUT6_DIVIDE(1),  
      // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
      .CLKOUT0_DUTY_CYCLE(0.5),
      .CLKOUT1_DUTY_CYCLE(0.5),
      .CLKOUT2_DUTY_CYCLE(0.5),
      .CLKOUT3_DUTY_CYCLE(0.5),
      .CLKOUT4_DUTY_CYCLE(0.5),
      .CLKOUT5_DUTY_CYCLE(0.5),
      .CLKOUT6_DUTY_CYCLE(0.5),
      // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
      .CLKOUT0_PHASE(0.0),
      .CLKOUT1_PHASE(0.0),
      .CLKOUT2_PHASE(0.0),
      .CLKOUT3_PHASE(0.0),
      .CLKOUT4_PHASE(0.0),
      .CLKOUT5_PHASE(0.0),
      .CLKOUT6_PHASE(0.0),
      .CLKOUT4_CASCADE("FALSE"), 
      .REF_JITTER1(0.0),         
      .STARTUP_WAIT("FALSE")     
   )
   sgmii_phy_mmcm_i (
      .CLKOUT0(clk625_i),  
      .CLKOUT0B(),  
      .CLKOUT1(clk208_i),    
      .CLKOUT1B(),  
      .CLKOUT2(clk104_i),    
      .CLKOUT2B(),  
      .CLKOUT3(clk125_i),    
      .CLKOUT3B(),  
      .CLKOUT4(),   
      .CLKOUT5(),
      .CLKOUT6(),   
      .CLKFBOUT(clk_fb_i),   
      .CLKFBOUTB(), 
      .LOCKED(o_mmcm_locked_i),       
      .CLKIN1(clk625_in),
      .PWRDWN(1'b0),      
      .RST(rst),            
      .CLKFBIN(clk_fb)     
   );

  // Output buffering
  //-----------------------------------
BUFG clkf_buf
(.O (clk_fb),
 .I (clk_fb_i));

BUFG clk625_buf
(.O (o_clk625_i),
 .I (clk625_i));


BUFG clk208_buf
(.O (o_clk208_i),
 .I (clk208_i));

BUFG clk104_buf
(.O (o_clk104_i),
 .I (clk104_i));

assign o_clk208 = o_clk208_i;
assign o_clk104 = o_clk104_i;

BUFG clk125_buf
(.O (o_clk125_i),
 .I (clk125_i));

assign o_clk625 = o_clk625_i;
assign o_clk125 = o_clk125_i;
assign o_mmcm_locked = o_mmcm_locked_i & idelayctrl_rdy;


bd_55cd_pcs_pma_0_idelayctrl core_idelayctrl_i 
 (
   .refclk                      (o_clk208_i),
   .rst                         (~o_mmcm_locked_i),
   .rdy                         (idelayctrl_rdy)
 );

endmodule
