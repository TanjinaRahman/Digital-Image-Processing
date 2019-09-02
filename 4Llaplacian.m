% smoothing filter mask

im = imread('cameraman.tif');
subplot(1,2,1),imshow(im);
title('Original Image');

w = [1 1 1;1 -8 1;1 1 1];
m=3; n=3;
f = padarray(im,[floor(n/2) floor(m/2)],'both');

[r,c] = size(im);
g = zeros(size(f));

C = 1;

for i=2:r
    for j=2:c
        for k=1:3
            for l=1:3
                g(i, j) = g(i, j)+ C* w(k, l)*f(i+k-2, j+l-2);
            end
        end
    end
end
subplot(1,2,2),imshow(uint8(g));
title('Laplacian');

