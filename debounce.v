module debounce(input clock,input entrada,output reg saida);
reg[11:0] contador;
initial contador=0;
initial saida=0;

always @(posedge clock)
begin
	if(contador==1000 && entrada)
	begin
	     saida<=1;
	     contador<=contador+1;		
	end
	else if (entrada && contador<1100)
	begin
		contador<=contador+1;
		saida<=0;
	end
	else if(!entrada)
	begin
		saida<=0;
		contador<=0;
	end
end

endmodule 