n =3 %número de equações
A = [0 2 3 4;
	 -5 7 8 1;
	 -7 8 9 13;]	
Ao=A; %matriz original preservada
A=fescalonamento(n,A)
x=fretrosubstituicao(n,A)
rmax = fresidomax(x, n, Ao)
