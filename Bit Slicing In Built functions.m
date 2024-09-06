%Builtin functions
 A=imread('/MATLAB Drive/1.jpg');
 
 B=bitget(A,1);
 figure,
 subplot(2,2,1);imshow(logical(B));title('Bit plane 1');
 
 B=bitget(A,2);
 subplot(2,2,2);imshow(logical(B));title('Bit plane 2');
 
 B=bitget(A,3);
 subplot(2,2,3);imshow(logical(B));title('Bit plane 3');
 
 
 B=bitget(A,4);
subplot(2,2,4);imshow(logical(B));title('Bit plane 4');
