clc;
clear all;
close all;

k=-500:500;
k1=-500:500;


c=h1_k();

stem(k,c)
title('impulse responce of the system h1[k]')
xlabel('time samples')
ylabel('sample values')
axis([-10 10 -2 2])

% %--checking causal

p1=0;

for i=-500:500
      if i<0
          p1=p1+1;
        if c(p1)~=0
          display("h1[k]-->it is not causal system")
          
        break;
        end 
      else
          
           display("h1[k]-->it is causal system")
         break;
      end
      
    
end


 %--end---


%--stability---


figure;
s1=cumsum(c);
stem(k,s1)
title('[stability check] cumulative sum of h1[n]')
xlabel('time samples')
ylabel('sample values')
ylim([-4 2])


%--end---




g=h2_k();
figure;
stem(k1,g)
title('impulse responce of the system h2[k]')
xlabel('time samples')
ylabel('sample values')
axis([-15 35 -1.5 1.5])

%--checking causal

p2=0;

for i=-500:500
      if i<0
         p2=p2+1 ;
        if g(p2)~=0
          display("h2[k]-->it is not causal system")
          
        break;
        end 
      else
          
           display("h2[k]-->it is causal system")
         break;
      end
      
    
end


%--end---

%---stability---

figure;
s2=cumsum(g);
stem(k,s2)
title('[stability check] cumulative sum of h2[n]')
xlabel('time samples')
ylabel('sample values')
ylim([-12 10])

%--end


z=h3_k();
figure;
stem(k,z)
title('impulse responce of the system h3[k]')
xlabel('time samples')
ylabel('sample values')
xlim([-10 25])

% %--checking causal

p3=1;

for i=-500:500
      if i<0
      p3=p3+1;
        if c(p3)~=0
          display("h3[k]-->it is not causal system")
              
        break;
        end 
      else
           display(" h3[k]-->it is causal system")
         break;
      end
      
    
end


% %--end---


%---stability---

figure;
s3=cumsum(z);
stem(k,s3)
title('[stability check] cumulative sum of h3[n]')
xlabel('time samples')
ylabel('sample values')

%--end
























function out=h1_k()
i=1;
for k=-500:500
if k>=0 & k<=3
    b(i)=1-k;
    i=i+1;
else
    b(i)=0;
    i=i+1;
end
end
out=b;
end






function out=h2_k()
i=1;
for k=-500:500
if k>=-10 & k<=30;
    b(i)=sin(2*pi*k/50);
    i=i+1;
else
    b(i)=0;
    i=i+1;
end
end
out=b;
end






function out=h3_k()

f=1;
j=1;
for i=-500:500
    if i>=-2
        d(j)=sin(2*pi*f*i);
        j=j+1;
    else
        d(j)=0;
        j=j+1;
        
    end
    
end
out=d;
end





