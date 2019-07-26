  pkg load image
  A = imnoise (2^7 * ones (100, 'uint8'), 'poisson');
  subplot (2, 2, 1)
  imshow (A)
  title ('uint8 image with poisson noise')
  A = imnoise (2^15 * ones (100, 'uint16'), 'poisson');
  subplot (2, 2, 2)
  imshow (A)
  title ('uint16 image with poisson noise')
  A = imnoise (.5 * ones (100), 'poisson');
  subplot (2, 2, 3)
  imshow (A)
  title ('double image with poisson noise')
  A = imnoise (.5 * ones (100, 'single'), 'poisson');
  subplot (2, 2, 4)
  imshow (A)
  title ('single image with poisson noise')