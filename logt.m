function [ s ] = logt( c,i )
r = im2double(i);
s = (c*log(1+r))*256;
s = uint8(s);
end

