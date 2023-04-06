fn=120*pi;
t=0:1/fn:2;
x1=cos(2*pi*10*t+pi/2);
x2=2*cos(4*pi*10*t+pi);
x3=3*cos(6*pi*10*t+3*pi/2);
x=x1+x2+x3;
plot(t,x);