pkg load image;

% 1.1. Ảnh nhị phân

I = imread("../barCodesDetection.png");

I = rgb2gray(I);

J = zeros(rows(I),columns(I));

for index = 1 : rows(I)*columns(I)
    % I(index)
    if (I(index) < 120)
        J(index) = 1;
    endif
endfor

imwrite(J, "../result/bai1/result_1_1.png");

