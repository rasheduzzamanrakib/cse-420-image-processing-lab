clc;
clear;


I = imread('text.png');
BW = im2bw(I);
SE = strel('square',3);

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
title('closed image');


% 5. pixel replication or nearest neighbor
I = imread('cameraman.tif');
Z = imresize(I, 2, 'nearest');

figure;

subplot(1,2,1);
imshow(I);
title('original image');

subplot(1,2,2);
imshow(Z);
title('replication');


% 6. bilinear interpolation
Z = imresize(I, 2, 'bilinear');
figure;

subplot(1,2,1);
imshow(I);
title('original image');

subplot(1,2,2);
imshow(Z);
title('bilinear');

% 7. otsu threshold segmentation
if size(I,3)==3
    I = rgb2gray(I);
end
level = graythresh(I);
BW = im2bw(I, level);
figure;

subplot(1,2,1);
imshow(I);
title('original image');

subplot(1,2,2);
imshow(BW);
title('otsu segmentation');