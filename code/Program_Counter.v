module PC(
  input clk,
  input reset,
  input j_signal,
  input [31:0] jump,
  output[31:0] out
);
  reg [31:0] next_pc = 32'b0;
  wire clock;
  assign clock = clk;
  always @ (posedge clock) begin
    if(reset)
      next_pc = 31'b0;
    else if(j_signal) begin
      next_pc = jump;
    end
    else begin
      next_pc = next_pc + 32'b1;
    end
  end
  assign out = next_pc;
endmodule