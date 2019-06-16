



% Generally need over 1000 to get it to converge to a solution
% Created by: Johnathan Machler 
% Date 11.10.18

function [a] = boundary (M,N,j)
c(1:M) =30;
e(1:M)= 20; 
d(1:N)=25; 
b(1:N)=50; 
a=zeros(N,M); 

u=[0,c,0; b',a,d'; 0,e,0];
surf(u)

for i=1:j
  updu2= conv2(u,[1/8,1/8,1/8;1/8,0,1/8;1/8,1/8,1/8],'same');
  u=[0,c,0; b',a,d'; 0,e,0]+updu2;

if i==j/2
subplot(2,2,1)
surf(updu2); 
xlabel('x-axis'); 
ylabel('y-axis'); 
zlabel('Voltage');
title(['Number of iterations:',j])

subplot(2,2,2)
contour(updu2);
colorbar
xlabel('x-axis'); 
ylabel('y-axis'); 
title('Equipotential voltage lines - Moore neighborhood 3*3');

end
end

for i=1:j
  updu1= conv2(u,[0,1/4,0;1/4,0,1/4;0,1/4,0],'same'); 
  u=[0,c,0; b',a,d'; 0,e,0]+updu1;
  
if i==j/2
subplot(2,2,3)
surf(updu1);
xlabel('x-axis'); 
ylabel('y-axis'); 
zlabel('Voltage'); 
title(['Number of iterations:',j])

subplot(2,2,4)
contour(updu1);
colorbar
xlabel('x-axis'); 
ylabel('y-axis'); 
title('Equipotential voltage lines - Von Neumann neighborhood 3*3');

end
end

end 






