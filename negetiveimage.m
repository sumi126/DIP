clc;clear;close all;
image = imread('images/cameraman.png');
bit = 8;
negetive_image = 2^bit - 1 - image;

subplot(1,2,1)
imshow(image)
title('original image')
subplot(1,2,2)
imshow(negetive_image)
title('negetive image')