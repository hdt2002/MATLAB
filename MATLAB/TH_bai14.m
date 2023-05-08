x = linspace(0, 2*pi, 1000); % t?o m?t m?ng gi� tr? x trong kho?ng t? 0 ??n 2*pi v?i 1000 gi� tr?

y1 = sin(x); % t�nh gi� tr? sin(x) t?i c�c ?i?m trong m?ng x
y2 = cos(x); % t�nh gi� tr? cos(x) t?i c�c ?i?m trong m?ng x

figure; % t?o m?t ?? th? m?i
hold on; % gi? ?? th? hi?n t?i v� th�m c�c ???ng cong m?i v�o ?? th?

plot(x, y1, 'b', 'LineWidth', 2); % v? ???ng cong sin(x) b?ng m�u xanh d??ng
plot(x, y2, 'r', 'LineWidth', 2); % v? ???ng cong cos(x) b?ng m�u ??

xticks([0 pi/2 pi 3*pi/2 2*pi]); % ?�nh d?u c�c v? tr� c?a tr?c ho�nh
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'}); % g�n nh�n cho c�c v? tr� c?a tr?c ho�nh

yticks([-1 0 1]); % ?�nh d?u c�c v? tr� c?a tr?c tung
yticklabels({'-1', '0', '1'}); % g�n nh�n cho c�c v? tr� c?a tr?c tung

title('Bi?u ?? sin(x) v� cos(x)'); % ??t ti�u ?? ?? th?
xlabel('x'); % ??t nh�n tr?c ho�nh
ylabel('y'); % ??t nh�n tr?c tung

% ?�nh d?u c�c ?i?m tr�n t?i c�c v? tr� nguy�n l?n n?a chu k� c?a t�n hi?u
for i = 0:3
    xtick = i*pi/2;
    y1tick = sin(xtick);
    y2tick = cos(xtick);
    plot(xtick, y1tick, 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b');
    plot(xtick, y2tick, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
end

legend('sin(x)', 'cos(x)'); % t?o ch� th�ch ???ng cong t??ng ?ng v?i t�n ???ng cong
