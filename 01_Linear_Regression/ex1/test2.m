
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);
[X mu sigma] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];

% Choose some alpha value
alpha = 0.01;
num_iters = 400;

% Init Theta and Run Gradient Descent 
theta = zeros(3, 1);

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

thetas_before=size(theta)
h = X*theta
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    h = X*theta
    
    delta =( 1/m * (h - y)' * X)';
    theta = theta - alpha * delta; 





%
%    % ============================================================
%
%    % Save the cost J in every iteration    
%    J_history(iter) = computeCost(X, y, theta);

end
deltas=size(delta)
thetas=size(theta)
x2s=size(X(:,2))

