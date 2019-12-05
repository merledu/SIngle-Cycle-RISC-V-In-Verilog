module adder #(parameter Width = 32)(
input [Width-1:0] PC,
output [Width-1:0] PCPlus4);
assign PCPlus4 = PC + 4;
endmodule
