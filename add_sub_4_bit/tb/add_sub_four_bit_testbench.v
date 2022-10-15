`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2022 11:05:26 PM
// Design Name: 
// Module Name: add_sub_four_bit_testbench
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

module add_sub_four_bit_testbench(

    );
    reg [3:0] A, B;
    reg M;
    wire [3:0]S;
    wire V, C;
    
    add_sub_four_bit AS1(.a_i(A), .b_i(B), .M(M), .sum_o(S), .V(V), .C(C));
    
    initial begin
       A = 0; B = 0; M = 0;
    end
    
    always begin
        #2 {A,B,M} = {A,B,M} + 1'b1;
    if ((A == 4'b1111) && (B == 4'b1111) && (M == 1)) #10 $finish;
    end
endmodule
