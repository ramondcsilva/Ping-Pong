module MUX15Entradas(input entrada1,entrada2,entrada3,entrada4,entrada5,entrada6,entrada7,entrada8,entrada9,entrada10,entrada11,entrada12,entrada13,entrada14,entrada15 ,input [3:0] seletor, output reg saida);


always @(seletor or entrada1 or entrada2 or entrada3 or entrada4 or entrada5 or entrada6 or entrada7 or entrada8 or entrada9 or entrada10 or entrada11 or entrada12 or entrada13 or entrada14 or entrada15)
begin
if(seletor==0 || seletor==1) saida<=entrada1;	
else if(seletor==2) saida<=entrada2;
else if(seletor==3) saida<=entrada3;
else if(seletor==4) saida<=entrada4;
else if(seletor==5) saida<=entrada5;
else if(seletor==6) saida<=entrada6;
else if(seletor==7) saida<=entrada7;
else if(seletor==8) saida<=entrada8;
else if(seletor==9) saida<=entrada9;
else if(seletor==10) saida<=entrada10;
else if(seletor==11) saida<=entrada11;
else if(seletor==12) saida<=entrada12;
else if(seletor==13) saida<=entrada13;
else if(seletor==14) saida<=entrada14;
else if(seletor==15) saida<=entrada15;
end
endmodule
