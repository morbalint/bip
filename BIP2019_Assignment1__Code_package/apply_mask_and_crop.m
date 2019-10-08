function CROP = apply_mask_and_crop(IMG, MASK, center)
%    IMG: RGB image in uint8 format (from 0 to 255) 
%   MASK: logical array (only zeros and ones).
%          0 if not card,
%          1 if card
% center: 2-element vector, coordinate of the center of mass
%          center(1) is the horizontal coordinate
%          center(2) is the vertical coordinate
%
% CROP: RGB image in uint8 format (from 0 to 255) showing the cropped card

the_real_center = [center(2),center(1)]; % FUK U!

card_size = [420, 280]; % [height, width]
idxFrom =  max([the_real_center - (card_size ./ 2) ; [1,1]] );
foo = (the_real_center + (card_size ./ 2) - 1) ;
bar = size(MASK);
idxUntil = min([foo; bar]);
    
Masked = uint8(ones(size(IMG)) * 255) .* uint8(~MASK) + IMG .* uint8(MASK);

CROP = Masked(idxFrom(1):idxUntil(1),idxFrom(2):idxUntil(2),:);

   
    
end