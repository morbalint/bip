% test6, assignment2, 2018.

close all;
clear;

input_img = imread('./input/AndreKertesz_Paris_ManOnBicycle_part.jpg');
input_img = mat2gray(input_img);

noisy_img = imnoise(input_img,'salt & pepper');
filtered_img = median_filter(noisy_img, 1);

figure(4);
subplot(1, 2, 1);
imshow(noisy_img);
title('Original, noisy image');
subplot(1, 2, 2);
imshow(filtered_img);
title('Median filtered image');


