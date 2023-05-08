x = linspace(0, 2*pi, 1000); % t?o m?t m?ng giá tr? x trong kho?ng t? 0 ??n 2*pi v?i 1000 giá tr?

y1 = sin(x); % tính giá tr? sin(x) t?i các ?i?m trong m?ng x
y2 = cos(x); % tính giá tr? cos(x) t?i các ?i?m trong m?ng x

figure; % t?o m?t ?? th? m?i
hold on; % gi? ?? th? hi?n t?i và thêm các ???ng cong m?i vào ?? th?

plot(x, y1, 'b', 'LineWidth', 2); % v? ???ng cong sin(x) b?ng màu xanh d??ng
plot(x, y2, 'r', 'LineWidth', 2); % v? ???ng cong cos(x) b?ng màu ??

xticks([0 pi/2 pi 3*pi/2 2*pi]); % ?ánh d?u các v? trí c?a tr?c hoành
xticklabels({'0', '\pi/2', '\pi', '3\pi/2', '2\pi'}); % gán nhãn cho các v? trí c?a tr?c hoành

yticks([-1 0 1]); % ?ánh d?u các v? trí c?a tr?c tung
yticklabels({'-1', '0', '1'}); % gán nhãn cho các v? trí c?a tr?c tung

title('Bi?u ?? sin(x) và cos(x)'); % ??t tiêu ?? ?? th?
xlabel('x'); % ??t nhãn tr?c hoành
ylabel('y'); % ??t nhãn tr?c tung

% ?ánh d?u các ?i?m tròn t?i các v? trí nguyên l?n n?a chu kì c?a tín hi?u
for i = 0:3
    xtick = i*pi/2;
    y1tick = sin(xtick);
    y2tick = cos(xtick);
    plot(xtick, y1tick, 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b');
    plot(xtick, y2tick, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
end

legend('sin(x)', 'cos(x)'); % t?o chú thích ???ng cong t??ng ?ng v?i tên ???ng cong
