t=-1:0.00001:1;
g = 1.5*sin(2000*pi*t);
subplot(211)
plot(t(1001:1200),g(1:200))
grid
title('Sin(\pi 2000 t)')
xlabel('Time, s')
subplot(212)
X=abs(fft(g));
X2=fftshift(X);
% f 
plot(X2);
grid
title(' Frequency domain representation of Sin(2000\pi t)')
xlabel('Frequency, Hz.')
