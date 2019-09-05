module lfsr_N_1(out, clk);
output reg [3:0] out=5;
input clk;
wire feedback;
assign feedback = ~(out[3] ^ out[2]);
always @(posedge clk)
begin
out = {out[2:0],feedback};
end
endmodule
