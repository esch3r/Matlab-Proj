t=[0:0.1:15]
x1 = 5*sin((pi/4)*t)
x2 = 3*cos((pi/7)*t)
% Plotting the signals
subplot(2,4,1)
plot(x1)
title('x1 = 5 sin(pi/4)t ')
xlabel(' time (sec) ')
ylabel('x1 (volts) ')
subplot(2,4,2)
plot(x2)
title('x2 = 3 cos(pi/7)t ')
xlabel(' time (sec) ')
ylabel('x2 (volts) ')
% Addition
y1 = x1 + x2
y2 = x1 - x2
y3 = x1 .* x2
y4 = x1 ./ x2
y5 = 2*x1
y6 = x1 .^3
% Plotting the signals
subplot(2,4,3)
plot(y1)
title('y1 = x1 + x2 ')
xlabel(' time (sec) ')
ylabel('y1 (volts) ')
subplot(2,4,4)
plot(y2)
title('y2 = x1 – x2 ')
xlabel(' time (sec) ')
ylabel('y2 (volts) ')
subplot(2,4,5)
plot(y3)
title('y3 = x1 * x2 ')
xlabel(' time (sec) ')
ylabel('y3 (volts)^2 ')
subplot(2,4,6)
plot(y4)
title('y4 = x1 / x2 ')
xlabel(' time (sec) ') 
ylabel('x1/x2 ')
subplot(2,4,7)
plot(y5)
title('y5 = 2*x1 ')
xlabel(' time (sec) ')
ylabel('y5 (volts) ')
subplot(2,4,8)
plot(y6)
title('y6 = x1 ^ 3 ')
xlabel(' time (sec) ')
ylabel('y6 (volts)^3 ')