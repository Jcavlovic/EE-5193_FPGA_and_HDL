`timescale 1ns / 1ps
module clk_1hz(
    input clk100mhz,
    output reg clk
    );
    
    localparam COUNT_MAX = 50_000_000;

    reg [31:0] count = 32'd0;

    initial clk = 1'b0;

    always @(posedge clk100mhz) begin
        if (count == COUNT_MAX - 1) begin
            count <= 32'd0;
            clk   <= ~clk;
        end else begin
            count <= count + 1;
        end
    end
endmodule