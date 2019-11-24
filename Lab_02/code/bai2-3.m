pkg load image;
clear all;

I = imread("../foreground.png");
J = imread("../backgroundResize.png");

I_red   = I(:,:,1);
I_blue  = I(:,:,2);
I_green = I(:,:,3);

function bin = binary(A)
    k = 120;
    bin = zeros(rows(A),columns(A));
    for i = 1:rows(A)*columns(A)
        if( A(i) > k ) 
            bin(i) = 1;
        endif
    endfor
endfunction

I_red_binary   =  binary(I_red);
I_blue_binary  =  binary(I_blue);
I_green_binary =  binary(I_green);

M = I_red_binary.*I_blue_binary.*I_green_binary;
N = not(M);

for channel = 1:3
    result(:,:,channel) = mat2gray(M.*J(:,:,channel) + N.*I(:,:,channel));
endfor

imwrite(result,"../result/result_2_3.png");

