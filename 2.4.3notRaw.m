A=imread('cir3.png');
A=im2bw(A);
[r,c]=size(A);
subplot(1,2,1);imshow(A);
title('A');
for i=1:1:r*c
    if(A(i)==0)
        A(i)=1;
    else
        A(i)=0;
    end
end
subplot(1,2,2);imshow(A);
title('NOT A');