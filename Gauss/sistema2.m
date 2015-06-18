clc
clear
format long
n =4 %número de equações
A = [-14  16 18 26 18;  % L1 = 2*L3 isso gera um sistema indeterminado SPI
	 -5    7   8  1 34;	
	 -7    8   9 13  9;
	  17   18  9 17 54;]	
Ao=A; %matriz original preservada
A=fescalonamento(n,A)
x=fretrosubstituicao(n,A)
rmax = fresidomax(x, n, Ao)
