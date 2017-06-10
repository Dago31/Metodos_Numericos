function [g]=lagran(x,y)
n1=length(x);
%n es el grado del polinomio
n=n1-1;
l=zeros(n1,n1);
for i=1:n+1 
    aux=1; 
    for k=1:n+1 
        if i~=k; 
            aux=conv(aux,poly(x(k)))/(x(i)-x(k)); 
        end
    end
    l(i,:)=aux;
end
g=y*l;
end