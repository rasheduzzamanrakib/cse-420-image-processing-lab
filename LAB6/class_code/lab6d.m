clc;
clear;
close all;

I = imread('peppers.png');

X = double(reshape(I, [], 3));

K = 4;

[idx, C] = kmeans(X, K);

% Replace each pixel by its cluster centroid
new_image = C(idx,:);

% Convert back to image format
new_image = uint8(reshape(new_image, size(I)));

figure;

subplot(1,2,1);
imshow(I);
title('Original Image');

subplot(1,2,2);
imshow(new_image);
title('Color K-Means Segmentation');