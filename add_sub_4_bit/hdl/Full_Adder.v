`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2022 01:35:38 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input a_i,
    input b_i,
    input c_in,
    output sum_o,
    output carry_o
   );
    wire w1, w2, w3;
    
    
    Half_Adder A1(.a_i(a_i), .b_i(b_i), .sum_o(w1), .carry_o(w2));
    Half_Adder A2(.a_i(c_in), .b_i(w1), .sum_o(sum_o), .carry_o(w3));
    or G1(carry_o, w2, w3);
endmodule
