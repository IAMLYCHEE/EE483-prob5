function x = fftConv(x1,x2)
N1 = length(x1);
N2 = length(x2);
x1 = [x1,zeros(1,N2-1)];
x2 = [x2,zeros(1,N1-1)];
tic;
tstart = tic;
X1 = fft(x1);
X2 = fft(x2);
X = X1 .* X2;
x = ifft(X);
telapsed = toc(tstart);
disp('fft convolve time elapsed');
disp(num2str(telapsed));
%fft convolution
