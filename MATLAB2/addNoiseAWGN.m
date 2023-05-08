%ham them kenh nhieu AWGN
function yNoise = addNoiseAWGN(y,SNR_dB)
% y - Tin hieu dau v?o
% SNRdB - Muc SNR dB
% yNoise ? Tin hieu nhieu dau ra
SNR = 10^(SNR_dB/10);
VarN = abs(var(y))/SNR;
if (isreal(y))
    yNoise = y + sqrt(VarN)*randn(size(y));
else
    yNoise = y + sqrt(VarN/2)*(randn(size(y))+1i*randn(size(y)));
end
end