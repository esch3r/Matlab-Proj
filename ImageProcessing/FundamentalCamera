function ret = FundamentalCamera(K1, K2, R, t)
  A = K1 * R' * t
  C = [0 -A(3) A(2); A(3) 0 -A(1); -A(2) A(1) 0]
  ret = (inverse(K2))' * R * K1' * C
endfunction
