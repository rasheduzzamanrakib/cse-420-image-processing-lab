clc;
clear;
close all;

I = imread('cameraman.tif');

BW = im2bw(I, 0.2);

imshow(BW);
title('Manual Threshold Segmentation');