clear all
% Written 10.27.17 - 10.29.17  *Working version*
% Finite Difference Method Boundary Problem

% grid resolution parameters
M=4; % 1 unit in the X direction or   h=.125 steps
N=4; %  2 units in the Y direction or 8  h=.125 steps
tol = .0001; % Tolerance
err =1; % Error
k=0;  % set k to 0

% Define region
c(1:M)=10; % Top boundary
e(1:M)=100;  % Bottom boundary
d(1:N)=-10;  % Right boundary
b(1:N)=50;   % left boundary
a = zeros(N,M); % Unknown region

% Partitioned matrix  containing the boundaries
% Notice that the corners of the matrix are zero
u = [0,c,0;  
       b',a,d';
       0,e,0];  

% increment matrix set to matrix just defined
updu=u;

 % iterate jacobi until convergence
 while   err > tol
    	% update iteration counter
     	k=k+1;
    	 
   % Loop through the matrix starting at the left most corner rastering through
   for  j=2:N+1  % inner most y part of the corner wasn't hitting the wall so added plus 1
     	for  i=2:M+1 % inner most x part of the corner iterate out
      	% Five-point stencil "feeds" nearest neighbor average into center of the increment matrix
      	updu(j,i)=0.25*(u(j+1,i)+u(j,i+1)+u(j-1,i)+u(j,i-1));
   	 
    	end
   end



  % Display the surface at the end of the iteration sequence
  surf (updu);
  zlabel ('Voltage');
  xlabel ('X-axis');
  ylabel ('Y-axis');
  disp (updu);


 
  % Calculate error
  err = sqrt (sum(sum((updu-u).^2)));
  disp ('error='); disp (err);
 
  % reset u
  u = updu;
 disp (k);
 disp (u(5,5));  % Voltage evaluated at the point v(.5,.5)
 end
