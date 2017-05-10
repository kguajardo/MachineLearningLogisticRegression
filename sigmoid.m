function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
numCol = size(z,2);
numRow = size(z,1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
for i= 1:numRow
  for j= 1:numCol
    g(i,j) = 1/(1+e^-z(i,j));
  end
end




% =============================================================

end
