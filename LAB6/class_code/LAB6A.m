I = imread('cameraman.tif');

if size(I,3) == 3
    I = rgb2gray(I);
end

level = graythresh(I);
BW = im2bw(I, level);

figure;

subplot(1,2,1);
imshow(I);
title('Original Image');

subplot(1,2,2);
imshow(BW);
title('Threshold Applied Image');