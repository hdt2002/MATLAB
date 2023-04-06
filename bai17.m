y =(1:0.5:5);
L=length(y); 
k=0; 
disp('vecto yr la : ') 
for i=1:L 
    yz(i)= y(L-i+1);
end; 
 yz
for i=1:L 
    if (rem(y(i),1)==0) k= k+1; 
z(k)=y(i); 
end
end
disp('vecto chua cac so nguyen trong y : ')
z
