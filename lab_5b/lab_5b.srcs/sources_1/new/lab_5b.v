`timescale 1ns / 1ps

module lab_5b(
    input [31:0] A, B,
    output [31:0] out
    );
    
    reg [31:0] remainder, temp_1, temp_2, ans;
    
    assign out = ans;
    
    always@(*) begin
        if (A > B) begin
            remainder = A % B;
            temp_1 = B;
        end else begin
            remainder = B % A;
            temp_1 = A;
        end
        while (remainder > 1'b0) begin
                temp_2 = remainder;
                remainder = temp_1 % remainder;
                temp_1 = temp_2;
        end
        ans = temp_1;
    end
endmodule