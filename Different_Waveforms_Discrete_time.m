clc
t=0:1:10;
f=0.1;
x1=2*sin(2*pi*f*t);
figure()
subplot(5,2,1)
stem(t,x1)
title('sine')
grid on;
%%
x2=2*cos(2*pi*f*t);
subplot(5,2,2)
stem(t,x2)
title('cosine')
grid on;
%%
impulse= t==0;
subplot(5,2,3)
stem(t,impulse)
title('Impulse')

grid on;
%% 
n2=0:1:9;
x3=ones(1,10);
subplot(5,2,4)
stem(n2,x3)
title('step')
grid on;
%% 
x4=n2;
subplot(5,2,5)
stem(n2,x4)
title('ramp')
grid on;
%%
x5=-5:0.0025:5;
f=rectpuls(x5,1);
subplot(5,2,6)
stem(x5,f)
title('rectangle')
grid on;
%%
t1=-5:1:5;
x6=tripuls(t1,3);
subplot(5,2,6)
stem(t1,x6)
title('triangle')
grid on;
%%
x7=exp(0.5*t);
subplot(5,2,7)
stem(t,x7)
title('Increasing expotential')
grid on;
%%
t2=0:1:5;
x8=exp((-0.5)*t2);
subplot(5,2,8)
stem(t2,x8)
title('decreasng expotential')
grid on;
%%
t3=[-5 -4 -3 -2 -1 0 1 2 3 4 5];
x9=sign(t3);
subplot(529)
stem(t3,x9)
title('signum')
grid on;
%%
a=-1/12;
b=pi/6;
c=a+b*i;
t4=1:60;
x10=4*exp(c*t4);
subplot(5,2,10)
stem(t4-1,real(x10))
title('real complex');
grid on;
%% 
figure()
subplot(211)
stem(t4-1,imag(x10))
title('imagine complex');
grid on;
subplot(212)
%%
n=-5:1:5;
y=diric(n,5);
subplot(212)
stem(n,y)