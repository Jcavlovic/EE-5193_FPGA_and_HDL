`timescale 1ns / 1ps

module lab3_tb;

    reg A, B, C;
    wire F;

    lab3 uut (F, A, B, C);

    initial begin
        $display("A B C | F");
        $monitor("%b %b %b | %b", A, B, C, F);

        A=0; B=0; C=0;
        #10
        A=0; B=0; C=1;
        #10
        A=0; B=1; C=0;
        #10
        A=0; B=1; C=1;
        #10
        A=1; B=0; C=0;
        #10
        A=1; B=0; C=1;
        #10
        A=1; B=1; C=0;
        #10
        A=1; B=1; C=1;

        $finish;
    end

endmodule