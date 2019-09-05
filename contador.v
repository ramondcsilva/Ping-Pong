module contador(input Add,Sub, output reg[11:0] saida);
initial saida=0;

always @(posedge Add or posedge Sub)
begin
 if(Add)
 begin
 	if(saida<4095)
 	begin
		saida<=saida+1;
 	end	
 end
 else
 begin
	if(saida>0)
	begin
		saida<=saida-1;
	end
 end 

end
endmodule


