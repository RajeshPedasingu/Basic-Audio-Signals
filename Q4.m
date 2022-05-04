clc
close all;
clear all;

f=500;
fs=22100;
T=0.3;
t=0:(1/fs):2;

%sin wave----

x1=sin(2*pi*f*t);

figure;
subplot(2,1,1)
plot(t,x1)
title('x1=sin(wt) with f=500,fs=22100')
xlabel('time samples')
ylabel('sample values')
subplot(2,1,2)
plot(t,x1)
title('expanded version of x1')
xlabel('time samples')
ylabel('sample values')
axis([0 0.05 -2 2])
pause(3)
sound(x1,fs)


%square wave----

x2 = square(t/T*2*pi);
figure;
plot(t,x2)
title('x2=squrare wave with time pertiod 0.3sec')
xlabel('time samples')
ylabel('sample values')

pause(3)

sound(x2,fs)


%---chirp signal--

t1 = 0:1/fs:5;
x3 = chirp(t1,0,1,250);


figure;
subplot(2,1,1)
plot(t1,x3)
title('x3=chirp signal varying frequency from 1 to 250 hz')
xlabel('time samples')
ylabel('sample values')

subplot(2,1,2)
plot(t1,x3)
title('expanded version of x3 ')
xlabel('time samples')
ylabel('sample values')
axis([0 0.5 -1.5 1.5])

pause(5)

sound(x3,fs)


%dual tone signal
t2=0:1/fs:0.5;
f1=1000;
f2=500;
y1=-10*sin(2*pi*t2*f1);
y2=2*sin(2*pi*t2*f2);

x4=y1+y2;


figure;
subplot(2,1,1)
plot(t2,x4)
title('x4=dual tone signal f1=1000 f2=500 hz for t=0.5 sec')
xlabel('time samples')
ylabel('sample values')
subplot(2,1,2)
plot(t2,x4)
title('expanded version of x4 ')
xlabel('time samples')
ylabel('sample values')
axis([0 0.05 -15 15])

pause(5)
sound(x4,fs)










