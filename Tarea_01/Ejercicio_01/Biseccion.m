function xn=Biseccion(fnc,x0,x1,tol)
tic
cont = 0;
xn = (x0+x1)/2;
while tol<abs(fnc(c));
    if fnc(x0)*fnc(c)<0;
        x1=c;
    else
        x0=c;
    end
    xn = (x0+x1)/2;
    cont = cont +1;
end
toc
it
end
