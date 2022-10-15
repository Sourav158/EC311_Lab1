`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2022 09:39:02 PM
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(
    input [3:0]a_i,
    input [3:0]b_i,
    input c_in,
    output [3:0]sum_o,
    output carry_o,
    output c3_o
    );
    
    wire w1, w2;
    
    Full_Adder F1(.a_i(a_i[0]), .b_i(b_i[0]), .c_in(c_in), .sum_o(sum_o[0]), .carry_o(w1));
    Full_Adder F2(.a_i(a_i[1]), .b_i(b_i[1]), .c_in(w1), .sum_o(sum_o[1]), .carry_o(w2));
    Full_Adder F3(.a_i(a_i[2]), .b_i(b_i[2]), .c_in(w2), .sum_o(sum_o[2]), .carry_o(c3_o));
    Full_Adder F4(.a_i(a_i[3]), .b_i(b_i[3]), .c_in(c3_o), .sum_o(sum_o[3]), .carry_o(carry_o));
    
endmodule
