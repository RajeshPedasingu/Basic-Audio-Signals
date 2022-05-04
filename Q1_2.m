clc
clear all;
close all

k=0:0.1:1
f=1
x=sin(2*pi*f*k) + cos(pi*f*k)
n=length(x);
t=-(n-1):(n-1);
p=zeros(1,n-1)
x1=[p x] % reshape

x2=fliplr(x)
x3=[x2 p]

figure;
subplot(2,1,1)
stem(t,x1)
title('x(n) = sin(2πfn) + cos(πfn)')
xlabel('time sample')
ylabel('sample value')
axis([-10 10 -3 3])
subplot(2,1,2)
stem(t,x3)
title('x(-n)')
xlabel('time sample')
ylabel('sample value')
axis([-10 10 -3 3])
%--------even & odd function---
even=(x1+x3)/2
odd=(x1-x3)/2
%--------end-------
figure;
subplot(2,1,1)
stem(t,even)
title('even part of x(n)')
xlabel('time sample')
ylabel('sample value')
axis([-10 10 -2 2])
subplot(2,1,2)
stem(t,odd)
title('odd part of x(n)')
xlabel('time sample')
ylabel('sample value')
axis([-10 10 -2 2])