`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2026 15:40:54
// Design Name: 
// Module Name: carry_look_adder
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


module carry_look_adder(a, b, c_in, sum, carry);
input [0:4]a;
input [0:4]b;
input [0:4]c_in;

output [0:5]sum, carry;

wire [3:0]sum_csa;
wire [4:0]carry_csa;

full_adder_bh b0(a[0], b[0], c_in[0], sum_csa[0], carry_csa[1]);
full_adder_bh b1(a[1], b[1], c_in[1], sum_csa[1], carry_csa[2]);
full_adder_bh b2(a[2], b[2], c_in[2], sum_csa[2], carry_csa[3]);
full_adder_bh b3(a[3], b[3], c_in[3], sum_csa[3], carry_csa[4]);

assign carry_csa[0]=1'b0;

full_adder_bh b4(sum_csa[0], carry_csa[0], 1'b0, sum[0], sum[1]);
full_adder_bh b5(sum_csa[1], carry_csa[1], sum[1], sum[2], sum[3]);
full_adder_bh b6(sum_csa[2], carry_csa[2], sum[3], sum[4], sum[5]);

endmodule
