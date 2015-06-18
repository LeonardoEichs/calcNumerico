function x=fNSistema(xi,criterio)
dif = 1;
passos = 0;
limite = 100;
while dif > criterio && passos < limite
    passos = passos + 1
    A = [exp(xi(1)),    1   , -(exp(xi(1))+xi(2)-1);
         2*xi(1)   , 2*xi(2), -(xi(1)^2 + xi(2)^2 - 4);]
    A=fescalonamento(2,A)
    dx=fretrosubstituicao(2,A)
    x = xi + dx
    xi = x;
    dif = max(abs(dx));
end
passos
end
