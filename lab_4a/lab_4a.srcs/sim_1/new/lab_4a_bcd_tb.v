`timescale 1ns / 1ps

module lab_4a_bcd_tb;

    reg [3:0] bcd;
    integer i;
    wire out;

    lab_4a_bcd uut (
        .in(bcd),
        .out(out)
    );

    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            bcd = i;
            #10;
            $display("bcd = %d, out = %b", bcd, out);
        end

        $finish;
    end

endmodule