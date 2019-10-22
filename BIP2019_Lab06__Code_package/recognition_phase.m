function ClassMap = recognition_phase(I, MODEL)

    [h,w] = size(I);
    [m, nine] = size(MODEL);

    ClassMap = zeros(h,w);
    
    N = ones(15) .* (1.0 / (225.0));
    
    BB = ones(h,w,9);
    
    for k = 1:9
        H = laws_kernel(k);
        B = conv2(I, H, 'same');
        Bstar = conv2(B .* B , N, 'same');
        BB(:,:,k) = Bstar;
    end
    
    for x = 1:h
        for y = 1:w
            sum_abs_diff = zeros(m,1);
            for n = 1:m
                foo = BB(x,y,:); % 1x1x9 matrix
                bar = MODEL(n,:); % 1x9 matrix
                diff = foo(:) - bar(:); % flat 9x1 vectors
                sum_abs_diff(n) = sum(abs(diff(:)));
            end
            [min_val, min_idx] = min(sum_abs_diff);
            ClassMap(x,y) = min_idx;
        end
    end

end