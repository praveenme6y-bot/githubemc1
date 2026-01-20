`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 02:46:31
// Design Name: 
// Module Name: half_adder_bh
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


module half_adder_bh(A, B, S, Co);
input A, B;
output reg S, Co;

always @ (A or B)
begin
S = A^B;
Co = A&B;
end
endmodule
