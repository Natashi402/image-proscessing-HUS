pkg load image;

T = imread("../result/result_1_1.jpg");

% function reusult = dilation(Image,Kernel)
    
%     img_row = rows(Image);
%     img_col = columns(Image);

%     kernel_row = rows(Kernel);
%     kernel_col = columns(Kernel);

%     result = zeros(     img_row + floor(kernel_row / 2)  
%                         ,img_col + floor(kernel_col / 2)
%     );

%     rows(result)
%     columns(result)

%     for row = 1 + kernel_row : img_row + kernel_row
%         for col = 1 + kernel_col : img_col + kernel_col
%             if( Image(row - kernel_row , col - kernel_col) == 1 )
%                 for i_row =  row - floor(kernel_row / 2) : row + floor(kernel_row / 2) 
%                     for i_col = col - floor(kernel_col / 2): row + floor(kernel_col / 2)
%                         result(i_row,i_col) = 1;
%                     endfor
%                 endfor
%             endif   
%         endfor
%     endfor

%     rows(result)
%     columns(result)

%     R = result(
%         floor(kernel_row/2) : kernel_row + img_row,
%         floor(kernel_col/2) : kernel_col + img_col
%     );

%     result = R;

% end

% Kernel_1 = ones(5,5);
% Kernel_2 = ones(3,3);

se_1 = strel('square',5);
se_2 = strel('square',3);

S = imdilate(T,se_1) - imdilate(T,se_2);

imwrite(S,"../result/result_1_2.jpg");