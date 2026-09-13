I = imread('cameraman.tif');

%convert to grayscale if RFG
if size(I,3)==3
    I = rgb2gray(I);
end

% calculate threshold automatically 
level = graythresh(I);

% segment the image 
BW = im2bw(I, level);

