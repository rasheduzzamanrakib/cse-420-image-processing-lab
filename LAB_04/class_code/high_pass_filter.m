I = imread('cameraman.tif');

% Fourier Transform
F = fftshift(fft2(double(I)));

[M,N] = size(I);

%create high pass filter mask
H = ones(M,N);

D0 = 30; %Cutoff Frequency

for u = 1:M
    for v = 1:N
        D = sqrt((u-M/2)^2 + (v-N/2)^2);


        if D <= D0
            H(u,v)= 1;
        end
    end
end

%Apply Filter
G = F .* H;

%Inverse Fourier Transform
g = real(ifft2(ifftshift(G)));

%Display
figure;

subplot(1,3,1);
imshow(I,[]);
title('Original Image');

subplot(1,3,2);
imshow(H,[]);
title('Low Pass Mask');

subplot(1,3,3);
imshow(uint8(g));
title('Magnitude Spectrum');