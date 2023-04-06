% Thi?t l?p th?i gian m?u
Fs = 1000;            % T?n s? l?y m?u
T = 1/Fs;             % Chu k? m?u
t = 0:T:1-T;          % Tr?c th?i gian

% Thi?t l?p th�ng s? xung tam gi�c
f = 10;               % T?n s? xung tam gi�c
A = 1;                % Bi�n ?? xung tam gi�c
dc = 0.5;             % Gi� tr? trung b�nh c?a xung tam gi�c

% T?o xung tam gi�c s? d?ng h�m sawtooth
x = A*sawtooth(2*pi*f*t, dc);

% V? ?? th? xung tam gi�c
plot(t, x);
xlabel('Th?i gian (s)');
ylabel('Bi�n ??');
title(['Xung tam gi�c c� chu k? T = ', num2str(1/f), 's']);
