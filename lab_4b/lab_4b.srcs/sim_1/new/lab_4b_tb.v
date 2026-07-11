`timescale 1ns / 1ps

module lab_4b_tb;

    reg [1:0] SW;
    wire [1:0] LED;

    lab_4b uut (
        .SW(SW),
        .LED(LED)
    );

    initial begin
    $monitor("SW[0] = %b, SW[1] = %b, LED[0] = %b. LED[1] = %b", SW[0], SW[1], LED[0], LED[1]);
    
        SW = 2'b00;
        #10;

        SW = 2'b10;
        #10;

        SW = 2'b11;
        #10;

    end

endmodule