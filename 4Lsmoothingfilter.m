% smoothing filter mask

im = imread('cameraman.tif');
subplot(1,2,1),imshow(im);
title('Original Image');

w = ones(3,3)/9;
m=3; n=3;
f = padarray(im,[floor(n/2) floor(m/2)],'both');

[r,c] = size(im);
g = zeros(size(f));

for i=2:r
    for j=2:c
        for k=1:3
            for l=1:3
                g(i, j) = g(i, j)+w(k, l)*f(i+k-2, j+l-2);
            end
        end
    end
end
subplot(1,2,2),imshow(uint8(g));
title('Using smoothing filter mask');

