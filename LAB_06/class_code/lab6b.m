I = imread('peppers.png');
I1 = rgb2gray(I);

BW = edge(I1, 'canny');
bw = edge(I1, "prewitt")

figure;

subplot(1,2,1);
imshow(I);
title('Original Image');

subplot(1,2,2);
imshow(BW);
title('canny');

subplot(1,2,3);
imshow(bw);
title('prewitt');
