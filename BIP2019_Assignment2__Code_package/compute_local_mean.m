function [local_mean_img] = compute_local_mean(in_img, r)

[x_size, y_size] = size(in_img);

local_mean_img = zeros([x_size, y_size]);

padded = padarray(in_img, [r,r], 'replicate');

for i = r+1:x_size+r
    for j = r+1:y_size+r
        submatrix = padded(i-r:i+r, j-r:j+r);
        local_mean_img(i-r,j-r) = mean(submatrix(:));
    end
end

end