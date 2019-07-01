a = imread('cameraman.tif'); % only shows value 
 imshow(a); % to display image
 figure(); % creates another console
 subplot(221); % divide the console in 2X2 matrix. and keep the image in 1st portion
 imshow(a);
 size a

b = imread('yellowlily.jpg');
subplot(224); % it's displayed in 4th portion
imshow(b);

whos b; % shows additonal information about an array (here image b)


