function [a,b,c,d]=spline(arr)
%tomando como inicio el principio de la figura los puntos serian:
% x: [0 5 12.5 20 32.5 35 39]
% y: [60 50 40 30 20 10 0]
% Donde arr= [x ; y]

size=length(arr(1,:));

for i=1:size; 
    a(i)=arr(2,i); 
end

for i=1:size-1; 
    h(i)=arr(1,i+1)-arr(1,i); 
end

for i=2:size-1; 
    alfa(i)=3/h(i)*(a(i+1)-a(i))-3/h(i-1)*(a(i)-a(i-1)); 
end

l(1)=1; 
mu(1)=0; 
z(1)=0;

for i=2:size-1; 
    l(i)=2*(arr(1,i+1)-arr(1,i-1))-h(i-1)*mu(i-1); 
    mu(i)=h(i)/l(i); 
    z(i)=(alfa(i)-h(i-1)*z(i-1))/l(i); 
end

l(size)=1; 
z(size)=0; 
c(size)=0;

for i=size-1:-1:1; 
    c(i)=z(i)-mu(i)*c(i+1); 
    b(i)=(a(i+1)-a(i))/h(i)-h(i)*(c(i+1)+2*c(i))/3; 
    d(i)=(c(i+1)-c(i))/(3*h(i)); 
end

for i=1:size-1; 
    x=arr(1,i):0.1:arr(1,i+1); 
    y=a(i)+b(i)*(x-arr(1,i))+c(i)*(x-arr(1,i)).^2+d(i)*(x-arr(1,i)).^3; 
    hold on; 
    plot(x,y,'b'); 
end

