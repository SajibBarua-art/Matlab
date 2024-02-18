clc
clear all
close all

x = input("Enter given sequence:");

N = length(x);

y = zeros(1,N);
for i=0:N-1
    y(i+1) = y(i+1)+x(rem(N+i-1,N)+1);
end

disp(y);
