im=rgb2gray(imread('peppers.png'));
figure(1)
imshow(im);
title('Input Image');
[r, c] = size(im);
n = 2;   %scale 
% BILINEAR
im = im2double(im);
[r, c] = size(im);

y = zeros(r*n-n+1, c*n-n+1);

% COPY THE ORIGINAL VALUES
for i=1:r
    for j=1:c
        y(i*n-n+1,j*n-n+1)=im(i,j);            
    end
end
%imshow(y);

% INTERPOLATE IN X-DIRECTION
    [row,col]=size(y);
    for i=1:n:row
        for j=1:col
            m=mod(j,n);
            if(m==0)
                m=n;
            end
            if(m~=1)
                y(i,j)=((m-1)*y(i,j-(m-1)+n) + (n-(m-1))*y(i,j-(m-1)))/n;
            end
        end
    end      
    % INTERPOLATE IN Y-DIRECTION
    for i=1:row
        for j=1:col
            m=mod(i,n);
            if(m==0)
                m=n;
            end            
            if(m~=1)
                y(i,j)=((m-1)*y(i-(m-1)+n,j) + (n-(m-1))*y(i-(m-1),j))/n;
            end
        end
    end
    figure(2)
    imshow(y);
    title('Output Image');