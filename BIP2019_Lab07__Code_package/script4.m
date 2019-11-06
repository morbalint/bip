x = imread('input/ElliottErwitt_Provence.jpg');
x = rgb2gray(x);
x = mat2gray(x);

[y, h, ~]  = degradation(x);

x_tilde = restoration_wiener_white(y, h, 0.001);
mat2gray(x_tilde);

figure(4);
subplot(131); imshow(x); title('Original input image');
subplot(132); imshow(y); title('Degraded image (filter + noise)');
subplot(133); imshow(x_tilde); title('Restored image (Wiener, NSPR)');