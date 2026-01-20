`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 02:19:41
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder;
    reg a, b;
    wire s, c;
    
    half_adder_bh bh(.A(a), .B(b), .S(s), .Co(c));
    
    initial
    begin
    #100 a=0; b=0;
    #100 a=0; b=1;
    #100 a=1; b=0;
    #100 a=1; b=1;
    end
endmodule
