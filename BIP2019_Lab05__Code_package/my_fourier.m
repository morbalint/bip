function [F] = my_fourier(I)

F = zeros(size(I));

[x_size, y_size] = size(I);

for k1 = 1:x_size
    for k2 = 1:y_size
        p = 0.0; % partial sum
        for n1 = 1:x_size
            for n2 = 1:y_size
                kx = k1 - 1;
                ky = k2 - 1;
                nx = n1 - 1;
                ny = n2 - 1;
                p = p + I(n1, n2) * exp(-2j*pi*kx*nx / x_size) * exp(-2j*pi*ky*ny / y_size); 
            end
        end
        F(k1,k2) = p;
    end
end
    
end
