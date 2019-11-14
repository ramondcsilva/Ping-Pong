module Velocidade3(input clock,output reg saida);
reg [22:0] contador;
initial contador=0;

always @(posedge clock)
begin
	if(contador==90000)
	begin
		saida<=1;
		contador<=0;
	end
	else
	begin	
		saida<=0;
		contador<=contador+1;
	end
end



endmodule 