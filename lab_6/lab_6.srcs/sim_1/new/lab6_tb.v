`timescale 1ns / 1ps

module lab6_tb();
    reg clk = 0;
    wire [15:0] led;

    always #5 clk = ~clk;

    lab_6 uut (
        .CLK100MHZ(clk),
        .LED(led)
    );

    initial begin
        $monitor("CLK=%b  LED=%h", clk, led);
        #50000;
        $finish;
    end
endmodule