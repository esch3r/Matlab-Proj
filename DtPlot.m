nx =-2:8; 
nh =0:12; 
h = tri((nh-6)/4); 
y = conv(x,h); 

ny = (nx(1)+nh(1))+(0:(length(nx)+length(nh)-2)); 

subplot(3,1,1); 
stem(nx,h,'k','filled'); 
xlabel('n'); 
ylabel('x'); 
axis([-2,20,0,4]); 