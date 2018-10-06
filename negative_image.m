clc;
clear all;
close all;
I = imread('sunflower.jpg');
G = rgb2gray(I);
[m, n] = size(G);
% Point Method %
for p = 1:n
  for q = 1:m
    Inv(p,q) = 255 - G(p,q);
  end
end
% Vector Method %
Inv = 255 - G;
subplot(1,3,1), imshow(I);
subplot(1,3,2), imshow(G);
subplot(1,3,3), imshow(Inv);