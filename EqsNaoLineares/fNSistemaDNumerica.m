function x=fNSistemaDNumerica(xi,criterio)
dif = 1;
passos = 0;
limite = 100;
dx = [0.01, 0.01];
while dif > criterio && passos < limite
    passos = passos + 1
    A = [(f1([xi(1)+dx(1),xi(2)])-f1(xi))/dx(1), (f1([xi(1),xi(2)+dx(2)])-f1(xi))/dx(2), -f1(xi);
         (f2([xi(1)+dx(1),xi(2)])-f2(xi))/dx(1), (f2([xi(1),xi(2)+dx(2)])-f2(xi))/dx(2), -f2(xi)]
    A=fescalonamento(2,A)
    dx=fretrosubstituicao(2,A)
    x = xi + dx
    xi = x;
    dif = max(abs(dx));
end
passos
end
