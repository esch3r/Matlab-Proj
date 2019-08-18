
% DCT
N = 32;
x=0:N-1;
y=0:N-1;
u = 1;
v = 4;
au = sqrt(2/N);
av = sqrt(2/N);
if u==1
 au = sqrt(1/N);
end
if v==1
 av = sqrt(1/N);
end
gx = au*cos((2*x+1)*u*pi/(2*N));
gy = av*cos((2*y+1)*v*pi/(2*N));
figure, plot(x,gx);
figure, plot(y,gy);
g = gx'*gy;
figure, surf(g);
