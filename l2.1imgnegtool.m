Im = imread('cameraman.tif');

subplot(1,2,1),imshow(Im);
title('Original Image');

Im = imcomplement(Im);

subplot(1,2,2),imshow(Im);
title('Negative Image');