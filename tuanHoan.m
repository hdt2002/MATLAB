fs =15*180;
t = [0:1/fs:10];
f = 1000;       
A = 1;               
T = 1/f;        
dur = 1;        
n = fs * dur;   
t = (0:n-1) / fs; 

x =  exp(t);

L = 32;    
xmax = max(abs(x));
qstep = 2*xmax/L;   
qlevel = (-xmax+qstep/2):qstep:(xmax-qstep/2); 
xq = qstep * round(x/qstep); 

subplot(2,1,1)
plot(t, x)
xlabel('Th?i gian (giây)')
ylabel('Amplitude')
title('Tin hieu dau vao')
grid on

subplot(2,1,2)
plot(t, xq)
xlabel('Th?i gian (giây)')
ylabel('Amplitude')
title('Tin hieu luong tu hoa deu')
grid on