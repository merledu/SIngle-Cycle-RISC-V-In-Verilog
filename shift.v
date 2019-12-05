module shift #(parameter Width = 32)(
input [Width-1:0] In,
output [Width-1:0] out);

assign out = In << 1;
endmodule 
