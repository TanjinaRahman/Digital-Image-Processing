A=imread('cir2.png');
B=imread('cir3.png');
C=bitxor(A,B);
subplot(2,2,1),imshow(A);
title('A');
subplot(2,2,2),imshow(B);
title('B');
subplot(2,2,3),imshow(C);
title('A XOR B');