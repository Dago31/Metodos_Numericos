function [ X ] = Eliminacion_gaussiana( A, b )
%A es la matriz, b el vector correspondiente a los terminos independientes
[n,m]=size(A); % se asume que n=m matriz cuadrada
c=[A,b]; % matriz c, representa la forma de la matriz aumentada [Ab]
for k=1:(n-1)
    for i=(k+1):n
        m(i,k)=c(i,k)/c(k,k); %formula para hallar los multiplicadores
        for j=k:(n+1)
            c(i,j)= c(i,j) - m(i,k)*c(k,j); %formula de la nueva fila
        end
    end
end
for i=n:-1:1
    suma=0;
    for p=(i+1):n     
        suma = suma + c(i,p)*X(p);
    end
X(i)=(c(i,n+1)-suma)/c(i,i);
%formula de la susticion regresiva y solucion de las variables
end
end