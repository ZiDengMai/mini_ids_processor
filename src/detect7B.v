////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : detect7B.vf
// /___/   /\     Timestamp : 01/29/2024 17:42:33
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2 -w "C:/Documents and Settings/Archive/lab3_verilog/detect7B.sch" detect7B.vf
//Design Name: detect7B
//Device: virtex2
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module detect7B(ce, 
                clk, 
                hwregA, 
                match_en, 
                mrst, 
                pipe1, 
                match);

    input ce;
    input clk;
    input [63:0] hwregA;
    input match_en;
    input mrst;
    input [71:0] pipe1;
   output match;
   
   wire [71:0] pipe0;
   wire XLXN_5;
   wire [111:0] XLXN_7;
   wire XLXN_12;
   wire XLXN_18;
   wire match_DUMMY;
   
   assign match = match_DUMMY;
   reg9B XLXI_2 (.ce(ce), 
                 .clk(clk), 
                 .clr(XLXN_5), 
                 .d(pipe1[71:0]), 
                 .q(pipe0[71:0]));
   busmerge XLXI_3 (.da(pipe0[47:0]), 
                    .db(pipe1[63:0]), 
                    .q(XLXN_7[111:0]));
   wordmatch XLXI_4 (.datacomp(hwregA[55:0]), 
                     .datain(XLXN_7[111:0]), 
                     .wildword(hwregA[62:56]), 
                     .match(XLXN_12));
   FDCE XLXI_5 (.C(clk), 
                .CE(XLXN_18), 
                .CLR(XLXN_5), 
                .D(XLXN_18), 
                .Q(match_DUMMY));
   defparam XLXI_5.INIT = 1'b0;
   FD XLXI_6 (.C(clk), 
              .D(mrst), 
              .Q(XLXN_5));
   defparam XLXI_6.INIT = 1'b0;
   AND3B1 XLXI_7 (.I0(match_DUMMY), 
                  .I1(match_en), 
                  .I2(XLXN_12), 
                  .O(XLXN_18));
endmodule
