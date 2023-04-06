h=0.1;
x0=0;
xN=2;
y0=0;
N=(xN-x0)/h;
%ydot=1-y
x=zeros(1,N+1);
y=zeros(1,N+1);
ybd=y;
x(1) =x0;
y(1) =y0;
ybd(1)=0;
for i=1:N
    x(i+1)=x(i)+h;
    y(i+1)=y(i)+h*(1-y(i));
    ybd(i+1)=y(i)+h*(1-y(i))+(1-y(i+1));
end
plot(x,y,x,ybd)
legend('Euler','Euler bien doi')
