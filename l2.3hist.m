Im = imread('cameraman.tif');
subplot(1,2,1),imshow(Im);
title('Original Image');
subplot(1,2,2),imhist(Im);
title('Histogram');
