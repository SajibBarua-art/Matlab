clc
close all

x = [1 2 3 4]; % Corrected array initialization
N = 4;
X = [];
dft_x = 0;

for k = 0:N-1
    for n = 0:N-1 % Changed loop variable to nn to avoid conflict
        dft_x = dft_x + x(n+1) * exp(-1i * 2 * pi * n * k / N); % Corrected array indexing
    end
    X = [X dft_x];
    dft_x = 0;
end

LHS = X;
disp('DFT using manual calculation:');
disp(LHS);

X1 = [];
dft_x1 = 0;

for k = 0:N-1
    for n = 0:N-1 % Changed loop variable to nn to avoid conflict
        dft_x1 = dft_x1 + x(mod(n + N, N)+1)* exp(-1i * 2 * pi * n * k / N); % Corrected array indexing
    end
    X1 = [X1 dft_x1];
    dft_x1 = 0;
end

RHS = X1;
disp('RHS for comparison:');
disp(RHS);