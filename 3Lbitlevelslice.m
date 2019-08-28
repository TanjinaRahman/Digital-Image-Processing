a = imread('cameraman.tif');

[r, c]=size(a);

b1=zeros(r,c);
b2=zeros(r,c);
b3=zeros(r,c);
b4=zeros(r,c);
b5=zeros(r,c);
b6=zeros(r,c);
b7=zeros(r,c);
b8=zeros(r,c);

for m=1:r
    for n=1:c
        t=de2bi(a(m,n),8,'left-msb');
        b1(m,n)=t(1,1);
        b2(m,n)=t(1,2);
        b3(m,n)=t(1,3);
        b4(m,n)=t(1,4);
        b5(m,n)=t(1,5);
        b6(m,n)=t(1,6);
        b7(m,n)=t(1,7);
        b8(m,n)=t(1,8);
    end
end
       
subplot(3,3,1);
imshow(a);
title('image of cameramen'); 

subplot(3,3,2);
b8=uint8(b8);
imshow(b8);
title('image of bit-1'); 
subplot(3,3,3);
imshow(b7);
title('image of bit-2'); 
subplot(3,3,4);
imshow(b6);
title('image of bit-3'); 
subplot(3,3,5);
imshow(b5);
title('image of bit-4'); 
subplot(3,3,6);
imshow(b4);
title('image of bit-5'); 

subplot(3,3,7);
imshow(b3);
title('image of bit-6'); 

subplot(3,3,8);
imshow(b2);
title('image of bit-7'); 

subplot(3,3,9);

imshow(b1);
title('image of bit-8'); 

figure(2)
imshow(uint8(double(b1*2^7) + double(b2*2^6) + double(b3*2^5)));
