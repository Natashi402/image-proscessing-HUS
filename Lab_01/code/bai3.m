lion = imread("../lion.jpg");
M = load("../data.txt");

v1 = M(:,1);
v2 = M(:,2);
v3 = M(:,3);
vb = M(:,4);

for index = 1:rows(vb)
    if(vb(index) == 1)
        v1(index) = 0;
        v2(index) = 0;
        v3(index) = 0;
    endif
endfor

N(:,1) = v1;
N(:,2) = v2;
N(:,3) = v3;

m = rows(lion);
n = columns(lion);
for b = 1:3
    a = zeros(m,n);
    v = N(:,b);
    for j = 1:n
        count = 1;
        for i = (j-1)*m+1 : j*m
            a(count,j) = v(i);
            count = count + 1;
        endfor
    endfor
    clear_green_image(:,:,b) = a;
endfor

lion = imread("../lion.jpg");

result = horzcat(lion,uint8(clear_green_image));

imwrite(result,'../Result_HS/bai3.jpg');
