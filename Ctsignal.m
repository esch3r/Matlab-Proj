 t= 0:1/24:10; 
 x = sin( 2*pi*t); 
 xlabel('time (in seconds)');
 ylabel('Amplitude'); 
 title('Signal versus Time');
 figure (1);    % Plots with a delta t resolution of 1/24 
 stem (t,x,'b'); 
 t = 0:1/12:10; 
 x = sin( 2*pi*t);
 xlabel('time (in seconds)');
 ylabel('Amplitude'); 
 title('Signal versus Time'); 
 figure (2);   % Plots with a delta t resolution of 1/12
 stem (t,x,'r'); 
 t= 0: 1/4:10;   
 x = sin( 2*pi*t);
 xlabel('time (in seconds)');
 ylabel('Amplitude'); 
 title('Signal versus Time'); 
 figure(3);   % Plots with a delta t resolution of 1/4
 stem (t,x,'g'); 
 t=0:1/2:10;   
 x = sin( 2*pi*t);
 xlabel('time (in seconds)');
 ylabel('Amplitude'); 
 title('Signal versus Time'); 
 figure(4);   % Plots with a delta t resolution of 1/2
 stem(t,x,'g'); 
 t=0:2/3:10; 
 x = sin( 2*pi*t);
 xlabel('time (in seconds)');
 ylabel('Amplitude'); 
 title('Signal versus Time'); 
 figure(5);   % Plots with a delta t resolution of 2/3
 stem(t,x,'r'); 
 t=0:5/6:10; 
 x = sin( 2*pi*t); 
 xlabel('time (in seconds)');
 ylabel('Amplitude'); 
 title('Signal versus Time');
 figure(6);           % Plots with a delta t resolution of 5/6
 stem(t,x,'b'); 
 t=0:1:10; 
 x = sin( 2*pi*t); 
 xlabel('time (in seconds)');
 ylabel('Amplitude'); 
 title('Signal versus Time');
 figure(7);     % Plots with a delta t resolution of 1
 stem(t,x,'p'); 
 
 