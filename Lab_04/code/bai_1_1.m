pkg load image;

th = 120;

I = imread("../coneDetection.jpg");

G = rgb2gray(I);

K = zeros(rows(G),columns(G));

for i = 1 : rows(G)*columns(G)
    if ( G(i) > th)
        K(i) = 1;
    endif
endfor

imwrite(K,"../result/result_1_1.jpg");