function[output] = VectNeuralNet(X, y, iter) 

%initialize theta to random values
theta1 = rand(3,3);
theta2 = rand(1,3);

% Assign the transposed input to the input layer
a{1} = X'; 

%loop to carry out gradient descent iter times
for i=1:iter
  
  %forward propagation 
  
 a{2} =1. /(1+e.^-(theta1*a{1}));
 a{3}=1. /(1+e.^-(theta2*a{2}));
 
 %back propagation to calculat error
 error3 = a{3} - y'; 
 error2= (theta2'*error3) .* a{2} .*(1-a{2});
 
 %subtract partial derivatives from theta
 theta1 = theta1 -(error1*a{1}'); 
 theta2 = theta2 - (error3*a{2}');
 
endfor
 output=a{3}; 
endfunction 