lion = imread("../lion.jpg");
lionHSV = imread("../lionHSV.jpg");

a = horzcat(lion,lionHSV);

imwrite(a,'../Result_HS/bai1].jpg');
