`timescale 1ns / 1ps

module lab_6(
    input CLK100MHZ,
    output [15:0] LED
);

wire clk;

clk_1hz uut (
    .clk100mhz(CLK100MHZ),
    .clk(clk)
);

assign LED = clk ? 16'hFFFF : 16'h0000;

endmodule