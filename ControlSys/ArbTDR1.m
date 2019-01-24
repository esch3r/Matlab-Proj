% By: Johnathan Machler 
% Date: 01.23.19

#Arbitary Response in the time domain
pkg load control


% Parameters via by example 
% t =0:0.1:5;  % Interval of time 
% R = exp(-t/5)
 
function [Sys] = ArbTDR1(t,R)
G1 = tf([0 4], [0 1]); 
G2 = tf([0 1],[1 2]); 
H = tf([5 0],[0 1]);
Sys = feedback(G1*G2,H) % feedback(forward path,backward path presuming negative)
figure(1)
grid on
lsim(Sys,R,t); 
endfunction 
