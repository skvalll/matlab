function x = Gauss(A, b) %goi ham Gauss 
n = length(b); %n dem so bien 
for k = 1:n-1 
for i = k+1:n 
lambda = A(i,k) / A(k,k); 
for j = k+1:n 
A(i,j) = A(i,j) - lambda * A(k,j); 
end 
b(i) = b(i) - lambda * b(k); 
end 
end 
x(n) = b(n) / A(n,n); 
for k = n-1:-1:1 
sum = b(k); 
for j = k+1:n 
sum = sum - A(k,j) * x(j); 
end
x(k) = sum / A(k,k); 
end 
end