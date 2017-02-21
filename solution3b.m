clear
x = double((imread('cameraman.tif')));
imgSize = size(x);
row = imgSize(1);
col = imgSize(2);
fX = zeros(imgSize);
for i = 1 : imgSize(1)
    fX(i,:) = fft(x(i,:));
end

%First way
newFx1 = zeros(imgSize(1),imgSize(2)+1024-256);
for i = 1 : imgSize(1)
    newFx1(i,:) = [fX(i,:),zeros(1,1024-256)];
end

%Second way
newFx2 = zeros(imgSize(1),imgSize(2)+1024-256);
for i = 1 : imgSize(1)
    newFx2(i,:) = [fX(i,1:col/2-1),zeros(1,1024-256),fX(i,col/2:col)];
end

%First way result
newImg1 = zeros(imgSize(1),imgSize(2)+1024-256);
for i = 1 : row
    newImg1(i,:) = ifft(newFx1(i,:));
end
%Second way result
newImg2 = zeros(imgSize(1),imgSize(2)+1024-256);
for i = 1 : row
    newImg2(i,:) = ifft(newFx2(i,:));
end
imagesc(x)
figure
imagesc(uint8(abs(newImg1)))
figure
imagesc(uint8(abs(newImg2)))