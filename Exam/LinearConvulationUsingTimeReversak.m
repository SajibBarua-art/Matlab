a=input('Enter the sequence:');
n=4;
f=zeros(1,4);

for i=0:n-1
    x=n+i-1;
    y=mod(x,n);
    f(i+1)=a(y+1);
end

disp(f);




