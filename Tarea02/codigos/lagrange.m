function h = lagrange(p)
%tomando como inicio el principio de la figura los puntos serian:
x=[61,65,67.5,80,87.5,95,100];
y=[0,10,20,30,40,50,60];
g=lagran(x,y);
n=length(g);
sum=0;
for i = 1:n
    sum=sum + g(i)*(p^(n-i));
end
h=sum;
end

%para graficar syms p ;  fplot(lagrange(p),[61,100])



