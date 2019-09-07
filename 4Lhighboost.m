% smoothing filter mask

im = imread('cameraman.tif');
subplot(2,2,1),imshow(im);
title('Original Image');

A = imnoise(im,'Gaussian',0.01,0.01);

subplot(2,2,2),imshow(A);
title('Blurred Image');

Gmask = im - A;
subplot(2,2,3),imshow(Gmask);
title('Mask');

k = 3;
g = im + k*Gmask;
subplot(2,2,4),imshow(uint8(g));
title('Result of Highboost Filtering');