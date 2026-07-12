`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA EE-5193 FPGA and HDL
// Engineer: Jordan Cavlovic
// 
// Create Date: 07/12/2026 01:48:04 PM
// Design Name: ALU
// Module Name: alu
// Project Name: EE-5193 Final Project
// Target Devices: NEXYS A7
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision: 0.05
// Revision 0.01 - File Created
// Revision 0.05 - Prototype ALU
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu #(parameter width = 8, op_size = 4,
    ADD     = 4'b0000,
    SUB     = 4'b0001,
    AND     = 4'b0010,
    OR      = 4'b0011,
    XOR     = 4'b0100,
    NOT     = 4'b0101,
    SLA     = 4'b0110,
    SRA     = 4'b0111
    )
    (
    input [width - 1:0] data_1, data_2,
    input [op_size - 1:0] sel,
    output reg [width - 1:0] alu_out,
    output alu_zero_flag
    );
    
    always@ (sel, data_1, data_2) begin
        case (sel)
            ADD : begin alu_out = data_1 + data_2; end
            SUB : begin alu_out = data_1 - data_2; end
            AND : begin alu_out = data_1 & data_2; end
            OR  : begin alu_out = data_1 | data_2; end
            XOR : begin alu_out = data_1 ^ data_2; end
            NOT : begin alu_out = ~data_1; end
            SLA : begin alu_out = data_1 << 1; end
            SLR : begin alu_out = {data_1[width - 1], data_1[width - 1: 1]}; end
         endcase
    end
endmodule
