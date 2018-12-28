%fizzbuzz for two abitary numbers

function [Counter,Q] = Fizzbuzz(n,i,j)
Counter =0;
     for h=1:n
       if  mod(h,i) ==0
         disp(h);
         Counter=Counter+1;
       elseif mod(h,j)==0
         disp(h);
         Counter=Counter+1;
       endif
     endfor
endfunction
