%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hessian Critical points Version 1.1
% Date:  7.19.2018
% By Johnathan Machler
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Range of values in a grayscale image 0 to 255 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
pkg load image 
pkg load statistics

image= imread("wat1.gif"); % Convert the image to a matrix_type


Dx = [1 1 1; 0 0 0; -1 -1 -1]; % derviative operator 
Sobel = [ 1 0 -1; 2 0 -2; 1 0 -1]; % Y sobel 
Dy= Dx'; % Transpose X derviative 


Gx= conv2(image,Dx); 
Gy= conv2(image,Dy); 
Sobel = conv2(image,Sobel); 


title('Image Gradient in X-direction');
imshow(Gx);
figure(1)
imshow(Gy);
figure(2)
imshow(Sobel); 
figure(3)

Gxx = conv2(Gx,Dx);
Gyy = conv2(Gy,Dy); 
Gxy = conv2(Gx,Dy); 
Gyx = conv2(Gy,Dx);

H = [ Gxx Gxy; Gyx Gyy]; % 'Global' Hessian matrix for finding critical points
%[V,Lambda] = eig(H); % Eigendecomposition
[U,S,V] = svd(H); % Singular value decomposition since it is a non square matrix
% reject eigenvalues  if tr(H^2)/det(H)> 10
% Categorizing eigenvalues yeilds way of invariant detection 
% of edges, corners and 'blobs'


% Image 
Mag = ceil(sqrt(Gx.^2+Gy.^2));  %Magnitude matrix of all amplitudes
figure
imshow(Mag);
Theta = atan(rdivide(Gy,Gx)); 
ThetaAngle = Theta.*180/pi; % Angle matrix in degrees

% need to smooth the curve of the distribution 
hist(ThetaAngle,8)
%endfunction 
