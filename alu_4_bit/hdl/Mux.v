`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 03:00:11 AM
// Design Name: 
// Module Name: Mux
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

module Mux(
    input [7:0]j_i,
    input [7:0]k_i,
    input [7:0]l_i,
    input [7:0]m_i,
    input [1:0]s_i,
    output reg [7:0]c_o
    );
    
    always @(*) begin
        case(s_i)
            2'b00: c_o = m_i[7:0];
            2'b01: c_o = j_i[7:0];
            2'b10: c_o = k_i[7:0];
            2'b11: c_o = l_i[7:0];
        endcase
    end
endmodule
