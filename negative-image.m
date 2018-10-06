clc;
clear all;
close all;
I = imread('sunflower.jpg');
G = rgb2gray(I);
[m, n] = size(G);
imshow(I);
% Point Method %
for p = 1:n
  for q = 1:m
    Inv(p,q) = 255 - G(p,q);
  end
end
imshow(Inv);
% Vector Method %
Inv = 255 - G;
subplot(1,2,1), imshow(G);
subplot(1,2,2), imshow(Inv);
