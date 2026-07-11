`timescale 1ns / 1ps

module lab_4a_half_adder_tb(
    );
    
    reg a, b;
    wire out, cout;
    
    lab_4a_half_adder half_adder (
    .a (a),
    .b (b),
    .out(out),
    .cout(cout)
    );
    
    initial begin
        $monitor("A = %d, B = %d, OUT = %d, COUT = %d", a, b, out, cout);
        a = 1'b0;
        b = 1'b0;
        #10;
        
        a = 1'b1;
        b = 1'b0;
        #10;
        
        a = 1'b0;
        b = 1'b1;
        #10;
        
        a = 1'b1;
        b = 1'b1;
        #10;
    
    end
endmodule
