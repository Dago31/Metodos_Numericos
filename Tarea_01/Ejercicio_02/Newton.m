function c = Newton(fnc,x0, tol)
tic
dx = diff(sym(fnc));
f = subs (fnc,x0);
df = subs(dx,x0);
cont = 0;
while abs(f)>tol
    c= x0-f/df;
    f = subs(fnc,c);
    df = subs(dx,c);
    x0 = c;
    cont = cont + 1;
end
toc
cont
end
