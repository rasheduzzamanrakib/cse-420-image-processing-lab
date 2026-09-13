clc;
clear;
close all;

% Read color image
I = imread('peppers.png');

% Convert image into N×3 matrix
X = double(reshape(I, [], 3));

% Number of clusters
K = 4;

% Apply K-Means
[idx, C] = kmeans(X, K);

% Reshape cluster labels back to image size
cluster_img = reshape(idx, size(I,1), size(I,2));

% Select the cluster number corresponding to peppers
% Change this value after observing the segmentation
pepper_cluster = 2;

% Create binary mask
mask = (cluster_img == pepper_cluster);

% Initialize output image with black background
result = zeros(size(I), 'uint8');

% Keep only the selected cluster
for k = 1:3
    temp = I(:,:,k);
    temp(~mask) = 0;
    result(:,:,k) = temp;
end

% Display
figure;

subplot(1,3,1);
imshow(I);
title('Original Image');

subplot(1,3,2);
imshow(cluster_img, []);
title('K-Means Clusters');

subplot(1,3,3);
imshow(result);
title('Peppers with Black Background');