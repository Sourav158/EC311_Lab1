`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 02:49:47 AM
// Design Name: 
// Module Name: concatenator
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


module concatenator(
    input [3:0]a_i,
    input [3:0]b_i,
    output [7:0]c_o
    );
    
    assign c_o = {a_i, b_i};
endmodule
