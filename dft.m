function X = dft( x,Ts )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

pi=3.1415926;
N=length(x);
X= zeros(1,N);
for t=1:N
    for k =1:N
        X(t) = X(t)+x(k)*exp(-j*2*pi/N*(t-1)*Ts);
    end
end
end

