module instructionmemory #(parameter Width = 32)(
    input [Width-1:0] address,
    output [Width-1:0] RD
    );
//wire [3:0] add = address[3:0];
reg [Width-1:0] mem1[511:0];
initial
begin
mem1[0] = 32'h002081B3; // add $1, $2, $3
mem1[4] = 32'h403202B3; // sub $4, $3, $5
mem1[8] = 32'h00308383; // lw $7, 3($1)
mem1[12] = 32'h0013F333; // and $7, $1, $6
mem1[16] = 32'h001112B3; // sll $5, $2, $1
mem1[20] = 32'h001122B3; // slt $5, $2, $1
mem1[24] = 32'h00210463; // beq $2, $3, 4 // 4 is offset
mem1[28] = 32'h001132B3; // sltu $5, $2, $1
mem1[32] = 32'h001142B3; // xor $5, $2, $1
mem1[36] = 32'h001152B3; // srl $5, $2, $1
mem1[40] = 32'h401152B3; // sra $5, $2, $1
mem1[44] = 32'h008002EF; // jal $5, 2 
mem1[48] = 32'h00110293; // addi $5, $2, 1
mem1[52] = 32'h00312293; // slti $5, $2, 3
mem1[56] = 32'h00517293; // andi $5, $2, 5
mem1[60] = 32'h00211293; // slli $5, $2, 2
mem1[64] = 32'h002102E7; // jar $5, $2, 2  // will jump on instruction 4
//mem1[4] = 32'h40308133; // sub x2, x3, x1
//mem1[8] = 32'h00517633; // and x12, x2, x5
//mem1[12] = 32'h002376B3; // and x13, x6, x2

//mem1[4] = 32'h00218233; // add $3 ,$2, $4
//
//mem1[0] = 32'h00218233; // add $3 ,$2, $4
//mem1[4] = 32'h403202B3; // sub $4, $3, $5
//mem1[0] = 32'h00308383; // lw $7, 2($1)
//mem1[4] = 32'h0013F333; // and $7, $1, $6

//
//$readmemh("mem1file.dat",mem1);
end
assign RD = mem1[address];
endmodule
