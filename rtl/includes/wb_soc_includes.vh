//                              -*- Mode: Verilog -*-
// Filename        : wb_soc_includes.vh
// Description     : Wishbone SoC Includes
// Author          : Philip Tracton
// Created On      : Sun Jul 24 21:19:37 2016
// Last Modified By: Philip Tracton
// Last Modified On: Sun Jul 24 21:19:37 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!


//
// Select only 1 CPU.  No more, no less
//

//`define WISHBONE_CPU_LM32
//`define WISHBONE_CPU_MOR1K
`define WISHBONE_CPU_OR1200
