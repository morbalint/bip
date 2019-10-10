function [filtered_img] = median_filter(in_img, r)

[x_size, y_size] = size(in_img);
filtered_img = zeros([x_size, y_size]);

padded = padarray(in_img, [r,r], 'replicate');

for i = r+1:x_size+r
    for j = r+1:y_size+r
        subImg = padded(i-r:i+r, j-r:j+r);
        filtered_img(i,j) = median(subImg(:));
    end
end     
        
end