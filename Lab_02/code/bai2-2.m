pkg load image;
clear all;

I = imread("../foreground.png");

I_red = I(:,:,1);
I_blue = I(:,:,2);
I_green = I(:,:,3);

fig = figure(1);

subplot(1,3,1),imhist(I_red);

subplot(1,3,2),imhist(I_blue);

subplot(1,3,3),imhist(I_green);

print(fig,"../result/result_2_2.jpg")