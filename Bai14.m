w = (0.01:0.01:5);
H1 = 1./(j*w); 
H2 = 1./ (1 + j*w);
subplot(2,2,1) 
plot(w, abs(H1)); 
title('Do thi bien do qua bo tich phan'); 
subplot(2,2,2) 
plot(w, angle(H1));  
title('Do thi pha qua bo tich phan'); 
subplot(2,2,3) 
plot(w,abs(H2));  
title('Do thi bien do cua phan tu tre thoi gian'); 
subplot(2,2,4) 
plot(w,angle(H2)); 
title('Do thi pha cua phan tu tre thoi gian');

