////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : comp8.vf
// /___/   /\     Timestamp : 01/29/2024 17:42:31
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2 -w "C:/Documents and Settings/Archive/lab3_verilog/comp8.sch" comp8.vf
//Design Name: comp8
//Device: virtex2
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module comp8(a, 
             b, 
             EQ);

    input [7:0] a;
    input [7:0] b;
   output EQ;
   
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_6;
   wire XLXN_7;
   wire XLXN_8;
   wire XLXN_11;
   wire XLXN_12;
   wire XLXN_13;
   wire XLXN_14;
   
   XNOR2 XLXI_9 (.I0(b[0]), 
                 .I1(a[0]), 
                 .O(XLXN_3));
   XNOR2 XLXI_10 (.I0(b[1]), 
                  .I1(a[1]), 
                  .O(XLXN_4));
   XNOR2 XLXI_11 (.I0(b[2]), 
                  .I1(a[2]), 
                  .O(XLXN_5));
   XNOR2 XLXI_12 (.I0(b[3]), 
                  .I1(a[3]), 
                  .O(XLXN_6));
   XNOR2 XLXI_13 (.I0(b[4]), 
                  .I1(a[4]), 
                  .O(XLXN_7));
   XNOR2 XLXI_14 (.I0(b[5]), 
                  .I1(a[5]), 
                  .O(XLXN_8));
   XNOR2 XLXI_15 (.I0(b[6]), 
                  .I1(a[6]), 
                  .O(XLXN_11));
   XNOR2 XLXI_16 (.I0(b[7]), 
                  .I1(a[7]), 
                  .O(XLXN_12));
   AND4 XLXI_17 (.I0(XLXN_6), 
                 .I1(XLXN_5), 
                 .I2(XLXN_4), 
                 .I3(XLXN_3), 
                 .O(XLXN_13));
   AND4 XLXI_18 (.I0(XLXN_12), 
                 .I1(XLXN_11), 
                 .I2(XLXN_8), 
                 .I3(XLXN_7), 
                 .O(XLXN_14));
   AND2 XLXI_19 (.I0(XLXN_14), 
                 .I1(XLXN_13), 
                 .O(EQ));
endmodule
