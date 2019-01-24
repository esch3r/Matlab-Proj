% By: Johnathan Machler 
% Date: 01.23.19

pkg load control
pkg load symbolic

G1 = tf([0 4], [0 1]); 
G2 = tf([0 1],[1 2]); 
H = tf([5 0],[0 1]);
Sys = feedback(G1*G2,H) % feedback(forward path,backward path presuming negative)
pole(Sys)' 

rlocus(Sys); 
v=[-6 6 -6 6]; axis(v);axis('square');grid on;
syms s t
ilaplace(Sys, s, t) % Takes inverse laplace transform of symbolic expression
