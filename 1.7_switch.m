f = imread('cameraman.tif');
newclass = 'uint16';
switch newclass
    case 'uint16'
        g = im2uint16(f) % [0-65535]
    case 'double'
        g = im2double(f) % range of double : [0-1]
    case 'binary'
        g = im2bw(f)
    otherwise
        error('went wrong');
end