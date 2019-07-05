A = imread('peppers.png');
G=rgb2gray(A);
[row,col] = size(A);
for i=1:1:row
    for j=1:1:col
        if(A(i,j)>127)
            G(i,j)=255;
        else
            G(i,j)=0;
        end
    end
end
imshow(G);
impixelinfo