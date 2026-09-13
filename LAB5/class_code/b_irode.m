I = imread('text.png')

BW = im2bw(I);

SE = strel('square',3);

D = imerode(BW, SE);

figure;

subplot(2,2,1)
imshow(I);
title('Original Image');

subplot(2,2,2)
imshow(BW);
title('Binary Image');

subplot(2,2,3)
imshow(D);
title('Eroded Image');