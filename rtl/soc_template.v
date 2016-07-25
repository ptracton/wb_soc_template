//                              -*- Mode: Verilog -*-
// Filename        : soc_template.v
// Description     : Wishbone based SoC template
// Author          : Philip Tracton
// Created On      : Sun Jul 24 20:47:25 2016
// Last Modified By: Philip Tracton
// Last Modified On: Sun Jul 24 20:47:25 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

module soc_template (/*AUTOARG*/
   // Outputs
   uart_tx,
   // Inputs
   clk_sys_i, reset_sys_i, uart_rx
   ) ;

   //
   // System Interface
   //
   input clk_sys_i;
   input reset_sys_i;

   //
   // UART Interface
   //
   input uart_rx;
   output uart_tx;

   /*AUTOWIRE*/

   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg                  uart_tx = 0;
   // End of automatics

   //
   // Bus Matrix
   //
   wire                 wb_clk_i = clk_i;
   wire                 wb_rst_i = rst_i;
   
`include "soc_bus_matrix.vh"
   
   //
   // Wishbone CPU
   //
/* -----\/----- EXCLUDED -----\/-----
   wishbone_cpu cpu_wrapper(
                            // Outputs
                            .iwbm_adr_o(), 
                            .iwbm_stb_o(), 
                            .iwbm_cyc_o(), 
                            .iwbm_sel_o(), 
                            .iwbm_we_o(),
                            .iwbm_cti_o(), 
                            .iwbm_bte_o(), 
                            .iwbm_dat_o(), 
                            .dwbm_adr_o(), 
                            .dwbm_stb_o(),
                            .dwbm_cyc_o(), 
                            .dwbm_sel_o(), 
                            .dwbm_we_o(), 
                            .dwbm_cti_o(), 
                            .dwbm_bte_o(),
                            .dwbm_dat_o(), 
                            .dbg_lss_o(), 
                            .dbg_is_o(), 
                            .dbg_wp_o(), 
                            .dbg_bp_o(), 
                            .dbg_dat_o(),
                            .dbg_ack_o(),
                            
                            // Inputs
                            .clk_i(clk_i), 
                            .rst_i(rst_i), 
                            .interrupts(), 
                            .iwbm_err_i(), 
                            .iwbm_ack_i(), 
                            .iwbm_dat_i(),
                            .iwbm_rty_i(), 
                            .dwbm_err_i(), 
                            .dwbm_ack_i(), 
                            .dwbm_dat_i(), 
                            .dwbm_rty_i(),
                            .dbg_stall_i(), 
                            .dbg_ewt_i(), 
                            .dbg_stb_i(), 
                            .dbg_we_i(), 
                            .dbg_sel_i(), 
                            .dbg_cti_i(),
                            .dbg_bte_i(), 
                            .dbg_lock_i(), 
                            .dbg_cyc_i(), 
                            .dbg_adr_i(), 
                            .dbg_dat_i()
                            ) ; 
 -----/\----- EXCLUDED -----/\----- */

   system_controller sys_con(
                             // Outputs
                             .clk_i(clk_i), 
                             .rst_i(rst_i), 
                             .nrst_i(nrst_i),
                             // Inputs
                             .clk_sys_i(clk_sys_i), 
                             .rst_sys_i(rst_sys_i)                             
                             );
   
  
endmodule // soc_template
