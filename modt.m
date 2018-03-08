R= 3;
r=1;
u= linspace(0,2*pi,20);
v= linspace (0,2*pi,20);

[u,v]= meshgrid(u,v);

x= (R+r.*cos(v))*cos(u);
y=(R+r.*cos(v))*sin(u);
z=r.*sin(u);

mesh(x,y,z)