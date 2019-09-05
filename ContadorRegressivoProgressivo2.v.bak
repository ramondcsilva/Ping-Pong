module ContadorRegressivoProgressivo(input clock,output reg[11:0] saida);
reg valor;
initial saida=0;
initial valor=0;

always @(posedge clock)
begin
	if(saida<4094 && valor==0)
	begin		
		saida<=saida+1;		
	end
	else if(saida>=4094 && valor==0)
		valor<=1;
	else if(valor)
	begin
		if(saida>2)
			saida<=saida-1;
		else if(saida<=2)
			valor<=0;	
	end


end 

endmodule 