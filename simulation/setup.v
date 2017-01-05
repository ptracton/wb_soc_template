//                              -*- Mode: Verilog -*-
// Filename        : setup.v
// Description     : Setup details for running a test case
// Author          : Philip Tracton
// Created On      : Wed Jul 27 21:08:53 2016
// Last Modified By: Philip Tracton
// Last Modified On: Wed Jul 27 21:08:53 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

/* -----\/----- EXCLUDED -----\/-----
`ifdef XILINX
  `include "bram0.txt"
  `include "bram1.txt"
  `include "bram2.txt"
  `include "bram3.txt"
 `endif
 -----/\----- EXCLUDED -----/\----- */

initial begin
`ifdef RTL
   $display("RTL SIM: %s", {simulation_name, ".vh.mem"});
   $readmemh( {simulation_name, ".vh.mem"}, `PROGRAM_ROM.ram0.mem);
`endif

`ifdef XILINX
   $display("XILINX SIM: %s", {simulation_name, ".vh.mem"});
   $readmemh( {simulation_name, ".vh.mem"},testbench.dut.rom0.ram0.bank0.ram0.genblk1.INT_RAMB_TDP.mem[1023:0]);
`endif
  
end
