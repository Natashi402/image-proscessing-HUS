pkg load image;

I = imread("../fence.png");

T = rgb2gray(I);

SE = zeros(101,101);

for i = 1 : rows(SE)
    for j = 1 : columns(SE)
        if (i == 51 || j == 51) 
            SE(i,j) = 1;
        endif
    endfor
endfor

A = imerode(T,SE);

B = zeros(rows(A),columns(A));

for i = 1 : rows(A)
    for j = 1 : columns(A)
        if ( A(i,j) > 200 ) 
            B(i,j) = 1;
        endif
    endfor
endfor

fig = figure(1);

subplot(1,3,1),imshow(I);

subplot(1,3,2),imshow(A);

subplot(1,3,3),imshow(B);

print(fig,"../result/result_2.jpg")

