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

   wb_vscale cpu(
     		 .clk(clk_i),
     		 .rst(rst_i),
                 .ext_interrupts(interrupts[24:0]),
      
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
     		 .dwbm_rty_i(dwbm_rty_i)
                 );


   /* -----\/----- EXCLUDED -----\/-----
    wire [31:0] imem_haddr;
    wire [1:0]  imem_htrans;
    wire        imem_hwrite;
    wire [2:0]  imem_hsize;
    wire [2:0]  imem_hburst;
    wire [31:0] imem_hwdata;
    wire [31:0] imem_hrdata;
    wire [1:0]  imem_hresp;
    wire        imem_hready;
    wire        imem_hsel = imem_hready;

    wire [31:0] dmem_haddr;
    wire [1:0]  dmem_htrans;
    wire        dmem_hwrite;
    wire [2:0]  dmem_hsize;
    wire [2:0]  dmem_hburst;
    wire [31:0] dmem_hwdata;
    wire [31:0] dmem_hrdata;
    wire [1:0]  dmem_hresp;
    wire        dmem_hready;
    wire        dmem_hsel = dmem_hready;   
    
    ahb2wb ibridge(
    .adr_o(iwbm_adr_o), 
    .dat_o(iwbm_dat_o), 
    .dat_i(iwbm_dat_i), 
    .ack_i(iwbm_ack_i), 
    .cyc_o(iwbm_cyc_o),
    .we_o(iwbm_we_o), 
    .stb_o(iwbm_stb_o), 
    .hclk(clk_i), 
    .hresetn(~rst_i), 
    .haddr(imem_haddr), 
    .htrans(imem_htrans), 
    .hwrite(imem_hwrite), 
    .hsize(imem_hsize), 
    .hburst(imem_hburst),
    .hsel(imem_hsel), 
    .hwdata(imem_hwdata), 
    .hrdata(imem_hrdata), 
    .hresp(imem_hresp),
    .hready(imem_hready), 
    .clk_i(clk_i), 
    .rst_i(rst_i)
    );

    ahb2wb dbridge(
    .adr_o(dwbm_adr_o), 
    .dat_o(dwbm_dat_o), 
    .dat_i(dwbm_dat_i), 
    .ack_i(dwbm_ack_i), 
    .cyc_o(dwbm_cyc_o),
    .we_o(dwbm_we_o), 
    .stb_o(dwbm_stb_o), 
    .hclk(clk_i), 
    .hresetn(~rst_i), 
    .haddr(dmem_haddr), 
    .htrans(dmem_htrans), 
    .hwrite(dmem_hwrite), 
    .hsize(dmem_hsize), 
    .hburst(dmem_hburst),
    .hsel(dmem_hsel), 
    .hwdata(dmem_hwdata), 
    .hrdata(dmem_hrdata), 
    .hresp(dmem_hresp),
    .hready(dmem_hready), 
    .clk_i(clk_i), 
    .rst_i(rst_i)
    );   

    vscale_core cpu(
    .clk(clk_i),
    .ext_interrupts(interrupts), 
    .imem_haddr(imem_haddr),
    .imem_hwrite(imem_hwrite),
    .imem_hsize(imem_hsize),
    .imem_hburst(imem_hburst),
    .imem_hmastlock(),
    .imem_hprot(),
    .imem_htrans(imem_htrans),
    .imem_hwdata(imem_hwdata),
    .imem_hrdata(imem_hrdata),
    .imem_hready(imem_hready),
    .imem_hresp(imem_hresp),
    .dmem_haddr(dmem_haddr),
    .dmem_hwrite(dmem_hwrite),
    .dmem_hsize(dmem_hsize),
    .dmem_hburst(dmem_hburst),
    .dmem_hmastlock(),
    .dmem_hprot(),
    .dmem_htrans(dmem_htrans),
    .dmem_hwdata(dmem_hwdata),
    .dmem_hrdata(dmem_hrdata),
    .dmem_hready(dmem_hready),
    .dmem_hresp(dmem_hresp),
    .htif_reset(rst_i),
    .htif_id(1'b0),
    .htif_pcr_req_valid(1'b0),
    .htif_pcr_req_ready(),
    .htif_pcr_req_rw(1'b0),
    .htif_pcr_req_addr('b0),
    .htif_pcr_req_data('b0),
    .htif_pcr_resp_valid(),
    .htif_pcr_resp_ready('b0),
    .htif_pcr_resp_data(),
    .htif_ipi_req_ready('b0),
    .htif_ipi_req_valid(),
    .htif_ipi_req_data(),
    .htif_ipi_resp_ready(),
    .htif_ipi_resp_valid('b0),
    .htif_ipi_resp_data('b0),
    .htif_debug_stats_pcr()
    );
    -----/\----- EXCLUDED -----/\----- */
   

`elsif WISHBONE_CPU_ZIPCPU

   //
   // ZIP has a single WB interface, this design assumes 2
   //
   wire z_inst_or_data;
   wire [ADDRESS_WIDTH-1:0] zwbm_adr_o;   
   wire [DATA_WIDTH-1:0]    zwbm_dat_o;
   wire [DATA_WIDTH-1:0]    zwbm_dat_i;
   wire 		    zwbm_cyc_o;
   wire [3:0] 		    zwbm_sel_o;
   wire 		    zwbm_we_o;

   wire 		    zwbm_err_i;
   wire 		    zwbm_ack_i;
   wire [DATA_WIDTH-1:0]    zwbm_dat_i;
   wire 		    zwbm_rty_i;
   
 `define ZWBM_INSTR_ADDR_START 32'h00000000
 `define ZWBM_INSTR_ADDR_END   32'h00001000

   //Determine if this is a instruction or data access
   assign z_inst_or_data = ((zwbm_adr_o >= ZWBM_INSTR_ADDR_START) && (zwbm_adr_o <ZWBM_INSTR_ADDR_END));
   assign iwbm_adr_o = (z_inst_or_data)  ? zwbm_adr_o : 32'h0;
   assign iwbm_stb_o = (z_inst_or_data)  ? zwbm_stb_o : 0;
   
   assign dwbm_adr_o = (!z_inst_or_data) ? zwbm_adr_o : 32'h0;
   assign dwbm_stb_o = (!z_inst_or_data) ? zwbm_stb_o : 0;
   
   zipcpu cpu(
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
	      .o_wb_gbl_cyc(zwbm_cyc_o), 
	      .o_wb_gbl_stb(zwbm_stb_o),
	      .o_wb_lcl_cyc(), 
	      .o_wb_lcl_stb(),
	      .o_wb_we(zwbm_we_o), 
	      .o_wb_addr(zwbm_adr_o), 
	      .o_wb_data(zwbm_dat_o), 
	      .o_wb_sel(zwbm_sel_o),
	      .i_wb_ack(zwbm_ack_i), 
	      .i_wb_stall(zwbm_rty_i), 
	      .i_wb_data(zwbm_dat_i),
	      .i_wb_err(zwbm_err_i),
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
