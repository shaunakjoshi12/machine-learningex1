function [X_norm,mu,sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

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
mu=mean(X);
%disp(mu);
sigma=std(X);

%disp(X_norm);
for iter=1:size(X,2)
    X_norm(:,iter)=(X(:,iter)-mu(iter))/sigma(iter);
    %disp(X_norm(:,iter));
end
%X_norm(:,2)=(X(:,2)-mu(1,2))/sigma(1,2);
%X_norm=0; mu=0; sigma = 0;

%S=sum(X);
%mu(:,1)=S(1,1)./size(X,1);
%mu(:,2)=S(1,2)./size(X,1);
%mu(:,3)=S(1,3)./size(X,1);












% ============================================================

end
