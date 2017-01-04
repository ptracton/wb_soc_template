//                              -*- Mode: Verilog -*-
// Filename        : wb_ram_xilinx.v
// Description     : WB RAM for Xilixn
// Author          : Philip Tracton
// Created On      : Tue Jan  3 15:01:51 2017
// Last Modified By: Philip Tracton
// Last Modified On: Tue Jan  3 15:01:51 2017
// Update Count    : 0
// Status          : Unknown, Use with caution!

module wb_ram_xilinx (/*AUTOARG*/
   // Outputs
   dout,
   // Inputs
   clk, rst, we, din, waddr, raddr
   ) ;

   
   input clk;
   input rst;   
   input [3:0] we;
   input [31:0] din;
   input [14:0] waddr;
   input [14:0] raddr;
   output wire [31:0] dout;

   initial begin
      $display("WB XILINX RAM");
      
   end

   
   wb_ram_xilinx_bank bank0(
                            // Outputs
                            .dout               (dout[31:0]),
                            // Inputs
                            .clk                (clk),
                            .rst                (rst),
                            .bank_select        (1'b1),
                            .we                 (we[3:0]),
                            .din                (din[31:0]),
                            .waddr              (waddr[14:0]),
                            .raddr              (raddr[14:0]));
   

   
endmodule // wb_ram_xilinx
