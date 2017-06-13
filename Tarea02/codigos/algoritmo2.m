function [xp] = Algoritmo2(x0,n,e,lambda)
% x0 : vector inicial
% n : Iteraciones máximas
% e : Error 
% lambda : Valor de lambda en la ecuación
a ,b = p2();
for k=1:n
    l,u= luu(a'*a)
    y= diagonalinf(l,(-a')*((a*x0)-b) - lambda*sgn(x0)
    xp= diagonalsup(u,y)
    if norm(xp-x0,1)<e
        return
    end
    x0=xp
end
end

