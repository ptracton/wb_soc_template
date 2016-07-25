//                              -*- Mode: Verilog -*-
// Filename        : test_00.v
// Description     : Simple ADXL362 Test Case to bring environment to life
// Author          : Philip Tracton
// Created On      : Thu Jun 23 11:36:12 2016
// Last Modified By: Philip Tracton
// Last Modified On: Thu Jun 23 11:36:12 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

`include "timescale.v"
`include "simulation_includes.vh"

module test_case ();

   //
   // Test Configuration
   // These parameters need to be set for each test case
   //
   parameter simulation_name = "boot";
  
      
   parameter number_of_tests = 1;

   reg  err;
   reg [31:0] data_out;
   integer    i;
   
   initial begin
      $display("Boot Case");
      @(posedge `WB_RST);
      @(negedge `WB_RST);
      @(posedge `WB_CLK);
      `UART_CONFIG;
      
      #10000;
      `TEST_COMPLETE;      
   end

endmodule // test_case
