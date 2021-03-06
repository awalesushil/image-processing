close all;
clc
img = imread('sunflower.jpg');
img = double(img);
% sobel filter%
w1 = [-1 -2 -1; 0 0 0; 1 2 1];
w2 = [-1 0 1; -2 0 2; -1 0 1];
[row, col] = size(img);
for i = 2:1:row-1
    for j= 2:1:col-1
        % x gradient
        x_grad_img(i, j) = w1(1) * img(i-1, j-1) + w1(2) * img(i-1,j) + w1(3) * img(i-1, j+1) + ...
                        w1(4) * img(i, j-1) + w1(5) * img(i,j) + w1(6) * img(i, j+1) + ...
                        w1(7) * img(i+1, j-1) + w1(8) * img(i+1,j) + w1(9) * img(i+1, j+1); 
        % y gradient
        y_grad_img(i, j) = w2(1) * img(i-1, j-1) + w2(2) * img(i-1,j) + w2(3) * img(i-1, j+1) + ...
                        w2(4) * img(i, j-1) + w2(5) * img(i,j) + w2(6) * img(i, j+1) + ...
                        w2(7) * img(i+1, j-1) + w2(8) * img(i+1,j) + w2(9) * img(i+1, j+1); 
    end
end
figure(1);imshow(uint8(x_grad_img));
figure(2);imshow(uint8(y_grad_img));

final_image = x_grad_img + y_grad_img;

figure(3);imshow(uint8(final_image));