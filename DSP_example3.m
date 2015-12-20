clc;clear;
step=0.01;
T1=0.3;
T2=1;
%N=int8(T/step);
m1=0:step:T1-step;
m2=0:step:T2-step;
N1=length(m1);
N2=length(m2);
A1=1;
A2=2.5;
%X1=zeros(2,N1);
%X2=zeros(2,N2);
x1=zeros(2,N1);
%x12=zeros(2,N1);
x2=zeros(2,N2);
%x22=zeros(2,N2/2);

for i=1:N1
    if i<=N1/2
        x1(1,i)=2*A1/T1*m1(i);
        x1(2,i)=2*A2/T1*m1(i);
    else
        x1(1,i)=2*A1-2*A1/T1*m1(i);
        x1(2,i)=2*A2-2*A2/T1*m1(i);
    end
    
end

for i=1:N2
    if i<=N2/2
        x2(1,i)=2*A1/T2*m2(i);
        x2(2,i)=2*A2/T2*m2(i);
    else
        x2(1,i)=2*A1-2*A1/T2*m2(i);
        x2(2,i)=2*A2-2*A2/T2*m2(i);
    end 
end

%X1(1,1:N1/2)=x11(1,:);
%X1(1,N1/2+1:N1)=x12(1,:);
%X1(2,1:N1/2)=x11(2,:);
%X1(2,N1/2+1:N1)=x12(2,:);

%X2(1,1:N2/2)=x21(1,:);
%X2(1,N2/2+1:N2)=x22(1,:);
%X2(2,1:N2/2)=x21(2,:);
%X2(2,N2/2+1:N2)=x22(2,:);

y1=fft(x1(1,:));
y2=fft(x1(2,:));
y3=fft(x2(1,:));
y4=fft(x2(2,:));

figure(1);
plot(m1,x1(1,:));
xlabel('Time index m1');ylabel('Y'); title('T=0.3s,A=1');
figure(2);
plot(m1,y1);
xlabel('Time index m1');ylabel('f'); title('T=0.3s,A=1');

figure(3);
plot(m1,x1(2,:));
xlabel('Time index m1');ylabel('Y'); title('T=0.3s,A=2.5');
figure(4);
plot(m1,y2);
xlabel('Time index m1');ylabel('f'); title('T=0.3s,A=2.5');

figure(5);
plot(m2,x2(1,:));
xlabel('Time index m2');ylabel('Y'); title('T=1s,A=1');
figure(6);
plot(m2,y3);
xlabel('Time index m2');ylabel('f'); title('T=1s,A=1');

figure(7);
plot(m2,x2(2,:));
xlabel('Time index m2');ylabel('Y'); title('T=1s,A=2.5');
figure(8);
plot(m2,y4);
xlabel('Time index m2');ylabel('f'); title('T=1s,A=2.5');

