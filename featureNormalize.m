function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));
m = size(X,1);

mu = [mean(X(:,1)) mean(X(:,2))];
%%mu(1,2) = mean(X(:,2));
sigma = [(max(X(:,1)) - min(X(:,1))) (max(X(:,2)) - min(X(:,2)))]; %%[std(X(:,1)) std(X(:,2))];
%%sigma(1,2) = std(X(:,2));
for i = 1:m,
%for j = 1:2,
%%fprintf('X(%d,%d)=%f, mu(%d,%d)=%f, sigma(%d,%d)=%f...\n', i,j,X(i,j),1,j,mu(1,j),1,j,sigma(1,j));
X_norm(i,1) = (X(i,1) - mu(1,1))/sigma(1,1);
X_norm(i,2) = (X(i,2) - mu(1,2))/sigma(1,2);
%end;
end;


end
