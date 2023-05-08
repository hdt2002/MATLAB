%ham them kenh nhieu Gauss
function yNoise = addNoiseGauss(y, SNR_dB)
% y - Tin hieu dau vao
% SNR_db - Ty le tin hieu nhieu dB
% yNoise - Tin hieu dau ra qua nhieu
        SNR_lin = 10^(SNR_dB/10);
        noise = randn(size(y));
        power_signal = mean(abs(y).^2);
        power_noise = power_signal/SNR_lin;
        noise = noise*sqrt(power_noise);
        yNoise = y + noise;
end