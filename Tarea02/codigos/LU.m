function [ l, u ] = LU(a) 
    x= size(a, 1);%cantidad de columnas
    y = size(a, 2);%cantidad de filas
    l = eye(x, y);%matriz identidad l
    %transpose(sum(transpose(hilb(5))))
    for j=1 : y %for para moverse a traves de las filas
        for i=j+1 : x %for para moverse a traves de las columnas
            l(i,j)= a(i,j)/a(j,j);% formula para calcular m
            m = l(i,j); 
            for k = j : x  %for para elimunar columnas con m
                a(i,k) = a(i,k) - (m* a(j,k));% se borran los elemnetos de a de manera que quede la matriz triangular
            end 
        end 
    end
    u=a;% se igualan ya que queda la matriz triangular
end
