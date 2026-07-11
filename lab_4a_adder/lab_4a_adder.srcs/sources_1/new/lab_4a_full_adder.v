`timescale 1ns / 1ps

module lab_4a_full_adder(
    input a, b, cin,
    output out, cout
);

wire sum1;
wire [1:0] carry;

lab_4a_half_adder half_adder_1(
    .a(a),
    .b(b),
    .out(sum_1),
    .cout(carry[0])
);

lab_4a_half_adder half_adder_2(
    .a(sum_1),
    .b(cin),
    .out(out),
    .cout(carry[1])
);

assign cout = carry[0] | carry[1];

endmodule
