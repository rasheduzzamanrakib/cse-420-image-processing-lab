clc;
clear;

% read image
I = imread('cameraman.tif');

if size(I,3) == 3
    I = rgb2gray(I);
end


% 1. fft
F = fft2(double(I));
Fshift = fftshift(F);

% 2. magnitude spectrum
S = log(1 + abs(Fshift));

% 4. low-pass filter
[M,N] = size(I);
H_low = zeros(M,N);
D0 = 30;
for u = 1:M
    for v = 1:N
        D = sqrt((u-M/2)^2 + (v-N/2)^2);
        if D <= D0
            H_low(u,v) = 1;
        end
    end
end

% apply low-pass filter
G_low = Fshift .* H_low;
g_low = real(ifft2(ifftshift(G_low)));


% 5. high-pass filter
H_high = ones(M,N);
D0 = 30;
for u = 1:M
    for v = 1:N
        D = sqrt((u-M/2)^2 + (v-N/2)^2);
        if D <= D0
            H_high(u,v) = 0;
        end
    end
end

% apply high-pass filter
G_high = Fshift .* H_high;
g_high = real(ifft2(ifftshift(G_high)));


figure;

% 1. original image
subplot(2,4,1);
imshow(I,[]);
title('original image');

% 2. fft
subplot(2,4,2);
imshow(abs(F),[]);
title('fft');

% 3. magnitude spectrum
subplot(2,4,3);
imshow(S,[]);
title('magnitude spectrum');

% 4. low-pass mask
subplot(2,4,4);
imshow(H_low,[]);
title('low pass mask');

% 5. low-pass filter result
subplot(2,4,5);
imshow(uint8(g_low));
title('low pass filter');

% 6. high-pass mask
subplot(2,4,6);
imshow(H_high,[]);
title('high pass mask');

% 7. high-pass filter result
subplot(2,4,7);
imshow(uint8(g_high));
title('high pass filter');

% 3. bit plane slicing
figure;
i=imread('peppers.png');
b0=double(bitget(i,1));
b1=double(bitget(i,2));
b2=double(bitget(i,3));
b3=double(bitget(i,4));
b4=double(bitget(i,5));
b5=double(bitget(i,6));
b6=double(bitget(i,7));
b7=double(bitget(i,8));

subplot(3,3,1);
imshow(i);
title('original image');

subplot(3,3,2);
imshow(b0);
title('bit plane 1');

subplot(3,3,3);
imshow(b1);
title('bit plane 2');

subplot(3,3,4);
imshow(b2);
title('bit plane 3');

subplot(3,3,5);
imshow(b3);
title('bit plane 4');

subplot(3,3,6);
imshow(b4);
title('bit plane 5');

subplot(3,3,7);
imshow(b5);
title('bit plane 6');

subplot(3,3,8);
imshow(b6);
title('bit plane 7');

subplot(3,3,9);
imshow(b7);
title('bit plane 8');