function [processed_img] = apply_wallis_operator(in_img, local_mean_img, desired_mean, local_contrast_img, desired_contrast, A_max, p)

[x_size, y_size] = size(in_img);

processed_img = zeros(size(in_img));

for i = 1:x_size
    for j = 1:y_size
        processed_img(i,j) = ...
            (in_img(i,j) - local_mean_img(i,j)) ...
            * ((A_max * desired_contrast) ...
            / (A_max * local_contrast_img(i,j) + desired_contrast)) ...
            + p*desired_mean + ((1-p) * local_mean_img(i,j));
    end
end


end