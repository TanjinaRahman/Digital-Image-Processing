a = imread('cameraman.tif');
[row,col]=size(a); % no of rows and cols
i=1;
j=1;
c = zeros(row/2, col/2); % creates zero matrix of (row/2)X(col/2) order


for x=1:2:row % inc 2 as image size is half        
    for y=1:2:col
        c(i,j) = a(x,y); % keep value of image in c       
        j = j+1;
    end
    i = i+1;
    j = 1;
end

figure,imshow(a);
figure,imshow(c/255);
