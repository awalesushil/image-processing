clear all;
close all;
clc
img = imread('sunflower.jpg');
[row, col] = size(img);
i = 1;
j = 1;
for x = 1:2:row
    for y = 1:2:col
        c(i, j) = img(x, y);
        j = j + 1;
    end
    i = i + 1;
    j = 1;
end
figure;imshow(img);
figure;imagesc(c),colormap(gray);
    