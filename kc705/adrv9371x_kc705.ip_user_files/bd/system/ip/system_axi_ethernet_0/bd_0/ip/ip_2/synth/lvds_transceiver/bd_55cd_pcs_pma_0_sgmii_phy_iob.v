//------------------------------------------------------------------------------
// File       : bd_55cd_pcs_pma_0_sgmii_phy_iob.v
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
// Description:   This module contains the delay and capture primitives for SGMII 
//                serial communication over GPIO
//------------------------------------------------------------------------------

`timescale 1ns / 1ps
module bd_55cd_pcs_pma_0_sgmii_phy_iob(
   input    wire         clk625,
   input    wire         clk208,
   input    wire         clk104,
   input    wire         rst,  // 104
   input    wire         soft_tx_reset, //104
   input    wire         soft_rx_reset, //104
   input    wire         data_idly_rst,
   input    wire         mon_idly_rst,

// RX Data and Control
   input   wire  [4:0]   data_dly_val_in,
   output  wire  [4:0]   data_dly_val_out,
   input   wire  [4:0]   mon_dly_val_in,
   output  wire  [4:0]   mon_dly_val_out, 
 
   output  wire  [11:0]  o_rx_data_12b, 
   output  wire  [11:0]  o_rx_mon,
   
   output  wire  [5:0]   o_rx_data_6b,
   
   input   wire          pin_sgmii_rxp,  
   input   wire          pin_sgmii_rxn,
 
// TX Data
   input   wire [5:0]    tx_data_6b,

   output  wire          pin_sgmii_txp,  
   output  wire          pin_sgmii_txn
 
   );

// Wires and Regs
wire        rx_ser_data_delayed;
wire        rx_ser_mon_delayed;
wire        rx_ser_data;
wire        rx_ser_mon;
wire [11:0] rx_data_stg1_i;
reg  [11:0] rx_data_stg1;
reg  [11:0] rx_data_stg2;
wire [11:0] rx_mon_stg1_i;
reg  [11:0] rx_mon_stg1;
reg  [11:0] rx_mon_stg2;
wire        tx_ser_data;
wire        rst208_r ;
reg         rst208_r_d1 ;
reg         rst208_r_d2;
wire        soft_tx_reset_208      ;
wire        soft_rx_reset_208      ;
reg         soft_rx_reset_208_d1   ;
reg         soft_rx_reset_208_d2   ;
wire        tx_rst_208 ;
wire        rx_rst_208 ;

bd_55cd_pcs_pma_0_reset_sync reset_sync_rst_208 (
   .clk       (clk208),
   .reset_in  (rst),
   .reset_out (rst208_r)
);

bd_55cd_pcs_pma_0_reset_sync reset_sync_soft_tx_reset_208 (
   .clk       (clk208),
   .reset_in  (soft_tx_reset),
   .reset_out (soft_tx_reset_208)
);

bd_55cd_pcs_pma_0_reset_sync reset_sync_soft_rx_reset_208 (
   .clk       (clk208),
   .reset_in  (soft_rx_reset),
   .reset_out (soft_rx_reset_208)
);

assign tx_rst_208   = rst208_r || soft_tx_reset_208;
assign rx_rst_208   = rst208_r || soft_rx_reset_208;

IBUFDS_DIFF_OUT #(
   .DIFF_TERM("TRUE"),
	.IBUF_LOW_PWR("FALSE")
)
sgmii_rx_buf_i (
  .I  (pin_sgmii_rxp),
  .IB (pin_sgmii_rxn),
  .O  (rx_ser_data),
  .OB (rx_ser_mon)
);

     
// **************************************************************
// RX Data Chain - IOB -> IDELAY -> ISERDES -> Stg1 Flops
// **************************************************************      
// RX Data IDELAY 

reg data_dly_ce;
reg data_dly_inc;
reg [5:0] data_idly_actual_value;
reg [5:0] data_idly_requested_value;
//assign data_dly_val_out = data_idly_actual_value[4:0];
// Track requested IDELAY value
always @(posedge clk208) begin
   if (rx_rst_208)           data_idly_requested_value <= 6'd0;
   else if (data_idly_rst) data_idly_requested_value <= {1'b0, data_dly_val_in};
   else                    data_idly_requested_value <= data_idly_requested_value;
end
// Control IDELAY values via inc and ce
always @(posedge clk208) begin
   if (rx_rst_208) begin   
      data_idly_actual_value <= 6'd0;
      data_dly_ce  <= 1'b0;
      data_dly_inc <= 1'b0;
   end else if (data_idly_actual_value > data_idly_requested_value) begin // need to Decrement
      data_idly_actual_value <= data_idly_actual_value - 1'b1;
      data_dly_ce  <= 1'b1;
      data_dly_inc <= 1'b0;
   end else if (data_idly_actual_value < data_idly_requested_value) begin // Need to Increment
      data_idly_actual_value <= data_idly_actual_value + 1'b1;
      data_dly_ce  <= 1'b1;
      data_dly_inc <= 1'b1;
   end else begin // No change requested, hold current values                  
      data_idly_actual_value <= data_idly_actual_value;
      data_dly_ce  <= 1'b0;
      data_dly_inc <= 1'b0;
   end
end

//   (* IODELAY_GROUP = "<iodelay_group_name>" *) 
   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion ("TRUE"/"FALSE")  // This may be helpful for Async mode 
      .DELAY_SRC("IDATAIN"),           
      .HIGH_PERFORMANCE_MODE("TRUE"), 
      .IDELAY_TYPE("VARIABLE"),      
      .IDELAY_VALUE(0),              
      .REFCLK_FREQUENCY(200.0),      
      .SIGNAL_PATTERN("DATA"),       
      .PIPE_SEL("FALSE")             
   )
   rx_data_idly_i (
      .CNTVALUEOUT(data_dly_val_out), 
      .DATAOUT(rx_ser_data_delayed),         
      .C(clk208),                    
      .CE(data_dly_ce),                  
      .CINVCTRL(1'b0),       
      .CNTVALUEIN(5'd0),   
      .DATAIN(1'b0),          
      .IDATAIN(rx_ser_data), 
      .INC(data_dly_inc),             
      .REGRST(rx_rst_208),    
      .LD(rx_rst_208), 
      .LDPIPEEN(1'b0)        
   );

// RX Data ISERDES 
ISERDESE2 #(
      .DATA_RATE("DDR"),           
      .DATA_WIDTH(6),              
      .DYN_CLKDIV_INV_EN("FALSE"), // These will be handy for Async operation
      .DYN_CLK_INV_EN("FALSE"),    
      .INIT_Q1(1'b0),
      .INIT_Q2(1'b0),
      .INIT_Q3(1'b0),
      .INIT_Q4(1'b0),
      .INTERFACE_TYPE("NETWORKING"),
      .IOBDELAY("IFD"),           
      .NUM_CE(2),                 
      .OFB_USED("FALSE"),         
      .SERDES_MODE("MASTER"),     
      .SRVAL_Q1(1'b0),
      .SRVAL_Q2(1'b0),
      .SRVAL_Q3(1'b0),
      .SRVAL_Q4(1'b0) 
   )
   rx_data_iserdes_i (
      .O(),                      
      .Q1(rx_data_stg1_i[5]),  
      .Q2(rx_data_stg1_i[4]),  
      .Q3(rx_data_stg1_i[3]),  
      .Q4(rx_data_stg1_i[2]),  
      .Q5(rx_data_stg1_i[1]),  
      .Q6(rx_data_stg1_i[0]),  
      .Q7(),
      .Q8(),
      // SHIFTOUT1-SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
      .SHIFTOUT1(),
      .SHIFTOUT2(),
      .BITSLIP(1'b0),         
      .CE1(1'b1),
      .CE2(1'b1),
      .CLKDIVP(1'b0),   
      .CLK(clk625),              
      .CLKB(~clk625),            
      .CLKDIV(clk208),           
      .OCLK(1'b0),                
      .DYNCLKDIVSEL(1'b0),   
      .DYNCLKSEL(1'b0),      
      .D(1'b0),                     
      .DDLY(rx_ser_data_delayed), 
      .OFB(1'b0),                  
      .OCLKB(1'b0),              
      .RST(rx_rst_208),                  
      .SHIFTIN1(1'b0),
      .SHIFTIN2(1'b0) 
   );


//output of serdes masked for 2 clock cycles after reset to save it from x-propogation in timing simulation.

always @(posedge clk208) begin   
  rst208_r_d1          <= rst208_r;
  rst208_r_d2          <= rst208_r_d1;
  soft_rx_reset_208_d1 <= soft_rx_reset_208;
  soft_rx_reset_208_d2 <= soft_rx_reset_208_d1;

end 

// 6 : 12 DEMUX
always @(posedge clk208) begin    
   if (rst208_r_d2 || soft_rx_reset_208_d2) rx_data_stg1 <= 12'h0;
   else begin 
      rx_data_stg1[11:6] <= rx_data_stg1_i; 
      rx_data_stg1[5:0] <= rx_data_stg1[11:6];
   end
end   
always @(posedge clk104) rx_data_stg2 <= rx_data_stg1;
assign o_rx_data_12b = rx_data_stg2;
assign o_rx_data_6b = rx_data_stg1[11:6]; 

// **************************************************************
// RX Monitor Chain - IOB -> IDELAY -> ISERDES -> Stg1 Flops
// **************************************************************      
// RX Monitor IDELAY 
reg mon_dly_ce;
reg mon_dly_inc;
reg [5:0] mon_idly_actual_value;
reg [5:0] mon_idly_requested_value;
//assign mon_dly_val_out = mon_idly_actual_value[4:0];
// Track requested IDELAY value
always @(posedge clk208) begin
   if (rx_rst_208)          mon_idly_requested_value <= 6'd0;
   else if (mon_idly_rst) mon_idly_requested_value <= {1'b0, mon_dly_val_in};
   else                   mon_idly_requested_value <= mon_idly_requested_value;
end
// Control IDELAY values via inc and ce
always @(posedge clk208) begin
   if (rx_rst_208) begin   
      mon_idly_actual_value <= 6'd0;
      mon_dly_ce  <= 1'b0;
      mon_dly_inc <= 1'b0;
   end else if (mon_idly_actual_value > mon_idly_requested_value) begin // need to Decrement
      mon_idly_actual_value <= mon_idly_actual_value - 1'b1;
      mon_dly_ce  <= 1'b1;
      mon_dly_inc <= 1'b0;
   end else if (mon_idly_actual_value < mon_idly_requested_value) begin // Need to Increment
      mon_idly_actual_value <= mon_idly_actual_value + 1'b1;
      mon_dly_ce  <= 1'b1;
      mon_dly_inc <= 1'b1;
   end else begin // No change requested, hold current values                  
      mon_idly_actual_value <= mon_idly_actual_value;
      mon_dly_ce  <= 1'b0;
      mon_dly_inc <= 1'b0;
   end
end

   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion ("TRUE"/"FALSE")  // This may be helpful for Async mode 
      .DELAY_SRC("IDATAIN"),           
      .HIGH_PERFORMANCE_MODE("TRUE"), 
      .IDELAY_TYPE("VARIABLE"),      
      .IDELAY_VALUE(0),              
      .REFCLK_FREQUENCY(200.0),      
      .SIGNAL_PATTERN("DATA"),       
      .PIPE_SEL("FALSE")             
   )
   rx_mon_idly_i (
      .CNTVALUEOUT(mon_dly_val_out), 
      .DATAOUT(rx_ser_mon_delayed),         
      .C(clk208),                    
      .CE(mon_dly_ce),                  
      .CINVCTRL(1'b0),       
      .CNTVALUEIN(5'd0),   
      .DATAIN(1'b0),          
      .IDATAIN(rx_ser_mon), 
      .INC(mon_dly_inc),             
      .REGRST(rx_rst_208),    
      .LD(rx_rst_208), //         // 1-bit input - Load IDELAY_VALUE input
      .LDPIPEEN(1'b0)        
   );
     
// RX Monitor ISERDES 
ISERDESE2 #(
      .DATA_RATE("DDR"),           
      .DATA_WIDTH(6),              
      .DYN_CLKDIV_INV_EN("FALSE"), // These will be handy for Async operation
      .DYN_CLK_INV_EN("FALSE"),    
      .INIT_Q1(1'b0),
      .INIT_Q2(1'b0),
      .INIT_Q3(1'b0),
      .INIT_Q4(1'b0),
      .INTERFACE_TYPE("NETWORKING"),
      .IOBDELAY("IFD"),           
      .NUM_CE(2),                 
      .OFB_USED("FALSE"),         
      .SERDES_MODE("MASTER"),     
      .SRVAL_Q1(1'b0),
      .SRVAL_Q2(1'b0),
      .SRVAL_Q3(1'b0),
      .SRVAL_Q4(1'b0)
   )
   rx_mon_iserdes_i (
      .O(),                      
      .Q1(rx_mon_stg1_i[5]),  
      .Q2(rx_mon_stg1_i[4]),  
      .Q3(rx_mon_stg1_i[3]),  
      .Q4(rx_mon_stg1_i[2]),  
      .Q5(rx_mon_stg1_i[1]),  
      .Q6(rx_mon_stg1_i[0]),  
      .Q7(),
      .Q8(),
      // SHIFTOUT1-SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
      .SHIFTOUT1(),
      .SHIFTOUT2(),
      .BITSLIP(1'b0),         
      .CE1(1'b1),
      .CE2(1'b1),
      .CLKDIVP(1'b0),   
      .CLK(clk625),              
      .CLKB(~clk625),            
      .CLKDIV(clk208),           
      .OCLK(1'b0),                
      .DYNCLKDIVSEL(1'b0),   
      .DYNCLKSEL(1'b0),      
      .D(1'b0),                     
      .DDLY(rx_ser_mon_delayed), 
      .OFB(1'b0),                  
      .OCLKB(1'b0),              
      .RST(rx_rst_208),                  
      .SHIFTIN1(1'b0),
      .SHIFTIN2(1'b0) 
   );

always @(posedge clk208) begin    // Hoping this will help with Tcko of ISERDES
   if (rx_rst_208) rx_mon_stg1 <= 8'h0;
   else begin 
      rx_mon_stg1[11:6] <= rx_mon_stg1_i; 
      rx_mon_stg1[ 5:0] <= rx_mon_stg1[11:6];
   end
end   

always @(posedge clk104) rx_mon_stg2 <= rx_mon_stg1;

assign o_rx_mon = rx_mon_stg2;

// **************************************************************
// TX Data Chain - 4-bit TX Data -> OSERDES -> IOB
// **************************************************************      

OBUFDS sgmii_tx_buf_i (
  .I  (tx_ser_data),
  .O  (pin_sgmii_txp),
  .OB (pin_sgmii_txn)
);

// K7 Version
   OSERDESE2 #(
      .DATA_RATE_OQ("DDR"),   // "SDR" or "DDR" 
      .DATA_RATE_TQ("SDR"),   // "BUF", "SDR" or "DDR" 
      .DATA_WIDTH(6),         // Parallel data width (2-8,10)
      .INIT_OQ(1'b0),         // Initial value of OQ output (0/1)
      .INIT_TQ(1'b0),         // Initial value of TQ output (0/1)
      .SERDES_MODE("MASTER"), // "MASTER" or "SLAVE" 
      .SRVAL_OQ(1'b0),        // OQ output value when SR is used (0/1)
      .SRVAL_TQ(1'b0),        // TQ output value when SR is used (0/1)
      .TBYTE_CTL("FALSE"),    // Enable tristate byte operation ("TRUE" or "FALSE")
      .TBYTE_SRC("FALSE"),    // Tristate byte source ("TRUE" or "FALSE")
      .TRISTATE_WIDTH(1)      // 3-state converter width (1 or 4)
   )
   sgmii_tx_oserdes_i (
      .OFB(),             
      .OQ(tx_ser_data),            
      
      .SHIFTOUT1(),
      .SHIFTOUT2(),
      .TBYTEOUT(), 
      .TFB(),             
      .TQ(),              
      .CLK(clk625),          
      .CLKDIV(clk208),       
      .D1    (tx_data_6b[0]), 
      .D2    (tx_data_6b[1]),
      .D3    (tx_data_6b[2]),
      .D4    (tx_data_6b[3]),
      .D5    (tx_data_6b[4]),            
      .D6    (tx_data_6b[5]),
      .D7(1'b0),
      .D8(1'b0),
      .OCE(1'b1),           
      .RST(tx_rst_208),      
      .SHIFTIN1(1'b0),
      .SHIFTIN2(1'b0),
      .T1(1'b0),
      .T2(1'b0),
      .T3(1'b0),
      .T4(1'b0),
      .TBYTEIN(1'b0),    
      .TCE(1'b0)              
   );


endmodule



