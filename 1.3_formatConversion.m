a = imread('cameraman.tif');
b = imread('yellowlily.jpg');

figure()
c = rgb2gray(b); % convert RGB to gray image
imshow(c);

figure()
d = gray2ind(a); % convert gray to indexed image
imshow(d);

% convert indexed to gray image     ind2gray(x)
% convert gray to RGB image    gray2rgb(x)