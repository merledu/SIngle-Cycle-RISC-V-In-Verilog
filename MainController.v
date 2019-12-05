module mainController(
input [6:0] Opcode,
output ALUSrc,MemtoReg,RegWrite, MemRead, MemWrite, Branch,jump,[1:0] Aluop);
reg [8:0] control;
assign {ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,jump,Aluop} = control;
always @(*)
begin
case(Opcode)
7'b0110011 : control <= 9'b001000010; // R-type
7'b0000011 : control <= 9'b111100000; // lw-type
7'b0100011 : control <= 9'b1x0010000; // s-type
7'b1100011 : control <= 9'b0x0001001; // sb-type
7'b0010011 : control <= 9'b101000011; // I-type
7'b1100111 : control <= 9'b111xx0100; // jalr-type
7'b1101111 : control <= 9'b111xx0100; // jal-type
default : control    <= 9'bxxxxxxxxx;
endcase
end
endmodule
