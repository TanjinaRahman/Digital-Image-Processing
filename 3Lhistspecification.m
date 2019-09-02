Im = imread('cameraman.tif');
subplot(3,2,1),imshow(Im);
title('Input Image');
subplot(3,2,2),imhist(Im);
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

 Im2 = Im+100;
 subplot(3,2,3),imshow(Im2);
 title('Reference Image');
 subplot(3,2,4),imhist(Im2);

[m,n] = size(Im2);
[nk1, rk1] = imhist(Im2);

  for i=1:length(nk1)
      pr1(i) = nk1(i)/(m*n);
  end
  
  % G(zq) calculation
  
  for i=1:length(rk1)
      p1=0;
      for j=1:rk1(i)
          p1 = p1 + nk1(j);
      end
      ps1(i) = p1/(m*n); % ps(sk) calculation
      s1(i) = round(255*ps1(i));
  end
% matching
% for i=1:length(s)
%     if(s(i)==s1(i))
%         pz(i) = ps1(i);
%         s(i)=round(255*pz(i));
%     end
% end
% for i=1:M
%       for j=1:N
%           h1(i,j)=s(Im2(i,j)+1);
%       end
%   end
%     
% h1 = uint8(h1);
for i=1:256
    diff=abs(s(i)-s1)
    [~,ind]=min(diff)
    M(i)=ind-1
end
out=M(double(Im)-1);
h1 = uint8(out);
h2 = imhistmatch(Im,Im2);
subplot(3,2,5),imshow(h1);
title('Histogram Specified Image');
subplot(3,2,6),imhist(h1);
