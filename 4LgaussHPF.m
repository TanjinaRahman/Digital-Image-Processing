f = imread('cameraman.tif');

subplot(2,3,1),imshow(f);
title('Input Image');

F=fftshift(fft2(f));
F1=log(1+abs(F));
Fm=max(F1(:));
subplot(2,3,2),imshow(im2uint8(F1/Fm));
title('Centered Fourier Spectrum');

D0 = 20;

[M,N] = size(f);

for u = 0:M-1
    for v = 0:N-1
        D(u+1,v+1) = sqrt((u-M/2).^2 + (v-N/2).^2);
        H(u+1,v+1) = 1 - exp(-1*(D(u+1,v+1).^2)/(2*D0.^2));
    end
end
subplot(2,3,3),imshow(H);
title('Gaussian High Pass Filter');

Img = F .* H;
I1=log(1+abs(Img));
Im=max(I1(:));
subplot(2,3,4),imshow(im2uint8(I1/Im));
title('Filtered Fourier Spectrum');

I = ifft2(ifftshift(Img));
subplot(2,3,5),imshow(uint8(I));
title('Output Image');
