% Plotting in spherical coordinates
% [theta,phi,rho] = cart2sph(x,y,z)
 theta = linspace (0,4*pi);
 phi = linspace (0,pi/2);
 [theta,phi] = meshgrid (theta,phi);
 rho = theta/2;
  [x,y,z] = sph2cart (theta,phi,rho);
  surf(x,y,z);
  
  


 
 