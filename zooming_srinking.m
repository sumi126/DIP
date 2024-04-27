clc;clear;close all;
image = imread('images/birds.png');
figure(1)
imshow(image)
title('original image')

[width,height,p] = size(image);
%factor, z >1 zooming z<1 srinking
z = 0.2;

new_width = ceil(z*width);
new_height = ceil(z*height);

for i =1:new_width
    for j = 1:new_height
        new_image(i,j,:) = image(ceil(i*width/new_width),ceil(j*height/new_height),:);
    end
end
figure(2)
imshow(new_image)
title('Zooming image')
