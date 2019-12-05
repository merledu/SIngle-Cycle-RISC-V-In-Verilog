module ALU #(parameter Width = 32)(
input [3:0] controlsignal, input [Width-1:0] A1,A2,
output reg [Width-1:0] Y, output zero);
//wire [63:0] B;
always @(*)
begin
if (controlsignal == 4'b0000)
 Y = A1 & A2;
else if (controlsignal == 4'b0001)
 Y = A1 | A2;
else if(controlsignal == 4'b0010)
 Y = A1 + A2;
else if(controlsignal == 4'b0110)
Y = A1 - A2;
else if(controlsignal == 4'b0011)
Y = A1 << A2;
else if(controlsignal == 4'b0100)
begin
//A1 = ~A1 + 1;
//A2 = ~A2 + 1;
if((~A1+1) < (~A2+1))
Y = 1;
else 
Y = 0; 
end
else if(controlsignal == 4'b0101)
begin
if(A1 < A2)
Y = 1;
else 
Y = 0;
end
else if(controlsignal == 4'b0111)
Y = A1 ^ A2;
else if(controlsignal == 4'b1000)
Y = A1 >> A2;
else if(controlsignal == 4'b1010)
Y = A1 >>> A2;
else
 Y = {Width{1'bx}};
end 
assign zero = (Y == 0) ? 1 : 0;
endmodule
