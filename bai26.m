h = 0.25;         % Kích th??c b??c
t = 0:h:2;        % T?o ma tr?n th?i gian
n = length(t);    % S? l??ng ?i?m th?i gian
y = zeros(1,n);   % T?o ma tr?n k?t qu? y v?i giá tr? ban ??u b?ng 0
y(1) = 0;         % ?i?u ki?n ban ??u y(0) = 0

% Vòng l?p tính toán
for i = 1:n-1
    k1 = h * y(i);
    k2 = h * (y(i) + k1/2);
    k3 = h * (y(i) + k2/2);
    k4 = h * (y(i) + k3);
    y(i+1) = y(i) + 1/6 * (k1 + 2*k2 + 2*k3 + k4);
end

% Gi?i nghi?m chính xác (nghi?m gi?i tích)
y_exact = exp(t);

% Tính sai s? t?i 2 th?i ?i?m t = 1 và t = 2
err_1 = abs(y_exact(5) - y(5));   % sai s? t?i t = 1
err_2 = abs(y_exact(9) - y(9));   % sai s? t?i t = 2

% In k?t qu?
fprintf('Nghi?m x?p x? b?ng ph??ng pháp RK b?c 4:\n');
disp(y);
fprintf('Nghi?m chính xác (nghi?m gi?i tích):\n');
disp(y_exact);
fprintf('Sai s? t?i t = 1: %f\n', err_1);
fprintf('Sai s? t?i t = 2: %f\n', err_2);
