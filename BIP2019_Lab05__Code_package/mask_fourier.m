function newF = mask_fourier(F, x, y, r)

S = fftshift(F);

xr = round(x);
yr = round(y);

[xSize, ySize] = size(S);

for k = 1:length(x)
    for i = max([xr(k)-r, 1]):min([xr(k)+r, xSize])
        for j = max([yr(k)-r, 1]):min([yr(k)+r, ySize])
            S(j,i) = 0+0j; % indices are swapped again :(
        end
    end
end

newF = ifftshift(S);

end
