im = imread('cameraman.tif');
m = 3; n = 3;
W = [0.1 0.2 0.3; 0.2 0.4 0.2; 0.1 0.1 0.9];
%W = 1/16 * [1 2 1;2 4 2;1 2 1];
D = padarray(im,[floor(n/2) floor(m/2)],'both');
[r c] = size(im);
B = zeros(size(D));

for i=2:r
    for j=2:c
        for k = 1:3
            for l = 1:3
                B(i, j) = B(i, j) + W(k, l)*D(i+k-2, j+l-2);
            end
        end
    end
end

g = B/sum(sum(W));

subplot(1,2,1),imshow(im);
title('Input Image');
subplot(1,2,2),imshow(uint8(g));
title('Weighted Averaging Filtering');



