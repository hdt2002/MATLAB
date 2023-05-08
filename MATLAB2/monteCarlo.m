%ham tinh ber = phuong phap monteCarlo
function berMonteCarlo = monteCarlo(SNR_dB, n, bit)
    % SNR_dB: Ty le tin hieu nhieu
    % n: So lan lap danh gia hieu nang
    % berMonteCarlo: BER trung binh dua tren ky thuat Monte Carlo
    M = 4; 
    % BER trung binh
    berSum = 0;
    for i = 1:n
        % Tin hieu dieu che
        bitmodulated = dpskmod(bit, M);
        % Tao ra tin hieu qua nhieu Gauss
        signal_noise = addNoiseGauss(bitmodulated, SNR_dB);
        % Giai dieu che tin hieu
        bitdemodulated = dpskdemod(signal_noise, M);
        % Tinh so luong bit sai khac giua bit ban dau va bit sau giai dieu che
        num_errors = sum(bit ~= bitdemodulated);
        % Tinh loi bit
        berSum = berSum + num_errors/n;
    end
    berMonteCarlo = berSum/n;
end