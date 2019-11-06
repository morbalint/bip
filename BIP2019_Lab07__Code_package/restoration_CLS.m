function [x_tilde] = restoration_CLS(y, h, alpha, c)
    Y = fft2(y);
    H = psf2otf(h, size(Y));
    C = psf2otf(c, size(Y));
    H_sq = abs(H).^2;
    C_sq = abs(C).^2;
    R = conj(H) ./ (H_sq + alpha * C_sq);
    x_tilde = abs(ifft2(R .* Y));
end