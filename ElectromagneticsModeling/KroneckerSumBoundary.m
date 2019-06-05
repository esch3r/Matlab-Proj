nx = 10; % number of grid points in the x-direction;
ny = 15; % number of grid points in the y-direction;
ex = ones(nx,1);
Dxx = spdiags([ex -2*ex ex], [-1 0 1], nx, nx); %1D discrete Laplacian in the x-direction ;
ey = ones(ny,1);
Dyy = spdiags([ey, -2*ey ey], [-1 0 1], ny, ny); %1D discrete Laplacian in the y-direction ;
L = kron(Dyy, speye(nx)) + kron(speye(ny), Dxx) ;