clc;
clear;


% read images
I = imread('peppers.png');
I1 = rgb2gray(I);
C = imread('cameraman.tif');
coins = imread('coins.png');


% 1. canny edge detection
BW1 = edge(I1, 'canny');

% 2. prewitt edge detection
BW2 = edge(I1, 'prewitt');

% 3. k-means clustering
X = double(reshape(I, [], 3));
K = 4;
[idx, C1] = kmeans(X, K);
cluster_img = reshape(idx, size(I,1), size(I,2));
pepper_cluster = 2;
mask = (cluster_img == pepper_cluster);
result = zeros(size(I), 'uint8');

for k = 1:3
    temp = I(:,:,k);
    temp(~mask) = 0;
    result(:,:,k) = temp;
end

% 4. color k-means
new_image = C1(idx,:);
new_image = uint8(reshape(new_image, size(I)));

% display first results
figure;
subplot(2,3,1);
imshow(I);
title('original image');

subplot(2,3,2);
imshow(BW1);
title('canny edge detection');

subplot(2,3,3);
imshow(BW2);
title('prewitt edge detection');

subplot(2,3,4);
imshow(cluster_img,[]);
title('k-means clusters');

subplot(2,3,5);
imshow(result);
title('peppers with black background');

subplot(2,3,6);
imshow(new_image);
title('color k-means segmentation');

% 5. manual thresholding
BW3 = im2bw(C, 0.2);

% 6. connected component labeling
BW4 = im2bw(coins, graythresh(coins));
[L,num] = bwlabel(BW4);

% 7. otsu automatic thresholding
level = graythresh(C);
BW5 = im2bw(C, level);

% display remaining results
figure;
subplot(2,3,1);
imshow(C);
title('original image');

subplot(2,3,2);
imshow(BW3);
title('manual threshold');

subplot(2,3,3);
imshow(coins);
title('coins image');

subplot(2,3,4);
imshow(L,[]);
title('connected components');

subplot(2,3,5);
imshow(C);
title('original image');

subplot(2,3,6);
imshow(BW5);
title('otsu segmentation');

disp('number of connected components =');
disp(num);