a = 3;              % kho?ng [-a, a]
L = 18;             % s? m?c l??ng t?
delta = 2*a/L;      % k�ch th??c m?c l??ng t?
x = -a:0.1:a;      % t?o m?ng gi� tr? x trong kho?ng [-a, a]
y = exp(x);         % t�n hi?u li�n t?c
q = round(y/delta); % qu� tr�nh l??ng t? h�a
y_hat = q*delta;    % t�n hi?u sau khi l??ng t? ho�

% V? t�n hi?u tr??c v� sau khi l??ng t? ho� tr�n c�ng m?t h�nh
subplot(2,1,1);
plot(x, y);
title('T�n hi?u g?c y = exp(x)');
xlabel('x');
ylabel('y');
subplot(2,1,2);
stem(x, y_hat);
title('T�n hi?u sau khi l??ng t? ho�');
xlabel('x');
ylabel('y');

