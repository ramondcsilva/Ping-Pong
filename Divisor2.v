module Divisor2(input Clock,output reg Pulso);
reg contador;
initial contador=0;

always@(posedge Clock) 
begin
	if(contador>=1)
	begin
		contador<=0;
		Pulso<=1;
	end
	else
	begin
		contador <= contador + 1'b1;
		Pulso<=0;
	end
    
end

endmodule
