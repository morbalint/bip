function hist_vector = calc_hist_vector(input_img)
    Isize = size(input_img);
    hist_vector = zeros([256, 1]);
    for i=1:Isize(1)
        for j=1:Isize(2)
            idx = input_img(i,j)+1;
            hist_vector(idx) = hist_vector(idx) + 1;
        end
    end
end