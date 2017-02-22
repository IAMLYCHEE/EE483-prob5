function y = myConvn(x1,x2,n)
length1 = length(x1);
length2 = length(x2);
sum = 0;
for m = 0 : length1-1
    if n-m>=0 && (n-m)<=length2-1
        sum = sum + x1(m+1)*x2(n-m+1);
    end
end
y=sum;