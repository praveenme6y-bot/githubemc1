`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2026 16:29:57
// Design Name: 
// Module Name: csa_tb
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


module csa_tb;

reg[3:0]a;
reg[3:0]b;
reg[3:0]c_in;
wire[5:0]sum;

carry_look_adder uut(.a(a), .b(b), .c_in(c_in), .sum(sum), .carry(carry));


endmodule
