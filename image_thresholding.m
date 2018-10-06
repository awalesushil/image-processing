clc;
clear all;
close all;
I = imread('sunflower.jpg');
G = rgb2gray(I);
[row, col] = size(G);
for i= 1:row
    for j= 1:col
        if (G(i,j) > 20 && G(i,j) < 220) % if the pixel is between 20 & 220
            G(i,j) = 255;                % make it 1.
        else
            G(i,j) = 0;                  % otherwise make it 0.
        end
    end
end
subplot(1,2,1),imshow(I);
subplot(1,2,2),imshow(G);