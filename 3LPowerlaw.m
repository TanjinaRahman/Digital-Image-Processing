r = imread('cameraman.tif');
subplot(2,2,1),imshow(r);
title('Original Image');
r = im2double(r);
c = 1;
g = 0.3;

i = c*(r.^g)*256;
s = uint8(i);
subplot(2,2,2),imshow(s);
title('Gamma = 0.3');

g = 0.4;
i = c*(r.^g)*256;
s = uint8(i);
subplot(2,2,3),imshow(s);
title('Gamma = 0.4');

g = 0.5;
i = c*(r.^g)*256;
s = uint8(i);
subplot(2,2,4),imshow(s);
title('Gamma = 0.5');
