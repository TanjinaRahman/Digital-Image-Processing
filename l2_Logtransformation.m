i = imread('coloredchips.png');
subplot(2,2,1),imshow(i);
title('Original Image');

c = 1;
r = im2double(i);
s = (c*log(1+r))*256;
s = uint8(s);
subplot(2,2,2),imshow(s);
title('Output Image');




