clear all;
close all;
clc;
f = imread('forest.jpg');
subplot(1,2,1),imshow(f);
title('Original Image');

F = fftshift(fft2(f));

c = -1;
[M,N] = size(f);

for u = 0:M-1
    for v = 0:N-1
        H(u+1,v+1) = -4*(pi.^2) * (u.^2 + v.^2);
        A(u+1,v+1) =  H(u+1,v+1)*F(u+1,v+1);
    end
end

f2 = ifft2(ifftshift(A));

for i = 1:M
    for j = 1:N
        g(i,j) = (c * f2(i,j));
    end
end
g = im2double(f) + real(g);
subplot(1,2,2),imshow(mat2gray(g));
title('Filtered Image');

