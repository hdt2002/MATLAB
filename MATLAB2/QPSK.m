%----Hoang Dong Tuan B20DCVT344----(4-QPSK,N=4Mb/s)
clear,clc,close all
M = 4;      % Dieu che 4_QPSK
Es =10;      % Nang luong cho mot ky hieu
Rb=4e6;   % Toc do bit- bit rate
Nsym=Rb/log2(M);   % Toc do ki hieu- Symbol rate
Tsym=1/Nsym;% Chu ki cua ki hieu
n = 1e4;   % So bit dau vao
phi=0;      % Pha tin hieu phat
fs=3e5;  % Tan so lay mau
fc=1e4;    % Tan so song mang
ts=1/fs; % Chu ky lay mau
bf = 7e6; % Bang thong bo loc
 %--------------------------------
 %Tao tin hieu phat

bit_input = randi([0 1], 1, n); % Tao chuoi bit ngau nhien dau vao
binary = bi2de(reshape(bit_input,log2(M),length(bit_input)/log2(M)).','left-msb'); % Chuyen doi nhi phan sang thap phan.
d = dpskmod(binary,M);     
 %-------------------------------
 %__ham s(t) dau bai cho________

t=0:ts:n/log2(M)*Tsym;

for i = 1:length(t)
    s(i) = 0;
    for k = 1:n/log2(M)
        pt(k) = sqrt((2*Es)/Tsym)*((1-cos(2*pi*t(i)))/Tsym);   
        s(i) = s(i)+ d(k)*pt(k);
    end
end
 
 

plot(t,s);
xlabel(' Thoi gian dieu che(s)'); 
ylabel( ' Bien do ');
title(' Do thi tin hieu goc ');
 
eyec=s.*exp(1i*phi); %tin hieu sau dieu che 
signal_fs=eyec.*exp(1i*2*pi*fc*t);    %Tin hieu de xac dinh mau mat
%______________
%Do thi va pho cua tin hieu dieu che 4_QPSK 
figure
subplot(2,1,1);
plot(t,real(signal_fs))
xlabel(' Thoi gian (s)'); ylabel( ' Bien do ');
title('Do thi tin hieu sau dieu che');
subplot(212);
spectrum(signal_fs,fs);
title('Pho cua tin hieu sau dieu che');
 

eyediagram(real(signal_fs),20);
title(' Bieu do mat tin hieu 4-DPSK');
 

scatterplot(d,1,0,'or');
title(' Bieu do chom sao cua tin hieu sau dieu che ' );
 
 
figure
signal_noise=addNoiseAWGN(signal_fs,5);
subplot(211);
plot(t, real(signal_noise));
xlabel(' time s'); ylabel( ' Bien do ');
title(' Do thi khi bi AWGN ');
subplot(212);
spectrum(signal_noise,fs);
title('Pho cua tin hieu bi AWGN');
 

eyediagram(real(signal_noise),20);
title('Bieu do mat tin hieu 4-DPSK khi qua AWGN');
 

d_noise = addNoiseAWGN(d,5);
h = scatterplot(d_noise,1,0,'x');
hold on;
scatterplot(d,1,0,'or',h);
title('Bieu do chom sao cua tin hieu sau khi qua kenh AWGN');
 
 
 

figure
source1 = signal_noise.*exp(-1i*phi).*exp(-1i*2*pi*fc*t);     %Tin hieu thu truoc bo loc
source = raisedCosFilter(source1,bf,ts,2);  % Khoi phuc lai tin hieu 
plot(t,real(source))    % Do thi tin hieu sau khi khoi phuc va pho cua no
xlabel('Thoi gian(s)'); ylabel('Bien do');
title('Do thi tin hieu khoi phuc');
figure
spectrum(source,fs);
title('Pho cua tin hieu duoc khoi phuc');
 

h = scatterplot(source,1,0,'xb');
title('Bieu do chom sao cua tin hieu duoc khoi phuc');
 

eyediagram(real(source),20);
title('Mau mat duoc khoi phuc');
 
 

 
SNR_dB=[2 5 10] ;
%------vong lap-----%
for i=1:length(SNR_dB)
    SNR=exp(SNR_dB(i)*log(10)/10);   %Chuyen dB sang so lan
    theoryBer(i)=2*qfunc(sqrt(SNR)); %Tinh BER theo ly thuyet
    simBer(i)=monteCarlo(SNR_dB(i), n, bit_input);  %Tinh BER theo thuc nghiem
   
end

% Uoc tinh xac suat loi tai BER = [ 2 5 10 ]
disp('Ket qua BER tai SNR lan luot la 2 5 va 10dB la')
simBer = single(simBer)   %Lam tron 5 so.
%Do thi
semilogy(SNR_dB,theoryBer,'LineWidth',2);hold on;
semilogy(SNR_dB,simBer,'r-*','LineWidth',2);grid on;
xlabel('SNR (dB)'); ylabel('BER'); 
title(' Truyen tin hieu DPSK qua kenh AWGN');
legend('BER-l-y--t-h-u-y-e-t','BER-m-o--p-h-o-n-g'); 








