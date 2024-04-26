clc;clear;close all;
image = imread('images/birds.png');

gray = .3*image(:,:,1) + .59*image(:,:,2) + .11*image(:,:,3);
subplot(1,2,1)
imshow(image)
title('original image')
subplot(1,2,2)
imshow(gray)
title('Gray image')