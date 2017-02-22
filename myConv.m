function y = myConv(x1,x2)
length1 = length(x1);
length2 = length(x2);
y = zeros(1,length1+length2);
tic;
tstart = tic;
for i = 0 : length1 + length2 - 2
    y(i+1) = myConvn(x1,x2,i);
end
telapsed = toc(tstart);
disp('regular convolve time elapsed');
disp(num2str(telapsed));