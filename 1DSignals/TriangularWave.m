% Program to give partial Fourier sums of a
% Triangular wave of 2 Vpp amplitude
n_max = input('Enter vector of highest harmonic values desired (odd):');
f = 1;
N = n_max;
t = 0:0.002:1;
omega_0 = 2*pi*f;
x=zeros(size(t));
n=1:1:N
a_n=zeros(size(n));
for i=1:(N+1)/2;
k=2*i-1;
a_n(k)=-8/(pi^2*k*k);
% This part is for plotting the Magnitude
figure(2)
subplot(2,1,1);
stem(a_n);
xlabel('Integer Multiple of Fundamental Frequency'); 
ylabel('Amplitude')
grid;
% This part is for plotting the partial Fourier sum
x=x+a_n(k)*cos(omega_0*k*t);
subplot(2,1,2),plot(t,x),xlabel('t'),ylabel('partial sum');
axis([0 1 -1.5 1.5]),text(0.05,-0.5,['max.har.=',num2str(k)]);
grid;
end 
