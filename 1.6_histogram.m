a = imread('cameraman.tif');
subplot(2,1,1),imshow(a);
title('Gray image');
subplot(2,1,2),imhist(a);
title('Histogram');