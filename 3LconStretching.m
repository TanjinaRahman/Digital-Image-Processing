r = imread('forest.jpg');
subplot(1,2,1),imshow(r);
title('Original Image');

a = min(r(:));
b = max(r(:));

[row,col] = size(r);

for i=1:row*col
    if (r(i)==a)
        r(i)=0;
    elseif(r(i)==b)
        r(i)=255;
    end
end

subplot(1,2,2),imshow(r);
title('After Contrast Stretching');
        