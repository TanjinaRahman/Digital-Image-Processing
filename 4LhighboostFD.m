clear all;
f = imread('cameraman.tif');
subplot(1,2,1),imshow(f);
title('Input Image');

k=2;

F = fftshift(fft2(f));

[M,N] = size(f);
D0 = 25;

for u = 0:M-1
    for v = 0:N-1
         D(u+1,v+1) = sqrt((u-M/2).^2 + (v-N/2).^2);
        H(u+1,v+1) = 1 - exp(-1*(D(u+1,v+1).^2)/(2*D0.^2));
    end
end

for i = 1:M
    for j = 1:N
        G(i,j) = ( 1 + k*H(i,j))*F(i,j);
    end
end
g = ifft2(ifftshift(G));
subplot(1,2,2),imshow(uint8(g));
title('Output Image');
