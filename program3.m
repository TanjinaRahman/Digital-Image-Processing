clear all; 
Img = imread('peppers.png'); 
Img = rgb2gray(Img); 
[r,c] = size(Img);
f = mod(Img,128);
mask = Img>127; 
f =f /2;  %%%
for i = 1: r 
    for j = 1: c
        if mask(i,j) == 1  
            f(i,j) = f(i,j) + 128; 
        end
    end
end
subplot(1,2,1), imshow(Img);
subplot(1,2,2), imshow(f);