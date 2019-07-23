%Geometric Brownian:
% this displays outcomes of the N-steps of Geometric Brownian motion
function [X] = GBM(N ,mu, sigma, T)
t = (0:1:N)’/N; % t is the column vector [0 1/N 2/N ... 1]
W = [0; cumsum(randn(N,1))]/sqrt(N); % W is running sum of N(0,1/N) variables
t = t*T;
B = W*sqrt(T);
Y = (mu-(sigma^2)/2)*t + sigma * B;
X = exp(Y);
hold on;
plot(t,X); % plot the path
plot(t,exp(mu*t),’r’)
axis([0 T 0 max(1,exp((mu-(sigma^2)/2)*T+2*sigma))])
title([int2str(N) ‘-step geometric Brownian motion ‘])
xlabel([’mu = ‘ num2str(mu) ‘ and sigma= ‘ num2str(sigma)])
BMI paper Stock price modelling: Theory and practice
- 38 -
hold off;
%Simulation of stock price paths
function [S, t]=stockPrice(s0, mu, sig, n); %displays n random paths of future price up t
% s0 is the initial price,
%mu the annual growth rate,
%sig the volatility
% This simulation is going in steps of 1 day at a time and n is the number
% of simulated paths of the stock price
x=load(‘hp05.m’); %load the actual stock price
h=252;
dt=1/h;
S(1)=s0;
t(1)=0;
for i=1:1000
for j=1:1:n % The following value of the stock is evaluated
S(j+1)=S(j)*exp((mu-sig^2/2)*dt+sig*sqrt(dt)*randn );
t(j+1)=j;
end;
plot(t,S);
hold on;
end
plot(x,’-r’);
xlabel(‘day’)
ylabel(‘price’)
title(‘ HP stock price in 2005’)
hold off;
