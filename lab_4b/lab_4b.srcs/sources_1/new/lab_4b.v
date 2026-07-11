`timescale 1ns / 1ps

module lab_4b(
    input [1:0] SW,
    output [1:0] LED
    );
    
    assign LED[0] = SW[0] & SW[1];
    
endmodule
