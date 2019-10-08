function [H] = my_hough(input_img)
    Isize = size(input_img);
    rmax = round(sqrt(sum(Isize .* Isize)));
    H = zeros([rmax, 180]);
    for i=1:Isize(1)
        for j=1:Isize(2)
            if(input_img(i,j) > 0)
                for theta = 1:180
                    r = round((i * cosd(theta)) + (j * sind(theta)));
                    if(r > 0)
                        H(r,theta) = H(r,theta) + 1; % had to add one, because in matlab array indices start with 1.
                    end
                end
            end
        end
    end
end