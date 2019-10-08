function color = detect_color(CARD)
% CARD: RGB image of the card (uint8 type)
%
% color: char type, possible values:
%         'R' for red
%         'B' for black

I = CARD;

RED = (I(:,:,1) > 160) & (I(:,:,2) < 128) & (I(:,:,3) < 128);
red = sum(RED(:));
threshold = 1000;    

if red > threshold
    color = 'R';
else
    color = 'B';
end
    
end