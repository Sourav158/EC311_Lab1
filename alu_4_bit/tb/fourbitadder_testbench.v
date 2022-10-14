`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 02:38:56 AM
// Design Name: 
// Module Name: fourbitadder_testbench
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


module fourbitadder_testbench(

    );
    
    reg [3:0] a_i, b_i;
    wire [7:0] c_o;
    
    four_bit_adder fba1(.a_i(a_i), .b_i(b_i), .c_o(c_o));
    
    initial begin
        a_i = 0; b_i = 0;
    end
    
    always begin
        #2 {a_i, b_i} = {a_i, b_i} + 1'b1;
        if ((a_i == 4'b1111) && (b_i == 4'b1111)) #10 $finish;
    end
    
endmodule
