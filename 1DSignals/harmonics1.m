f0=10; % Define the frequency of the
 t = 0:0.001:1;
harm1 = cos(2*pi*10*t);
harm2 = 2*cos(2*pi*20*t+45/180*pi);
signa2 = harm1 + harm2;
harm3 = 1*cos(2*pi*30*t+60/180*pi);
signa3 = signa2 + harm3
figure(1)
subplot(5,1,1); plot(t,harm1)
subplot(5,1,2); plot(t,harm2)
subplot(5,1,3); plot(t,harm3)
subplot(5,1,4); plot(t,signa2)
subplot(5,1,5); plot(t,signa3)