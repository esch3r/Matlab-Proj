tic;
 
% Set the number of simulations
N = 10^6;
 
% Count how many needles intersect a line
numWins = 0;
 
% Run the simulations
for i = 1 : N
    % Create the first point
    x1 = 9 * rand + 1;
    y1 = 9 * rand + 1;
 
    % Set the angle
    theta = 2*pi * rand;
 
    % Create the second point
    x2 = x1 + cos(theta);
    y2 = y1 + sin(theta);
 
    % Check if the needle intersects a line
    criterion = (ceil(min(y1, y2)) == floor(max(y1, y2)));
 
    % Update the count
    numWins = numWins + criterion;
end
 
% Return the probability that a needle intersects a line
p = numWins / N;
 
toc;