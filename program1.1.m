f = imread('cameraman.tif'); % rang of uint8 : [0-255]
subplot(1,2,1),imshow(f);
title('Gray image');

b = im2bw(f);
b = logical(b);
subplot(1,2,2),imshow(b);
title('Binary image');