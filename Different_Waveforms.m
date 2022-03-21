%% Types of Waves
% % Name: Ventrapragada Sai Shravani
% PRN: 17070123120
% Batch: E&TC B-3
clc
t=0:0.01:10;
f=0.5;
x1=2*sin(2*pi*f*t);
figure()
subplot(5,2,1)
plot(t,x1)
title('sine')
grid on;
x2=2*cos(2*pi*f*t);
subplot(5,2,2)
plot(t,x2)
title('cosine')
grid on;
%%
impulse= t==0;
subplot(5,2,3)
plot(t,impulse)
title('Impulse')
grid on;
%% 
n2=0:1:9;
x3=ones(1,10);
subplot(5,2,4)
plot(n2,x3)
title('step')
grid on;
%% 
x4=n2;
subplot(5,2,5)
plot(n2,x4)
title('ramp')
grid on;
%%
x5=-5:0.0025:5;
f=rectpuls(x5,1);
subplot(5,2,6)
plot(x5,f)
title('rectangle')
grid on;
%%
t1=-3:0.1:3;
x6=tripuls(t1,3);
subplot(5,2,6)
plot(t1,x6)
title('triangle')
grid on;
%%
x7=exp(5*t);
subplot(5,2,7)
plot(t,x7)
title('Increasing expotential')
grid on;
%%
t2=0:0.1:5;
x8=exp((-1)*t2);
subplot(5,2,8)
plot(t2,x8)
title('decreasng expotential')
grid on;
%%
t3=[-5 -eps(1) 0 eps(1) 5];
x9=sign(t3);
subplot(529)
plot(t3,x9)
title('signum')
grid on;
%%
a=-1/12;
b=pi/6;
c=a+b*i;
t4=1:60;
x10=4*exp(c*t4);
subplot(5,2,10)
plot(t4-1,real(x10))
title('real complex');
grid on;
%% 
figure()
subplot(211)
plot(t4-1,imag(x10))
title('imagine complex');
grid on;
%%
subplot(212)
t5=linspace(-5,5);
x11=sinc(t5);
plot(t5,x11)
title('sinc')
grid on;
