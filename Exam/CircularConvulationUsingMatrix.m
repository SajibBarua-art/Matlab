clc
clear all
close all

x1 = input("Enter first sequence:");
x2 = input("Enter second sequence:");

N1 = length(x1);
N2 = length(x2);
N = N1;

x1_circulant = zeros(N, N);

for i = 1:N
    x1_circulant(i, :) = circshift(x1, i-1);
end

x2_padded = [x2; zeros(N-length(x2), 1)];
y = x1_circulant.*x2_padded;
y_tran = sum(y.');

disp(y_tran);

y1 = cconv(x1,x2,'circular');
disp(y1);



x1_padded = [x1; zeros(N-length(x1), 1)];

y_built = y(1:length(x1) + length(x2) - 1);

disp(y_built);


%disp(y);