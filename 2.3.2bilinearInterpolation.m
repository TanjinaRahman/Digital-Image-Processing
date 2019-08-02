A=[10,4,5;1,20,6;5,2,24];

display(A);
[r,c]=size(A);
C = imresize(A,[r*2,c*2],'bilinear');
display(C);

% subplot(1,2,1),imshow(A),axis([0,512,0,512]),axis on;
% subplot(1,2,2),imshow(C),axis([0,512,0,512]),axis on;