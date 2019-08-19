 
 
 function [c] = camo(width,length,j,kernel)
    

                  
    for i=1:j
      p1 = conv2(rand(width,length),kernel); 
    endfor
subplot(2,2,1)
title('1:1');
imshow(p1);   
    
    for i=1:j/10
      p2 = conv2(rand(width/2,length/2),kernel); 
    endfor
subplot(2,2,2)
title('Downsampled 10');
imshow(p2);   
    
 for i=1:j/100
      p3 = conv2(rand(width/4,length/4),kernel,'same'); 
 endfor  
subplot(2,2,3)
title('Downsampled 100');
imshow(p3); 
    
  for i=1:j/1000
    p4 = conv2(rand(width/8,length/8),kernel,'same'); 
  endfor
subplot(2,2,4)
imshow(p4); 

  
 endfunction
