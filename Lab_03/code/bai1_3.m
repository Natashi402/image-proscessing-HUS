pkg load image;

J = load("../labelMatrix.txt");
info = load("../info.txt");
result = zeros(rows(J),columns(J));

for i = 1:rows(J)*columns(J)
    if (J(i) > 0)
        
        if( % Do lech tam (Eccentricity) 
                info(J(i),3) > 0.8 && 
            % Chieu dai (Major Axis Length)
                info(J(i),1) > 20  && info(J(i),2) < 120  && 
            % Huong (Orientation)
                info(J(i),2) < -70)
            result(i) = 1;
        endif
    endif
endfor

result = not(result);

imwrite(result,"../result/bai1/result_1_3.png");