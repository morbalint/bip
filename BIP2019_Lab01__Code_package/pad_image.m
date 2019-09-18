function [PAD] = pad_image(varargin)
    IMG = varargin{1};
    if size(IMG,3) > 1
        IMG = rgb2gray(IMG);
        warning('colour image received!')
    end
    border_size = 10;
    if length(varargin) == 2
        border_size = varargin{2};
    end
    idx1 = size(IMG) + border_size;
    PAD = uint8(zeros(size(IMG)+(2*border_size)));
    PAD(border_size:idx1(1), border_size:idx1(2)) = IMG;
end