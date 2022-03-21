clc
clear all;
close all;
t1=0:0.001:3;
x=(t1>=0) & (t1<=3);
t2=0:0.001:4;
h=(t2>=0) & (t2<=2);
t3=0:0.001:7;
n1=length(x);
n2=length(h);
c=[x,zeros(1,n2)];
d=[h,zeros(1,n1)];
for i=1:(n1+n2-1)
    y(i)=0;
    for j=1:n1
        if i-j+1>0
            y(i)=y(i)+c(j)*d(i-j+1);
        end
    end
end
subplot(311)
plot(t1,x)
subplot(312)
plot(t2,h)
subplot(313)
plot(t3,y);


clc
clear all;
close all;
t1=0:0.001:3;
x=(t1>=0) & (t1<=3);
t2=0:0.001:4;
h=(t2>=0) & (t2<=2);
t3=0:0.001:7;
y=conv(x,h);
subplot(311)
plot(t1,x)
subplot(312)
plot(t2,h)
subplot(313)
plot(t3,y);