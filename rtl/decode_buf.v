module decode_buf (
    input clk,
    input rst,
    input rs1_valid,
    input rs2_valid,
    input [6:0] opcode,
    input [36:0] out_signal,
    input  [4:0] rs2,
   input  [4:0] rs1,
   input [31:0] imm,
   input  [31:0] rd,

    output reg rs1_valid_b,
    output reg rs2_valid_b,
    output reg [6:0] opcode_b,
    output reg [36:0] out_signal_b,
    output  reg [4:0] rs2_b,
   output  reg [4:0] rs1_b,
   output reg [31:0] imm_b,
   output reg [31:0] rd_b
);
    
    always @(posedge clk ) begin
        rs1_valid_b <= rs1_valid;
        rs2_valid_b <= rs2_valid;
        opcode_b <= opcode;
        out_signal_b <= out_signal;
        rs2_b <= rs2;
        rs1_b <= rs1;
        imm_b <= imm_b;
        rd_b <= rd;

    end
endmodule