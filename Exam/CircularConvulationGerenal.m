x1 = input("Enter first sequence:");
x2 = input("Enter second sequence:");

N1 = length(x1);
N2 = length(x2);
N = max(length(x1), length(x2));

x1_circulant = zeros(N, N);

% Circular shift without using circshift
for i = 1:N
    x1_circulant(i, :) = [x1(mod((i-1) + (0:N1-1), N1) + 1), zeros(1, N - N1)];
end

x2_padded = [x2; zeros(N-length(x2), 1)];
y = x1_circulant.*x2_padded;
y_tran = sum(y);

disp(y_tran);

