`timescale 1ns / 1ps

module lab_5b_tb(
    );
    
    reg [31:0] A, B;
    wire [31:0] out;
    
    lab_5b uut(
    .A (A),
    .B (B),
    .out (out)
    );
    
    initial begin
        $monitor("A = %d, B = %d, out = %d", A, B, out);
        
        A = 31'd12432;
        B = 31'd756;
        #10;
        
        A = 31'd78653;
        B = 31'd34526;
        #10;
        
        A = 31'd6343623;
        B = 31'd245256234;
        #10;
        
        A = 31'd6549828;
        B = 31'd3265146;
        #10;
    end
endmodule
