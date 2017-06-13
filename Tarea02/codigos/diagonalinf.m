function [x] = diagonalinf(a, b) 
p = size(a, 1);
x= zeros(p);
x = x(:,1);
for i = 1 :p
    suma = 0;
    for j = i-1:-1:1
        x(i);
        suma = suma + a(i,j)*x(j);
    end
    x(i)=(b(i)-suma)/a(i,i);
end
end