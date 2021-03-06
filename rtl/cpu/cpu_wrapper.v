//                              -*- Mode: Verilog -*-
// Filename        : cpu_wrapper.v
// Description     : Wrapper around WishBone based CPUs
// Author          : Philip Tracton
// Created On      : Sun Jul 24 20:57:15 2016
// Last Modified By: Philip Tracton
// Last Modified On: Sun Jul 24 20:57:15 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

//`include "wb_soc_includes.vh"

module wishbone_cpu (/*AUTOARG*/
                     // Outputs
                     iwbm_adr_o, iwbm_stb_o, iwbm_cyc_o, iwbm_sel_o, iwbm_we_o,
                     iwbm_cti_o, iwbm_bte_o, iwbm_dat_o, dwbm_adr_o, dwbm_stb_o,
                     dwbm_cyc_o, dwbm_sel_o, dwbm_we_o, dwbm_cti_o, dwbm_bte_o,
                     dwbm_dat_o, dbg_lss_o, dbg_is_o, dbg_wp_o, dbg_bp_o, dbg_dat_o,
                     dbg_ack_o,
                     // Inputs
                     clk_i, rst_i, interrupts, iwbm_err_i, iwbm_ack_i, iwbm_dat_i,
                     iwbm_rty_i, dwbm_err_i, dwbm_ack_i, dwbm_dat_i, dwbm_rty_i,
                     dbg_stall_i, dbg_ewt_i, dbg_stb_i, dbg_we_i, dbg_sel_i, dbg_cti_i,
                     dbg_bte_i, dbg_lock_i, dbg_cyc_i, dbg_adr_i, dbg_dat_i
                     ) ;

   parameter NUMBER_OF_INTERRUPTS = 32;
   parameter ADDRESS_WIDTH = 32;
   parameter DATA_WIDTH = 32;
   
   //
   // System Interface
   //
   input wire clk_i;
   input wire rst_i;
   input wire [NUMBER_OF_INTERRUPTS-1:0] interrupts;

   //
   // Instruction Bus
   //
   output wire [ADDRESS_WIDTH-1:0] 	 iwbm_adr_o;   
   output wire                           iwbm_stb_o;
   output wire                           iwbm_cyc_o;
   output wire [3:0] 			 iwbm_sel_o;
   output wire                           iwbm_we_o;
   output wire [2:0] 			 iwbm_cti_o;
   output wire [1:0] 			 iwbm_bte_o;
   output wire [DATA_WIDTH-1:0] 	 iwbm_dat_o;
   input wire                            iwbm_err_i;
   input wire                            iwbm_ack_i;
   input wire [DATA_WIDTH-1:0] 		 iwbm_dat_i;
   input wire                            iwbm_rty_i;
   
   //
   // Data Bus
   //
   output wire [ADDRESS_WIDTH-1:0] 	 dwbm_adr_o;
   output wire                           dwbm_stb_o;
   output wire                           dwbm_cyc_o;
   output wire [3:0] 			 dwbm_sel_o;
   output wire                           dwbm_we_o;
   output wire [2:0] 			 dwbm_cti_o;
   output wire [1:0] 			 dwbm_bte_o;
   output wire [DATA_WIDTH-1:0] 	 dwbm_dat_o;
   input wire                            dwbm_err_i;
   input wire                            dwbm_ack_i;
   input wire [DATA_WIDTH-1:0] 		 dwbm_dat_i;
   input wire                            dwbm_rty_i;
   
   //
   // Debug interface
   //
   input wire                            dbg_stall_i;	// External Stall Input
   input wire                            dbg_ewt_i;	// External Watchpoint Trigger Input
   output wire [3:0] 			 dbg_lss_o;	// External Load/Store Unit Status
   output wire [1:0] 			 dbg_is_o;	// External Insn Fetch Status
   output wire [10:0] 			 dbg_wp_o;	// Watchpoints Outputs
   output wire                           dbg_bp_o;	// Breakpoint Output
   input wire                            dbg_stb_i;      // External Address/Data Strobe
   input wire                            dbg_we_i;       // External Write Enable
   input wire                            dbg_sel_i; //Debug select 
   input wire [2:0] 			 dbg_cti_i;//
   input wire                            dbg_bte_i;//
   input wire                            dbg_lock_i;
   input wire                            dbg_cyc_i;                                
   input wire [ADDRESS_WIDTH-1:0] 	 dbg_adr_i;	// External Address Input
   input wire [DATA_WIDTH-1:0] 		 dbg_dat_i;	// External Data Input
   output wire [DATA_WIDTH-1:0] 	 dbg_dat_o;	// External Data Output
   output wire                           dbg_ack_o;	// External Data Acknowledge (not WB compatible)
   
`ifdef WISHBONE_CPU_LM32
 `include "lm32_config.v"

   assign dbg_cti_i = 3'b000;
   
   
   initial begin
      $display("INSTANTIATE LM32 CPU");      
   end
   
   lm32_top cpu(
                // ----- Inputs -------
                .clk_i(clk_i),
                .rst_i(rst_i),
 `ifdef CFG_DEBUG_ENABLED
  `ifdef CFG_ALTERNATE_EBA
                .at_debug(),
  `endif
 `endif
                // From external devices
 `ifdef CFG_INTERRUPTS_ENABLED
                .interrupt(interrupts),
 `endif
                // From user logic
 `ifdef CFG_USER_ENABLED
                .user_result(),
                .user_complete(),
 `endif     
 `ifdef CFG_IWB_ENABLED
                // Instruction Wishbone master
                .I_DAT_I(iwbm_dat_i),
                .I_ACK_I(iwbm_ack_i),
                .I_ERR_I(iwbm_err_i),
                .I_RTY_I(iwbm_rty_i),
 `endif
                // Data Wishbone master
                .D_DAT_I(dwbm_dat_i),
                .D_ACK_I(dwbm_ack_i),
                .D_ERR_I(dwbm_err_i),
                .D_RTY_I(dwbm_rty_i),
                
                // ----- Outputs -------
 `ifdef CFG_USER_ENABLED    
                .user_valid(),
                .user_opcode(),
                .user_operand_0(),
                .user_operand_1(),
 `endif    
 `ifdef CFG_IWB_ENABLED
                // Instruction Wishbone master
                .I_DAT_O(iwbm_dat_o),
                .I_ADR_O(iwbm_adr_o),
                .I_CYC_O(iwbm_cyc_o),
                .I_SEL_O(iwbm_sel_o),
                .I_STB_O(iwbm_stb_o),
                .I_WE_O(iwbm_we_o),
                .I_CTI_O(iwbm_cti_o),
                .I_LOCK_O(),
                .I_BTE_O(iwbm_bte_o),
 `endif
                // Data Wishbone master
                .D_DAT_O(dwbm_dat_o),
                .D_ADR_O(dwbm_adr_o),
                .D_CYC_O(dwbm_cyc_o),
                .D_SEL_O(dwbm_sel_o),
                .D_STB_O(dwbm_stb_o),
                .D_WE_O(dwbm_we_o),
                .D_CTI_O(dwbm_cti_o),
                .D_LOCK_O(),
                .D_BTE_O(dwbm_bte_o)
                
                );
   
`elsif WISHBONE_CPU_MOR1KX
   initial begin
      $display("INSTANTIATE MOR1K CPU");      
   end

   mor1kx cpu(
              .clk(clk_i),
              .rst(rst_i),
      
              // Wishbone interface
              .iwbm_adr_o(iwbm_adr_o),
     	      .iwbm_stb_o(iwbm_stb_o),
     	      .iwbm_cyc_o(iwbm_cyc_o),
              .iwbm_sel_o(iwbm_sel_o),
     	      .iwbm_we_o(iwbm_we_o),
              .iwbm_cti_o(iwbm_cti_o),
              .iwbm_bte_o(iwbm_bte_o),
              .iwbm_dat_o(iwbm_dat_o),
     	      .iwbm_err_i(iwbm_err_i),
     	      .iwbm_ack_i(iwbm_ack_i),
              .iwbm_dat_i(iwbm_dat_i),
     	      .iwbm_rty_i(iwbm_rty_i),
              
              .dwbm_adr_o(dwbm_adr_o),
     	      .dwbm_stb_o(dwbm_stb_o),
     	      .dwbm_cyc_o(dwbm_cyc_o),
              .dwbm_sel_o(dwbm_sel_o),
     	      .dwbm_we_o(dwbm_we_o),
              .dwbm_cti_o(dwbm_cti_o),
              .dwbm_bte_o(dwbm_bte_o),
              .dwbm_dat_o(dwbm_dat_o),
     	      .dwbm_err_i(dwbm_err_i),
     	      .dwbm_ack_i(dwbm_ack_i),
              .dwbm_dat_i(dwbm_dat_i),
     	      .dwbm_rty_i(dwbm_rty_i),

              
              
              .irq_i(interrupts),
              
              // Debug interface
              .du_addr_i('b0),
              .du_stb_i('b0),
              .du_dat_i('b0),
              .du_we_i('b0),
              .du_dat_o(),
              .du_ack_o(),
              // Stall control from debug interface
              .du_stall_i('b0),
              .du_stall_o(),
              
              .traceport_exec_valid_o(),
              .traceport_exec_pc_o(),
              .traceport_exec_insn_o(),
              .traceport_exec_wbdata_o(),
              .traceport_exec_wbreg_o(),
              .traceport_exec_wben_o(),
              
              // The multicore core identifier
              .multicore_coreid_i('b0),
              // The number of cores
              .multicore_numcores_i('b0),
              
              .snoop_adr_i('b0),
              .snoop_en_i('b0)
              
              );
   
   
`elsif WISHBONE_CPU_OR1200

 `include "or1200_defines.v"
   initial begin
      $display("INSTANTIATE OR1200 CPU");      
   end
   
   or1200_top cpu(
	          // System
	          .clk_i(clk_i), 
                  .rst_i(rst_i), 
                  .pic_ints_i(interrupts), 
                  .clmode_i(2'b00), //WB=RISC
      
	          // Instruction WISHBONE INTERFACE
	          .iwb_clk_i(clk_i), 
                  .iwb_rst_i(rst_i), 
                  .iwb_ack_i(iwbm_ack_i), 
                  .iwb_err_i(iwbm_err_i), 
                  .iwb_rty_i(iwbm_rty_i), 
                  .iwb_dat_i(iwbm_dat_i),
                  
	          .iwb_cyc_o(iwbm_cyc_o), 
                  .iwb_adr_o(iwbm_adr_o), 
                  .iwb_stb_o(iwbm_stb_o), 
                  .iwb_we_o(iwbm_we_o), 
                  .iwb_sel_o(iwbm_sel_o), 
                  .iwb_dat_o(iwbm_dat_o),
 `ifdef OR1200_WB_CAB
	          .iwb_cab_o(),
 `endif
 `ifdef OR1200_WB_B3
	          .iwb_cti_o(iwbm_cti_o), 
                  .iwb_bte_o(iwbm_bte_o),
 `endif
	          // Data WISHBONE INTERFACE
	          .dwb_clk_i(clk_i), 
                  .dwb_rst_i(rst_i), 
                  .dwb_ack_i(dwbm_ack_i), 
                  .dwb_err_i(dwbm_err_i), 
                  .dwb_rty_i(dwbm_rty_i), 
                  .dwb_dat_i(dwbm_dat_i),
                  
	          .dwb_cyc_o(dwbm_cyc_o), 
                  .dwb_adr_o(dwbm_adr_o), 
                  .dwb_stb_o(dwbm_stb_o), 
                  .dwb_we_o(dwbm_we_o), 
                  .dwb_sel_o(dwbm_sel_o), 
                  .dwb_dat_o(dwbm_dat_o),
 `ifdef OR1200_WB_CAB
	          .dwb_cab_o(),
 `endif
 `ifdef OR1200_WB_B3
	          .dwb_cti_o(dwbm_cti_o), 
                  .dwb_bte_o(dwbm_bte_o),
 `endif
                  
	          // External Debug Interface
	          .dbg_stall_i(dbg_stall_i), 
                  .dbg_ewt_i(dbg_ewt_i),	
                  .dbg_lss_o(dbg_lss_o), 
                  .dbg_is_o(dbg_is_o), 
                  .dbg_wp_o(dbg_wp_o), 
                  .dbg_bp_o(dbg_bp_o),
	          .dbg_stb_i(dbg_stb_i), 
                  .dbg_we_i(dbg_we_i), 
                  .dbg_adr_i(dbg_adr_i), 
                  .dbg_dat_i(dbg_dat_i), 
                  .dbg_dat_o(dbg_adr_o), 
                  .dbg_ack_o(dbg_ack_o),
	          
 `ifdef OR1200_BIST
	          // RAM BIST
	          .mbist_si_i('b0), 
                  .mbist_so_o(), 
                  .mbist_ctrl_i('b0),
 `endif
	          // Power Management
	          .pm_cpustall_i('b0),
	          .pm_clksd_o(), 
                  .pm_dc_gate_o(), 
                  .pm_ic_gate_o(), 
                  .pm_dmmu_gate_o(), 
	          .pm_immu_gate_o(), 
                  .pm_tt_gate_o(), 
                  .pm_cpu_gate_o(), 
                  .pm_wakeup_o(), 
                  .pm_lvolt_o()
                  
                  ,.sig_tick()		  
                  
                  );

   
   
   
`elsif WISHBONE_CPU_RISCV
   initial begin
      $display("INSTANTIATE RISCV CPU");      
   end   

   wire [ADDRESS_WIDTH-1:0] 	 rv_wbm_adr_o;   
   wire 			 rv_wbm_stb_o;
   wire 			 rv_wbm_cyc_o;
   wire [3:0] 			 rv_wbm_sel_o;
   wire 			 rv_wbm_we_o;
   wire [2:0] 			 rv_wbm_cti_o;
   wire [1:0] 			 rv_wbm_bte_o;
   wire [DATA_WIDTH-1:0] 	 rv_wbm_dat_o;
   wire 			 rv_wbm_err_i;
   wire 			 rv_wbm_ack_i;
   wire [DATA_WIDTH-1:0] 	 rv_wbm_dat_i;
   wire 			 rv_wbm_rty_i;

   wire [31:0] 			 end_of_interrupt;
   wire 			 mem_instr;

   //
   // picorv32 has a single WB interface.  Our design has 2.  The mem_instr signal indicates if we are fetching
   // an instruction (iwbm) or data (dwbm).
   //

   assign iwbm_adr_o = ( mem_instr) ? rv_wbm_adr_o : 32'b0;
   assign dwbm_adr_o = (!mem_instr) ? rv_wbm_adr_o : 32'b0;

   assign iwbm_dat_o = ( mem_instr) ? rv_wbm_dat_o : 32'b0;
   assign dwbm_dat_o = (!mem_instr) ? rv_wbm_dat_o : 32'b0;
   
   assign iwbm_stb_o = ( mem_instr) ? rv_wbm_stb_o : 1'b0;
   assign dwbm_stb_o = (!mem_instr) ? rv_wbm_stb_o : 1'b0;

   assign iwbm_cyc_o = ( mem_instr) ? rv_wbm_cyc_o : 1'b0;
   assign dwbm_cyc_o = (!mem_instr) ? rv_wbm_cyc_o : 1'b0;

   assign iwbm_sel_o = ( mem_instr) ? rv_wbm_sel_o : 1'b0;
   assign dwbm_sel_o = (!mem_instr) ? rv_wbm_sel_o : 4'b0;

   assign iwbm_cti_o = 3'b0;
   assign dwbm_cti_o = 3'b0;
   
   assign iwbm_bte_o = 2'b0;
   assign dwbm_bte_o = 2'b0;

   assign rv_wbm_dat_i = ( mem_instr) ? iwbm_dat_i : dwbm_dat_i;
   assign rv_wbm_err_i = ( mem_instr) ? iwbm_err_i : dwbm_err_i;
   assign rv_wbm_ack_i = ( mem_instr) ? iwbm_ack_i : dwbm_ack_i;
   assign rv_wbm_rty_i = ( mem_instr) ? iwbm_rty_i : dwbm_rty_i;
   
   
   picorv32_wb cpu(
		   .trap(),
		   
		   // Wishbone interfaces
		   .wb_rst_i(rst_i),
		   .wb_clk_i(clk_i),
		   
		   .wbm_adr_o(rv_wbm_adr_o),
		   .wbm_dat_o(rv_wbm_dat_o),
		   .wbm_dat_i(rv_wbm_dat_i),
		   .wbm_we_o (rv_wbm_we_o ),
		   .wbm_sel_o(rv_wbm_sel_o),
		   .wbm_stb_o(rv_wbm_stb_o),
		   .wbm_ack_i(rv_wbm_ack_i),
		   .wbm_cyc_o(rv_wbm_cyc_o),
		   
		   // Pico Co-Processor Interface (PCPI)
		   .pcpi_valid(),
		   .pcpi_insn(),
		   .pcpi_rs1(),
		   .pcpi_rs2(),
		   .pcpi_wr(1'b0),
		   .pcpi_rd(32'b0),
		   .pcpi_wait(1'b0),
		   .pcpi_ready(1'b0),
		   
		   // IRQ interface
		   .irq(interrupts),
		   .eoi(end_of_interrupt),
		   
		   
		   // Trace Interface
		   .trace_valid(),
		   .trace_data(),
		   
		   .mem_instr(mem_instr)
		   );
   

`elsif WISHBONE_CPU_ZIP

   //
   // ZIP has a single WB interface, this design assumes 2
   //
   wire z_inst_or_data;
   wire [29:0] zwbm_adr_o;   
   wire [DATA_WIDTH-1:0] zwbm_dat_o;
   wire 		 zwbm_cyc_o;
   wire [3:0] 		 zwbm_sel_o;
   wire 		 zwbm_we_o;
   wire 		 zwbm_stb_o;
   
   wire 		 zwbm_err_i;
   wire 		 zwbm_ack_i;
   wire [DATA_WIDTH-1:0] zwbm_dat_i;
   wire 		 zwbm_rty_i;
   
 `define ZWBM_INSTR_ADDR_START 32'h00000000
 `define ZWBM_INSTR_ADDR_END   32'h00001000

   //Determine if this is a instruction or data access
   /* -----\/----- EXCLUDED -----\/-----
    assign z_inst_or_data = ((zwbm_adr_o >= `ZWBM_INSTR_ADDR_START) && (zwbm_adr_o <`ZWBM_INSTR_ADDR_END));
    
    assign iwbm_adr_o = (z_inst_or_data) ? {2'b00, zwbm_adr_o} : 32'h0;
    assign iwbm_dat_o = (z_inst_or_data) ? zwbm_dat_o : 32'h0;
    assign iwbm_stb_o = (z_inst_or_data) ? zwbm_stb_o : 0;
    assign iwbm_cyc_o = (z_inst_or_data) ? zwbm_cyc_o : 0;
    assign iwbm_sel_o = (z_inst_or_data) ? zwbm_sel_o : 0;
    assign iwbm_we_o  = (z_inst_or_data) ? zwbm_we_o : 0;   
    
    assign zwbm_err_i = (z_inst_or_data) ? iwbm_err_i : dwbm_err_i;
    assign zwbm_ack_i = (z_inst_or_data) ? iwbm_ack_i : dwbm_ack_i;
    assign zwbm_rty_i = (z_inst_or_data) ? iwbm_rty_i : dwbm_rty_i;
    assign zwbm_dat_i = (z_inst_or_data) ? iwbm_dat_i : dwbm_dat_i;
    
    assign dwbm_adr_o = (!z_inst_or_data) ? {2'b00,zwbm_adr_o} : 32'h0;
    assign dwbm_dat_o = (!z_inst_or_data) ? zwbm_dat_o : 32'h0;
    assign dwbm_stb_o = (!z_inst_or_data) ? zwbm_stb_o : 0;
    assign dwbm_cyc_o = (!z_inst_or_data) ? zwbm_cyc_o : 0;
    assign dwbm_sel_o = (!z_inst_or_data) ? zwbm_sel_o : 0;
    assign dwbm_we_o  = (!z_inst_or_data) ? zwbm_we_o : 0;   
    assign dwbm_bte_o = 2'b0;
    assign dwbm_cti_o = 3'b0;
    -----/\----- EXCLUDED -----/\----- */
   assign iwbm_adr_o[31:30] = 2'b00;
   assign iwbm_bte_o = 2'b0;
   assign iwbm_cti_o = 3'b0;

   assign dwbm_adr_o = 32'h0;
   assign dwbm_dat_o = 32'h0;
   assign dwbm_stb_o = 0;
   assign dwbm_cyc_o = 0;
   assign dwbm_sel_o = 0;
   assign dwbm_we_o  = 0;   
   assign dwbm_bte_o = 2'b0;
   assign dwbm_cti_o = 3'b0;

   wire 		 lcl_cyc;
   wire 		 lcl_stb;
   
   zipcpu #(.RESET_ADDRESS(`ZWBM_INSTR_ADDR_START))
   cpu(
       .i_clk(clk_i), 
       .i_rst(rst_i), 
       .i_interrupt(),
       // Debug interface
       .i_halt(1'b0), 
       .i_clear_pf_cache(1'b0), 
       .i_dbg_reg(5'b0), 
       .i_dbg_we(1'b0), 
       .i_dbg_data(32'b0),
       .o_dbg_stall(), 
       .o_dbg_reg(), 
       .o_dbg_cc(),
       .o_break(),
       // CPU interface to the wishbone bus
       .o_wb_gbl_cyc(iwbm_cyc_o), 
       .o_wb_gbl_stb(iwbm_stb_o),
       .o_wb_lcl_cyc(lcl_cyc), 
       .o_wb_lcl_stb(lcl_stb),
       .o_wb_we(iwbm_we_o), 
       .o_wb_addr(iwbm_adr_o[29:0]), 
       .o_wb_data(iwbm_dat_o), 
       .o_wb_sel(iwbm_sel_o),
       .i_wb_ack(iwbm_ack_i), 
       .i_wb_stall(iwbm_rty_i), 
       .i_wb_data(iwbm_dat_i),
       .i_wb_err(iwbm_err_i),
       // Accounting/CPU usage interface
       .o_op_stall(), 
       .o_pf_stall(), 
       .o_i_count()
 `ifdef	DEBUG_SCOPE
       , o_debug()
 `endif
       );
   
`endif // !`elsif WISHBONE_CPU_RISCV
   
   
endmodule // wishbone_cpu
