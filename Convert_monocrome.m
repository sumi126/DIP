clc;clear;close all;
image = imread('images/birds.png');

gray = .3*image(:,:,1) + .59*image(:,:,2) + .11*image(:,:,3);
[m,n] = size(gray);
mono = zeros(1,256);

for i = 1:m
    for j = 1:n
      if gray(i,j)>127
          mono(i,j) = 255;
      end
    end 
end
disp(mono)
subplot(1,2,1)
imshow(image)
title('original image')
subplot(1,2,2)
imshow(mono)
title('Gray image')