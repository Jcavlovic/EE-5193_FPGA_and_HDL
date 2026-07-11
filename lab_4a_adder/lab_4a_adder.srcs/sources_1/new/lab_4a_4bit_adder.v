`timescale 1ns / 1ps

module lab_4a_4bit_adder(
    input [3:0] a, b, 
    input cin,
    output [3:0] out,
    output cout
    );
    
    wire [2:0] temp;
    
    lab_4a_full_adder full_adder_1(
    .a (a[0]),
    .b (b[0]),
    .cin (1'b0),
    .cout (temp[0]),
    .out (out[0])
    );
    
    lab_4a_full_adder full_adder_2(
    .a (a[1]),
    .b (b[1]),
    .cin (temp[0]),
    .cout (temp[1]),
    .out (out[1])
    );
    
    lab_4a_full_adder full_adder_3(
    .a (a[2]),
    .b (b[2]),
    .cin (temp[1]),
    .cout (temp[2]),
    .out (out[2])
    );
    
    lab_4a_full_adder full_adder_4(
    .a (a[3]),
    .b (b[3]),
    .cin (temp[2]),
    .cout (cout),
    .out (out[3])
    );
    
endmodule
