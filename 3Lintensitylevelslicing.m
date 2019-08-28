r = imread('forest.jpg');
subplot(1,2,1),imshow(r);
title('Original Image');

a = 2*min(r(:));
b = max(r(:))/2;

[row,col] = size(r);

for i=1:row*col
    if (r(i)<=b && r(i)>=a)
        r(i)=255;
    end
end

subplot(1,2,2),imshow(r);
title('Result of Intensity Level Slicing');
        