function MODEL = training_phase(T_cell)
    N = length(T_cell);
    MODEL = zeros(N,9);
    for n = 1:N
        for i = 1:9
            H = laws_kernel(i);
            A = conv2(T_cell{n}, H, 'same');
            [h,w] = size(A);
            B = A .* A;
            MODEL(n,i) = sum(B(:)) * (1 / (h*w));
        end
    end
end