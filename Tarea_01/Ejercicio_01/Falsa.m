function xn = Falsa(fnc, x0, x1, tol)
tic
cont = 0;
xn = (x0*fnc(x1)-x1*fnc(x0))/(fnc(x1)-fnc(x0));
while tol < abs(fnc(xn));
    if fnc(x0)*fnc(xn)<0;
        x1 = xn;
    else
        x0 = xn;
    end
    xn = (x0*fnc(x1)-x1*fnc(x0))/(fnc(x1)-fnc(x0));
    cont = cont + 1;
end
toc
cont
end