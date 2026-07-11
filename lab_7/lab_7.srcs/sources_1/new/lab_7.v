`timescale 1ns / 1ps

module lab_7(
    input  [15:0] SW,
    output [7:0] seg,
    output [7:0] an
);

    seven_segment display(
        .num(SW[3:0]),
        .SEG(seg),
        .AN(an)
    );

endmodule