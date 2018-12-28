function [code] = hillcipher(stringn,key)
  Msg= double(stringn)-64; 
  [m,n]= size(key);
  [j,k]= size(Msg);  
  
  Msg = reshape(Msg,[n,k])
  key = reshape(key,[2,3]); 
  Encrypt= key*Msg;
  Encrypt = mod(Encrypt,26); 
endfunction

