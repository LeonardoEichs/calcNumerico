function x = fgauss(n, A)
    A = fescalonamento(n,A);
    x = fretrosubstituicao(n,A);
end
