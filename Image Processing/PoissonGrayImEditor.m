function Targ_filled = PoissonGrayImEditor(Targ, MaskTarg, AdjacencyMat, TargBoundry)

max_iter = 200;
tolerance = 1e-7;

[row_mask, col_mask] = find(MaskTarg);
boundary = TargBoundry{1};

Np_boundary  = zeros(size(boundary, 1), 1);
sum_boundary = zeros(size(boundary, 1), 1);
for k = 1:size(boundary, 1),
    %Calc Neighbour outside - at most 4 but unlikely - usually 1 for 4
    %connected
    [xy_pos] = boundary(k, :);
    Np_boundary(k) = sum(sum(~MaskTarg(xy_pos(1)-1:xy_pos(1)+1, xy_pos(2)-1:xy_pos(2)+1)&[0 1 0;1 1 1; 0 1 0]));
    mat = Targ(xy_pos(1)-1:xy_pos(1)+1, xy_pos(2)-1:xy_pos(2)+1);
    sum_boundary(k) = sum(mat(~MaskTarg(xy_pos(1)-1:xy_pos(1)+1, xy_pos(2)-1:xy_pos(2)+1)&[0 1 0;1 1 1; 0 1 0]));
end

num_of_hole_pixels = size(row_mask, 1);

[is_boundary, boundary_list_idx] = ismember([row_mask, col_mask], boundary, 'rows');

A = sparse(diag(ones(1, num_of_hole_pixels)*4));

%subtract neighbor connections (Laplace with a 4-conn neighborhood)
A = A - AdjacencyMat;

%now we create b
%we assume that Targ has Gx+Gy pasted within the hole defined by MaskTarg
b = Targ(sub2ind(size(Targ), row_mask, col_mask));
% b = zeros(num_of_hole_pixels, 1);
boundary_list_idx(boundary_list_idx==0) = [];%remove zero entries
b(is_boundary) = b(is_boundary) + sum_boundary(boundary_list_idx);

%Starting point
x0 = mean(sum_boundary./Np_boundary)*ones(num_of_hole_pixels, 1);
%Solve using conjagant gradient descent
X = cgs(sparse(A), b, tolerance, max_iter, [], [], x0);

Targ_filled = Targ;
%fill in mask with result, clipp with zero from below to prevent small
%negative numbers
Targ_filled(sub2ind(size(Targ), row_mask, col_mask)) = max(X, 0);

end

