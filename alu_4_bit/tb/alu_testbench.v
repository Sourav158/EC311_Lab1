module alu_testbench(
    );
    
    reg [3:0] a_i, b_i;
    reg [1:0] s_i;
    wire [7:0] c_o;
    
    alu a1(.a_i(a_i), .b_i(b_i), .s_i(s_i), .c_o(c_o));
    
    initial begin
        a_i = 0; b_i = 0; s_i = 0;
    end
    
    always begin
        #1 {a_i, b_i} = {a_i, b_i} + 1'b1;
        if ((a_i == 4'b1111) && (b_i == 4'b1111) && (s_i == 2'b00)) begin
            #1 a_i = 0; #2 b_i = 0; #1 s_i = s_i + 1'b1;
        end
        if ((a_i == 4'b1111) && (b_i == 4'b1111) && (s_i == 2'b01)) begin
            #1 a_i = 0; #2 b_i = 0; #1 s_i = s_i + 1'b1;
        end
        if ((a_i == 4'b1111) && (b_i == 4'b1111) && (s_i == 2'b10)) begin
            #1 a_i = 0; #2 b_i = 0; #1 s_i = s_i + 1'b1;
        end
        if ((a_i == 4'b1111) && (b_i == 4'b1111) && (s_i == 2'b11)) #1 $finish;
    end
      
endmodule
