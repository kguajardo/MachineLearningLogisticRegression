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
n = size(grad,1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%              You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%lamba term should not include theta(1)
sumThetaSq = sum(theta.^2) - theta(1)^2;
h = sigmoid(X*theta);
J = (1/m) * (-y'*log(h) - (1-y)'*log(1-h))+ ((lambda/(2*m))*sumThetaSq);

%gradient without regularization term
grad = (1/m)*X'*(h-y);


% Add Lambda term to all but first 
for i= 2:n
  lambdaTerm = (lambda/m)*theta(i);
  grad(i) = grad(i) + lambdaTerm;
 
end;


% =============================================================

end
