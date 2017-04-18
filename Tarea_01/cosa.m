function xn=newtonsistema(xo,fnc, tol)
 df=jacobian(fnc);
 cont = 0;
 f=inline(fnc);
 jf=inline(df);
 fxo=f(xo(1),xo(2));
 fpxo=jf(xo(1),xo(2))
 xn=xo-inv(fpxo)*fxo;
 cond = (norm(xn-x0))/(norm(xn));
 while cond >= tol;
    fxo=f(xo(1),xo(2),xo(3));
    fpxo=jf(xo(1),xo(2));
    xn=xo-inv(fpxo)*fxo;
    fxn=f(xn(1),xn(2))
    cond = (norm(xn-x0))/(norm(xn));
    xo=xn;
    cont=cont+1;
 end
 cont
end
