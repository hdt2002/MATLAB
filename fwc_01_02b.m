%tham so
f= -200:5:200;
%linspace(-200,200,1500);
Tb = 0.02;
Rb = 1/Tb;
A = 10;
AA =A^2*Tb;
fc= 120;
% Mat do pho cong suat bang tan co so
PSD_BaseBand = AA*(sinc((f*Tb)).^2) ;
% Mat do pho cong suat BPSK
PSD_PassBand = (AA/4)*((sinc((f+fc)*Tb)).^2 +(sinc((f-fc)*Tb)).^2) ;
PSD_PassBand_1 = (AA/4)*((sinc((f-fc)*Tb)).^2);
PSD_PassBand_2 = (AA/4)*(sinc((f+fc)*Tb)).^2;
%______________________________________
figure (1)
subplot (2,1,1);
stem(f,PSD_BaseBand, 'b', 'Linewidth' ,3);
hold on
plot (f,PSD_BaseBand,'b','Linewidth',3);
xlabel('Tan so');
ylabel('PSD_B_a_s_e_B_a_n_d');

grid on;
%-----------------------------------------
subplot (2,1,2);
stem(f, PSD_PassBand_1, 'r','LineWidth', 3);
hold on
stem(f ,PSD_PassBand_2,'g','LineWidth',3);
xlabel('tan so');
ylabel('PSD_B_a_s_e_B_a_n_d');

grid on;