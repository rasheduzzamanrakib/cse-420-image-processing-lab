% 1. image reading
I = imread('peppers.png');
figure;

subplot(3,3,1);
imshow(I);
title('original image');


% 2. rgb to grayscale
gr = rgb2gray(I);

subplot(3,3,2);
imshow(gr);
title('grayscale');


% 3. binary conversion
BW = im2bw(I);

subplot(3,3,3);
imshow(BW);
title('binary image');


% 4. resize
rsz = imresize(I, [300 300]);

subplot(3,3,4);
imshow(rsz);
title('resized image');


% 5. histogram
subplot(3,3,5);
imhist(gr);
title('histogram');


% 6. crop or roi
crop = imcrop(I, [50 50 200 160]);

subplot(3,3,6);
imshow(crop);
title('crop or roi');


% 7. rotation
rot = imrotate(I, 45);

subplot(3,3,7);
imshow(rot);
title('rotated image');


% 8. brightness enhancement
bright = I + 100;

subplot(3,3,8);
imshow(bright);
title('brightness +100');


% 9. negative image
negative = 255 - I;

subplot(3,3,9);
imshow(negative);
title('negative image');