function [nabla_N, nabla_S, nabla_E, nabla_W] = create_nearest_neighbor_difference_arrays(I)

[x_size, y_size] = size(I);

padded = padarray(I, [1,1], 'replicate');

nabla_N = padded(1:x_size, 2:y_size+1) - I;
nabla_S = padded(3:x_size+2, 2:y_size+1) - I;
nabla_W = padded(2:x_size+1, 1:y_size) - I;
nabla_E = padded(2:x_size+1, 3:y_size+2) - I;

end