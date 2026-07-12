`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UTSA EE-5193 FPGA and HDL
// Engineer: Jordan Cavlovic 
// 
// Create Date: 07/12/2026 01:14:38 PM
// Design Name: Address Select
// Module Name: address_select
// Project Name: EE-5193 Final Project
// Target Devices: NEXYSA7
// Tool Versions: 
// Description: Address Select for RISC Final Project
// 
// Dependencies: 
// 
// Revision: 0.05
// Revision 0.01 - File Created
// Revision 0.05 - Prototyple Address Select
// Additional Comments: 
// 
//////////////////////////////////////////////////////////////////////////////////


module address_select #(parameter width = 32)
    (
    input addr_sel, CLK100MHZ,
    input [width - 1:0] pc_addr, d_addr,
    output reg [width - 1:0] addr_out
    );
    
    always @(posedge CLK100MHZ) begin
        case (addr_sel)
            1'b0 : begin addr_out <=- d_addr; end
            1'b1 : begin addr_out <= pc_addr; end
        endcase
    end
endmodule
