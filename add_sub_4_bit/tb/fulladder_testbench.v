module fulladder_testbench_v1(
    );
    
    reg a_i, b_i, c_in;
    wire sum_o, carry_o;
    
    Full_Adder FA1(.a_i(a_i), .b_i(b_i), .c_in(c_in), .sum_o(sum_o), .carry_o(carry_o));
    
    initial begin
    
    a_i = 0; b_i = 0; c_in = 0;
    
    end
    
    always begin
        #10 {a_i, b_i, c_in} = {a_i, b_i, c_in} + 1'b1;
        if ((a_i == 1'b1) && (b_i == 1'b1) && (c_in == 1'b1)) #10 $finish;
    end
    
   
endmodule
