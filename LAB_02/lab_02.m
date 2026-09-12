I = imread('peppers.png');
gr = rgb2gray(I);

% 1. gaussian noise
gaussian = imnoise(gr, 'gaussian');

subplot(3,3,1);
imshow(gaussian);
title('gaussian noise');

% 2. salt and pepper noise
sp = imnoise(gr, 'salt & pepper', 0.05);

subplot(3,3,2);
imshow(sp);
title('salt and pepper noise');

% 3. poisson noise
poisson = imnoise(gr, 'poisson');

subplot(3,3,3);
imshow(poisson);
title('poisson noise');


% 4. manual rayleigh noise
rayleigh = rand(size(gr));
rayleigh = sqrt(-2 * log(1 - rayleigh));

rayleigh = uint8(double(gr) + rayleigh * 20);

subplot(3,3,4);
imshow(rayleigh);
title('rayleigh noise');


% 5. manual gamma noise
gamma = gamrnd(2, 1, size(gr));

gamma = uint8(double(gr) + gamma * 20);

subplot(3,3,5);
imshow(gamma);
title('gamma noise');


% 6. manual exponential noise
exponential = exprnd(1, size(gr));

exponential = uint8(double(gr) + exponential * 20);

subplot(3,3,6);
imshow(exponential);
title('exponential noise');


% 7. manual uniform noise
uniform = rand(size(gr));

uniform = uint8(double(gr) + uniform * 20);

subplot(3,3,7);
imshow(uniform);
title('uniform noise');