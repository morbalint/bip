function [c] = g2(nn_diff, K)

one = ones(size(nn_diff));

c = one ./ ( one + (( nn_diff ./ K ) .^ 2) ); 


end