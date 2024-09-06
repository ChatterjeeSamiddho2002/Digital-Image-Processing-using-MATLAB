
clc 
clear all; 
close all; 
clc; 
a=imread('cameraman.tif'); 

[m,n]=size(a) 
b1=[]; 
b2=[]; 
b3=[]; 
b4=[]; 
b5=[]; 
b6=[]; 
b7=[]; 
b8=[];
for i=1:m 
    for j=1:n 
        t=de2bi(a(i,j),8,'left-msb');
        b1(i,j)=t(1,1); 
        b2(i,j)=t(1,2); 
        b3(i,j)=t(1,3);
        b4(i,j)=t(1,4); 
        b5(i,j)=t(1,5); 
        b6(i,j)=t(1,6); 
        b7(i,j)=t(1,7); 
        b8(i,j)=t(1,8); 
    end 
end
subplot(3,3,1); 
imshow(a); 
title('input image','color','b'); 
subplot(3,3,2); 
imshow(b8); 
title('image of bit-1','color','b'); 
subplot(3,3,3); 
imshow(b7); 
title('image of bit-2','color','b'); 
subplot(3,3,4); 
imshow(b6); 
title('image of bit-3','color','b'); 
subplot(3,3,5); 
imshow(b5); 
title('image of bit-4','color','b'); 
subplot(3,3,6); 
imshow(b4); 
title('image of bit-5','color','b');
subplot(3,3,7); 
imshow(b3); 
title('image of bit-6','color','b'); 
subplot(3,3,8); 
imshow(b2); 
title('image of bit-7','color','b'); 
subplot(3,3,9); 
imshow(b1); 
title('image of bit-8','color','b');

