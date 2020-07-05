function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
u=size(theta);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
new_theta=theta(2:u);
b=(new_theta)'*new_theta;
c=lambda*b/(2*m);
h = X*theta;
error=(h-y).^2;
a=1/(2*m)*sum(error);
J=a+c;
q=h-y;
w=X'*q;
r=1/(m)*w;

grad(1)=r(1)
for i=2:u
  grad(i)=r(i) + lambda*theta(i)/m;
endfor













% =========================================================================

grad = grad(:);

end
