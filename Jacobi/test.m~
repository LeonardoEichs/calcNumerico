%Método Gauss Seidel

clc;
clear;

solucao = [1, 1, 1]; %Solução cochecida NESSE caso
passo = 0;
limite = 100;
criterio = 1.e-5;
dif = 1;
xi = [0,0,0];
x = xi;

while (passo < limite && dif > criterio )

	passo++;

	x(1) = ((1 + x(2) + x(3) )/3);
	x(2) = ((5 - x(1) - x(3) )/3);
	x(3) = ((4 - 2*x(1) + 2*x(2) )/4);
	
	dif = max(abs(x - xi));	

	[passo, xi, x, dif]


	xi = x;


end

erroExato = max(abs(x - solucao))
