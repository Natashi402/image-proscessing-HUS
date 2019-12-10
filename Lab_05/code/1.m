pkg load image;

clear all;

I = rgb2gray(imread("../Image25.jpg"));

H = rows(I);
W = columns(I);

A = [
    0,1,1,1,0;
    1,2,2,2,1;
    1,1,5,1,1;
    1,2,2,2,1;
    0,1,1,1,0;
];

B = zeros(H-5,W-5);

for i = 3: H - 2
    for j = 3 : W - 2
        
        nei = I( 
            i-2 : i+2 , 
            j-2 : j+2 
        );

        mea = [];

        for x = 1 : 25 
            mea = [ 
                ones( A(x) , 1) * nei(x),
                mea
            ];
        endfor
        
        B(i-2,j-2) = median(mea);
        
    endfor
    i
endfor

imwrite(B,"../result/hieubui.png");