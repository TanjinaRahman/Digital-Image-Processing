Im = imread('cameraman.tif');
subplot(1,2,1),imshow(Im);
title('Original Image');

Im = histeq(Im);
subplot(1,2,2),imshow(Im);
title('Histogram Equalozed Image');