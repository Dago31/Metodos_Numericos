xo=[-3;-2] ;
 syms x y
 fname=[x^2+x*y^2-x-2;y^2+x*y^2-y+4];
 fprima=jacobian(fname);
 tolerancia=1.e-10;
maxiter = 30;
 iter = 1;
 f=inline(fname);
 jf=inline(fprima);
 error=norm(f(xo(1),xo(2)),2);
 fprintf('error=%12.8f\n', error);
 while error >= tolerancia
    fxo=f(xo(1),xo(2));
    fpxo=jf(xo(1),xo(2));
    x1=xo-inv(fpxo)*fxo;
    fx1=f(x1(1),x1(2));
    error =norm((fx1),2);
    fprintf(' Iter %2d  raiz x=(%14.9f,%14.9f) f(x)=(%14.9f,%14.9f,\n',iter,x1(1),x1(2),fx1(1),fx1(2));
    if iter > maxiter
        fprintf(' Numero maximo de iteraciones excedido \n');
    return;
    end
    xo=x1;
    iter=iter+1;
 end
    
