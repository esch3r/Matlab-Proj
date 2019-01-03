function[dipytch] = RandomDotSteogram(Img,hshift,x,y)

Gx= conv2(Img,[1,0,-1;2,0,-2;1,0,-1]); % Calculate Edges
BinImg= im2bw(Gx, graythresh (Img(:), "moments")); % Convert Image to 1s & 0s

% First compose a dipytch 
region1 = rand(x,y);
region2 = region1;

subplot(2,1,1)
imshow(region1);
title('Original Image');


%Etch pattern
Graft = BinImage.*region1;  % multi image by 1 
Etch=imcomplement(BinImage).*region1;%multiply image by 0

%Shift Etch horizontally
Graft=imtranslate(Graft,hshift,0);

% Convert spot where it is to be placed to zeros


% Replace Etching on one of regions
diptych = [region1, region2]; 
figure(1)

subplot(2,1,2)
imshow(diptych); 

title('RandomDotSteogram','FontSize', 24);
axis on;
axis image;
endfunction 
