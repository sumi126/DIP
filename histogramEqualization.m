clc;close all;clear;
img = imread('images/birds.png');
figure(1)
subplot(3,2,1)
imshow(img)
%%convert rgb to gray image
gimg = 0.3*img(:,:,1) + 0.59*img(:,:,2) + 0.11*img(:,:,3);

subplot(3,2,2)
imshow(gimg)
[m,n] = size(gimg);
subplot(3,2,3)
imhist(img)
subplot(3,2,4)
imhist(gimg)
%% histogram of gray image
histo = zeros(1,256);
x = 0:255;
 for i = 1:m
     for j = 1:n
        histo(1,gimg(i,j)+1) = histo(1,gimg(i,j)+1) + 1;
     end
 end
subplot(3,2,5)
stem(x,histo)
%% histogram equalization of gray image
% calculate pdf
for i = 1:256
     histopdf = histo(i)/(m*n);
end
histocdf = 0;
for i=1:256
    histocdf = histocdf + histo(i);
    histo(i) = histocdf;    
end
for i=1:m
    for j = 1:n
    new_img(i,j) =round(histo(img(i,j)+1)*255);
    end
end
  disp(new_img) 
subplot(3,2,6)
imhist(new_img)
figure(2)
subplot(2,2,1)
histeq(img)
subplot(2,2,2)
imshow(new_img)