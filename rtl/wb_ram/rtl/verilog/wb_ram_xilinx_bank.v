//                              -*- Mode: Verilog -*-
// Filename        : wb_ram_xilinx_bank.v
// Description     : Bank of Xilinx BRAMs
// Author          : Philip Tracton
// Created On      : Tue Jan  3 15:24:54 2017
// Last Modified By: Philip Tracton
// Last Modified On: Tue Jan  3 15:24:54 2017
// Update Count    : 0
// Status          : Unknown, Use with caution!

module wb_ram_xilinx_bank (/*AUTOARG*/
   // Outputs
   dout,
   // Inputs
   clk, rst, we, din, waddr, raddr, bank_select
   ) ;

   input clk;
   input rst;   
   input [3:0] we;
   input [31:0] din;
   input [14:0] waddr;
   input [14:0] raddr;
   input wire   bank_select;
   
   output wire [31:0] dout;

   //
   // Select the correct address, any write means use waddr
   //
   wire [14:0]       address = (|we & bank_select) ? waddr : raddr;
   
   //
   // RAMS always enabled
   //
   wire [3:0]        enable = {4{bank_select}};

   
   //
   // RAMS -- the RAMB16_S9 is lifted from ISE
   //
   RAMB16_S9 ram0(
		          .DO(dout[7:0]), 
		          .DOP(), 
		          .ADDR(address[10:0]), 
		          .CLK(clk),
		          .DI(din[7:0]), 
		          .DIP(1'b0), 
		          .EN(enable[0]), 
		          .SSR(rst), 
		          .WE(we[0])
		          );

   RAMB16_S9 ram1(
		          .DO(dout[15:8]), 
		          .DOP(), 
		          .ADDR(address[10:0]), 
		          .CLK(clk),
		          .DI(din[15:8]), 
		          .DIP(1'b0), 
		          .EN(enable[1]), 
		          .SSR(rst), 
		          .WE(we[1])
		          );
   
   RAMB16_S9 ram2(
		          .DO(dout[23:16]), 
		          .DOP(), 
		          .ADDR(address[10:0]), 
		          .CLK(clk),
		          .DI(din[23:16]), 
		          .DIP(1'b0), 
		          .EN(enable[2]), 
		          .SSR(rst), 
		          .WE(we[2])
		          );
   
   RAMB16_S9 ram3(
		          .DO(dout[31:24]), 
		          .DOP(), 
		          .ADDR(address[10:0]), 
		          .CLK(clk),
		          .DI(din[31:24]), 
		          .DIP(1'b0), 
		          .EN(enable[3]), 
		          .SSR(rst), 
		          .WE(we[3])
		          );
   
   
endmodule // wb_ram_xilinx_bank
