% Método de newton genérico para sistemas de equações não lineares
clear
clc
format long
% f1(x1,x2) = exp(x1) + x2  - 1 = 0
% f2(x1,x2) = x1^2    + x2^2 - 4 = 0
% Primeira etapa de localização
%grafico2
xi = [1 -1];
% Segunda etapa de determinação da solução x1 e x2 com erro controlado
criterio = 1e-15
x = fNSistema(xi,criterio)
x = fNSistemaDNumerica(xi,criterio)

