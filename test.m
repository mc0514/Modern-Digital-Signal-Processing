% N=32;
% X=0;
% Ts=0.002;
% pi=3.1415926;
% step=Ts/N;
% m=0:step:Ts;
% w=2*pi/N;
% x=sin(m);
% for k=1:N
%     X=X+x(k)*exp(-j*2*pi/N*k*Ts);
% end

clc;clear;
Ts=0.002;
N = 32;
step=Ts/N;
m=0:step:Ts-step;
f0=1/Ts;
x=sin(2*pi*f0*m);
X= zeros(1,N);
for t=1:N
    for k =1:N
        X(t) = X(t)+x(k)*exp(-j*2*pi/32*(t-1)*Ts);
    end
end
figure(2);
plot(m,X);
