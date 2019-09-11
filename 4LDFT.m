F = imread('cameraman.tif');

figure(1)
imshow(F);
title('Input Image');

F = double(F);

[r c] = size(F);

T = zeros(r, c);

for x = 1:r
    for y = 1:c
        T(x, y) = T(x, y) + F(x, y)*exp(-j*2*pi*((x-1)*(y-1)/r + (x-1)*(y-1)/c));
    end
end

figure(2)
subplot(1,2,1),imshow(uint8(T));
title('Transformed Image');

%inverse ternsform
F1 = zeros(r, c);

for u = 1:r
    for v = 1:c
        F1(u, v) = F1(u, v) + T(u, v)*exp(j*2*pi*((u-1)*(v-1)/r + (u-1)*(v-1)/c));
    end
end

subplot(1,2,2),imshow(uint8(F1));
title('Inverse Transformed Image');
