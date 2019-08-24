Im = imread('cameraman.tif');
subplot(1,2,1),imshow(Im);
title('Original Image');
[M,N] = size(Im);
[nk, x] = imhist(Im);

  for i=1:length(nk)
      p(i) = nk(i)/(M*N);
  end

subplot(1,2,2),Hs = stem(x,p,'filled');
set(Hs,'markersize',1);
title('Histogram');
