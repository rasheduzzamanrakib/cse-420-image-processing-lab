I = imread('cameraman.tif');

% Zoom by factor 2 using pixel replication

Z = imresize(I, 2, 'bicubic');

figure;

figure;
subplot(1,2,1);
imshow(I);
title('Original Image');

subplot(1,2,2);
imshow(Z);
title('bicubic');
