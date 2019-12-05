module PCCounter #(parameter Width = 32) 
(input clk, PCen, [Width-1:0] PC1, output reg [Width-1:0] PC);

always@(posedge clk)
begin
if(PCen == 0)
PC <= PC;
else 
PC <= PC1;
end
endmodule
