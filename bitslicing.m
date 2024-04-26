clc;clear;close all;
image = imread('images/birds.png');
figure(1)
imshow(image)
title('original image')
bit = 8;
img = double(image);

for i = 1:bit
    b = mod(img,2);
    img = floor(img/2);
    figure(i+1)
    imshow(b)
    title(sprintf('Bit Plane: %d', i))
end




