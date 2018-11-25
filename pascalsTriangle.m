function P = pascalsTriangle(N)
  % generate a matrix having ones in its diagonal and first column
  P = eye(N);
  P(:, 1) = 1;
  
  % loop through the items and summarize the elements above them
  for j = 3 : N
    for i = 2 : N - 1
      P(j, i) = P(j - 1, i - 1) + P(j - 1, i);
    end
  end
end