fs =  16*30;
t = [0:1/fn:10];
f = 1000;       
A = 1;               
T = 1/f;        % chu k? s�ng
dur = 1;        % th?i gian thu �m (gi�y)
n = fs * dur;   % s? m?u trong th?i gian thu �m
t = (0:n-1) / fs; % th?i gian t??ng ?ng v?i t?ng m?u

% T?o s�ng ??u v�o
x =  2*cos(8*pi*t)+3*cos(8*pi*t)+sin(15*pi*t);

% L??ng t? h�a ??u
L = 32;     % s? m?c l??ng t? h�a
xmax = max(abs(x)); % gi� tr? tuy?t ??i l?n nh?t c?a t�n hi?u ??u v�o
qstep = 2*xmax/L;   % k�ch th??c b??c l??ng t?
qlevel = (-xmax+qstep/2):qstep:(xmax-qstep/2); % c�c m?c l??ng t?
xq = qstep * round(x/qstep); % l??ng t? h�a ??u

% V? ?? th? t�n hi?u ??u v�o v� t�n hi?u l??ng t? h�a ??u
subplot(2,1,1)
plot(t, x)
xlabel('Th?i gian (gi�y)')
ylabel('Amplitude')
title('T�n hi?u ??u v�o')
grid on

subplot(2,1,2)
plot(t, xq)
xlabel('Th?i gian (gi�y)')
ylabel('Amplitude')
title('T�n hi?u l??ng t? h�a ??u')
grid on