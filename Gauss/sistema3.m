clc
clear
format long
n =4 %número de equações
A = [-14  16 18 26 18;  
	 -5    7   8  1 34;	
	 -7    8   9 13  10;  % L1 = 2*L3, em apenas um lado da igualdade(b3 deveria ser 9 para ser SPI) Sendo assim, 										a equação tornou-se SI
	  17   18  9 17 54;]	
Ao=A; %matriz original preservada
A=fescalonamento(n,A)
x=fretrosubstituicao(n,A)
rmax = fresidomax(x, n, Ao)
