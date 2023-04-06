r = 3; % Bán kính 
theta = linspace(-2*pi,2*pi,180);% Bi?u di?n góc trong t?a ?? c?c 
x = r*cos(theta);% Bi?u di?n x trong t?a ?? c?c 
y = r*sin(theta);% Bi?u di?n y trong t?a ?? c?c 
plot(x,y); 
axis equal sprintf('dien tich hinh tron la:') 
dt = pi*r^2 
sprintf('chu vi hinh tron la:') 
chuvi=2*pi*r

