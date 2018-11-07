function outvol = nestedvolume(len, wid, ht) 
  % demostrates a nested function 
  
  outvol = base*ht; 
  function outbase = base 
    outbase = len*wid; 
   
  endfunction % base function 
endfunction % nested volume function 
