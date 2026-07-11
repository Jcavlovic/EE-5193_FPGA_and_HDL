`timescale 1ns / 1ps

module lab_4a_half_adder(
    input a, b,
    output out, cout
    );
    
    assign out = a ^ b;
    assign cout = a & b;
        
endmodule
    