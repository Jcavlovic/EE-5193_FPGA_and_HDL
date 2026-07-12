`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA EE-5193 FPGA and HDL
// Engineer: Jordan Cavlovic
// 
// Create Date: 07/12/2026 12:40:06 PM
// Design Name: Program Counter
// Module Name: pc
// Project Name: EE-5193 Final Project
// Target Devices: NEXYS A7
// Tool Versions: 
// Description: Program counter for RISC Final Project
// 
// Dependencies: 
// 
// Revision: 0.05
// Revision 0.01 - File Created
// Revision 0.05 - Prototype program counter
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module program_counter #(parameter width = 32)
    (
    input wire up, clr, ld,
    input wire [15:0] pc_jump, ld_data,
    input wire CLK100MHZ,
    output reg [7:0] count
    );
    
    initial begin
        count = 32'd0;
    end
    
    always @(posedge CLK100MHZ, negedge clr) begin
        if (clr) begin count <= 32'd0; end
        else if (up) begin count <= count + 1; end
        else if (ld) begin count <= ld_data; end
    end
endmodule
