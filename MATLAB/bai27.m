% Khai báo các thông s?
R = 10000;
C = 4.7e-6;
h = 0.01;
t = 0:h:3;
N = length(t);
u = zeros(1, N);
u(1) = 1;

% Ph??ng pháp RK b?c 4
for i = 1:N-1
    k1 = (-1/(R*C))*u(i);
    k2 = (-1/(R*C))*(u(i)+(h/2)*k1);
    k3 = (-1/(R*C))*(u(i)+(h/2)*k2);
    k4 = (-1/(R*C))*(u(i)+h*k3);
    u(i+1) = u(i)+(h/6)*(k1+2*k2+2*k3+k4);
end

% V? ?? th?
plot(t, u)
title('Ph??ng trình vi phân RC')
xlabel('Th?i gian (s)')
ylabel('?i?n áp ??u ra (V)')

% So sánh v?i nghi?m c?a ode45
options = odeset('RelTol', 1e-4, 'AbsTol', 1e-4);
[t_ode45, u_ode45] = ode45(@(t, u) (-1/(R*C))*u, [0 3], 1, options);
figure;
plot(t, u, t_ode45, u_ode45, '--')
title('So sánh ph??ng pháp RK b?c 4 v?i ode45')
xlabel('Th?i gian (s)')
ylabel('?i?n áp ??u ra (V)')
legend('RK b?c 4', 'ode45')
