%Método Gauss Seidel

clc;
clear;

solucao = [1, 1, 1]; %Solução cochecida NESSE caso
passo = 0;
limite = 100;
criterio = 1.e-5;
dif = 1;
xi = [0,0,0];

while (passo < limite && dif > criterio )

	passo++;

	x(1) = ((1 + xi(2) + xi(3) )/3);
	x(2) = ((5 - xi(1) - xi(3) )/3);
	x(3) = ((4 - 2*xi(1) + 2*xi(2) )/4);
	
	dif = max(abs(x - xi));	

	[passo, xi, x, dif]


	xi = x;


end

erroExato = max(abs(x - solucao))


limite = 100;
criterio = 1.e-10;
dif = 1;
passo = 0;

while (passo < limite && dif > criterio )

	passo++;

	xn(1) = ((1 + xi(2) + xi(3) )/3);
	xn(2) = ((5 - xi(1) - xi(3) )/3);
	xn(3) = ((4 - 2*xi(1) + 2*xi(2) )/4);
	
	dif = max(abs(xn - xi));

	xi = xn;

	[passo]
end

erroTruncamentoEst = max(abs(x - xn))
