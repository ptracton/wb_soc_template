//                              -*- Mode: Verilog -*-
// Filename        : setup.v
// Description     : Setup details for running a test case
// Author          : Philip Tracton
// Created On      : Wed Jul 27 21:08:53 2016
// Last Modified By: Philip Tracton
// Last Modified On: Wed Jul 27 21:08:53 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

`ifdef XILINX
  `include "bram0.txt"
  `include "bram1.txt"
  `include "bram2.txt"
  `include "bram3.txt"
 `endif

initial begin
`ifdef RTL
   $display("%s", {simulation_name, ".vh.mem"});
   $readmemh( {simulation_name, ".vh.mem"}, `PROGRAM_ROM.ram0.mem);
`endif
  
end
