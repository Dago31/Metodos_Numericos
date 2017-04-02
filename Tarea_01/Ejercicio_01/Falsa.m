function c = Falsa(fnc, x0, x1, tol)
tic
cont = 0;
c = (x0*fnc(x1)-x1*fnc(x0))/(fnc(x1)-fnc(x0));
while tol < abs(fnc(c));
    if fnc(x0)*fnc(c)<0;
        x1 = c;
    else
        x0 = c;
    end
 c = (x0*fnc(x1)-x1*fnc(x0))/(fnc(x1)-fnc(x0));
 cont = cont + 1;
end
toc
cont
end
