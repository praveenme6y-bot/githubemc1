`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2026 15:03:28
// Design Name: 
// Module Name: fulladder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module fa_tb;
reg a,b,c_in;
wire sum,carry;

fulladdr_bh akp(.a(a), .b(b), .c_in(c_in), .sum(sum), .carry(carry));

initial
begin
    #100 a=0;b=0;c_in=0;
    #100 a=0;b=0;c_in=1;
    #100 a=0;b=1;c_in=0;
    #100 a=0;b=1;c_in=1;
    #100 a=1;b=0;c_in=0;
    #100 a=1;b=0;c_in=1;
    #100 a=1;b=1;c_in=0;
    #100 a=1;b=1;c_in=1;
    end
endmodule
    