% By Johnathan Machler
% Date: 11.19.18
pkg load control
function [Hs] = transferfunct(num,den,k)
Hs = tf(num,den)
% stacked function
subplot(2,1,1);
rlocus(Hs)
subplot(2,1,2)
pzmap(Hs)
endfunction