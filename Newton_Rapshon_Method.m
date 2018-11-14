f=@(x)(exp(x)*cos(x)-1.4);
df=@(x)(exp(x)*(cos(x)-sin(x)));
ddf=@(x)(-2*exp(x)*cos(x));
x1=input('Enter the initial value x1:');
acc=input('Enter the value of accuracy:');
y1=f(x1);
y2=df(x1);
y3=ddf(x1);
while(((y1*y3)/(y2*y2))>1)
  x1=input('Enter the initial value again:');  
 y1=f(x1);
y2=df(x1);
y3=ddf(x1);
end

x2=(x1-(y1/y2));
while(abs(x2-x1)>acc)
    x1=x2;
     y1=f(x1);
y2=df(x1);
x2=(x1-(y1/y2));
end
fprintf('the root of the eqn is=%f',x2);
    
    
