% Thi?t l?p th?i gian m?u
Fs = 1000;            % T?n s? l?y m?u
T = 1/Fs;             % Chu k? m?u
t = 0:T:1-T;          % Tr?c th?i gian

% Thi?t l?p thông s? xung tam giác
f = 10;               % T?n s? xung tam giác
A = 1;                % Biên ?? xung tam giác
dc = 0.5;             % Giá tr? trung bình c?a xung tam giác

% T?o xung tam giác s? d?ng hàm sawtooth
x = A*sawtooth(2*pi*f*t, dc);

% V? ?? th? xung tam giác
plot(t, x);
xlabel('Th?i gian (s)');
ylabel('Biên ??');
title(['Xung tam giác có chu k? T = ', num2str(1/f), 's']);
