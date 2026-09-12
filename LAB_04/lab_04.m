% 1. FFT

I = imread('cameraman.tif');
if size(I,3)==3
    I = rgb2gray(I);
end

F = fft2(double(I));
Fshift = fftshift(F);


% 2. Magnitude Spectrum
S = log(1 + abs(Fshift));
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


% 3. Bit Plane Slicing
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
title('Original Image');

subplot(3,3,2);
imshow(b0);
title('BIT PLANE 1');

subplot(3,3,3);
imshow(b1);
title('BIT PLANE 2');

subplot(3,3,4);
imshow(b2);
title('BIT PLANE 3');

subplot(3,3,5);
imshow(b3);
title('BIT PLANE 4');

subplot(3,3,6);
imshow(b4);
title('BIT PLANE 5');

subplot(3,3,7);
imshow(b5);
title('BIT PLANE 6');

subplot(3,3,8);
imshow(b6);
title('BIT PLANE 7');

subplot(3,3,9);
imshow(b7);
title('BIT PLANE 8');


% 4. Low-Pass Filter
I = imread('cameraman.tif');
F = fftshift(fft2(double(I)));
[M,N] = size(I);
H = zeros(M,N);
D0 = 30;

for u = 1:M
    for v = 1:N
        D = sqrt((u-M/2)^2 + (v-N/2)^2);
        if D <= D0
            H(u,v)=1;
        end
    end
end

G = F .* H;
g = real(ifft2(ifftshift(G)));
figure;

subplot(1,3,1);
imshow(I,[]);
title('Original Image');

subplot(1,3,2);
imshow(H,[]);
title('Low Pass Mask');

subplot(1,3,3);
imshow(uint8(g));
title('Low Pass Filter');


% 5. High-Pass Filter
H = ones(M,N);
D0 = 30;
for u = 1:M
    for v = 1:N
        D = sqrt((u-M/2)^2 + (v-N/2)^2);
        if D <= D0
            H(u,v)=0;
        end
    end
end

G = F .* H;
g = real(ifft2(ifftshift(G)));
figure;

subplot(1,3,1);
imshow(I,[]);
title('Original Image');

subplot(1,3,2);
imshow(H,[]);
title('High Pass Mask');

subplot(1,3,3);
imshow(uint8(g));
title('High Pass Filter');