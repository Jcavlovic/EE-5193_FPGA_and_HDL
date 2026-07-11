`timescale 1ns / 1ps

module lab_4a_bcd(  
    input [3:0] in,
    output out
    );
    
    assign out = (in > 4'd9);
    
endmodule
