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

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

n = rows(theta);
h_x = X*theta;
term = (h_x-y).^2;
reg = (lambda/(2*m))*sum(theta(2:n).^2);
J = (1/(2*m))*sum(term) + reg;

grad(1) = (1/m) * sum((h_x-y)'*X(:,1));
for j=2:n;
	grad(j) = (1/m) * sum((h_x-y)'*X(:,j)) + (lambda/m)*theta(j);
endfor

%grad(1) = (1/m) * sum((h_x-y)'*X(:,1));
%grad(2:n) = (1/m) * sum((h_x-y)'*X(:,2:n)) + (lambda/m)*theta(2:n);




% =========================================================================

grad = grad(:);

end
