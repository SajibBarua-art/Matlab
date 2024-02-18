a=input('Enter 1st Number:');
b=input('Enter 2nd Number:');
c=input('Enter 3rd Number:');

if a>b && a>c
    fprintf('The largest is:%d\n',a);
elseif b>a && b>c
    fprintf('The largest is:%d\n',b);
else
    fprintf('The largest is:%d\n',c);
end