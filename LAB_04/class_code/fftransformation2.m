I = imread('cameraman.tif');

if size(I,3)==3
    I = rgb2gray(I)'
end

%fourier transform
F = fft2(double(I));

%shift frequencies to center
Fshift = fftshift(F);

%magnitude spectrum
S = log(1 + abs(Fshift));

%Display
figure;

subplot(1,3,1);
imshow(I,[]);
title('Original Image');

subplot(1,3,2);
imshow(abs(F),[]);
title('FFT');

subplot(1,3,3);
imshow(S,[]);
title('Magnitude Spectrum');