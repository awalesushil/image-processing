close all;
clc
img = imread('sunflower.jpg');
% structuring element %
w = [1 1 1; 1 1 1; 1 1 1]; 
[row, col] = size(img);
for i = 2:1:row-1
    for j= 2:1:col-1
        pixels = [w(1) * img(i-1, j-1), w(2) * img(i-1,j), w(3) * img(i-1, j+1), ...
                        w(4) * img(i, j-1), w(5) * img(i,j), w(6) * img(i, j+1), ...
                        w(7) * img(i+1, j-1), w(8) * img(i+1,j), w(9) * img(i+1, j+1)];  
        dilation(i,j) = max(pixels);
        erosion(i,j) = min(pixels);
    end
end

figure(1);imshow(img);
figure(2);imshow(dilation)
figure(3);imshow(erosion)