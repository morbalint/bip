function [TH] = threshold(IMG, level)
    TH = 1.*IMG;
    if size(IMG,3) > 1
        TH = rgb2gray(IMG);
        warning('colour image received!')
    end
    M = TH < level;
    TH(M) = 0;
    TH(~M) = 255;
    % TH = double(IMG < level);
end