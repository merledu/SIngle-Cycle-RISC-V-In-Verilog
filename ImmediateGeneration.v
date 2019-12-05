module immediategeneration #(parameter Width = 32)(
input [Width-1:0] In,
output reg [Width-1:0] Out);
always @(*)
begin
case(In[6:0])
7'b0000011 : Out <= {{{Width-12}{In[31]}},In[31:20]};
7'b0100011 : Out <= {{{Width-12}{In[31]}},In[31:25],In[11:7]};
7'b1100011 : Out <= {{{Width-12}{In[31]}},In[31],In[7],In[30:25],In[11:8]};
7'b0010011 : Out <= {{{Width-12}{In[31]}},In[31:20]};
7'b1100111 : Out <= {{{Width-12}{In[31]}},In[31:20]};
7'b1101111 : Out <= {{{Width-20}{In[31]}},In[31],In[19:12],In[20],In[30:21]};
default : Out <= {Width{1'h0}};
endcase
end
//assign Out = {{52{In[31]}},In[31:20]};
endmodule
