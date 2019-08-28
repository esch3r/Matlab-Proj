% By Johnathan Machler
% Usually takes about  ~ 1000 iterations 

function[value] = jacobiconv (M,N,tol,err)

k=0; % set k to 0 
% Define region
c(1:M)=30; % Top boundary
e(1:M)=20;  % Bottom boundary
d(1:N)=-25;  % Right boundary
b(1:N)=50;   % left boundary
a = zeros(N,M); % Unknown region

% Partitioned matrix  containing the boundaries
% Notice that the corners of the matrix are zero
u = [0,c,0;  
     b',a,d';
     0,e,0];  
       
while err > tol
k = k+1;
updu = conv2(u,[1/8 1/8 1/8; 1/8 0 1/8 ; 1/8 1/8 1/8], 'same'); % 2D convolution between 
err = sqrt (sum(sum((updu-u).^2)));

u = updu;
end 

surf(updu);
zlabel ('Voltage');
xlabel ('X-axis');
ylabel ('Y-axis');
title('Four Plate Capacitor -Boundary Value Problem'); 
end
