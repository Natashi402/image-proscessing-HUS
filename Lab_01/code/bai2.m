lionHSV = imread("../lionHSV.jpg");

h = lionHSV(:,:,1);
s = lionHSV(:,:,2);
v = lionHSV(:,:,3);

h_but_double = im2double(h);

for index = 1 : rows(h_but_double)*columns(h_but_double)
    if (h_but_double(index) < 0.22)
        h_but_double(index) = 0;
    elseif (h_but_double(index) > 0.45)
        h_but_double(index) = 0;
    else 
        h_but_double(index) = 1;
    endif
endfor

imwrite(h_but_double,'../Result_HS/bai2.jpg');