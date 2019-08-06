Im = imread('cameraman.tif');
[r,c] = size(Im);

subplot(1,2,1),imshow(Im);
title('Original Image');

for i=1:r*c
    Im(i)=255 - Im(i);
end

subplot(1,2,2),imshow(Im);
title('Negative Image');