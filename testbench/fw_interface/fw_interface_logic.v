//                              -*- Mode: Verilog -*-
// Filename        : fw_interface_logic.v
// Description     : FW Interface Test Logic
// Author          : Philip Tracton
// Created On      : Wed Dec 21 14:09:23 2016
// Last Modified By: Philip Tracton
// Last Modified On: Wed Dec 21 14:09:23 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!


module fw_interface_logic (/*AUTOARG*/
   // Inputs
   wb_clk_i, wb_rst_i, new_report, new_warning, new_error, report_reg,
   warning_reg, error_reg, index, data, write_mem
   ) ;
   input wire wb_clk_i;
   input wire wb_rst_i;


   input wire new_report;
   input wire new_warning;
   input wire new_error;
  
   input wire [31:0] report_reg;
   input wire [31:0] warning_reg;
   input wire [31:0] error_reg;
   input wire [5:0]  index;
   input wire [7:0]  data;
   input wire        write_mem;
   
   reg [7:0]         string_mem[63:0];
   
   always @(posedge wb_clk_i)
     if (write_mem) begin
        string_mem[index] <= data;        
     end
   
   
   always @(posedge wb_clk_i)
     if (new_report) begin
        $display("REPORT\t0x%04x\t%d", report_reg, $time);        
     end
   
endmodule // fw_interface_logic
