`timescale 1ns / 1ps

module lab_4a_4bit_adder_tb(
    );
    
    reg [3:0] a, b;
    wire [3:0] out;
    wire cout;
    
    lab_4a_4bit_adder uut(
    .a (a),
    .b (b),
    .cout (cout),
    .out (out)
    );
    
    initial begin
        $monitor("A = %d, B = %d, OUT = %d, COUT = %d", a, b, out, cout);
        a = 4'b0;
        b = 4'b0;
        #10;
        
        a = 4'd0;
        b = 4'd1;
        #10;
        
        a = 4'd2;
        b = 4'd3;
        #10;
        
        a = 4'd4;
        b = 4'd5;
        #10;
        
        a = 4'd5;
        b = 4'd6;
        #10;
        
        a = 4'd7;
        b = 4'd8;
        #10;
        
        a = 4'd9;
        b = 4'd10;
        #10;
        end
endmodule
