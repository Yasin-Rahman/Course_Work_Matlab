close all
clear all
clc
f=@(x)(x^3-x^2-x-1);
xl=input('Enter 1st approximation xl:');
xu=input('enter 2nd approximation xu:');
acc=input('enter the value of accuracy: ');
while((f(xl)*f(xu))>0)
    xl=input('Enter 1st approximation=xl:');
    xu=input('enter 2nd approximation =xu:');
end
while(abs(xl-xu)>acc)
    xm=(xl+xu)/2;
    if(f(xl)*f(xm)<0)
        xu=xm;
    else 
        xl=xm;
    end
end
fprintf('The root of equation acc to Bisection Method is=%f',xm);

        
    