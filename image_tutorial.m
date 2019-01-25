clc;
clear;

%% read and show the image
A = imread('data/parrots.jpg');

figure;
imshow(A);

%% drawing the three separate channels
% redChannel = A(:,:,1); % Red channel
% greenChannel = A(:,:,2); % Green channel
% blueChannel = A(:,:,3); % Blue Channel
% 
% allBlack = zeros(size(A, 1), size(A, 2), 'uint8');
% just_red = cat(3, redChannel, allBlack, allBlack);
% just_green = cat(3, allBlack, greenChannel, allBlack);
% just_blue = cat(3, allBlack, allBlack, blueChannel);
% 
% figure;
% imshow(just_red)
% figure;
% imshow(just_green)
% figure;
% imshow(just_blue)

%% convert the rgb to gray and show it
A_gray = rgb2gray(A);

figure;
imshow(A_gray);

%% write image
imwrite(A_gray, 'data/gray_parrots.jpg');

%% cut some part of an image
A_cut = A_gray(200:400,300:600);
figure;
imshow(A_cut)

%% change the intensity of a rectangular of image to 255
A_gray_copy = A_gray;
A_gray_copy(55:100,55:100)=255;
figure;
imshow(A_gray_copy)

%% brighten the image
A_brightened = A_gray*2;
figure;
imshow(A_brightened)

%% darken the image
A_darkened = A_gray*0.5;
figure;
imshow(A_darkened)

%% equlize the image and then plot the image histogram
A_gray_eq = histeq(A_gray);

figure;
imhist(A_gray_eq)
