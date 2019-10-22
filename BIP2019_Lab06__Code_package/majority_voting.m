function OUT = majority_voting(IN, w_dia)
    OUT = IN .* 1;
    
    for x = 1:w_dia:size(IN,1)
        for y = 1:w_dia:size(IN,2)
            start_x = x;
            end_x = min([ x + w_dia - 1, size(IN,1) ]);
            start_y = y;
            end_y = min([ y + w_dia - 1, size(IN,2) ]);
            selectedWindow = IN(start_x:end_x,start_y:end_y);
            % I know this is the expected solution, but...
            % majorityValue = mode(selectedWindow(:));
            % the line below performs better !!
            majorityValue = mode(mode(selectedWindow));
            OUT(start_x:end_x,start_y:end_y) = majorityValue;
        end
    end         
    
end