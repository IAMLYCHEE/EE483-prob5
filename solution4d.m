x = double((imread('cameraman.tif')));
tileDCT = x; %need the size
for i = 1 : 32
    for j = 1 : 32
        tile = x((i-1)*8+1:i*8,(j-1)*8+1:j*8);
        dctTile = dct2(tile);
        tileDCT((i-1)*8+1:i*8,(j-1)*8+1:j*8)=dctTile;
    end
end
imagesc((uint8(log(abs(tileDCT)))));
colormap(gray)