b% 2D basis function for fourier transform
% Date: 7/27/2018
% Name: Johnathan Machler
function im = bf(m,n) 
  
  N =64; 
  [x,y] = meshgrid(0:(N-1),0:(N-1)); 
  im = real(exp(-j*2*pi*(m*x/N+n*y/N))); 
  
  if (m==0) && (n==0) 
      im = round(im); 
      im =im+im;
  endif
endfunction
