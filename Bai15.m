x= (-2:0.2:2);
y = (-1:0.1:1); 
[X,Y] = meshgrid(x,y); 
F = X.^2 + Y.^2; 
surf(X, Y , F);
xlabel('X'); 
ylabel(' Y ');

