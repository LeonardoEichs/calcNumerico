function rmax = fresidomax(x, n, Ao)

for i = 1 : n
	soma= 0;
	for j = 1: n
		soma += Ao(i,j) * x(j);
	end
		r(i)= abs(soma - Ao(i,n+1));
end	
rmax = max(r);
end
