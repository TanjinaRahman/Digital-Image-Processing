f = imread('cameraman.tif'); % rang of uint8 : [0-255]
subplot(1,2,1),imshow(f);
title('Gray image');

disp(f);

g = im2double(f); % range of double : [0-1]
disp(g);

x = im2uint16(f); % [0-65535]
disp(x);

b = im2bw(f);
disp(b);

b = logical(b);
subplot(1,2,2),imshow(b);
title('Binary image');
