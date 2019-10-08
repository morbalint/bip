function [r_vect, t_vect] = non_max_sup(H, k, p)
    Hsize = size(H);
    r_vect = zeros([k,1]);
    t_vect = zeros([k,1]);
    for i = 1:k
        [~,j] = max(H(:));
        [r,t] = ind2sub(Hsize, j);
        r_vect(i) = r;
        t_vect(i) = t;
        for a = -p:p
            for b = -p:p
                ra = r+a;
                tb = t+b;
                if(ra > 0 && tb > 0 && ra <= Hsize(1) && tb <= Hsize(2))
                     H(ra, tb) = 0;
                end
            end
        end
    end 
end