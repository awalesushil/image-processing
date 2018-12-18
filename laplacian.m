close all;
clc
img = imread('sunflower.jpg');
img = double(img);
% laplacian filter%
w = [0 1 0; 1 -4 1; 0 1 0]; 
[row, col] = size(img);
for i = 2:1:row-1
    for j= 2:1:col-1
        new_img(i, j) = w(1) * img(i-1, j-1) + w(2) * img(i-1,j) + w(3) * img(i-1, j+1) + ...
                        w(4) * img(i, j-1) + w(5) * img(i,j) + w(6) * img(i, j+1) + ...
                        w(7) * img(i+1, j-1) + w(8) * img(i+1,j) + w(9) * img(i+1, j+1);  
    end
end

figure(1);imshow(uint8(img));
figure(2);imshow(uint8(new_img));

for i=2:row-1
    for j=2:col-1 
        newimg(i, j) = img(i, j);
    end
end

sharpened = newimg - new_img;
figure(3);imshow(uint8(sharpened));