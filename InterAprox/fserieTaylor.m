function y = fserieTaylor(t, n, a, b)
    c = coefSerieTaylor(n, a, b);
    
    for p=1 : length(t)
        aux = 1;
        y(p) = c(n+1);
        for i=n :-1: 1
            aux = aux*t(p);
            y(p) = y(p) + c(i) * aux;
        end
    end
end

function y = fserieTaylor(t, n, a, b)

c(n+1)=f(0, a, b);

c(n)=1/4*(((1/2)*(b+a))^(-1/2))*(b-a);

aux = 1;
for i=2:n
  aux = aux * (-2*i + 3);
  c(n+1-i)= (1/factorial(i)) * (1/2^(2*i)) * aux * (b-a)^(i) * ((1/2)*(b+a))^(-(2*i - 1)/2);
end

for p=1 : length(t)
   y(p) = f(0, a, b);
   y(p) = y(p) + 1/4*(((1/2)*(b+a))^(-1/2))*(b-a);
   for i= 2 : n
   	y(p) = y(p) + (1/factorial(i)) * (1/2^(2*i)) * aux * (b-a)^(i) * ((1/2)*(b+a))^(-(2*i - 1)/2);
   end
end

end
