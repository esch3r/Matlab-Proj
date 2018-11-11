


A = checkerboard(50); 
figure(1); 
imshow(A);
title('Inputed Image');

wavelength=20; 
orientation=[0 45 60 275]; 
g = gabor(wavelength,orientation); 
outMag = imgaborfilt(A,g);

outSize = size(outMag); 
outMag = reshape(outMag,[outSize(1:2),1,outSize(3)]); 
figure, montage(outMag, 'DisplayRange',[]); 
title('Montage of gabor magnitude output images.'); 
