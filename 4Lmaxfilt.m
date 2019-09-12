im = imread('cameraman.tif');
subplot(1,2,1),imshow(im);
title('Original Image');

m=3; n=3;
f = padarray(im,[floor(n/2) floor(m/2)],'both');

[r,c] = size(im);
g = zeros(size(f));
C = zeros(m,n);

for i=2:r
    for j=2:c
        for k=1:3
            for l=1:3
                C(k,l) = f(i+k-2, j+l-2);
            end
        end
        g(i,j) = round(max(C(:)));
    end
end

subplot(1,2,2),imshow(uint8(g));
title('Max Filtered Image');
