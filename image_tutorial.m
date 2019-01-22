clc;
clear all;

A = imread('parrots.jpg');

figure;
imshow(A);

A_gray = rgb2gray(A);

% figure;
% imshow(A_gray);
% % 
% imwrite(A_gray, 'gray_parrots.jpg');
% 
% 
% A_cut = A_gray(200:400,300:600);
% figure;
% imshow(A_cut)
% 
% 
% A_gray(55:100,55:100)=255;
% figure;
% imshow(A_gray)
% 

A_brightened = A_gray*2;
figure;
imshow(A_brightened)


A_darkened = A_gray*0.5;
figure;
imshow(A_darkened)

% 
A_gray_eq = histeq(A_gray);

figure;
imhist(A_gray_eq)

figure;
imshow(A_gray_eq);