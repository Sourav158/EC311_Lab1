module Mux_testbench(
    );
    
    reg [7:0] j_i, k_i, l_i, m_i;
    reg [1:0] s_i;
    wire [7:0] c_o;
    
    Mux M1(.j_i(j_i), .k_i(k_i), .l_i(l_i), .m_i(m_i), .s_i(s_i), .c_o(c_o));
    
    initial begin
        j_i = 0; k_i = 0; l_i = 0; m_i = 0; s_i = 0;
    end
    
    always begin
        #1 {j_i, k_i, l_i, m_i} =  {j_i, k_i, l_i, m_i} + 1'b1;
        
        if ((j_i == 8'b11111111) && (k_i == 8'b11111111) && (l_i == 8'b11111111) && (m_i == 8'b11111111) && (s_i == 2'b00)) begin
            #1 s_i = s_i + 1'b1; #1 j_i = 0; #1 k_i = 0; #1 l_i = 0; #1 m_i = 0;
        end
        if ((j_i == 8'b11111111) && (k_i == 8'b11111111) && (l_i == 8'b11111111) && (m_i == 8'b11111111) && (s_i == 2'b01)) begin
            #1 s_i = s_i + 1'b1; #1 j_i = 0; #1 k_i = 0; #1 l_i = 0; #1 m_i = 0;
        end
        if ((j_i == 8'b11111111) && (k_i == 8'b11111111) && (l_i == 8'b11111111) && (m_i == 8'b11111111) && (s_i == 2'b10)) begin
            #1 s_i = s_i + 1'b1; #1 j_i = 0; #1 k_i = 0; #1 l_i = 0; #1 m_i = 0;
        end
        if ((j_i == 8'b11111111) && (k_i == 8'b11111111) && (l_i == 8'b11111111) && (m_i == 8'b11111111) && (s_i == 2'b11)) begin
            #1 s_i = s_i + 1'b1; #1 j_i = 0; #1 k_i = 0; #1 l_i = 0; #1 m_i = 0;
        end
    end 
endmodule
