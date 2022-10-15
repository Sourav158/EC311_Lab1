module fourbitadder_testbench_v1(
    );
    
    reg [3:0]a_i, b_i;
    reg c_in;
    wire [3:0]sum_o; 
    wire carry_o, c3_o;
    
    four_bit_adder FBA1(.a_i(a_i), .b_i(b_i), .c_in(c_in), .sum_o(sum_o), .carry_o(carry_o), .c3_o(c3_o));
    
    initial begin
    
    a_i = 0; b_i = 0; c_in = 0;
    
    end
    
    always begin
        #10 {a_i, b_i} = {a_i, b_i} + 1'b1;
        if ((a_i == 4'b1111) && (b_i == 4'b1111) && (c_in == 0)) begin
        #10 a_i = 0; b_i = 0; c_in = 0;
    end
    
    if ((a_i == 4'b1111) && (b_i == 4'b1111) && (c_in == 1)) #10 $finish;
    end
endmodule
