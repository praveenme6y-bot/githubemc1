`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 15:59:58
// Design Name: 
// Module Name: braun_array_multiplier
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


module braun_array_multiplier(a, b, p);
input [3:0]a, b;
output [7:0]p;

wire s1, s2, s3, s4, s5, s6;
wire c1, c2, c3, c4, c5, c6, c7, c8;
wire [3:0]pp0, pp1, pp2, pp3;

assign pp0 = a*b[0];
assign pp1 = a*b[1];
assign pp2 = a*b[2];
assign pp3 = a*b[3];

assign p[0] = pp0[0];
half_adder_df hf1(p[1], c1, pp0[1], pp1[0]);
full_adder1_df fa1(s1, c2, pp0[2], pp1[1], c1);
full_adder1_df fa2(s2, c3, pp0[3], pp1[2], c2);
half_adder1_df hf2(p[2], c4, s1, pp2[0]);
full_adder1_df fa4(p[3], c5, c4, pp2[1], pp3[0]);
full_adder1_df fa5(s3, c6, pp1[3], pp2[2], c5);
full_adder1_df fa6(p[4], c1, s3, c6, pp3[1]);
half_adder_df hf3(p[6], p[7],c8, pp3[3]);
endmodule
