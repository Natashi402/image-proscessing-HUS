pkg load image;
clear all;

I = imread("../GreenVietnam.png");

I_red = I(:,:,1);
I_blue = I(:,:,2);
I_green = I(:,:,3);

convo = [    0  , -1,   0;
            -1  ,  5,  -1;
             0  , -1,   0   ];

result_convo(:,:,1) = I_red   + uint8(conv2(I_red,convo,"same"));
result_convo(:,:,2) = I_blue  + uint8(conv2(I_blue,convo,"same"));
result_convo(:,:,3) = I_green + uint8(conv2(I_green,convo,"same"));

fig = figure(1);

subplot(2,2,1),imshow(I);

subplot(2,2,2),imshow(result_convo);

subplot(2,2,3),imhist(I);

subplot(2,2,4),imhist(result_convo);

print(fig,"../result/result_1_1.jpg")

% imwrite(result_convo,"../result/result_convo.png");

