clc
clear all
close all
%%
t=-6:0.01:6;
u1=1.*(t>=0);
u2=1.*(t>=4);
u3=u1-u2;
subplot(331)
plot(t,u3)
title('plot x(t)')
axis([-6 6 -4 6])
grid on;
%%
subplot(332)
plot(-t,u3)
title('fold')
axis([-6 4 -4 6])
grid on;
%%
u4=diff(u3);
subplot(333)
plot(t(:,1:length(u4)),u4)
title('diff')
axis([-6 6 -4 6])
grid on;
%%
u5=cumsum(u3);
subplot(334)
plot(t,u5)
title('integral')
grid on;
%%
f=0.5;
y=(-2)*sin(2*pi*f*t);
u6=y.*(u3);
subplot(335)
plot(t,u6)
axis([-5 5 -4 6])
grid on;
%%
u7=1.*(t*2>=0)-1.*(t*2>=4);
subplot(336)
plot(t,u7)
axis([-6 6 -4 6])
title('compression')
grid on;
%%
u8=1.*(t/1.5>=0)-1.*(t/1.5>=4);
subplot(337)
plot(t,u8)
axis([-6 6 -4 6])
title('expansion')
grid on;
%% 
u9=y./(u3);
subplot(338)
plot(t,u9)
axis([-5 5 -4 6])
grid on;