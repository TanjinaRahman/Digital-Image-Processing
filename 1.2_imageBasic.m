a = imread('cameraman.tif');
imshow(a);
impixelinfo % when I put my cursor on image it will show the pixel information of that particular pixel
[rows,columns] = size(a) % shows rows and columns in command window
figure()
imshow(a)
colormap(jet)
b = imread('yellowlily.jpg');
imshow(b);
