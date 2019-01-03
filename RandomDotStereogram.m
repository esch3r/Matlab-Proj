
function[dipytch] = RandomDotSteogram(Image,hshift,x,y)

%Viewing angle calculation 
% Determined by depth of view 
% This parameter alters the shift 


% First compose a dipytch 
region1 = rand(x,y);
[m, n] = size(region1)
region2 = region1;

subplot(2,1,1)
imshow(region1);
title('Original Image');

%Etch pattern
Etch(:,:) = region1(x/4:1:x/2,y/4:1:x/2);

%Shift Etch horizontally
Etch =imtranslate(Etch,hshift,0);

% Replace Etching on one of regions

diptych = [region1, region2]; 
figure(1)

subplot(2,1,2)
imshow(diptych); 

title('RandomDotSteogram','FontSize', 24);
axis on;
axis image;
endfunction 