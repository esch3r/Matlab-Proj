clc
pkg load image 
pkg load statistics


image= imread("scr2.gif"); % Convert the image to a matrix_type
Gauss = 1/16 *[1 2 1; 2 4 2; 1 2 1]; 
boxblur = 1/9*[1 1 1; 1 1 1; 1 1 1];
 
mat = conv2(image,Gauss);
imshow(mat) 
