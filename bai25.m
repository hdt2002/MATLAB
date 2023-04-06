a = 1;
r = 1;
h = 0.25;
t = 0:h:2;
y = zeros(size(t));
y(1) = 0;

for n = 1:length(t)-1
    k1 = a*y(n) + r;
    k2 = a*(y(n) + h/2*k1) + r;
    k3 = a*(y(n) - k1*h + 2*k2*h) + r;
    y(n+1) = y(n) + h/6*(k1 + 4*k2 + k3);
end

% tính nghi?m gi?i tích
y_exact = exp(a*t) - r/a + r/a*exp(a*t(1));

% tính sai s? t?i t=1 và t=2
error1 = abs(y(5) - y_exact(5))
error2 = abs(y(end) - y_exact(end))
