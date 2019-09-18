function B = ordered_dither(I, D)
    sI = size(I);
    sD = size(D);
    T = repmat(D, sI ./ sD);
    B = I > T;
end