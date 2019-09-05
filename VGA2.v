module VGA2(input clock,input [10:0] Paleta1PosicaoMaximaY,input [10:0] Paleta1PosicaoMinimaY,input [10:0] Paleta2PosicaoMaximaY,input [10:0] Paleta2PosicaoMinimaY,output reg R,G,B,hsync,vsync,input [3:0] aleatorio,input ClockBola,output reg [3:0] velocidade,pontoJogador1,pontoJogador2,input Reset);
reg [10:0] horizontalcontador;
reg [10:0] verticalcontador;
reg [10:0] BolaPosicaoMaximaY,BolaPosicaoMinimaY,BolaPosicaoMaximaX,BolaPosicaoMinimaX;
reg [10:0] BolaPosicaoMaximaYaux,BolaPosicaoMinimaYaux,BolaPosicaoMaximaXaux,BolaPosicaoMinimaXaux;
reg [3:0] BugDetect;
initial horizontalcontador=0;
initial verticalcontador=0;
reg [3:0] aleatorioAux;
reg [3:0] sentido;
reg colider,posicionar;
initial posicionar=1;
initial pontoJogador1=0;
initial pontoJogador2=0;
initial BugDetect=0;
initial BolaPosicaoMaximaYaux=500;
initial BolaPosicaoMinimaYaux=500;
initial BolaPosicaoMaximaXaux=500;
initial BolaPosicaoMinimaXaux=500;
initial velocidade=1;
reg [1:0] contadorVelocidade;
initial contadorVelocidade=0;
reg Jogando;
initial Jogando=0;

always@(posedge ClockBola)
begin 
	if(pontoJogador1==10 || pontoJogador2==10)
	begin
				Jogando<=0;
	end
	if(Jogando==0 && Reset==1)
	begin
		pontoJogador1<=0;
		pontoJogador2<=0;
		Jogando<=1;
	end
if(Jogando==1)
begin
	if(posicionar)
	begin
			velocidade<=1;
			posicionar<=0;	
			contadorVelocidade<=0;
			if(aleatorio<4)
			begin
			BolaPosicaoMaximaY<=270;
			BolaPosicaoMinimaY<=240;
			BolaPosicaoMaximaX<=350;
			BolaPosicaoMinimaX<=320;				
				if(aleatorio==0)
				begin
					sentido<=1;	
				end
				else if(aleatorio==1)
				begin
					sentido<=2;	
				end
				else if(aleatorio==2)
				begin
					sentido<=3;	
				end
				else if(aleatorio==3)
				begin
					sentido<=4;	
				end
				else if(aleatorio==4)
				begin
					sentido<=5;	
				end
				else if(aleatorio==5)
				begin
					sentido<=6;	
				end
				else if(aleatorio==6)
				begin
					sentido<=7;	
				end
				else
				begin
					sentido<=8;	
				end
			end
			else if(aleatorio<8)
			begin
			BolaPosicaoMaximaY<=270;
			BolaPosicaoMinimaY<=240;
			BolaPosicaoMaximaX<=270;
			BolaPosicaoMinimaX<=250;				
				if(aleatorio==0)
				begin
					sentido<=1;	
				end
				else if(aleatorio==1)
				begin
					sentido<=2;	
				end
				else if(aleatorio==2)
				begin
					sentido<=3;	
				end
				else if(aleatorio==3)
				begin
					sentido<=4;	
				end
				else if(aleatorio==4)
				begin
					sentido<=5;	
				end
				else if(aleatorio==5)
				begin
					sentido<=6;	
				end
				else if(aleatorio==6)
				begin
					sentido<=7;	
				end
				else
				begin
					sentido<=8;	
				end
			end
			else			
			begin
			BolaPosicaoMaximaY<=210;
			BolaPosicaoMinimaY<=180;
			BolaPosicaoMaximaX<=460;
			BolaPosicaoMinimaX<=430;				
				if(aleatorio==8)
				begin
					sentido<=1;	
				end
				else if(aleatorio==9)
				begin
					sentido<=2;	
				end
				else if(aleatorio==10)
				begin
					sentido<=3;	
				end
				else if(aleatorio==11)
				begin
					sentido<=4;	
				end
				else if(aleatorio==12)
				begin
					sentido<=5;	
				end
				else if(aleatorio==13)
				begin
					sentido<=6;	
				end
				else if(aleatorio==14)
				begin
					sentido<=7;	
				end
				else
				begin
					sentido<=8;	
				end
			end
					
			
	end
	else if(BolaPosicaoMaximaX==3)//Detect Ponto Jogador 2 
   begin
			if(pontoJogador2<10)
			begin	
				if(pontoJogador2+1==10)
				begin
					Jogando<=0;
				end
				pontoJogador2<=pontoJogador2+1;
				
			end
			posicionar<=1;
	end
	else if(BolaPosicaoMinimaX==637)//Detect Ponto Jogador 1
   begin
		  if(pontoJogador1<10)
		  begin
				if(pontoJogador1+1==10)
				begin
					Jogando<=0;
				end
				pontoJogador1<=pontoJogador1+1;								
		  end	
		  posicionar<=1;
	end
	else if(BolaPosicaoMaximaY>475 && BolaPosicaoMinimaX>=35 && BolaPosicaoMaximaX<=605)//Bug ok
        begin
		posicionar<=1;
	end
	else if(BolaPosicaoMinimaY<5 && BolaPosicaoMinimaX>=35 && BolaPosicaoMaximaX<=605)//Bug ok
        begin
		posicionar<=1;
	end
	else if(BolaPosicaoMaximaX>=605 && BolaPosicaoMaximaX<=610 &&  BolaPosicaoMinimaX==BolaPosicaoMaximaX-30 && BolaPosicaoMaximaY>=Paleta2PosicaoMinimaY && BolaPosicaoMinimaY==BolaPosicaoMaximaY-30 && BolaPosicaoMinimaY>=5 &&  BolaPosicaoMinimaY<=10  && Paleta2PosicaoMinimaY>=5 && Paleta2PosicaoMinimaY<=10)//Detect Collider Paleta 2 no canto Superior parede Cima
	begin//5
		if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		sentido<=5;				
		BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;				
		BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;				
				if(BolaPosicaoMaximaY+1<=480)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
				end
				if(BolaPosicaoMinimaY+1<=480)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;
				end
	end
	else if(BolaPosicaoMaximaX>=605 && BolaPosicaoMaximaX<=610 &&  BolaPosicaoMinimaX==BolaPosicaoMaximaX-30 &&  BolaPosicaoMaximaY<=475 &&  BolaPosicaoMaximaY>=470 && BolaPosicaoMinimaY==BolaPosicaoMaximaY-30 && Paleta2PosicaoMaximaY>=470 && Paleta2PosicaoMaximaY<=475 && BolaPosicaoMaximaY<=Paleta2PosicaoMaximaY)//Detect Collider Paleta 2 no canto Inferior parede Baixo ok
	begin//7
		if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		sentido<=7;				
		BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;				
		BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;				
				if(BolaPosicaoMaximaY>0)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
				end
				if(BolaPosicaoMinimaY>0)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;
				end	
	end
	else if(BolaPosicaoMinimaX>=25 && BolaPosicaoMinimaX<=35 && BolaPosicaoMaximaX==BolaPosicaoMinimaX+30 && BolaPosicaoMaximaY>=Paleta1PosicaoMinimaY && BolaPosicaoMinimaY==BolaPosicaoMaximaY-30 && BolaPosicaoMinimaY>=5 &&  BolaPosicaoMinimaY<=10  && Paleta1PosicaoMinimaY>=5 && Paleta1PosicaoMinimaY<=10)//Detect Collider Paleta 1 no canto Superior parede Cima
	begin//3
		if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		sentido<=3;				
		BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;				
		BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;				
				if(BolaPosicaoMaximaY+1<=480)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
				end
				if(BolaPosicaoMinimaY+1<=480)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;
				end
	end
	else if(BolaPosicaoMinimaX>=25 && BolaPosicaoMinimaX<=35 && BolaPosicaoMaximaX==BolaPosicaoMinimaX+30 && BolaPosicaoMaximaY<=475 &&  BolaPosicaoMaximaY>=470 && BolaPosicaoMinimaY==BolaPosicaoMaximaY-30 && Paleta1PosicaoMaximaY>=470 && Paleta1PosicaoMaximaY<=475 && BolaPosicaoMaximaY<=Paleta1PosicaoMaximaY)//Detect Collider Paleta 1 no canto Inferior parede Baixo
	begin//1
		if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		sentido<=1;
				BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
				BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;
				if(BolaPosicaoMaximaY>0)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
				end
				if(BolaPosicaoMinimaY>0)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;
				end		
	end
	else if(BolaPosicaoMaximaX>=605 && BolaPosicaoMaximaX<=610 &&  BolaPosicaoMinimaX==BolaPosicaoMaximaX-30 && BolaPosicaoMaximaY<=Paleta2PosicaoMaximaY &&  BolaPosicaoMinimaY>=Paleta2PosicaoMinimaY)//Detect Collider paleta2,est� dentro da paleta  2ok
   begin
		if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		sentido<=6;
		BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;
		BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;		
	end
	else if(BolaPosicaoMaximaX>=605 && BolaPosicaoMaximaX<=610 &&  BolaPosicaoMinimaX==BolaPosicaoMaximaX-30 && BolaPosicaoMaximaY>=Paleta2PosicaoMinimaY &&  BolaPosicaoMaximaY<=Paleta2PosicaoMaximaY)//Detect Collider paleta2, bateu na quina superior ok
        begin
		  if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		if(aleatorio<6)//7
		begin
			sentido<=7;
				if(BolaPosicaoMaximaX>0)
				begin
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;
				end
				if(BolaPosicaoMinimaX>0)
				begin
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;
				end
				if(BolaPosicaoMaximaY>0)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
				end
				if(BolaPosicaoMinimaY>0)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;
				end	
		end		
	     else if(aleatorio<10)//6
		begin
			sentido<=6;
				if(BolaPosicaoMaximaX>0)
				begin
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;
				end
				if(BolaPosicaoMinimaX>0)
				begin
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;
				end
		end
	    else//5
		begin
			sentido<=5;
				if(BolaPosicaoMaximaX>0)
				begin
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;
				end
				if(BolaPosicaoMinimaX>0)
				begin
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;
				end
				if(BolaPosicaoMaximaY+1<=480)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
				end
				if(BolaPosicaoMinimaY+1<=480)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;
				end	
		
		end
	end
	else if(BolaPosicaoMaximaX>=605 && BolaPosicaoMaximaX<=610 &&  BolaPosicaoMinimaX==BolaPosicaoMaximaX-30 && BolaPosicaoMinimaY>=Paleta2PosicaoMinimaY &&  BolaPosicaoMinimaY<=Paleta2PosicaoMaximaY)//Detect Collider paleta2,bateu na quina inferior ok
        begin
		  if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		if(aleatorio<6)//7
		begin
			sentido<=7;	
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;				
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;				
				if(BolaPosicaoMaximaY>0)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
				end
				if(BolaPosicaoMinimaY>0)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;
				end	
		end		
	     else if(aleatorio<10)//6
		begin
			sentido<=6;				
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;				
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;
				
		end
	    else//5
		begin
			sentido<=5;				
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;				
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;				
				if(BolaPosicaoMaximaY+1<=480)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
				end
				if(BolaPosicaoMinimaY+1<=480)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;
				end	
		
		end
	end	
	else if(BolaPosicaoMinimaX>=25 && BolaPosicaoMinimaX<=35 && BolaPosicaoMaximaX==BolaPosicaoMinimaX+30 && BolaPosicaoMaximaY<=Paleta1PosicaoMaximaY &&  BolaPosicaoMinimaY>=Paleta1PosicaoMinimaY)//Detect Collider paleta1,est� dentro paleta1
        begin
		  if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		sentido<=2;
		BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
		BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;
	end
	else if(BolaPosicaoMinimaX>=25  && BolaPosicaoMinimaX<=35 &&  BolaPosicaoMaximaX==BolaPosicaoMinimaX+30 && BolaPosicaoMaximaY>=Paleta1PosicaoMinimaY &&  BolaPosicaoMaximaY<=Paleta1PosicaoMaximaY)//Detect Collider paleta1,bateu na quina superior ok
        begin
		  if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		if(aleatorio<6)//1
		begin
			sentido<=1;	
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;				
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;				
				if(BolaPosicaoMaximaY>0)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
				end
				if(BolaPosicaoMinimaY>0)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;
				end		
		end		
	     else if(aleatorio<10)//2
		begin
			sentido<=2;			
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;				
		end
	    else//3
		begin
			sentido<=3;				
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;				
				if(BolaPosicaoMaximaY+1<=480)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
				end
				if(BolaPosicaoMinimaY+1<=480)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;
				end
		
		end
	end
	else if(BolaPosicaoMinimaX>=25  && BolaPosicaoMinimaX<=35 &&  BolaPosicaoMaximaX==BolaPosicaoMinimaX+30 && BolaPosicaoMinimaY>=Paleta1PosicaoMinimaY &&  BolaPosicaoMinimaY<=Paleta1PosicaoMaximaY)//Detect Collider paleta1,bateu na quina inferior ok
        begin
		  if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		if(aleatorio<6)//1
		begin
			sentido<=1;				
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;				
				if(BolaPosicaoMaximaY>0)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
				end
				if(BolaPosicaoMinimaY>0)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;
				end		
		end		
	     else if(aleatorio<10)//2
		begin
			sentido<=2;
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;
		end
	    else//3
		begin
			sentido<=3;
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;
				if(BolaPosicaoMaximaY+1<=480)
				begin
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
				end
				if(BolaPosicaoMinimaY+1<=480)
				begin
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;
				end
		
		end
	end
	else if(BolaPosicaoMinimaX>=35 &&  BolaPosicaoMaximaX<=605 && BolaPosicaoMinimaY==5 && BolaPosicaoMaximaY==35)//Detect Collider Parede Cima ok
        begin
		  if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
	     if(aleatorio<6)//5
		begin
			sentido<=5;
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;
			BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
			BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;				
		end		
	     else if(aleatorio<10)//4
		begin
			sentido<=4;
			BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
			BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;				
		end
	    else//3
		begin
			sentido<=3;				
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;				
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;				
			BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;				
			BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;		
		end			
	end
	else if(BolaPosicaoMinimaX>=35 &&  BolaPosicaoMaximaX<=605 && BolaPosicaoMaximaY==475 && BolaPosicaoMinimaY==445)//Detect Collider Parede Baixo ok
        begin
		  if(contadorVelocidade==0)
			begin
				contadorVelocidade<=0;
				if(velocidade<15)
				begin
					velocidade<=velocidade+1;
				end
			end
		else
			begin
				contadorVelocidade<=contadorVelocidade+1;
			end
		if(aleatorio<6)//8
		begin
			sentido<=8;				
			BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;				
			BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;					
		end		
	     else if(aleatorio<10)//7
		begin
			sentido<=7;				
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;				
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;			
			BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;		
			BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;					
		end
	    else//1
		begin
			sentido<=1;
			BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
			BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;
			BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
			BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;	
		end	
	end
	else if(sentido>8)//Bug
	begin
		posicionar<=1;
	end
	else if(BolaPosicaoMaximaX-BolaPosicaoMinimaX>30)//Bug
	begin
		posicionar<=1;
	end
	else if(BolaPosicaoMaximaY-BolaPosicaoMinimaY>30)//Bug
	begin
		posicionar<=1;
	end
	else if(BolaPosicaoMaximaY-BolaPosicaoMinimaY==0 && BolaPosicaoMaximaX-BolaPosicaoMinimaX==0)//Bug
	begin
		posicionar<=1;
	end
	else if((BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605 && BolaPosicaoMinimaY>5 && BolaPosicaoMaximaY<475) && (BolaPosicaoMaximaX-BolaPosicaoMinimaX<30 || BolaPosicaoMaximaY-BolaPosicaoMinimaY<30))//Bug
	begin
		posicionar<=1;
	end			
	else //Mover
	begin
		case(sentido)
		1:
			begin
				if(BolaPosicaoMaximaX+1<=640)
				begin
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
				end
				if(BolaPosicaoMinimaX+1<=640)
				begin
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;
				end
				if(BolaPosicaoMaximaY>0)
				begin
					if(BolaPosicaoMinimaY==5 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605)
						BolaPosicaoMaximaY<=BolaPosicaoMaximaY;
					else
						BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
				end
				if(BolaPosicaoMinimaY>0)
				begin
					if(BolaPosicaoMinimaY==5 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605)
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY;
					else
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;
				end								
			end
		2:
			begin
				if(BolaPosicaoMaximaX+1<=640)
				begin
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
				end
				if(BolaPosicaoMinimaX+1<=640)
				begin
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;
				end				
			end
		3:
			begin
				if(BolaPosicaoMaximaX+1<=640)
				begin
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
				end
				if(BolaPosicaoMinimaX+1<=640)
				begin
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;
				end
				if(BolaPosicaoMaximaY+1<=480)
				begin
					if(BolaPosicaoMaximaY==475 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605) 
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY;
					else
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
				end
				if(BolaPosicaoMinimaY+1<=480)
				begin
					if(BolaPosicaoMaximaY==475 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605) 
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY;
					else
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;
				end	

			end
		4:
			begin
				if(BolaPosicaoMaximaY+1<=480)
				begin
					if(BolaPosicaoMaximaY==475 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605)
						BolaPosicaoMaximaY<=BolaPosicaoMaximaY;
					else
						BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
				end
				if(BolaPosicaoMinimaY+1<=480)
				begin
					if(BolaPosicaoMaximaY==475 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605)
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY;
					else
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;
				end	
			end
		5:
			begin
				if(BolaPosicaoMaximaX>0)
				begin
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;
				end
				if(BolaPosicaoMinimaX>0)
				begin
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;
				end
				if(BolaPosicaoMaximaY+1<=480)
				begin
					if(BolaPosicaoMaximaY==475 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605) 
						BolaPosicaoMaximaY<=BolaPosicaoMaximaY;
					else 
						BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
				end
				if(BolaPosicaoMinimaY+1<=480)
				begin
					if(BolaPosicaoMaximaY==475 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605) 
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY;
					else
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;
				end	

			end
		6:
			begin
				if(BolaPosicaoMaximaX>0)
				begin
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;
				end
				if(BolaPosicaoMinimaX>0)
				begin
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;
				end
			end
		7:
			begin
				if(BolaPosicaoMaximaX>0)
				begin
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;
				end
				if(BolaPosicaoMinimaX>0)
				begin
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;
				end
				if(BolaPosicaoMaximaY>0)
				begin
					if(BolaPosicaoMinimaY==5 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605)
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY;
					else
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
				end
				if(BolaPosicaoMinimaY>0)
				begin
					if(BolaPosicaoMinimaY==5 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605)
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY;
					else
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;
				end								
			end
		8:
			begin
				if(BolaPosicaoMaximaY>0)
				begin
					if(BolaPosicaoMinimaY==5 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605)
						BolaPosicaoMaximaY<=BolaPosicaoMaximaY;
					else
						BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
				end
				if(BolaPosicaoMinimaY>0)
				begin
					if(BolaPosicaoMinimaY==5 && BolaPosicaoMinimaX>35 && BolaPosicaoMaximaX<605)
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY;
					else
						BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;
				end	
			end
		endcase	
	end

	if(BolaPosicaoMaximaY==BolaPosicaoMaximaYaux && BolaPosicaoMinimaY==BolaPosicaoMinimaYaux && BolaPosicaoMinimaX==BolaPosicaoMinimaXaux && BolaPosicaoMaximaX==BolaPosicaoMaximaXaux && BugDetect>10)//Entrou mesmo no bug da posicao ficar parada
	begin
		BugDetect<=0;
		if(BolaPosicaoMaximaX-BolaPosicaoMinimaX<30 || BolaPosicaoMaximaY-BolaPosicaoMinimaY<30)
		begin
			posicionar<=1;
		end
		else
		begin
			if(BolaPosicaoMaximaY<=475 && BolaPosicaoMaximaY>=465 && BolaPosicaoMinimaX>=35 && BolaPosicaoMaximaX<=605)
			begin
				if(contadorVelocidade==0)
				begin
						contadorVelocidade<=0;
						if(velocidade<15)
						begin
							velocidade<=velocidade+1;
						end
				end
				else
				begin
					contadorVelocidade<=contadorVelocidade+1;
				end
				if(aleatorio<6)//8
				begin
					sentido<=8;				
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;				
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;					
				end		
	     			else if(aleatorio<10)//7
				begin
					sentido<=7;				
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;				
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;			
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;		
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;					
				end
	    			else//1
				begin
					sentido<=1;
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY-1;
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY-1;	
				end	

			end
			else if(BolaPosicaoMinimaY>=5  && BolaPosicaoMinimaY<=10 && BolaPosicaoMinimaX>=35 && BolaPosicaoMaximaX<=605)
			begin
			
				if(contadorVelocidade==0)
				begin
					contadorVelocidade<=0;
					if(velocidade<15)
					begin
						velocidade<=velocidade+1;
					end
				end
				else
				begin
					contadorVelocidade<=contadorVelocidade+1;
				end
				
				if(aleatorio<6)//5
				begin
					sentido<=5;
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX-1;
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX-1;
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;				
				end		
	     			else if(aleatorio<10)//4
				begin
					sentido<=4;
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;				
				end
	    			else//3
				begin
					sentido<=3;				
					BolaPosicaoMaximaX<=BolaPosicaoMaximaX+1;				
					BolaPosicaoMinimaX<=BolaPosicaoMinimaX+1;				
					BolaPosicaoMaximaY<=BolaPosicaoMaximaY+1;				
					BolaPosicaoMinimaY<=BolaPosicaoMinimaY+1;		
				end
		
			end
			else
			begin
				posicionar<=1;
			end
		end

	end
	else if(BolaPosicaoMaximaY==BolaPosicaoMaximaYaux && BolaPosicaoMinimaY==BolaPosicaoMinimaYaux && BolaPosicaoMinimaX==BolaPosicaoMinimaXaux && BolaPosicaoMaximaX==BolaPosicaoMaximaXaux)	
	begin
		BugDetect<=BugDetect+1;
	end
	else
	begin
		BugDetect<=0;
		BolaPosicaoMaximaYaux<=BolaPosicaoMaximaY;
		BolaPosicaoMinimaYaux<=BolaPosicaoMinimaY;
		BolaPosicaoMaximaXaux<=BolaPosicaoMaximaX;
		BolaPosicaoMinimaXaux<=BolaPosicaoMinimaX;	
	end


end
end




always@(posedge clock)
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

always @(posedge clock)
begin
	if((horizontalcontador>4 && horizontalcontador<36) && (verticalcontador>=Paleta1PosicaoMinimaY && verticalcontador<=Paleta1PosicaoMaximaY))	  
		begin
			R <= 1;
			G<= 1; 
			B <= 1;			
		end
	else if((horizontalcontador>604 && horizontalcontador<636) && (verticalcontador>=Paleta2PosicaoMinimaY && verticalcontador<=Paleta2PosicaoMaximaY))
		begin
			R <= 1;
			G<= 1; 
			B <= 1;			
		end
	else if((horizontalcontador>=BolaPosicaoMinimaX && horizontalcontador<=BolaPosicaoMaximaX)  && (verticalcontador>=BolaPosicaoMinimaY && verticalcontador<=BolaPosicaoMaximaY))
		begin
			R <= 1;
			G<= 1; 
			B <= 1;	
		end
	else
		begin
			R <= 0;
			G<= 0; 
			B <= 0;	
		end

	if(horizontalcontador>=656 && horizontalcontador<752)//Front Porch Horizontal e Vertical ativo
		begin				
			hsync<=0;				
		end
	else
		begin				
			hsync<=1;				
		end
			
	if(verticalcontador>=490 && verticalcontador<492)//Front Porch Horizontal e Vertical ativo
		begin				
			vsync<=0;
		end
	else 
		begin				
			vsync<=1;
		end	

end




endmodule 