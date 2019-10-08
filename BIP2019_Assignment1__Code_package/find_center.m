function [mass_x, mass_y] = find_center(MASK)
% MASK: logical array (only zeros and ones).
%
% mass_x: coordinate of center of mass (horizontal), integer
% mass_y: coodrinate of center of mass (vertical), integer

Isize = size(MASK);

sumX = 0.0;
sumY = 0.0;
count = 0;

for i=1:Isize(1)
    for j=1:Isize(2)
        if MASK(i,j) > 0
            sumX = sumX + i;
            sumY = sumY + j;
            count = count + 1;
        end
    end
end

% some dimensions are fuked up in the test code.
mass_y = round(sumX / count);
mass_x = round(sumY / count);

end