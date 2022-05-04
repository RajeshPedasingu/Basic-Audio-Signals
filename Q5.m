clc
close all
clear all


fs=8000;

h=audiorecorder(fs,8,1)

display('start talking')

recordblocking(h,3)

display('record is over')


y = getaudiodata(h)
plot(y)
title('recorded audio signal')
xlabel('time samples')
ylabel('sample values')
pause(5)
sound(y,fs)

% finding alternate samples
x=length(y)

for i=1:x/2
    x1(i)=y(2*i);
end
figure;    
plot(x1)
title('taking alternate sample of audio ')
xlabel('time samples')
ylabel('sample values')
sound(x1,fs/2) ;

sound(x1,fs)
    
    
    
    
