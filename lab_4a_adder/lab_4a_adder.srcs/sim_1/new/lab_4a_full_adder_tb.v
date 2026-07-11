`timescale 1ns / 1ps

module lab_4a_full_adder_tb(
);

reg a, b; 
reg cin;
wire out, cout;

lab_4a_full_adder full_adder(
    .a (a),
    .b (b),
    .cin (cin),
    .cout (cout),
    .out (out)
    );
    
initial begin
    $monitor("A = %d, B = %d, CIN = %d, OUT = %d, COUT = %d", a, b, cin, out, cout);
    a = 1'b0;
    b = 1'b0;
    cin = 1'b0;
    #10;
    
    a = 1'b0;
    b = 1'b1;
    cin = 1'b0;
    #10;
    
    a = 1'b1;
    b = 1'b0;
    cin = 1'b0;
    #10;
    
    a = 1'b1;
    b = 1'b1;
    cin = 1'b0;
    #10;
    
    end
endmodule
