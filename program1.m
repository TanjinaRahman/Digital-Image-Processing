A = imread('cameraman.tif');
[row,col] = size(A);
for i=1:row
    for j=1:col
        if(A(i,j)>127)
            G(i,j)=1;
        else
            G(i,j)=0;
        end
    end
end
G = logical(G);
subplot(2,1,1),imshow(A);
title('Gray Image');
subplot(2,1,2),imshow(G);
title('Binary Image');