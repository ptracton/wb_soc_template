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
integer mem_index;
reg [31:0] local_word;


initial begin
`ifdef RTL
   $display("RTL SIM: %s", {simulation_name, ".vh.mem"});
   $readmemh( {simulation_name, ".vh.mem"}, `PROGRAM_ROM.ram0.mem);
`endif

`ifdef XILINX
     
   $display("XILINX SIM: %s", {simulation_name, ".vh.mem"});
   $readmemh( {simulation_name, ".vh.mem"},`TB.local_mem);
   mem_index = 0;

   for (mem_index = 0; mem_index <= 16384; mem_index = mem_index + 1)begin
      local_word = `TB.local_mem[mem_index];

/* -----\/----- EXCLUDED -----\/-----
      if (mem_index > 4095) begin
         testbench.dut.rom0.ram0.bank2.ram0.mem[mem_index] = local_word[07:00];      
         testbench.dut.rom0.ram0.bank2.ram1.mem[mem_index] = local_word[15:08];      
         testbench.dut.rom0.ram0.bank2.ram2.mem[mem_index] = local_word[23:16];      
         testbench.dut.rom0.ram0.bank2.ram3.mem[mem_index] = local_word[31:24];         
      end
 -----/\----- EXCLUDED -----/\----- */
      
      if (mem_index > 2047) begin
         testbench.dut.rom0.ram0.bank1.ram0.mem[mem_index] = local_word[07:00];      
         testbench.dut.rom0.ram0.bank1.ram1.mem[mem_index] = local_word[15:08];      
         testbench.dut.rom0.ram0.bank1.ram2.mem[mem_index] = local_word[23:16];      
         testbench.dut.rom0.ram0.bank1.ram3.mem[mem_index] = local_word[31:24];         
      end
      
      testbench.dut.rom0.ram0.bank0.ram0.mem[mem_index] = local_word[07:00];      
      testbench.dut.rom0.ram0.bank0.ram1.mem[mem_index] = local_word[15:08];      
      testbench.dut.rom0.ram0.bank0.ram2.mem[mem_index] = local_word[23:16];      
      testbench.dut.rom0.ram0.bank0.ram3.mem[mem_index] = local_word[31:24];


      
   end
`endif
  
end
