function [J, grad] = cost_func_i_created(theta, X, y, lambda)
  m = length(y);
  J = 0;
grad = zeros(size(theta));
a=X*theta;
h=sigmoid(a);
b=h-y;
error= y.*log(h) + (1-y).*log(1-h);
J= -1/(m)*sum(error);
temp=X'*b;
grad=1/(m)*temp;
size(grad)

end
