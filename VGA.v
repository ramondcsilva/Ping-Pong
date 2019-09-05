module VGA(
input clock, // 50 Mhz
input [3:0] sorteio,
input [10:0] palete1YMaximo,palete1YMinimo,palete2YMaximo,palete2Yminimo,
output reg [3:0] vermelho,
output reg [3:0] verde,
output reg [3:0] azul,
output reg horizontalsincronizacao,
output reg verticalsincronizacao,
output reg teste 
);
initial teste=1;
reg [9:0] horizontalcontador = 0;
reg [9:0] verticalcontador = 0;
reg [1:0] contador = 0;
reg clockAtivo;//Ativa quando dividiu para 25 MHz
reg  palete1YM,palete1Ym,palete2YM,palete2Ym;
initial palete1YM=95;
initial palete1Ym=5;
initial palete2YM=95;
initial palete2Ym=5;
reg contador2=0;

always@(negedge clock)
	begin		
		  if(contador2>10 && contador2<1000)
			begin
			palete1YM<=palete1YMaximo;
			palete1Ym<=palete1YMinimo;
			palete2YM<=palete2YMaximo;
			palete2Ym<=palete2Yminimo;
			teste<=1;		
			contador2<=contador2+1;
			end
			else if(contador2>1000)
			begin
			contador2<=0;
			end
			else
			begin
			teste<=0;
			contador2<=contador2+1;
			end
	end


always @ (posedge clock)
begin

	if(contador==2)
		begin
		contador <= 1'b0;
      clockAtivo <= 1'b1;		
		end
	else 
		begin
		contador <= contador + 1'b1;
		clockAtivo <= 1'b0;		
		end
end


//Atualizar linha e coluna
always @ (posedge clock)
begin
	if (clockAtivo == 1)
		begin
			if(horizontalcontador==799)//799 se nao funcionar
				begin
					horizontalcontador<= 0;					
					if(verticalcontador == 524)
						verticalcontador <= 0;
					else 
					verticalcontador <= verticalcontador+1'b1;					
				end
			else
				begin
					horizontalcontador<= horizontalcontador+1'b1;							
				end		
		end
end



//Regioes da tela
always @ (posedge clock)
begin
	if (clockAtivo == 1)
		begin
			//(0-640,0-480) zona ativa		
			if(
			((horizontalcontador>=5 && horizontalcontador<=35) || (horizontalcontador>=605 && horizontalcontador<=635))
			&& (verticalcontador<=palete1YM)
			)
			begin
				begin//Preto
				verde <= 4'h1;
				azul <= 4'h1; 
				vermelho <= 4'h1;				
				end
			end			
			else
				begin//Preto
				verde <= 4'h0;
				azul <= 4'h0; 
				vermelho <= 4'h0;				
				end			
			if(horizontalcontador>=656 && horizontalcontador<752)//Front Porch Horizontal e Vertical ativo
				begin				
				horizontalsincronizacao<=0;				
				end
			else
				begin				
				horizontalsincronizacao<=1;				
				end
			
			if(verticalcontador>=490 && verticalcontador<492)//Front Porch Horizontal e Vertical ativo
				begin				
				verticalsincronizacao<=0;
				end
			else 
				begin				
				verticalsincronizacao<=1;
				end			
		end
end
endmodule