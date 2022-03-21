clc
clear all;
close all;
x=[1 2 3];
h=[2 2 2 2];
k=length(x);
n=k+length(h)-1;
for i=1:n
y(i)=0;
for j=1:k
if (i-j+1>0)
    if (i-j+1<5)
        y(i)=y(i)+x(j)*h(i-j+1);
    end
end
end
end
n1=-2:1:3;
stem(n1,y);
clc
clear all;
close all;
x=[1 2 3];
h=[2 2 2 2];
y=conv(x,h)
disp(y)
n1=-2:1:3;
stem(n1,y)