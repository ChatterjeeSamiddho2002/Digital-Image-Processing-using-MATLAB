a = imread('cameraman.tif');
[m, n, p] = size(a);
b1 = a(:, end:-1:1, :); %Horizontal flipping
b2 = a(end:-1:1, :, :); %Vertical flipping
b3 = a(end:-1:1, end:-1:1, :); %Vertical and horizontalflipping
figure;
subplot(2, 2, 1)
imshow(a)
title('Original image')
subplot(2, 2, 2)
imshow(b1)
title('Horizontal flipping')
subplot(2, 2, 3)
imshow(b2)
title('Vertical flipping')
subplot(2, 2, 4)
imshow(b3)
title('Vertical and horizontal flipping')
figure;
montage({a, b1, b2, b3})
