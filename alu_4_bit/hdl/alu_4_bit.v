`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 03:05:41 AM
// Design Name: 
// Module Name: alu
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


module alu(
    input [3:0]a_i,
    input [3:0]b_i,
    input [1:0]s_i,
    output [7:0]c_o
    );
    
    wire [7:0] w0, w1, w2, w3, w4;
    
    four_bit_adder FBA1(.a_i(a_i), .b_i(b_i), .c_o(w0));
    multiplier M1(.a_i(a_i), .b_i(b_i), .c_o(w1));
    left_shift L1(.a_i(a_i), .b_i(b_i), .c_o(w2));
    concatenator C1(.a_i(a_i), .b_i(b_i), .c_o(w3));
    
    Mux Mx1(.j_i(w0), .k_i(w2), .l_i(w1), .m_i(w3), .s_i(s_i), .c_o(w4));
    
    assign c_o = w4;
endmodule
