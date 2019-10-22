function H = laws_kernel(k)

%     if k < 1 || k > 9 
%         errorr('k should be beetwen 1 and 9')
%     end
    
    L = [ 1/6; 1/3; 1/6; ];
    E = [ 1/2; 0; -1/2; ];
    S = [ 1/2; -1; 1/2; ];

    switch k
        case 1 
            H = L * L.';
        case 2
            H = L * E.';
        case 3
            H = L * S.';
        case 4 
            H = E * L.';
        case 5 
            H = E * E.';
        case 6
            H = E * S.';
        case 7
            H = S * L.';
        case 8
            H = S * E.';
        case 9
            H = S * S.';
        otherwise
            erorr('k should be beetwen 1 and 9')
    end
    
    
end