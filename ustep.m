function y = ustep(t, t0)
%USTEP(t, t0) unit step at t0
% A unit step is defined as
% 0 for t <>
% 1 for t >= t0
[m,n] = size(t);
% Check that this is a vector, not a matrix i.e. (1 x n) or (m x 1)
if m ~= 1 & n ~= 1
error('T must be a vector');
end
y = zeros(m, n); %Initialise output array
for k = 1:length(t)
if t(k) >= t0
y(k) = 1; % Otherwise, leave it at zero, which is correct
end
end
