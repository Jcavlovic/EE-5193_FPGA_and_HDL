`timescale 1ns / 1ps

module seven_segment(
    input  [3:0] num,
    output reg [7:0] SEG,
    output [7:0] AN
);

    assign AN = 8'b11111110;

    always @(*) begin
        case (num)
            4'd1: SEG = 8'b11111001;
            4'd2: SEG = 8'b10100100;
            4'd3: SEG = 8'b10110000;
            4'd4: SEG = 8'b10011001;
            4'd5: SEG = 8'b10010010;
            4'd6: SEG = 8'b10000010;
            4'd7: SEG = 8'b11111000;
            4'd8: SEG = 8'b10000000;
            4'd9: SEG = 8'b10010000;
            default: SEG = 8'b11111111;
        endcase
    end

endmodule