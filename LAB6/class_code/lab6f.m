clc;
clear;
close all;

I = imread('coins.png');

BW = im2bw(I, graythresh(I));

[L,num] = bwlabel(BW);



figure, 
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imshow(L,[]);
title('Connected Components');
disp(num);