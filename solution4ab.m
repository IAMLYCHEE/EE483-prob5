x = double((imread('cameraman.tif')));
dctImage = dct2(x);
imagesc(uint8(log(abs(dctImage))));
colormap(gray);

energyTime = sum(x.^2);
energyDct = sum(dctImage.^2);
difference = energyDct - energyTime;
