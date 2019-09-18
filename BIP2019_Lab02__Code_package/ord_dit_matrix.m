function D = ord_dit_matrix(n)
   D = rec(zeros(1), n);
   D = D ./ (4 ^ n);
end

function Y = rec(X, n)
    Y = X;
    if(n > 0)
       Y = [ 4.*X, 4.*X+2; 4.*X+3, 4.*X+1];
       Y = rec(Y, n -1); 
    end
end