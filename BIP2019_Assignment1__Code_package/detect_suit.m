function suit = detect_suit(CARD)
% CARD: RGB image of the card (uint8 type)
%
% suit: char type, possible values:
%         'C' for clubs (♣)
%         'D' for diamonds (♦)
%         'H' for hearts (♥)
%         'S' for spades (♠)

suits = load('input/suits.mat');

color = detect_color(CARD);

% imshow(CARD);
I = ~(CARD(:,:,1) > 192 & CARD(:,:,2) > 192 & CARD(:,:,3) > 192);
% imshow(I);

if color == 'R'
    hearts = conv2(I, suits.hearts);
    diamonds = conv2(I, suits.diamonds);
    if(max(hearts(:)) > max(diamonds(:)))
        suit = 'H';
    else
        suit = 'D';
    end
else
    clubs = conv2(I, suits.clubs);
    spades = conv2(I, suits.spades);
    if(max(clubs(:)) > max(spades(:)))
        suit = 'C';
    else
        suit = 'S';
    end
end
    
end