clc;
clear;

% read image
I = imread('text.png');

BW = im2bw(I);

SE = strel('square', 3);

% 1. dilation
D = imdilate(BW, SE);

% 2. erosion
E = imerode(BW, SE);

% 3. opening
O = imopen(BW, SE);

% 4. closing
C = imclose(BW, SE);

figure;

subplot(2,3,1);
imshow(I);
title('original image');

subplot(2,3,2);
imshow(BW);
title('binary image');

subplot(2,3,3);
imshow(D);
title('dilated image');

subplot(2,3,4);
imshow(E);
title('eroded image');

subplot(2,3,5);
imshow(O);
title('opened image');

subplot(2,3,6);
imshow(C);
title('Closed image');


% read cameraman image
I = imread('cameraman.tif');

% 5. pixel replication / nearest Neighbor
Z_nearest = imresize(I, 2, 'nearest');

% 6. bilinear interpolation
Z_bilinear = imresize(I, 2, 'bilinear');

% 7. otsu threshold segmentation
if size(I,3) == 3
    I = rgb2gray(I);
end

level = graythresh(I);
BW_otsu = im2bw(I, level);


figure;

subplot(2,3,1);
imshow(I);
title('original image');

subplot(2,3,2);
imshow(Z_nearest);
title('nearest neighbor');

subplot(2,3,3);
imshow(Z_bilinear);
title('bilinear interpolation');


subplot(2,3,4);
imshow(BW_otsu);
title('otsu segmentation');