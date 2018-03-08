R= 5;
r=1;
u= linspace(0,2*pi,100);
v= linspace (0,2*pi,100);

[u,v]= meshgrid(u,v);

x= (R+r.*cos(v))*cos(u);
y=(R+r.*cos(v))*sin(u);
z=r.*sin(v);

mesh(x,y,z)