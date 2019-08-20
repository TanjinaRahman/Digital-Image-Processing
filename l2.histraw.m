Im = imread('cameraman.tif');
subplot(1,2,1),imshow(Im);
title('Original Image');

[counts, x] = imhist(Im);
subplot(1,2,2),stem(x,counts);
axis([0,200,0,1000]);
title('Histogram');



