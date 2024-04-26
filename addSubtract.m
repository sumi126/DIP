clc;clear;close all;
img1 = imread('images/birds.png');
img2 = imread('images/coin.png');
figure('name','Original image')
subplot(3,1,1)
imshow(img1);
title('Original image 1')
subplot(3,1,2)
imshow(img2);
title('Original image 2')
[m,n,p] = size(img1);
[x,y,p1] = size(img2);
reimg2 = imresize(img2,[m,n]);
reimg1 = imresize(img1,[x,y]);
subplot(3,1,3)
imshow(reimg2);
title('Original resize image 2 as img1')

figure('name','Added image')
imshow(img1+reimg2)

figure('name','subtracted image')
subplot(2,1,1)
imshow(img1-reimg2)
title('Subtraction img1 to img2');
subplot(2,1,2)
imshow(reimg2-img1)
title('Subtraction img2 to img1');