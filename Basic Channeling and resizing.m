% Clear workspace and close all figures
clear
close all

% Read the image
img = imread('cameraman.tif');


% Get image dimensions
[height, width, channels] = size(img);

% Extract color channels
if channels == 3
    red_channel = img(:, :, 1);
    green_channel = img(:, :, 2);
    blue_channel = img(:, :, 3);
else
    red_channel = img;
    green_channel = img;
    blue_channel = img;
end

% Display original image and color channels
figure('Name', 'Original Image and Color Channels')
subplot(2, 2, 1)
imshow(img)
title('Original Image')

subplot(2, 2, 2)
imshow(red_channel)
title('Red Channel')

subplot(2, 2, 3)
imshow(green_channel)
title('Green Channel')

subplot(2, 2, 4)
imshow(blue_channel)
title('Blue Channel')

% Display montage of original image and color channels
figure('Name', 'Montage')
montage({img, red_channel, green_channel, blue_channel})

% Resize image
new_height = 300;
new_width = 400;
resized_img = imresize(img, [new_height, new_width]);

% Display resized image
figure('Name', 'Resized Image')
imshow(resized_img)
title('Resized Image')
