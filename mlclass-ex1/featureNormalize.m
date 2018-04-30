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
%=============================================================
% 矩阵的维数是 m * n 
% 其中n = the number of features, m = the number of training examples 
% dim(mu) = 1 * n =  dim(sigma)
% size 函数 获得行或者列的数目 
% 其中size(index1, index2) 
% index1代表矩阵, index2有两个参数1代表行数， 2代表列数
%=============================================================
% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

num_features = size(X,2);

for x=1:num_features,
  mu(x) = mean(X(:,x));
  sigma(x) = std(X(:,x));
  X_norm(:,x) = (X_norm(:,x)-mu(x))/sigma(x);
end;








% ============================================================

end
