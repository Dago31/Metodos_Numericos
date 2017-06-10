function [t] = trapecio(a,b,n)
% a y b limites de integración, n numero de intervalos 

z=[0,10,20,30,40,50,60];
w=[122,130,135,160,175,190,200];
h = (b-a)/n;
sum=0;
for i= 2:6
    sum = sum + (10^3)*(9.8)*w(i)*(b-z(i));
end
t = (h/2)*(w(1)+ 2*sum +w(7));
end


