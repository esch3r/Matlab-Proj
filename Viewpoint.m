
% Example of changing 3D perspective 

function [] = Viewpoint(az,el)
theta = (0:1:36)*pi/18;
rho = [0 1]';
x = rho*cos(theta)*sin(pi/6);
y = rho*sin(theta)*sin(pi/6);
z = rho*ones(size(theta))*cos(pi/6);
cone = surf(x,y,z);
axis square

c1 = [1 1]'*cos(theta);  % setting colors
set(cone,'CData',c1); % 
hold on
phi = (0:1:6)'*pi/36; 
X = sin(phi)*cos(theta); 
Y = sin(phi)*sin(theta); 
Z = cos(phi)*ones(size(theta)); 
cap = surf(X,Y,Z); 

c2 = (2:1:8)'*cos(theta)/8;  % set color matrix to match bottom cone 
set(cap,'CData',c2)

view(az, el); 
endfunction
