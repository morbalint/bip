function output_img = stretch_lin(input_img)
    Imin = min(input_img(:));
    Imax = max(input_img(:));
    c = 255.0 / double(Imax - Imin);
    output_img = uint8(round((input_img - Imin) .* c));
end