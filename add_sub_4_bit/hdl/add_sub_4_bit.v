`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2022 09:53:04 PM
// Design Name: 
// Module Name: add_sub_four_bit
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


module add_sub_four_bit(
    input [3:0]a_i,
    input [3:0]b_i,
    input M,
    output [3:0]sum_o,
    output V,
    output C
    );
    
    wire [3:0] w1;
    wire w2;
    
    xor G0(w1[0], b_i[0], M);
    xor G1(w1[1], b_i[1], M);
    xor G2(w1[2], b_i[2], M);
    xor G3(w1[3], b_i[3], M);
    
    four_bit_adder FBA1(.a_i(a_i), .b_i(w1), .c_in(M), .sum_o(sum_o), .carry_o(w2), .c3_o(C));
    xor G4(V, w2, C);
endmodule
