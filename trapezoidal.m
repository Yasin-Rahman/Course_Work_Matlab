f= @(x)  0.2+25*x-200*x.^2+675*x.^3-900*x.^4+400* x.^5;
a=0;b=0.8;t_val=1.640533
I1=(b-a)*(f(a)+f(b))/2
format short
for n=1:2000
    n
    h=(b-a)/n;
    x=[a:h:b];
    y=f(x);
    I8=h*(y(1)+2*sum(y(2:n))+y(n+1))/2
end
