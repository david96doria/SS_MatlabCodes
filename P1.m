% script asignacion
% 1) vector T 1/10000
T=1/10000;
t=[-1,T,1];
% 2) signal
x=-2+3*cos(20*pi*t)+sin(40*pi*t);
subplot(2,2,1);plot(t,x,'-y')
xlabel('tiempo');
ylabel('magnitud');
% 3) square signal T = 1/10 seg
title('Square signal');
t=linspace(0,4*pi);
x=square(t);
subplot(2,2,2);plot(t/pi,x,'-g')
grid
% 4) sawtooth signal 
T=10*(1/50);
fs=100;
t=0:1/fs:T-1/fs;
x=sawtooth(2*pi*50*t,1/2);
subplot(2,2,3);plot(t,x,'-b')
% 5) 
