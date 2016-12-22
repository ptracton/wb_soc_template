//                              -*- Mode: Verilog -*-
// Filename        : fw_interface_wb.v
// Description     : Firmware Testing Wishbone Bus Interface
// Author          : Philip Tracton
// Created On      : Wed Dec 21 14:05:32 2016
// Last Modified By: Philip Tracton
// Last Modified On: Wed Dec 21 14:05:32 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

module fw_interface_wb (/*AUTOARG*/
   // Outputs
   wb_ack_o, wb_err_o, wb_dat_o, new_report, new_warning, new_error,
   report_reg, warning_reg, error_reg, expected_reg, measured_reg,
   write_mem, data, index,
   // Inputs
   wb_clk_i, wb_rst_i, wb_adr_i, wb_dat_i, wb_sel_i, wb_we_i,
   wb_bte_i, wb_cti_i, wb_cyc_i, wb_stb_i
   ) ;

   //
   // Wishbone Interface
   //
   input wire	   wb_clk_i;
   input wire      wb_rst_i;
   
   input wire [31:0] wb_adr_i;
   input wire [31:0] wb_dat_i;
   input wire [3:0]  wb_sel_i;
   input wire        wb_we_i;
   input wire [1:0]  wb_bte_i;
   input wire [2:0]  wb_cti_i;
   input wire        wb_cyc_i;
   input wire        wb_stb_i;
   
   output wire       wb_ack_o;
   output wire       wb_err_o;
   output reg [31:0] wb_dat_o;

   output wire       new_report;
   output wire       new_warning;
   output wire       new_error;
   
   output reg [31:0] report_reg;
   output reg [31:0] warning_reg;
   output reg [31:0] error_reg;
   output reg [31:0] expected_reg;
   output reg [31:0] measured_reg;
   output wire       write_mem;
   output wire [7:0] data;
   output wire [5:0] index;
   

   /*AUTOREG*/
   /*AUTOWIRE*/
   wire              control_reg_enable  = (wb_adr_i[6:2] == 7'h00) & wb_cyc_i & wb_stb_i;
   wire              report_reg_enable   = (wb_adr_i[6:2] == 7'h01) & wb_cyc_i & wb_stb_i;
   wire              warning_reg_enable  = (wb_adr_i[6:2] == 7'h02) & wb_cyc_i & wb_stb_i;
   wire              error_reg_enable    = (wb_adr_i[6:2] == 7'h04) & wb_cyc_i & wb_stb_i;
   wire              measured_reg_enable = (wb_adr_i[6:2] == 7'h05) & wb_cyc_i & wb_stb_i;
   wire              expected_reg_enable = (wb_adr_i[6:2] == 7'h06) & wb_cyc_i & wb_stb_i;
   
   assign write_mem = ((wb_adr_i[6:2] > 7'h18) && (wb_adr_i[6:0] < 7'h58)) & wb_cyc_i & wb_stb_i;
   assign data      = (write_mem) ? wb_dat_i[7:0] : 0;
   assign index     = (write_mem) ? wb_adr_i[5:0] - 6'h10: 0;
   

   //
   // Detect a new message
   //
   assign new_report  = (wb_we_i & control_reg_enable & wb_dat_i[0]);
   assign new_warning = (wb_we_i & control_reg_enable & wb_dat_i[1]);
   assign new_error   = (wb_we_i & control_reg_enable & wb_dat_i[2]);
     
   //
   // Wishbone Response
   //
   assign wb_err_o = 0;
   assign wb_ack_o = |wb_sel_i & wb_cyc_i & wb_stb_i;
   
   
   //
   // Write Register Logic
   //
   always @(posedge wb_clk_i)
     if (wb_rst_i) begin
        report_reg <= 0;
        warning_reg <= 0;
        error_reg <= 0;        
     end else begin
        if (wb_we_i & report_reg_enable) begin
           case (wb_sel_i)
             4'h1: begin report_reg   <= {report_reg[31:8], wb_dat_i[7:0]};  $display("1SEL 0x%x @ %d", wb_sel_i, $time); end
             4'h2: begin report_reg[15:8]  <= wb_dat_i[7:0];  $display("2SEL 0x%x @ %d", wb_sel_i, $time); end
             4'h4: begin report_reg[24:16] <= wb_dat_i[7:0];  $display("4SEL 0x%x @ %d", wb_sel_i, $time); end
             4'h8: begin report_reg[31:24] <= wb_dat_i[7:0];  $display("8SEL 0x%x @ %d", wb_sel_i, $time); end
             4'h3: begin report_reg[15:0]  <= wb_dat_i[15:0]; $display("3SEL 0x%x @ %d", wb_sel_i, $time); end
             4'hC: begin report_reg[31:16] <= wb_dat_i[15:0]; $display("CSEL 0x%x @ %d", wb_sel_i, $time); end
             4'hF: begin report_reg        <= wb_dat_i;       $display("FSEL 0x%x @ %d", wb_sel_i, $time); end
             default: begin report_reg     <= report_reg;     $display("DSEL 0x%x @ %d", wb_sel_i, $time); end
           endcase // case (wb_sel_i)           
           report_reg <= wb_dat_i;           
        end

        if (wb_we_i & warning_reg_enable) begin
           warning_reg <= wb_dat_i;           
        end

        if (wb_we_i & error_reg_enable) begin
           error_reg <= wb_dat_i;           
        end

        if (wb_we_i & measured_reg_enable) begin
           measured_reg <= wb_dat_i;           
        end

        if (wb_we_i & expected_reg_enable) begin
           expected_reg <= wb_dat_i;           
        end        
     end // else: !if(wb_rst_i)


   
   
   //
   // Read Register Logic
   //
   always @(posedge wb_clk_i)
     if (wb_rst_i) begin
        wb_dat_o <= 0;        
     end else begin
        if (wb_we_i & report_reg_enable) begin
           wb_dat_o <= report_reg;           
        end

        else if (wb_we_i & warning_reg_enable) begin
           wb_dat_o <= warning_reg;           
        end

        else if (wb_we_i & error_reg_enable) begin
           wb_dat_o <= error_reg;           
        end
        
        else if (wb_we_i & measured_reg_enable) begin
           wb_dat_o <= measured_reg;           
        end        

        else if (wb_we_i & expected_reg_enable) begin
           wb_dat_o <= expected_reg;           
        end        
        else begin
           wb_dat_o <= 0;
           
        end
     end
   
endmodule // fw_interface_wb
