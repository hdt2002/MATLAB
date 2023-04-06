fs =  16*30;
t = [0:1/fn:10];
f = 1000;       
A = 1;               
T = 1/f;        % chu k? sóng
dur = 1;        % th?i gian thu âm (giây)
n = fs * dur;   % s? m?u trong th?i gian thu âm
t = (0:n-1) / fs; % th?i gian t??ng ?ng v?i t?ng m?u

% T?o sóng ??u vào
x =  2*cos(8*pi*t)+3*cos(8*pi*t)+sin(15*pi*t);

% L??ng t? hóa ??u
L = 32;     % s? m?c l??ng t? hóa
xmax = max(abs(x)); % giá tr? tuy?t ??i l?n nh?t c?a tín hi?u ??u vào
qstep = 2*xmax/L;   % kích th??c b??c l??ng t?
qlevel = (-xmax+qstep/2):qstep:(xmax-qstep/2); % các m?c l??ng t?
xq = qstep * round(x/qstep); % l??ng t? hóa ??u

% V? ?? th? tín hi?u ??u vào và tín hi?u l??ng t? hóa ??u
subplot(2,1,1)
plot(t, x)
xlabel('Th?i gian (giây)')
ylabel('Amplitude')
title('Tín hi?u ??u vào')
grid on

subplot(2,1,2)
plot(t, xq)
xlabel('Th?i gian (giây)')
ylabel('Amplitude')
title('Tín hi?u l??ng t? hóa ??u')
grid on