close all 
im = imread("Lenna.png"); 
imshow(im) 
pause 
im(:,:,1)  =  0; 
im (:,:,2) =0; 
figure
imshow(im/4); 
imshow(im)