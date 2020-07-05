function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
  

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration   
    size(X)
    size(theta)
    
    h = X*theta;
    a=h-y;
    temp=X'*(a);
    temp=temp*(alpha/m);
    theta=theta-temp;
    
   
    %for i= 1:length(theta);
    #error=(h-y)*X(i);
    #a(i)=1/(m)*alpha*sum(error); 
    #theta(i)=theta(i)-a(i)
    J_history(iter) = computeCost(X, y, theta);
endfor
    
      
    

end
