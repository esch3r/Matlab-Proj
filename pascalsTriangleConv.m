function P = pascalsTriangleConv(N)
  baseVector = [1];           % base function
  generatorVector = [1 1];    % generator function
  
  % create output matrix
  P = zeros(N);
  
  % loop through each row
  for i = 1 : N
    % store the actual base vector in the matrix
    P(i, 1 : i) = baseVector;
    
    % update the base vector: generate the next row by convolution
    baseVector = conv(baseVector, generatorVector);
  end
end