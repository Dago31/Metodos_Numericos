function [x] = diagonalsup(a, b) 
p = size(a, 1);
x= zeros(p);
x = x(:,1);
for i = p :-1:1
    suma = 0;
    for j = i+1:p
        j;
        x(i);
        suma = suma + a(i,j)*x(j);
     end
     x(i)=(b(i)-suma)/a(i,i);
end
end
