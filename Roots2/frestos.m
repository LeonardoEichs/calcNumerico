function [R] = frestos(xi,n,a);
%% Primeira divisão
  b(1) = a(1);
  for i = 2 : n+1

    b(i) = a(i) + xi*b(i - 1);

  end
  R(1) = b(n+1);
  
%% Segunda divisão de Pn-1(x)

  n = n-1;
  a = b;
  b(1) = a(1);
  for i = 2 : n+1

    b(i) = a(i) + xi*b(i - 1);

  end
  R(2) = b(n+1);


end
