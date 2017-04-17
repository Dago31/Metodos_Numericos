function xn = Secante(fnc,x0,x1,tol)
tic
it = 0;
f0=fnc(x0);
f1=fnc(x1);
it=0;
while abs(f1-f0)>tol
    xn = x1-((x1-x0)/(f1-f0))*f1;    
    f0=f1; 
    f1=fnc(xn);         
   it = it + 1;                    
   x0=x1;   
   x1=xn;            
end
toc
it
end
