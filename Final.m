clc
clear
close all

% im1=imread('1.tif');
% im2=imread('2.tif');

im1=imread('3.jpg');
im2=imread('4.jpg');
im2=imresize(im2,[size(im1,1) size(im1,2)]);
n=100;

for i = 1:n
    im3(:,:,1)=intermediate(im1(:,:,1),im2(:,:,1),n,i);
    im3(:,:,2)=intermediate(im1(:,:,2),im2(:,:,2),n,i);
    im3(:,:,3)=intermediate(im1(:,:,3),im2(:,:,3),n,i);
    
%     im3=intermediate(im1,im2,n,i);
    imshow(uint8(im3))
    pause(0.1)
end
