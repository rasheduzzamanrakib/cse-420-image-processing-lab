I = imread('peppers.png');
gr = rgb2gray(I);
rsz = imresize(gr, [256 256]);
figure;

subplot(3,3,1);
imshow(I);
title('Original Image');

subplot(3,3,2);
imshow(gr);
title('Gray Scale');

subplot(3,3,3);
imshow(rsz);
title('Resized Gray Scale');

subplot(3,3,4);
imhist(gr);
title('Histogram');

subplot(3,3,5);
histeq(gr);
title('Equalize Histo');

subplot(3,3,6);
imshow(imadd(gr, 50));
title('+50');


sp = imnoise(gr, 'salt & pepper', 0.05);
subplot(3,3,7);
imshow(sp);
title('Salt and Pepper');


filter= medfilt2(sp, [3 3]);
subplot(3,3,8);
imshow(filter);
title('Filter');

%
F = fft2(double(I));
subplot(3,3,9);
imshow(F,[]);
title('FFT');

level = graythresh(gr);
BW = imbinarize(gr, level);

figure;
imshow(BW);
title('Segmented Image');