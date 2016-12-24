//                              -*- Mode: Verilog -*-
// Filename        : fw_interface_wb.v
// Description     : Firmware Testing Wishbone Bus Interface
// Author          : Philip Tracton
// Created On      : Wed Dec 21 14:05:32 2016
// Last Modified By: Philip Tracton
// Last Modified On: Wed Dec 21 14:05:32 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

`include "timescale.v"

module fw_interface_wb (/*AUTOARG*/
   // Outputs
   wb_ack_o, wb_rty_o, wb_err_o, wb_dat_o, new_report, new_warning,
   new_error, new_compare, report_reg, warning_reg, error_reg,
   expected_reg, measured_reg, write_mem, data, index,
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
   
   output reg        wb_ack_o;
   output reg        wb_rty_o;   
   output reg        wb_err_o;
   output reg [31:0] wb_dat_o;

   output wire       new_report;
   output wire       new_warning;
   output wire       new_error;
   output wire       new_compare;
   
   
   output reg [31:0] report_reg;
   output reg [31:0] warning_reg;
   output reg [31:0] error_reg;
   output reg [31:0] expected_reg;
   output reg [31:0] measured_reg;
   output wire       write_mem;
   output wire [7:0] data;
   output wire [5:0] index;
   

`define CONTROL_REG_OFFSET  6'h00  // 0x00
`define REPORT_REG_OFFSET   6'h01  // 0x04 >> 2
`define WARNING_REG_OFFSET  6'h02  // 0x08 >> 2
`define ERROR_REG_OFFSET    6'h03  // 0x0C >> 2
`define MEASURED_REG_OFFSET 6'h04  // 0x10 >> 2
`define EXPECTED_REG_OFFSET 6'h05  // 0x14 >> 2
`define MEMORY_OFFSET       6'h06  // 0x18 >> 2
`define MEMORY_END          6'h16  // 0x58 >> 2
   
   /*AUTOREG*/
   /*AUTOWIRE*/
   wire [6:0]        word_addr = wb_adr_i[8:2];   
   wire              control_reg_enable  = (wb_adr_i[8:2] == `CONTROL_REG_OFFSET) & wb_cyc_i & wb_stb_i;
   wire [7:0]        index_sel_offset;
   
   //
   // Control Signals for String Memory in logic block
   //
   assign write_mem = ((wb_adr_i[8:2] >= `MEMORY_OFFSET) && (wb_adr_i[8:2] < `MEMORY_END)) & wb_cyc_i & wb_stb_i;
   assign data      = (write_mem) ? wb_dat_i[7:0] : 0;
   assign index_sel_offset = (wb_sel_i == 4'h08)  ? 8'h00:
                             (wb_sel_i == 4'h04)  ? 8'h01:
                             (wb_sel_i == 4'h02)  ? 8'h02:
                             (wb_sel_i == 4'h01)  ? 8'h03:
                             0;
   wire [5:0]        sub = wb_adr_i[7:0] - (`MEMORY_OFFSET  <<2);

   //
   // FIXME: This is very annoying....
   //
`ifdef WISHBONE_CPU_LM32
   assign index     = (write_mem) ? wb_adr_i[7:0] - (`MEMORY_OFFSET  <<2) /*+ index_sel_offset*/ : 0;
`else
   assign index     = (write_mem) ? wb_adr_i[7:0] - (`MEMORY_OFFSET  <<2) + index_sel_offset : 0;
`endif
   

   //
   // Detect a new message
   //
   assign new_report  = (wb_we_i & control_reg_enable & wb_dat_i[0]);
   assign new_warning = (wb_we_i & control_reg_enable & wb_dat_i[1]);
   assign new_error   = (wb_we_i & control_reg_enable & wb_dat_i[2]);
   assign new_compare = (wb_we_i & control_reg_enable & wb_dat_i[3]);
     
   //
   // Wishbone Response
   //
   always @(posedge wb_clk_i)
     if (wb_rst_i) begin
        wb_ack_o <= 1'b0;
        wb_err_o <= 1'b0;
        wb_rty_o <= 1'b0;  
        
     end else begin
        //
        // If we address beyond the end of memory, that is an ERROR
        //
        if ((wb_cyc_i & wb_stb_i) & (wb_adr_i[7:2] > `MEMORY_END)) begin
           wb_err_o <= 1;           
        end else begin
           wb_err_o <= 0;           
        end

        //
        // We always respond in a single cycle, so ack on
        // cycle and strobe
        //
        if (wb_cyc_i & wb_stb_i) begin
           wb_ack_o <= 1;           
        end else begin
           wb_ack_o <= 0;           
        end
     end // else: !if(wb_rst_i)   
   
   //
   // Register Write Logic
   //
   always @(posedge wb_clk_i)
     if (wb_rst_i) begin
        report_reg   <= 0;
        warning_reg  <= 0;
        error_reg    <= 0;
        expected_reg <= 0;
        measured_reg <= 0;                
     end else begin
        if (wb_cyc_i & wb_stb_i & wb_we_i) begin
           case (wb_adr_i[8:2])
             `REPORT_REG_OFFSET:begin
                report_reg[07:00] <= wb_sel_i[0] ? wb_dat_i[07:00] : report_reg[07:00];
                report_reg[15:08] <= wb_sel_i[1] ? wb_dat_i[15:08] : report_reg[15:08];
                report_reg[23:16] <= wb_sel_i[2] ? wb_dat_i[23:16] : report_reg[23:16];
                report_reg[31:24] <= wb_sel_i[3] ? wb_dat_i[31:24] : report_reg[31:24];
             end
             
             `WARNING_REG_OFFSET:begin
                warning_reg[07:00] <= wb_sel_i[0] ? wb_dat_i[07:00] : warning_reg[07:00];
                warning_reg[15:08] <= wb_sel_i[1] ? wb_dat_i[15:08] : warning_reg[15:08];
                warning_reg[23:16] <= wb_sel_i[2] ? wb_dat_i[23:16] : warning_reg[23:16];
                warning_reg[31:24] <= wb_sel_i[3] ? wb_dat_i[31:24] : warning_reg[31:24];
             end

             `ERROR_REG_OFFSET:begin
                error_reg[07:00] <= wb_sel_i[0] ? wb_dat_i[07:00] : error_reg[07:00];
                error_reg[15:08] <= wb_sel_i[1] ? wb_dat_i[15:08] : error_reg[15:08];
                error_reg[23:16] <= wb_sel_i[2] ? wb_dat_i[23:16] : error_reg[23:16];
                error_reg[31:24] <= wb_sel_i[3] ? wb_dat_i[31:24] : error_reg[31:24];
             end

             `MEASURED_REG_OFFSET:begin
                measured_reg[07:00] <= wb_sel_i[0] ? wb_dat_i[07:00] : measured_reg[07:00];
                measured_reg[15:08] <= wb_sel_i[1] ? wb_dat_i[15:08] : measured_reg[15:08];
                measured_reg[23:16] <= wb_sel_i[2] ? wb_dat_i[23:16] : measured_reg[23:16];
                measured_reg[31:24] <= wb_sel_i[3] ? wb_dat_i[31:24] : measured_reg[31:24];
             end

             `EXPECTED_REG_OFFSET:begin
                expected_reg[07:00] <= wb_sel_i[0] ? wb_dat_i[07:00] : expected_reg[07:00];
                expected_reg[15:08] <= wb_sel_i[1] ? wb_dat_i[15:08] : expected_reg[15:08];
                expected_reg[23:16] <= wb_sel_i[2] ? wb_dat_i[23:16] : expected_reg[23:16];
                expected_reg[31:24] <= wb_sel_i[3] ? wb_dat_i[31:24] : expected_reg[31:24];
             end             
             
           endcase // case (wb_adr_i[7:2])           
        end // if (wb_cyc_i & wb_stb_i & wb_we_i)        
     end // else: !if(wb_rst_i)
   

   //
   // Register Read Logic
   //
   always @(posedge wb_clk_i)
     if (wb_rst_i) begin
        wb_dat_o <= 0;        
     end else begin
        if (wb_cyc_i & wb_stb_i & ~wb_we_i) begin
           case (wb_adr_i[7:2])
             `REPORT_REG_OFFSET:   wb_dat_o <= report_reg;
             `WARNING_REG_OFFSET:  wb_dat_o <= warning_reg;
             `ERROR_REG_OFFSET:    wb_dat_o <= error_reg;
             `MEASURED_REG_OFFSET: wb_dat_o <= measured_reg;
             `EXPECTED_REG_OFFSET: wb_dat_o <= expected_reg;
             default: wb_dat_o <= 0;             
           endcase // case (wb_adr_i[7:2])           
        end begin
           wb_dat_o <= 0;           
        end        
     end   
   
endmodule // fw_interface_wb
