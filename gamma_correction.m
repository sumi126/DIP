clc;clear;close all;
image = imread('images/birds.png');
img = im2double(image)
figure(1)
imshow(image)
title('original image')

gamma = 0.2;

new_img = img.^gamma;
figure(2)
imshow(new_img)