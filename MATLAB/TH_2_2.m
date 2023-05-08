a = 3;              % kho?ng [-a, a]
L = 18;             % s? m?c l??ng t?
delta = 2*a/L;      % kích th??c m?c l??ng t?
x = -a:0.1:a;      % t?o m?ng giá tr? x trong kho?ng [-a, a]
y = exp(x);         % tín hi?u liên t?c
q = round(y/delta); % quá trình l??ng t? hóa
y_hat = q*delta;    % tín hi?u sau khi l??ng t? hoá

% V? tín hi?u tr??c và sau khi l??ng t? hoá trên cùng m?t hình
subplot(2,1,1);
plot(x, y);
title('Tín hi?u g?c y = exp(x)');
xlabel('x');
ylabel('y');
subplot(2,1,2);
stem(x, y_hat);
title('Tín hi?u sau khi l??ng t? hoá');
xlabel('x');
ylabel('y');

