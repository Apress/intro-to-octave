% Program to perform Gradient Descent ALgorithm

% Clear memory of all variable names and values
clear all;

%Close all existing sessions
close all;

% Define x and y vectors

x = [1:42].'; % Defining a column vector of 42 numbers 
y = [40;49;43;44;34;65;65;98;34;30;24;35;45;76;34;45;54;
65;55;43;48;43;76;45;36;43;65;42;5;67;78;34;67;45;67;56;
87;56;45;46;56;54]; 

m = length(y); % store the number of training examples = m =42
x = [ ones(m,1) x]; % Add a column of ones to x
n = size(x,2); % number of features =n

theta_vec = [0 0]'; % Initial theta vector to start simulation
alpha = 0.002; % alpha is initialized to a small value
err = [0 0]'; % Allowed error

% Now we define a loop to perform updating scheme for gradient descent

for i = 1:10000 % loop runs for 10000 steps
	h_theta = (x*theta_vec); 
	h_theta_v = h_theta*ones(1,n);
	y_v = y*ones(1,n);
	theta_vec = theta_vec - alpha*1/m*sum((h_theta_v - y_v).*x).';
	err(:,i) = 1/m*sum((h_theta_v - y_v).*x).';
end

% Now we plot the results (real and predicted)
figure;
plot(x(:,2),y,'o'); %plot real values of x versus y with 'o' symbol
hold on
plot(x(:,2),x*theta_vec,'r*'); % on above plot, also plot predicted 
% values of x with red '*' symbols

legend('measured', 'predicted');
grid on;
xlabel('X');
ylabel('Y');
title('Measured and predicted values');

