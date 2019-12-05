module add #(parameter Width = 32) 
(input [Width-1:0] A1, A2,
output [Width-1:0] Y);
assign Y = A1 + A2;
endmodule

