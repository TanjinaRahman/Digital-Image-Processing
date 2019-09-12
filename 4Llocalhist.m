% Enhancing the light areas
im =  imread('cameraman.tif');
subplot(1,2,1),imshow(im);
title('Input Image');

[M,N] = size(im);
[nk,rk] = imhist(im);

ldev=0;
lmean=0;

% local mean
for i=1:length(nk)/2
    p(i)=nk(i)/(M*N);
    lmean = lmean+rk(i)*p(i);
end

% local mean and Deviation
I = double(im);
lmean = conv2(I,ones(3)/9,'same');
ldev = stdfilt(I);

% global mean and deviation
gmean = mean2(im);
gdev = sqrt(var(double(im(:))));

E = 4;
k0 = 0.5;
k1 = 0.2;
k2 = 2;

for i=1:M*N
    if(lmean(i)<= (k0*gmean) && (k1*gdev)<=ldev(i)<= (k2*gdev))
        im(i) = E*im(i);
    end
end
subplot(1,2,2),imshow(uint8(im));
title('Processed Image');
