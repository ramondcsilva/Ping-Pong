module delay(input clock,output reg saida);
reg [20:0] contador;
initial saida=0;
initial contador=0;

always @(posedge clock)
begin
	if(contador>500000)
	begin
		contador<=0;
		saida<=1;
	end
	else
	begin
		contador<=contador+1;
		saida<=0;
	end


end 

endmodule 