%Thuc hanh noi dung 1 Hoang Dong Tuan B20DCVT334
a=3;
b=4;
A = randi([0 a*b], a, b) % T?o ma tr?n ng?u nhiên a x b
B = reshape(A, 1, []) %vector hàng B
B1 = diag(A)
max_value = max(A(:))
min_value = min(A(:))
sum_A = sum(A(:))
mean_A = mean(A(:))
A1=eye(a)
B2 = ones(a, b) * b % T?o ma tr?n B có giá tr? toàn b
C = [A1, B2] % Ghép ma tr?n A và B v?i nhau
%7
A7=randi([0 9],10,11)
B7 = A7(a, :)
C7=A7(:,b)
z=A7(a,b)
%8
A8= randi([-2 12],3,5)
B8 = A8(A8 > a)
C8 = A8(A8 <= b)
%9
A9= randi([0 9],9,9)
A9(a, b) = 4 % gán giá tr? 4 cho ph?n t? t?i hàng a c?t b
A9(A9 == 5) = -5 % gán giá tr? -5 cho t?t c? các ph?n t? có giá tr? b?ng 5
%10
A10= randi([0 9],9,9)
B10= randi([0 9],1,9)
AB = vertcat(A10, B10) % Ghép vecto B vào ma tr?n A theo hàng
AB(a, :) = [] % Xóa hàng th? a
AB(:, b) = [] % Xóa c?t th? b
AB(setdiff(1:size(AB,1),a), setdiff(1:size(AB,2),b)) % Xóa ph?n t? ? hàng a c?t b
%11
A11=[1 2;3 4]
a11 = A11(1,1); % L?y giá tr? c?a ph?n t? ??u tiên trong ma tr?n A làm giá tr? m?c ??nh cho các ph?n t? m?i
B11 = ones(b+4, b+4) * a % T?o ma tr?n m?i v?i các ph?n t? có giá tr? b?ng a
for i = 1:b+4
    for j = 1:b+4
        if i == b+4 && j == b+4
            B11(i,j) = 10 % Gán giá tr? 10 cho ph?n t? ? hàng th? (b+4) c?t (b+4)
        end
    end
end
%12
A12=randi([0 9],9,10)

% Chèn thêm các ph?n t? có giá tr? b?ng 0 vào ma tr?n A ?? t?o ma tr?n m?i có kích th??c 10x10
A12_new = zeros(10, 10)
A12_new(1:9, 1:10) = A12

% Thay ??i kích th??c c?a ma tr?n m?i thành ma tr?n B có kích th??c 5x18
B12 = imresize(A12_new, [5, 18])


