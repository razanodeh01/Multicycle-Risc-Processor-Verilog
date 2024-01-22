module Instruction_MEM (MEM_address, instruction){	   
	
	input MEM_address [31:0];
	output reg instruction [31:0];
	
	reg [31:0] instruction_MEM [0:255];
	
	
	assign instruction= instruction_MEM[MEM_address[31:2]];
	
	
	instruction_MEM [0] = 32'b 0;
	
}