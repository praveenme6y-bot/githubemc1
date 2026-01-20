`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2026 15:35:29
// Design Name: 
// Module Name: full_adder_bh
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


module full_adder_bh(a, b, c_in, sum, carry);
input a, b, c_in;
output reg sum, carry;

always@(a or b or c_in)
begin
sum = a^b^c_in;
carry = a&b | b&c_in | c_in&a;
end
endmodule
