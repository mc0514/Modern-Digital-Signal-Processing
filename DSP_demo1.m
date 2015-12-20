% Example 2_1
% Illustration of Ensemble Averaging
% Generage Function: s[n]=2[n(0.9)^n]
% Noise: rand() range from +0.5 to -0.5
Num = 50;
m = 0:Num-1;
s = 2*m.*(0.9.^m); % Generate the uncorrupted signal
subplot(2,2,1);
stem(m,s);
xlabel('Time index n');ylabel('Amplitude'); title('Uncorrupted signal');
d = rand(Num,1)-0.5; % Generate the random noise
subplot(2,2,2);
stem(m,d);
xlabel('Time index n');ylabel('Amplitude'); title('Noise');
x1 = s+d';
subplot(2,2,3);
stem(m,x1);
xlabel('Time index n');ylabel('Amplitude'); title('Corrupted signal');
%tsmovavg
for n = 1:50;
    d = rand(Num,1)-0.5;
    x = s + d';
    x1 = x1 + x;
end
x1 = x1/50;
subplot(2,2,4);
stem(m,x1);
xlabel('Time index n');ylabel('Amplitude'); title('Ensemble average');