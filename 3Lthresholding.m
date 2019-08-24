r = imread('forest.jpg');
subplot(1,2,1),imshow(r);
title('Original Image');

a = min(r(:));
b = max(r(:));

c = (a+b)/2;

[row,col] = size(r);

for i=1:row*col
    if (r(i)<c)
        r(i)=0;
    elseif(r(i)>=c)
        r(i)=255;
    end
end

subplot(1,2,2),imshow(r);
title('Result of Thresholding Function');
        