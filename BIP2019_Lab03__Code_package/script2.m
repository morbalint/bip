close all; clc; clear;


K = fspecial('log', 7, 0.5); % Laplacian of Gaussian
fig_name = 'Laplacian of Gaussian (7\times7)';

% test your convolution impementation
tester(K, fig_name);