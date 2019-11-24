pkg load image;

% 1.2. Tìm thành phần liên thông 8 

% global binary_img = J;

% global mark = zeros(rows(binary_img),columns(binary_img));
% global lien_thong_result = zeros(rows(binary_img),columns(binary_img));
% global lien_thong_count = 1;

% max_recursion_depth(800);

% function find_lien_thong(r,c,index_lien_thong)
%     % Khai bao cac bien global
%     global binary_img;
%     global mark;
%     global lien_thong_count;
%     global lien_thong_result;
%     % Ta chi xet cac pixel = 1
%     if ( mark(r,c) == 0 && binary_img(r,c) == 1)
%         % Danh dau thu tu cua lien thong 8
%         lien_thong_result(r,c) = lien_thong_count;
%         % Danh dau la da chay qua pixel nay
%         mark(r,c) = 1;
%         % Tinh toan hang min va max de ko out_of_array
%         min_row = max(r-1,1);
%         max_row = min(r+1,rows(binary_img));
%         % Tinh toan cot min va max de ko out_of_array
%         min_column = max(c-1,1);
%         max_column = min(c+1,columns(binary_img));
%         % Quet qua cac pixel xung quanh
%         for row = min_row : max_row
%             for col = min_column : max_column
%                 % Ta chi quan tam den cac diem 1 xung quanh
%                 if(mark(row,col) == 0)
%                     if(binary_img(row,col) == 1)
%                         % Ap dung thuat toan voi cac diem 1 xung quanh
%                         find_lien_thong(row,col,index_lien_thong+1);
%                     endif
%                 endif
%             endfor
%         endfor
%         % Khi quet de quy den day thi da quet het vung lien thong 8
%         % co chua diem nay, neu la diem dau tien thi ta tang so lien thong len 1
%         if ( index_lien_thong == 0) 
%             lien_thong_count++;
%         endif
%     endif
% endfunction



% % Tim lien thong
% for row = 1 : rows(binary_img)
%     for col = 1 : columns(binary_img)
%         find_lien_thong(row,col,0);
%     endfor
% endfor

% Random number array 1
ran1 = zeros(1,10000);
for i = 1: rows(ran1)*columns(ran1)
    ran1(i) = rand(1)*100;
endfor

% Random number array 2
ran2 = zeros(1,10000);
for i = 1: rows(ran2)*columns(ran2)
    ran2(i) = rand(1)*100;
endfor

% Channels of final image (with M is the position of the result)
M = load("../labelMatrix.txt");
N = zeros(rows(M),columns(M));
K = zeros(rows(M),columns(M));

% Apply random to chanel 1
for i = 1: rows(M)*columns(M)
    if (M(i) != 0)
        N(i) = ran1(1,M(i));
    endif
endfor

% Apply random to chanel 2
for i = 1: rows(M)*columns(M)
    if (M(i) != 0)
        K(i) = ran2(1,M(i));
    endif
endfor


R(:,:,3) = uint8(M);
R(:,:,2) = uint8(N);
R(:,:,1) = uint8(K);

imwrite(R,"../result/bai1/result_1_2.png");