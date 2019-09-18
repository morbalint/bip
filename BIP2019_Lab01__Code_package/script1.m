img = imread('./input/AlfredoBorba_TuscanLandscape.jpg');
figure(1);
imshow(img);
isColor = size(img, 3) == 3;
if isColor
    img = rgb2gray(img);
end
figure(2);
imshow(img);
imwrite(img, './output/AlfredoBorba_TuscanLandscape.grey.jpg');