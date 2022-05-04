clc;
close all;
clear all;


n=0:10;


n1=1:2*length(n)-1;
n2=n1-1;

b1=2;
b2=2;
b3=2;


c=x1(n) ;
subplot(2,1,1)
stem(n,c)
title('input x1[n]')
xlabel('time samples')
ylabel('sample values')
axis([-12 12 0 2])
c2=x2(n);
subplot(2,1,2)
stem(n,c2);
title('input x2[n]')
xlabel('time samples')
ylabel('sample values')
xlim([-12 12])





%Q1
n1=1:2*length(n)-1;
n2=n1-1;
%--y1[n] = x[n − 3] ∗ x[n − 2]--------

% ---linearity check---

y1=conv(x1(n-3),x1(n-2));
y2=conv(x2(n-3),x2(n-2));
y3=conv(b1*x1(n-3),b1*x1(n-2))+conv(b2*x2(n-3),b2*x2(n-2));
y4=b1*y1+b2*y2;
d1=y3-y4;

figure;
subplot(2,1,1)
stem(n2,y1)
title('y1[n] = x1[n − 3] ∗ x1[n − 2]')
xlabel('time samples')
ylabel('sample values')
subplot(2,1,2)
stem(n2,y2)
title('y2[n] = x2[n − 3] ∗ x2[n − 2]')
xlabel('time samples')
ylabel('sample values')


figure;
subplot(3,1,1)
stem(n2,y3)
title('[linearity check] y3=a*x1(t)+b*x2(t)')
xlabel('time samples')
ylabel('sample values')
subplot(3,1,2)
stem(n2,y4)
title('y4=y1+y2 ')
xlabel('time samples')
ylabel('sample values')
subplot(3,1,3)
stem(n2,d1)
title('d=y3-y4 here the difference is "≠0" then it is Non-linear ')
xlabel('time samples')
ylabel('sample values')



%--Time invarient check------

e1=x1(n); %input x[n]

y1=b1*conv(x1(n-3),x1(n-2)); % system 
t0=4; % shifting factor
y2=b1*conv(x1(n-3+t0),x1(n-2+t0)); % input shift x[n+to]
n1=n+t0;
y3=b1*conv(x1(n1-3),x1(n1-2)); % output shift y[n+to]
d1=y2-y3;

figure;
subplot(3,1,1)
stem(n2,y2)
title('[Time invarient check]output(y2) due to x[n+to]')
xlabel('time samples')
ylabel('sample values')
subplot(3,1,2)
stem(n2,y3)
title('output(y3) due to y[n+to]')
xlabel('time samples')
ylabel('sample values')
subplot(3,1,3)
stem(n2,d1)
title('d=y2-y3 here the  difference "d=0" then it is time InVarient')
xlabel('time samples')
ylabel('sample values')


%---Q1-end--




%Q2
%--y=x[n+2]--------

y1=x1(n);
y2=x2(n);
n3=-2:8;
figure;
subplot(2,1,1)
stem(n3,y1)
title('y1[n] = x1[n + 2] ')
xlabel('time samples')
ylabel('sample values')
axis([-4 15 0 1.5])

subplot(2,1,2)
stem(n3,y2)
title('y2[n] = x2[n +2] ')
xlabel('time samples')
ylabel('sample values')
xlim([-4 15])


%--linearity check------



y3=(b1*x1(n)+b2*x2(n));
y4=b1*y1+b2*y2;
d1=y3-y4;






figure;
subplot(3,1,1)
stem(n3,y3)
title('[linearity check] y3=a*x1(t)+b*x2(t)')
xlabel('time samples')
ylabel('sample values')
xlim([-4 15])

subplot(3,1,2)
stem(n3,y4)
title('y4=y1+y2 ')
xlabel('time samples')
ylabel('sample values')
xlim([-4 15])

subplot(3,1,3)
stem(n3,d1)
title('d=y3-y4 if the difference is "0" then it is linear ')
xlabel('time samples')
ylabel('sample values')
xlim([-4 15])


%-----Time invarient check-----



y1=x1(n); % system 
to=2; % shifting factor
n1=n+to;
y2=x1(n); % input shift x[n+to]
n3=n+2;
y3=x1(n); % output shift y[n+to]
y4=y2-y3;

figure;
subplot(3,1,1)
stem(n1,y1)
title('[Time invarient check]output(y2) due to x[n+to]')
xlabel('time samples')
ylabel('sample values')
axis([-4 15 0 1.5])
subplot(3,1,2)
stem(n1,y2)
title('output(y3) due to y[n+to]=y[n+4]')
xlabel('time samples')
ylabel('sample values')
axis([-4 15 0 1.5])
subplot(3,1,3)

stem(n3,y4)
title('d=y2-y3 if the difference "d=0" then it is time InVarient')
xlabel('time samples')
ylabel('sample values')
axis([-4 15 0 1.5])
%---Q2 end-------





%Q3
%--y3[n] = sin(x[n])--------
%--linearity check------


y1=sin(x1(n));
y2=sin(x2(n));
y3=sin(b1*x1(n)+b2*x2(n));
y4=b1*y1+b2*y2;
d1=y3-y4;



figure;
subplot(3,1,1)
stem(y3)
title('[linearity check] y3=a*x1(t)+b*x2(t)')
xlabel('time samples')
ylabel('sample values')
xlim([-4 15])
subplot(3,1,2)
stem(y4)
title('y4=y1+y2 ')
xlabel('time samples')
ylabel('sample values')
xlim([-4 15])
subplot(3,1,3)
stem(d1)
title('d=y3-y4 here the difference is "≠0" then it is Non-linear ')
xlabel('time samples')
ylabel('sample values')
xlim([-4 15])

%--Time invarient---

e1=x1(n); %input x[n]

y1=b1*sin(x1(n));
t0=4;
y2=(b1*sin(x1(n+t0)));
n1=n+t0;
y3=(b1*sin(x1(n1)));
y4=y2-y3;

figure;
subplot(3,1,1)
stem(y2)
title('[Time invarient check]output(y2) due to x[n+to]')
xlabel('time samples')
ylabel('sample values')
axis([-4 15 0 3])
subplot(3,1,2)
stem(y3)
title('output(y3) due to y[n+to]')
xlabel('time samples')
ylabel('sample values')
axis([-4 15 0 3])
subplot(3,1,3)
stem(y4)
title('d=y2-y3 if the difference "d=0" then it is time InVarient')
xlabel('time samples')
ylabel('sample values')
axis([-4 15 0 3])

%--Q3--end








%----creating x1-------


function out=x1(n)
a1=(n>=0);
a2=((n-10)>=0);
x1=a1-a2;
out=x1;
end

%--end--



%----creating x2-------

function out=x2(n)
for i=1:length(n)
    if n(i)>=0 &n(i)<=10
        x2(i)=n(i);
    else
        x2(i)=0;
    end
end
out=x2;
end

%---end---


