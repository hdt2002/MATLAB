w = (0.01:0.01:5);
H1 = 1./(j*w);
H2 = 1./ (1 + j*w);
plot(w, abs(H1));
title('Do thi bien do qua bo tich phan'); 
figure 
plot(w,abs(H2));
figure 
plot(w, abs(H1)); 
title('Do thi bien do qua bo tich phan'); 
figure 
semilogy(w,abs(H1));
loglog(w,abs(H1)); 