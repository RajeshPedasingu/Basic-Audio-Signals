clc
clear all;
close all

x=[5 4 6 7 3 2]
n=length(x);
t=-(n-1):(n-1);
p=zeros(1,n-1)
x1=[p x] % reshape

x2=fliplr(x)
x3=[x2 p]

figure;
subplot(2,1,1)
stem(t,x1)
title('x(n)')
xlabel('time sample')
ylabel('sample value')
axis([-5 5 0 8])
subplot(2,1,2)
stem(t,x3)
title('x(-n)')
xlabel('time sample')
ylabel('sample value')
axis([-5 5 0 8])
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
xlim([-5 5])
subplot(2,1,2)
stem(t,odd)
title('Odd part of x(n)')
xlabel('time sample')
ylabel('sample value')
xlim([-5 5])

