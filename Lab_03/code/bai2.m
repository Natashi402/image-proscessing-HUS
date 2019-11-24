pkg load image;

I = imread("../fence.png");

G = imread("../noiseSP.png");

for channel = 1:3

    sub_I = I(:,:,channel);

    F(:,:,channel) = uint8(sub_I.*not(G));

endfor

fig = figure(1);

subplot(1,2,1),imshow(I);

subplot(1,2,2),imshow(G);

print(fig,"../result/bai2/result_2_1.jpg")

imwrite(F,"../result/bai2/result_2_2.jpg")