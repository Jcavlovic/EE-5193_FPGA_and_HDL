`timescale 1ns / 1ps

module lab_2(
    input A, B, C,
    output F
    );
    
    assign F = (~A & B) | (B & ~C);
    
endmodule
