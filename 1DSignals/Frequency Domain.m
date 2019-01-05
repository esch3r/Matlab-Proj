t=-1:0.001:1;
x=sin(2*pi*50*t);
g = 5*cos(pi*40*t)+3*cos(pi*20*t)+1*cos(pi*10*t)+x;
subplot(211)
plot(t(1001:1200),g(1:200))
grid
title('Sin(2\pi50t)')
xlabel('Time, s')
subplot(212)
X=abs(fft(g));
X2=fftshift(X);
f=-499.9:1000/2001:500;
plot(f,X2);
grid
title(' Frequency domain representation of Sin(2\pi50t)')
xlabel('Frequency, Hz.')
