a=imread('cameraman.tif');
im = double(a);  
figure(1),imshow(a);
title('Input Image');
[rows,columns]=size(im); 
A = zeros(rows,columns);
B = zeros(rows,columns);
for r=1:rows 
  for c=1:columns
      A(r,c)= A(r,c)+(im(r,c)*exp(((-1j)*2*pi*(r-1)*(c-1))/rows));
  end
end
for c=1:columns 
  for r=1:rows
      B(r,c)=(B(r,c)+(A(r,c)*exp((-1i)*2*pi*(r-1)*(c-1)/columns)));
  end
end
figure(2);
subplot(1,2,1), imshow(uint8(B));
title('After Transformation');

%inverse ternsform

C = zeros(rows,columns);
D = zeros(rows,columns);
for r=1:rows 
  for c=1:columns
      C(r,c)= C(r,c)+(B(r,c)*exp(((1j)*2*pi*(r-1)*(c-1))/rows));
  end
end
for c=1:columns 
  for r=1:rows
      D(r,c)=(D(r,c)+(C(r,c)*exp((1i)*2*pi*(r-1)*(c-1)/columns)));
  end
end
subplot(1,2,2), imshow(uint8(D));
title('After Inverse Transformation');