Im = imread('cameraman.tif');
subplot(1,2,1),imshow(Im);
title('Original Image');
[M,N] = size(Im);
[nk, rk] = imhist(Im);

  for i=1:length(nk)
      pr(i) = nk(i)/(M*N);
  end
  
  % s calculation
  
  for i=1:length(rk)
      p=0;
      for j=1:rk(i)
          p = p + nk(j);
      end
      ps(i) = p/(M*N); % ps(sk) calculation
      s(i) = round(255*ps(i));
  end
  
  
  for i=1:M
      for j=1:N
          h(i,j)=s(Im(i,j));
      end
  end

h = uint8(h);
subplot(1,2,2),imshow(h);
title('Histogram Equalized Image');


  
