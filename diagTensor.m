function [D] = diagTensor(x,y,z) 
  J = [x;y;z]; 
  [M,N] = size(J); 
  for i=1:N
     D(:,:,i) = diag(J(:,i))
  endfor
endfunction
