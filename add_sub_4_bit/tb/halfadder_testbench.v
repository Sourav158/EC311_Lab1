module half_adder(
    );
    
    reg a_i, b_i;
    wire sum_o, carry_o;
    
    Half_Adder HA1(.a_i(a_i), .b_i(b_i), .sum_o(sum_o), .carry_o(carry_o));
    
    initial begin
        a_i = 0; b_i = 0;
        #10 a_i = 0; b_i = 1;
        #10 a_i = 1; b_i = 0;
        #10 a_i = 1; b_i = 1;
        #10 $finish;
    end
endmodule
