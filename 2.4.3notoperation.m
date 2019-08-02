A=imread('cir3.png');
A=im2bw(A);
B=not(A);
subplot(2,2,1);
subplot(1,2,1);imshow(A);
title('A');
subplot(2,2,2);
subplot(1,2,2);imshow(B);
title('NOT A');