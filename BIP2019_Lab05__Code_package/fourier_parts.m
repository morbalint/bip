function [P, M] = fourier_parts(F)

FS = fftshift(F);
P = angle(FS);
M = abs(FS);

end
