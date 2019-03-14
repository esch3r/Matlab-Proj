
function [ ] =  Rootlocus(Tau)
s = zpk(0, [],1)
Gc = 5+0.3*s+5/(Tau*s)  % PID controller a.k.a conpensator
G = tf(1, [0.01 0.11 0.1])  % Transfer function of the plant 
closedLoop = feedback(Gc*G, 1); 

subplot(2, 1, 1)
pzmap(closedLoop) % Pole zero map

subplot(2, 2, 1)
step(closedLoop) % Transient response
endfunction 