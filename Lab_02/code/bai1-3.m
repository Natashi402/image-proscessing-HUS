pkg load image;
clear all;

I = imread("../GreenVietnam.png");

s = 8;
m = rows(I);
n = columns(I);

J = zeros( round(m/s), round(n/s), 3);

X = rows(J);
Y = columns(J);

for b = 1 : 3

  A = I(:,:,b);
  B = zeros(X,Y);

  for r = 1 : X

    for c = 1 : Y
      
      S = A(r*s - s + 1: r*s,c*s - s + 1: c*s);
      mean_a = mean(mean(S));
      B(r,c) = mean_a;

    endfor

  endfor

  J(:,:,b) = mat2gray(B);

endfor

imwrite (J, "../result/result_1_3.png");

% imshow(J)