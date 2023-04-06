f = linspace(-2000,2000,1500); 
% T?o m?t vector bi?n f giá tr? b?t ??u t? -500 ??n 500 cách nhau 50 
Tb = 0.002;  
Rb = 1/Tb; 
P = 1;
A = 1;  
AA = A^2*Tb; 
fc = 600; 
Eb = P*Tb; 

PSD_BaseBand = AA*(sinc((f*Tb)).^2);  
% M?t ?? ph? công su?t c?a tín hi?u b?ng t?n c? s?
PSD_BPSK = (Eb*log2(2))*((sinc((f-fc)*Tb*log2(2))).^2);   
%  Khai tri?n công th?c thành ph?n c?a BPSK, QPSK, 8-PSK    
PSD_QPSK = (Eb*log2(4))*((sinc((f-fc)*Tb*log2(4))).^2);    
PSD_8_PSK = (Eb*log2(8))*((sinc((f-fc)*Tb*log2(8))).^2); 
PSD_BPSK_2 = (Eb*log2(2)/2)*(((sinc((f-fc)*Tb*log2(2))).^2)+((sinc((f+fc)*Tb*log2(2))).^2)); 
% Công th?c tính PSD c?a BPSK, QPSK, 8-PSK     
PSD_QPSK_2 = (Eb*log2(4)/2)*(((sinc((f-fc)*Tb*log2(4))).^2)+((sinc((f+fc)*Tb*log2(4))).^2));      
PSD_8_PSK_2 = (Eb*log2(8)/2)*(((sinc((f-fc)*Tb*log2(8))).^2)+((sinc((f+fc)*Tb*log2(8))).^2)); 

SF = ((16*Eb)/(pi^2));
Num = (cos(2*pi*(f-fc)*Tb));      
Dum = (16*(Tb^2)*(f-fc).^2)-1;          
PSD_MSK = SF*((Num./Dum).^2);  
Num_2 = (cos(2*pi*(f+fc)*Tb));      
Dum_2 = (16*(Tb^2)*(f+fc).^2)-1;
PSD_MSK_2 = (SF/2)*(((Num./Dum).^2)+((Num_2./Dum_2).^2)); 
%M?t ?? ph? công su?t c?a MSK

figure(1) 
subplot(2,1,1); 
plot(f,PSD_BaseBand,'b','Linewidth',3);  
xlabel ('T?n s? [Hz]','color','b');
ylabel ('PSD BaseBand','color','b');
title ('M?t ?? ph? công su?t PSD c?a tín hi?u ??u vào');
grid on; 

subplot(2,1,2); 
plot(f,PSD_BPSK,'b','Linewidth',3);  
hold on
plot(f,PSD_QPSK,'g','Linewidth',3);  
hold on
plot(f,PSD_8_PSK,'r','Linewidth',3);
xlabel ('T?n s? [Hz]','color','b');
ylabel ('PSD c?a BPSK-QPSK-8PSK','color','b');
title ('So sánh m?t ?? ph? công su?t c?a BPSK-QPSK-8PSK','FontName','.VnTime','color','b','FontSize',12);
grid on;

figure(2)
subplot(2,2,1:2);  
    plot(f,PSD_BaseBand,'b','LineWidth',3);
     xlabel('Tan so');
    ylabel('PSD dau vao khoi dieu che','color','b');    
    title('mat do pha cong suat PSD cua tin hieu dau vao khoi dieu che R_b =','color','b');
    grid on;  
subplot(2,2,3);
    f1  =   (f-fc)*Tb;
    plot(f1,PSD_QPSK,'g','LineWidth',3);
    hold on
    plot(f1,PSD_MSK,'r','LineWidth',3);
    xlabel('Tan so chuan hoa (f-f_c)T_b','color','r');
    ylabel('PSD cua QPSK & MSK','color','b');
    title(['So sanh PSD cua QPSK & MSK, R_b =',num2str(Rb),'b/s',...
        '; Tan so song mang f_c =',num2str(fc),'H_Z'],...
        'FontName','.VnTime','color','b','FontSize',9);
    grid on;
    L   = legend('PSD cua QPSK','PSD cua MSK');
    set(L); 
subplot(2,2,4);
    plot(f,PSD_QPSK,'g','LineWidth',3);
    hold on
    plot(f,PSD_MSK,'r','LineWidth',3);
    xlabel('Tan so [H_z]','color','b');
    ylabel('PSD cua QPSK & MSK','color','b');    
    title(['So sanh PSD cua QPSK & MSK, R_b =',num2str(Rb),'b/s',...
        '; Tan so song mang f_c =',num2str(fc),'H_Z'],...
        'FontName','.VnTime','color','b','FontSize',9);
    grid on;
    L   = legend('PSD cua QPSK','PSD cua MSK');
    set(L);
    
figure(3)
subplot(2,1,1);
    plot(f,PSD_BaseBand,'b','LineWidth',3);
     xlabel('Tan so');
    ylabel('PSD dau vao khoi dieu che','color','b');    
    title('mat do pha cong suat PSD cua tin hieu dau vao khoi dieu che R_b =','color','b');
    grid on;    
subplot(2,1,2);
    plot(f,PSD_BPSK_2,'b','LineWidth',3);
    hold on
    plot(f,PSD_QPSK_2,'g','LineWidth',3);
    hold on
    plot(f,PSD_8_PSK_2,'r','LineWidth',3);    
    xlabel('Tan so [H_z]','color','b');
    ylabel('PSD cua BPSK-QPSK-8PSK','color','b');    
    title(['So sanh mat do pha con suat PSD cua tin hieu BPSK; QPSK; 8-PSK voi toc do R_b =',num2str(Rb),'b/s',...
        '; Tan so song mang f_c =',num2str(fc),'H_Z'],...
        'FontName','.VnTime','color','b','FontSize',9);
    grid on;
    L   = legend('PSD cua BPSK','PSD cua QPSK',...
        'PSD cua 8PSK');
    set(L);

figure(4)
subplot(2,2,1:2);  
    plot(f,PSD_BaseBand,'b','LineWidth',3);
    xlabel('Tan so');
    ylabel('PSD dau vao khoi dieu che','color','b');    
    title('mat do pha cong suat PSD cua tin hieu dau vao khoi dieu che R_b =','color','b');
    grid on;  

subplot(2,2,3);
    f1  =   (f-fc)*Tb;
    plot(f1,PSD_QPSK_2,'g','LineWidth',3);
    hold on
    plot(f1,PSD_MSK_2,'r','LineWidth',3);
    xlabel('Tan so chuan hoa (f-f_c)T_b','color','r');
    ylabel('PSD cua QPSK & MSK','color','b');
    title(['So sanh PSD cua QPSK & MSK, R_b =',num2str(Rb),'b/s',...
        '; Tan so song mang f_c =',num2str(fc),'H_Z'],...
        'FontName','.VnTime','color','b','FontSize',9);
    grid on;
    L   = legend('PSD cua QPSK','PSD cua MSK');
    set(L);
    
subplot(2,2,4);
    plot(f,PSD_QPSK_2,'g','LineWidth',3);
    hold on
    plot(f,PSD_MSK_2,'r','LineWidth',3);
    xlabel('Tan so [H_z]','color','b');
    ylabel('PSD cua QPSK & MSK','color','b');    
    title(['So sanh PSD cua QPSK & MSK, R_b =',num2str(Rb),'b/s',...
        '; Tan so song mang f_c =',num2str(fc),'H_Z'],...
        'FontName','.VnTime','color','b','FontSize',9);
    grid on;
    L   = legend('PSD cua QPSK','PSD cua MSK');
    set(L);  