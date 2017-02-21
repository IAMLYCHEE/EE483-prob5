function x = setZeros(x,alpha)
%x = setZeros(x,alpha)
%alpha:at what degree to set zeros
if alpha > 0
xSize= size(x);
xOp = sort(reshape(x,[1,xSize(1)*xSize(2)]));
position = round(length(xOp)*alpha);
valueForTest = xOp(position);
andGate = x > valueForTest;
x = x .* andGate;
end

