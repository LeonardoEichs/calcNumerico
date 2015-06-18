function raiz = roots2(coef)

n = length(coef) -1 % grau do polinomio
%grafico(n,coef)
		
%1° localizacao das n raizes
	xi = flocalizacao(n,coef)

%2° determicao das n raizes
for i=1:n
	x(i) = fnr(xi(i),n,coef)
	raiz = x;
end

end 

