% Problem 3
% Date: 04.28.19  
% Due: 05.02.19

subplot(2,2,1);
gh2 = tf([0.5 1],[1]);
nyquist(gh2);

subplot(2,2,2);
gh3 = tf([1 4],[1 5 25]);
nyquist(gh3); 

subplot(2,2,3); 
gh4 = tf([30 240],[1 6 8 0]);
nyquist(gh4);


subplot(2,2,4); 
gh1 = tf([1],[1 5/2 1]);
nyquist(gh1);
 
 
 