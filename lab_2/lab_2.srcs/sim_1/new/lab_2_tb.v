`timescale 1ns / 1ps

module lab_2_tb();
    
    reg A, B, C;
    wire F;
    
    lab_2 uut(
    .A(A),
    .B(B),
    .C(C),
    .F(F)
    );
    
    initial begin
        $display("A B C | F");
        $monitor("%d %d %d | %d", A, B, C, F);
        
        A = 0; B = 0; C = 0; #10;
        
        A = 0; B = 0; C = 1; #10;
        
        A = 0; B = 1; C = 0; #10;
        
        A = 0; B = 1; C = 1; #10;
        
        A = 1; B = 0; C = 0; #10;
        
        A = 1; B = 0; C = 1; #10;
        
        A = 1; B = 1; C = 0; #10;
        
        A = 1; B = 1; C = 1; #10;
        
        $finish;
    end
endmodule
