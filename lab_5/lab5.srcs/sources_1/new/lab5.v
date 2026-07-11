`timescale 1ns / 1ps

module lab5(
    input [15:0] SW,
    output [6:0] LED
    );
    
    reg [6:0] LED;
    
    always@(*) begin
        case (SW[15:14])
            //ADD
            2'b10 : LED[6:0] = SW[5:0] + SW[11:6];
            //SUB
            2'b01 : LED[6:0] = SW[5:0] - SW[11:6];
            //MUL
            2'b11 : LED[6:0] = SW[5:0] * SW[11:6];
            
        endcase
    end
endmodule
