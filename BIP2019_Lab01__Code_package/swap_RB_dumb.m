function [BGR] = swap_RB_dumb(RGB)
    %%BGR = 1.*RGB; 
    BGR = uint8(zeros(size(RGB)));
    for i=1:size(RGB,1)
        for j=1:size(RGB,2)
            BGR(i,j,3) = RGB(i,j,1);
            BGR(i,j,2) = RGB(i,j,2);
            BGR(i,j,1) = RGB(i,j,3);
        end
    end
end