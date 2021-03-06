function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values

m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

theta0 = ones(size(theta));
theta0(1) = 0 ;
%theta0 = (lambda / m) * theta0;
%theta0(1:5)
%theta(1:5)


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

z=X*theta;

h=sigmoid(z);

J=((y'*log(h) + (1-y')*log(1-h))/-m) + (lambda/(2*m) *((theta' * theta) - theta(1)^2));

grad =(((h-y)' * X)'./m) + (lambda / m) * (theta.*theta0);




% =============================================================

end
