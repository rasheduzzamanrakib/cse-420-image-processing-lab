I = imread('cameraman.tif');

% Convert to grayscale if RGB
if size(I,3)==3
    I = rgb2gray(I);
end

% Calculate threshold automatically
level = graythresh(I);

% Segment the image
BW = im2bw(I, level);

% Display
figure;

subplot(1,2,1);
imshow(I);
title('Original Image');

subplot(1,2,2);
imshow(BW);
title('Segmented Image');