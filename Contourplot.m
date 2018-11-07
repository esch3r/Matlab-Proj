[X,Y] = meshgrid([-2:.25:2]);
Z =2.*X.^2+4*cos(pi/2*Y);
contour3(X,Y,Z,30)
surface(X,Y,Z,'EdgeColor',[.8 .8 .8],'FaceColor','none')
grid off
view(-15,25)
colormap cool
