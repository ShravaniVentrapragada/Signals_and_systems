clc
clear all;
close all;
syms t;
T=2;
N=50;
w0=(2*pi/T);
f=heaviside(t)-heaviside(t-1);
a0=double((1/T)*int(f,t,0,T));
for n=1:N
    a(n)=double((1/T)*int(f*cos(n*w0*t),t,0,T));
    b(n)=double((1/T)*int(f*sin(n*w0*t),t,0,T));
end
t1=0:0.01:4;
f1=a0;
for n=1:N
    harmonics= a(n)*cos(n*w0*t1)+b(n)*sin(n*w0*t1);
    f1= f1+harmonics;
    pause(0.1)
    plot(t1,f1)
end
