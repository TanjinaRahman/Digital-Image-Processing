% read a sample image
inputI = imread('cameraman.tif');

[r,c] = size(inputI);
scale = [3 3]; %scale dimension

outputI = zeros(scale(1)*r,scale(2)*c, class(inputI));

for i=1:scale(1)*r
    for j=1:scale(2)*c
        %map from output image location to input image location
        ii = round( (i-1)*(r-1)/(scale(1)*r-1)+1 );
        jj = round( (j-1)*(c-1)/(scale(2)*c-1)+1 );
        
        outputI(i,j) = inputI(ii,jj);
    end
end

figure(1)
subplot(3, 6, 8), imshow(inputI)
title('Input');
subplot(3, 6, [4 5 6 10 11 12 16 17 18]), imshow(outputI)
title('Output = 3 X Input');