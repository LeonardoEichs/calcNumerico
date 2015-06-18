function grafico(n, coef)

x = -3 : 0.5 : 3
for i = 1: length(x)

  y(i) = frestos(x(i),n, coef);	

end

x
y
	plot(x,y)
	grid

end
