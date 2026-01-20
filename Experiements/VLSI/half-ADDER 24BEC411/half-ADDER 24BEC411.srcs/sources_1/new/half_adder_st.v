`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 02:12:52
// Design Name: 
// Module Name: half_adder_st
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


module half_adder_st(
    input A,
    input B,
    output S,
    output Co
    );
    
    xor x1(S, A, B);
    and a1(Co, A, B);
endmodule
