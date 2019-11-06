function [x_tilde] = restoration_wiener_white(y, h, var_n)
    Y = fft2(y);
    H = psf2otf(h, size(Y));
    var_y = var(y(:));
    NSRP = var_n / var_y;
    R = conj(H) ./ (abs(H).^2 + NSRP);
    x_tilde = abs(ifft2(R .* Y));
end