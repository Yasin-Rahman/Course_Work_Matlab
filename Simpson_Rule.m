f=@(x)(2000*log(140000/(140000-2100*x))-9.8*x);
x1=input('Enter the initial value x1:');
x2=input('Enter the final value x2:');
k=input('Enter the no of segments k:');
n=2*k;
h=((x2-x1)/n);
area=0;
for i=1:k
    area=area+h/3*(f(x1)+4*f(x1+h)+f(x1+2*h));
    x1=x1+2*h;
end
fprintf('the area bounded by simpson rule rule=%f',area);
    