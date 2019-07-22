
% Made 07.22.19  By Johnathan Machler
% This script preforms convolution using random matrix theory!
function[]  =  FreeConv (x,y)
hist(eig(x));  % Get distribution of the x matrix
subplot(3,1,1);
hist(eig(y));  % Get distribution of the y matrix 
subplot(3,1,2)
 n = size(x,1)
 Q= qr(randn(n,n)); 
 M= x+Q*y*Q'   
hist(eig(M)) % Return this matrix 
subplot(3,1,3);
end 