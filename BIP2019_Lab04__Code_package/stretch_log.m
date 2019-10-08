function output_img = stretch_log(input_img, c)
    input_img = log(double(input_img) + 1) .* c;
    Imin = min(input_img(:));
    Imax = max(input_img(:));
    c = 255.0 / double(Imax - Imin);
    output_img = uint8(round((input_img - Imin) .* c));
end