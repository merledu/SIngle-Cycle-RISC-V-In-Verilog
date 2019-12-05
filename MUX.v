module MUX #(parameter Width = 32)(input [Width-1 : 0] a,b,
 input  s,
 output [Width-1 : 0] out);

assign out = (s == 1'b0) ? a : b;
endmodule

