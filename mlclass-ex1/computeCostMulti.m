function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% My steps:
% Compute (X*theta - y)
fac = X*theta - y;
J = (1/(2*m))*(fac'*fac);

%h = X * theta;
%dif = h - y;
%dif_sqr = dif.^2;
%q = sum(dif_sqr);
%J = q/(2*m);



% =========================================================================

end
