`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA EE-5193 FPGA and HDL
// Engineer: Jordan Cavlovic
// 
// Create Date: 07/12/2026 01:41:30 PM
// Design Name: D Flip Flop
// Module Name: d_flipflop
// Project Name: EE-5193 Final Project
// Target Devices: NEXYS A7
// Tool Versions: 
// Description: D Flip Flop for Final Project
// 
// Dependencies: 
// 
// Revision: 0.05
// Revision 0.01 - File Created
// Revision 0.05 - Prototype D Flip Flop
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module d_flipflop 
    (
    input data_in, ld, clr, CLK100MHZ,
    output reg data_out
    );
    
    always @(posedge CLK100MHZ) begin
        if (clr) begin data_out <= 1'b0; end
        else if (ld) begin data_out <= data_in; end
    end
endmodule
