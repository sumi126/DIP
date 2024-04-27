clc;clear;close all;
image = imread('images/birds.png');
img = im2double(image)
figure(1)
imshow(image)
title('original image')

new_img = log(1+img);
figure(2)
imshow(new_img)