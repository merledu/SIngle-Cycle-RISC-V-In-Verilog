module ALUControl(
input [1:0] Aluop,
input funct7,[2:0] funct3,
output reg [3:0] Control);
always @(*)
begin
case (Aluop)
2'b00 : Control <= 4'b0010;
2'b01 : Control <= 4'b0110;
2'b10 : case({funct7,funct3})
4'b0000 : Control <= 4'b0010; // add
4'b1000 : Control <= 4'b0110; // sub
4'b0111 : Control <= 4'b0000; // and
4'b0110 : Control <= 4'b0001; // or
4'b0001 : Control <= 4'b0011; // sll
4'b0010 : Control <= 4'b0100; // slt
4'b0011 : Control <= 4'b0101; // sltu
4'b0100 : Control <= 4'b0111; // xor
4'b0101 : Control <= 4'b1000; // srl
4'b1101 : Control <= 4'b1010; // sra
default : Control <= 4'bxxxx;
endcase
2'b11 : case({funct7,funct3})
4'b0000 : Control <= 4'b0010; // addi
4'b0010 : Control <= 4'b0100; // slti
4'b0011 : Control <= 4'b0101; // sltui
4'b0100 : Control <= 4'b0111; // xori
4'b0110 : Control <= 4'b0001; // ori
4'b0111 : Control <= 4'b0000; // andi
4'b0001 : Control <= 4'b0011; // slli
4'b0101 : Control <= 4'b1000; // srli
4'b1101 : Control <= 4'b1010; // srai
default : Control <= 4'bxxxx;
endcase
endcase
end
endmodule

