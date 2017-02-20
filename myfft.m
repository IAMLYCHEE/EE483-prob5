function [m,phase,telapsed]=myfft(x,mtype)
N = length(x);
tic;
tstart = tic;
y  = fft(x);
telapsed = toc(tstart);
%plot information
if mtype ==0
    m = 10*log10(abs(y));
else
    m = abs(y);
end
phase = angle(y);
disp('my fft time elapsed');
disp(num2str(telapsed));
subplot(2,1,1)
plot((0:N-1)*2/N,m)
if mtype == 0
    ylabel('Magnitude (dB)')
else
    ylabel('Magnitude')
end
xlabel('Frequency ({\times} \pi rad/sample)')
subplot(2,1,2)
plot((0:N-1)*2/N,phase)
ylabel('Phase')
xlabel('Frequency ({\times} \pi rad/sample)')
