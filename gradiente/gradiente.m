clc
clear all
img_in = imread('imgs/mia.jpg');
img_in = rgb2gray(img_in);
figure;subplot(1,3,1); imshow(img_in); title('Gray scale image');

[rows, cols] = size(img_in);
thresh= graythresh(img_in);
img_bw = im2bw(img_in, thresh);

template = fspecial('gaussian',3,0.8);
img_filt = imfilter(img_bw, template);

dx = [-1 -1 -1 ; 0 0 0 ; 1 1 1];
dy = [-1 0 1 ; -1 0 1 ; -1 0 1];
img_filt = double(img_filt);

grad_x = conv2(img_filt, dx, 'same');
grad_y = conv2(img_filt, dy, 'same');
grad = sqrt((grad_x.^2)+(grad_y.^2));
subplot(1,3,2); imshow(grad); title('gradient'); 

bw = edge(img_bw,'canny');
subplot(1,3,3); imshow(bw); title('canny'); 