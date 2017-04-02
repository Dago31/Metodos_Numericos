function c=Biseccion(fnc,x0,x1,tol)
tic
it = 0;
c = (x0+x1)/2;
while tol<abs(fnc(c));
    if fnc(x0)*fnc(c)<0;
        x1=c;
    else
        x0=c;
    end
    c = (x0+x1)/2;
    it = it +1;
end
toc
it
end
