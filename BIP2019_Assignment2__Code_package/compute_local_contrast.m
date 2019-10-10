function [local_contrast_img] = compute_local_contrast(in_img, local_mean_img, r)

N = (2*r+1) ^ 2;

[x_size, y_size] = size(in_img);

local_contrast_img = zeros([x_size, y_size]);

paddedImg = padarray(in_img, [r,r], 'replicate');
paddedMean = padarray(local_mean_img, [r,r], 'replicate');

for i = r+1:x_size+r
    for j = r+1:y_size+r
        subImg = paddedImg(i-r:i+r, j-r:j+r);
        subMean = paddedMean(i-r:i+r, j-r:j+r);
        D = subImg - subMean; % diff
        D2 = D .* D; % diff squared
        sumD2 = sum(D2(:)); % sum of diff squared values
        local_contrast_img(i-r,j-r) = sqrt(sumD2) / N;
    end
end

end