module Registerfile #(parameter Width = 32)(
input clk, RegWrite, [4:0] R1, [4:0] R2, [4:0] W1, [Width-1:0] WD1,
output [Width-1:0] RD1, RD2);
reg [Width-1:0] Register [Width-1:0];
initial
begin
Register[1] = 32'h00000001;
Register[2] = 32'h00000002;
Register[3] = 32'h00000003;
Register[4] = 32'h00000004;
Register[5] = 32'h00000005;
Register[6] = 32'h00000006;
Register[7] = 32'h00000007;
Register[8] = 32'h00000008;
Register[9] = 32'h00000009;
Register[10] = 32'h00000010;
end
always @(posedge clk)
begin
if(RegWrite)
Register[W1] <= WD1;
end
assign RD1 = (R1 != 0) ? Register[R1] : 0;
assign RD2 = (R2 != 0) ? Register[R2] : 0;
endmodule
