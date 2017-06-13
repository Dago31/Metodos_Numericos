function [A,b,z0] = p2()
rand('state',0); randn('state',0);
n = 304;
m = 310;
A = randn(m,n);
T = 10;
z0 = zeros(n,1);
q = randperm(n);
z0(q(1:T)) = sign(randn(T,1));
sigma = 0.01;
b = A*z0 + sigma*randn(m,1);
end

