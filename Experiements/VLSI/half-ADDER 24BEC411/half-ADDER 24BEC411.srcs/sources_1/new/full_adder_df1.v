`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 16:30:10
// Design Name: 
// Module Name: full_adder_df1
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


module full_adder_df1(a, b, c_in, sum, carry);
input a, b, c_in;
output sum, carry;

assign sum = a^b^c_in;
assign carry = a&b | b&c_in | c_in&a;
endmodule