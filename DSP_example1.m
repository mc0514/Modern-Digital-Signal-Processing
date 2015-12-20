clc;clear;

Num=0.1;
Pi=3.1415;
m=0:0.0005:0.1;
Theat=[0 Pi/4];
f0=[10 500];

X1=2*Pi*f0(1)*m+Theat(1);
X2=2*Pi*f0(1)*m+Theat(2);
X3=2*Pi*f0(2)*m+Theat(1);
X4=2*Pi*f0(2)*m+Theat(2);

s1=sin(X1);
s2=sin(X2);
s3=sin(X3);
s4=sin(X4);

Y1=fft(s1);
Y2=fft(s2);
Y3=fft(s3);
Y4=fft(s4);

subplot(4,2,1);
plot(m,s1);
xlabel('Time index n');ylabel('Y'); title('f0=10,Theat=0');
subplot(4,2,2);
plot(m,Y1);
xlabel('Time index n');ylabel('f'); title('f0=10,Theat=0');
subplot(4,2,3);
plot(m,s2);
xlabel('Time index n');ylabel('Y'); title('f0=10,Theat=Pi/4');
subplot(4,2,4);
plot(m,Y2);
xlabel('Time index n');ylabel('f'); title('f0=10,Theat=Pi/4');
subplot(4,2,5);
plot(m,s3);
xlabel('Time index n');ylabel('Y'); title('f0=500,Theat=0');
subplot(4,2,6);
plot(m,Y3);
xlabel('Time index n');ylabel('f'); title('f0=500,Theat=0');
subplot(4,2,7);
plot(m,s4);
xlabel('Time index n');ylabel('Y'); title('f0=500,Theat=Pi/4');
subplot(4,2,8);
plot(m,Y4);
xlabel('Time index n');ylabel('f'); title('f0=500,Theat=Pi/4');
