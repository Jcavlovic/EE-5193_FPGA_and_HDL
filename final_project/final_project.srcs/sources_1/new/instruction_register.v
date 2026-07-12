`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA EE-5193 FPGA and HDL
// Engineer: Jordan Cavlovic
// 
// Create Date: 07/12/2026 01:05:46 PM
// Design Name: Instruction Register
// Module Name: instruction_register
// Project Name: EE-5193 Final Project
// Target Devices: NEXYSA7
// Tool Versions: 
// Description: Instruction Register for RISC Final Project
// 
// Dependencies: 
// 
// Revision: 0.05
// Revision 0.01 - File Created
// Revision 0.05 - Prototype Instruction Register
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module instruction_register #(parameter width = 32)
    (
    input [width - 1: 0] data_in,
    input ld, CLK100MHZ,
    output reg [width - 1:0] data_out
    );
    
    always @(posedge CLK100MHZ) begin
        if (ld) begin data_out <= data_in; end
    end
endmodule
