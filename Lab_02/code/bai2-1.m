pkg load image;
clear all;

I = imread("../foreground.png");
J = imread("../background.png");

J = imresize (J, [rows(I) columns(I)]);

fig = figure(1);

subplot(1,2,1),imshow(I);

subplot(1,2,2),imshow(J);

print(fig,"../result/result_2_1.jpg")