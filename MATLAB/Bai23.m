x0=2; 
x1=1.5;
while(x0-x1)> 0.0001 
    x0 = x1; 
    x1 = (x0^2+2)/(2*x0) 
end; 
disp('Gia tr? can bac 2 cua a tinh theo pp gan dung la: ') 
x1

