
% Made 07.22.19  By Johnathan Machler
% N is the dimensions of the random matrix 
function[Histogram]  =  Semicircle (n)
M = randn(n,n);
M = (M+M')/(sqrt(2*n)); 
hist(eig(M), "facecolor", "r", "edgecolor", "b")
title('Johns Random Matrix Plot')
end 