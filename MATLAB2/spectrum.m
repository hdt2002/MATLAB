%Ve pho tin hieu
function st_fft_fre = spectrum(x,fs)
    % pho cua tin hieu x
    % fs - tan so lay mau
    st_fft = fft(x);
    st_fft = fftshift(st_fft); 
    st_fft_fre = fs/2*linspace(-1, 1, length(st_fft));
    plot(st_fft_fre, abs(st_fft));
    grid;
    xlabel('Tan so (Hz)');
    ylabel('Bien do');
end