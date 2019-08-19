function a = checkerboard(n)
a = zeros(n);
for i = 1:n
    for j = 1:n
        if (i == j)
            a (i, j) = 0;
        elseif (mod(j, 2) == 0) && (mod(i,2) == 0)
             a(i,j) = 0;
        elseif (mod(j, 2) == 0) || (mod(i,2) == 0)
            a(i,j) = 1;
        end
    end
end
figure(1)
imshow(a);
title('Checkerboard');
end


