clear 
%two sequence:
M = 17;
N = 2^M;
n= 0: N-1;
x1 = cos(pi * n/11);
x2 =double( n <= N/2-1);

%the first sequence
%dft choose dB
figure
[m1,p1,t1]=dft(x1,0);
%fft
figure
[m1_fft,p1_fft_t1_fft]=myfft(x1,0);

%the second sequence
%dft choose real number
figure
[m2,p2,t2]=dft(x2,1);
%fft
figure
[m2_fft,p2_fft_t2_fft]=myfft(x2,1);