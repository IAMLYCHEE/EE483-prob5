clear 
%two sequence:
M = 10;
N = 2^M;
n= 0: N-1;
x1 = cos(pi * n/11);
x2 =double( n <= N/2-1);

%(c) compare dft and dtft
%the first sequence
%dft
figure
title('dft')
[m1,p1,t1]=dft(x1);
%dtft
figure
title('dtft')
freqz(x1,1,N);

%the second sequence 
%dft
figure
title('dft')
[m2,p2,t2]=dft(x2);
%dtft
figure
title('dtft')
freqz(x2,1,N);

%(d)compare dft and fft
%the first sequence
%dft
figure
title('dft')



