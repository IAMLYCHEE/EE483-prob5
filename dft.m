function [m,phase,telapsed] = dft(x,mtype)
%function [m,phase,telapsed] = dft(x)
%if mtype is 0, magnitude type be decible, else be real number 
%plot the magnitude , phase and time elapsed

N = length(x);
y = zeros(1,N);
tic;
tstart = tic;
for i = 1: N
    y(i) = mydft(x,i-1);
end
telapsed = toc(tstart);
if mtype ==0
    m = 10*log10(abs(y));
else
    m = abs(y);
end
phase = angle(y);
disp('my dft time elapsed');
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
%fft result 

