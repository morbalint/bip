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

    card_size = [420, 280]; % [height, width]
   
    
end