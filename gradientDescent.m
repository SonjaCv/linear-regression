function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters,

temp_Theta = theta;

for thetaRow = 1:2,
sumOfValues = 0;
for i = 1:m,
sumOfValues = sumOfValues + (theta(1, 1) * X(i, 1) + theta(2,1) * X(i,2) - y(i)) * X(i,thetaRow);
end;
temp_Theta(thetaRow,1) = theta(thetaRow,1) - alpha * 1 / m * sumOfValues;

 end;
theta = temp_Theta;
    

fprintf('Theta values: %f  %f\n', theta(1), theta(2));

    
    J_history(iter) = computeCost(X, y, theta);
	fprintf('\nCost function  %f ', J_history(iter));
	

end

end
