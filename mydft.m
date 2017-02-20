function y=mydft(x,k)
%make sure x is a row vector
N = length(x);
x = reshape(x,[1,N]);
y = x * exp(-1i*k*2*pi/N * (0:N-1)');