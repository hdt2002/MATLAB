%ham xu li bo loc
function y = raisedCosFilter(x,bf,Ts,beta)
% x - dau vao
% bf - bang thong cua bo loc
% Ts - chu ky lay mau
% beta - he so giam doc (rolloff factor)
% y - dau ra bo loc
Ns = length(x);
Tb = 1/bf;
beta = beta*bf;
% Mien tan so
f = [0:Ns/2-1 -Ns/2:-1]/(Ns*Ts);
Xf = fft(x);
Yf = zeros(size(Xf));
ind = (abs(f) <= (bf/2-beta));
Yf(ind) = Xf(ind).*Tb;
ind = (abs(f) <= (bf/2+beta) & abs(f) > (bf/2-beta));
Yf(ind) = Xf(ind).*(Tb*cos(pi/(4*beta)*(abs(f(ind))-bf/2+beta)).^2);
ind = (abs(f) > (bf/2+beta));
Yf(ind) = Xf(ind).*0;
% Chuyen doi sang mien thoi gian
y = ifft(Yf)./Tb;
end