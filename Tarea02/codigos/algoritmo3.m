function [xp] = Algoritmo3(x0,n,e,lambda)
% x0 : vector inicial
% n : Iteraciones máximas
% e : Error 
% lambda : Valor de lambda en la ecuación
a ,b = p2();
for k=1:n
    l= cholesky((a')*(a));
    y= diagonalinf(l,((-a')*((a*x0)-b))-((lambda)*(sgn(x0))));
    xp=diagonalsup(l',y);
    if norma1(xp-x0)<e
        return
    end
    x0=xp
end
end

