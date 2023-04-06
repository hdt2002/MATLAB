fmax=7.5;
fmau=2*fmax;
t=0:1/fmau:10;
x =  2*cos(8*pi*t)+3*cos(8*pi*t)+sin(15*pi*t);
t1=0:1/(16*fmau):10;
x1= 2*cos(8*pi*t1)+3*cos(8*pi*t1)+sin(15*pi*t1);
plot(t1,x1)
hold on
stem(t,x)
%qu
mu=255;
 


vmax=max(x);
vmin=min(x);
M=32;
nb=log2(M);
delta=(vmax-vmin)/(M-1);
Mq=vmin:delta:vmax;
Ml=0:M-1;
xcode=x;
for i=1:M
    ind=find(x>Mq(i)-delta/2 & x<=(Mq(i)+delta/2));
    x(ind)=Mq(i);
    xcode(ind)=Ml(i);
end
nhiphan = de2bi(xcode,M)
stairs(t,x)