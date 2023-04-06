r = 3;
theta = linspace(-2*pi,2*pi,180);
x = r*cos(theta); 
y = r*sin(theta); 
plot(x,y); 
axis equal 
dt = pi*r^2; 
sprintf('dien tich hinh tron la: %0.5f',dt) 
chuvi=2*pi*r; 
sprintf('chu vi hinh tron la:%0.5f', chuvi)

