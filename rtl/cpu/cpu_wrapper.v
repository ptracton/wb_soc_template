//                              -*- Mode: Verilog -*-
// Filename        : cpu_wrapper.v
// Description     : Wrapper around WishBone based CPUs
// Author          : Philip Tracton
// Created On      : Sun Jul 24 20:57:15 2016
// Last Modified By: Philip Tracton
// Last Modified On: Sun Jul 24 20:57:15 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

`include "wb_soc_includes.vh"

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
   output wire [ADDRESS_WIDTH-1:0]       iwbm_adr_o;   
   output wire                           iwbm_stb_o;
   output wire                           iwbm_cyc_o;
   output wire [3:0]                     iwbm_sel_o;
   output wire                           iwbm_we_o;
   output wire [2:0]                     iwbm_cti_o;
   output wire [1:0]                     iwbm_bte_o;
   output wire [DATA_WIDTH-1:0]          iwbm_dat_o;
   input wire                            iwbm_err_i;
   input wire                            iwbm_ack_i;
   input wire [DATA_WIDTH-1:0]           iwbm_dat_i;
   input wire                            iwbm_rty_i;
   
   //
   // Data Bus
   //
   output wire [ADDRESS_WIDTH-1:0]       dwbm_adr_o;
   output wire                           dwbm_stb_o;
   output wire                           dwbm_cyc_o;
   output wire [3:0]                     dwbm_sel_o;
   output wire                           dwbm_we_o;
   output wire [2:0]                     dwbm_cti_o;
   output wire [1:0]                     dwbm_bte_o;
   output wire [DATA_WIDTH-1:0]          dwbm_dat_o;
   input wire                            dwbm_err_i;
   input wire                            dwbm_ack_i;
   input wire [DATA_WIDTH-1:0]           dwbm_dat_i;
   input wire                            dwbm_rty_i;
   
   //
   // Debug interface
   //
   input wire                            dbg_stall_i;	// External Stall Input
   input wire                            dbg_ewt_i;	// External Watchpoint Trigger Input
   output wire [3:0]                     dbg_lss_o;	// External Load/Store Unit Status
   output wire [1:0]                     dbg_is_o;	// External Insn Fetch Status
   output wire [10:0]                    dbg_wp_o;	// Watchpoints Outputs
   output wire                           dbg_bp_o;	// Breakpoint Output
   input wire                            dbg_stb_i;      // External Address/Data Strobe
   input wire                            dbg_we_i;       // External Write Enable
   input wire                            dbg_sel_i; //Debug select 
   input wire [2:0]                      dbg_cti_i;//
   input wire                            dbg_bte_i;//
   input wire                            dbg_lock_i;
   input wire                            dbg_cyc_i;                                
   input wire [ADDRESS_WIDTH-1:0]        dbg_adr_i;	// External Address Input
   input wire [DATA_WIDTH-1:0]           dbg_dat_i;	// External Data Input
   output wire [DATA_WIDTH-1:0]          dbg_dat_o;	// External Data Output
   output wire                           dbg_ack_o;	// External Data Acknowledge (not WB compatible)
   
`ifdef WISHBONE_CPU_LM32

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
                .interrupt_n(interrupts),
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
                // Debug Slave port WishboneInterface
                .DEBUG_ADR_I(dbg_adr_i),
                .DEBUG_DAT_I(dbg_dat_i),
                .DEBUG_SEL_I(dbg_sel_i),
                .DEBUG_WE_I(dbg_we_i),
                .DEBUG_CTI_I(dbg_cti_i),
                .DEBUG_BTE_I(dbg_bte_i),
                .DEBUG_LOCK_I(dbg_lock_i),
                .DEBUG_CYC_I(dbg_cyc_i),
                .DEBUG_STB_I(dbg_stb_i),
                // ----- Outputs -------
 `ifdef CFG_USER_ENABLED    
                .user_valid(),
                .user_opcode(),
                .user_operand_0(),
                .user_operand_1(),
 `endif    
 `ifdef CFG_IWB_ENABLED
                // Instruction Wishbone master
                .I_DAT_O(),
                .I_ADR_O(),
                .I_CYC_O(),
                .I_SEL_O(),
                .I_STB_O(),
                .I_WE_O(),
                .I_CTI_O(),
                .I_LOCK_O(),
                .I_BTE_O(),
 `endif
                // Data Wishbone master
                .D_DAT_O(),
                .D_ADR_O(),
                .D_CYC_O(),
                .D_SEL_O(),
                .D_STB_O(),
                .D_WE_O(),
                .D_CTI_O(),
                .D_LOCK_O(),
                .D_BTE_O(),
                // Debug Slave port WishboneInterface
                .DEBUG_ACK_O(),
                .DEBUG_ERR_O(),
                .DEBUG_RTY_O(),
                .DEBUG_DAT_O()
                );
   
`elsif WISHBONE_CPU_MOR1K
`elsif WISHBONE_CPU_OR1200
`endif

   
endmodule // wishbone_cpu
