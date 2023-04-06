a=3;
b=4;
% Khai b�o bi?n
T = a;
%a = T/4;
Fs = 32 * (1 / (2 * a));

% T�nh to�n c�c gi� tr? th?i gian v� t�n hi?u x
t = 0:1/Fs:T;
x = 1.5 * a * sin(2 * pi * t / a);

% V? ?? th? c?a t�n hi?u tr??c v� sau khi l?y m?u
subplot(2,1,1);
plot(t, x);
title('Tin hieu hinh sin truoc khi lay mau');
xlabel('Thoi gian');
ylabel('Bien do');

subplot(2,1,2);
stem(t, x);
title('Tin hieu hinh sin sau khi lay mau');
xlabel('Thoi gian');
ylabel('Bien do');

