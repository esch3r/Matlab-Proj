function [f,n] = gausswindow(s,n)
  
  if nargin<2
    n=ceil(2*s); 
  endif
  x =-n,n
  [Y,X] = meshgrid(x,x); 
  f = exp(-(X.^2+Y.^2)/(2*s^2)); 
  
endfunction
