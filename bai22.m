function dt= bai22(a,b,N,fx)
%a=-1.5;
%b=1.5;
%N=100;
% fx = @(x)4*x^3*2*exp(x)*cos(x)
h=(b-a)/N;
x=zeros(1,N);
dtn=zeros(1,N);
x(1)=a;
%dt=0;
for i = 1:N
    dtn(i)= h*f(x(i)));
    x(i+1)= x(i) + h;
    dt=dt + dtn(i);
end
dt=sum(dtn(i);