A=imread('cameraman.tif');
display(A);
[r,c]=size(A);
C = imresize(A,[r*2,c*2],'nearest');
display(C);

subplot(1,2,1),imshow(A),axis([0,512,0,512]),axis on;
subplot(1,2,2),imshow(C),axis([0,512,0,512]),axis on;