x = double((imread('cameraman.tif')));
dctImageOrigin = dct2(x);
for i = 0.0 : 0.1 : 0.9
    figure
    dctImage = setZeros(dctImageOrigin,i);
    imageidct = uint8(idct2(dctImage));
    imagesc(imageidct);
    colormap(gray)
    title(num2str(i))
end
