module MUX1 #(parameter Width = 32)(input [Width-1 : 0] a,b,c,
 input  [1:0] s,
 output [Width-1 : 0] out);
assign out = (s == 2'b10) ? c : (s == 2'b01) ? b : a;
endmodule
