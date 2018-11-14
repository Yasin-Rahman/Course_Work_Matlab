function x=Gauss(A,b);
A=[25 5 1;64 8 1;144 12 1];
b=[106.8;177.2;279.2];
[m n]=size(A);
if m~=n
    error('Matrix A must be square');
end
nb=n+1;
Aug=[A b];
%forward Elimination
for k=1:n-1
    for i=k+1:n
        factor=Aug(i,k)/Aug(k,k);
        Aug(i,k:nb)=Aug(i,k:nb)-factor*Aug(k,k:nb);
    end
end
%Back Substitution
x=zeros(n,1);
x(n)=Aug(n,nb)/Aug(n,n);
for i=n-1:-1:1
    x(i)=(Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
end
x(i);
        