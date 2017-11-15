clear all;

x = [1:50].';
y = 3*x + 10;


j_theta = zeros(250, 250);   % initialize j_theta
theta0_vals = linspace(-5000, 5000, 250);
theta1_vals = linspace(-200, 200, 250);
for i = 1:length(theta0_vals)
	  for j = 1:length(theta1_vals)
		theta_val_vec = [theta0_vals(i) theta1_vals(j)]';
		h_theta = (x*theta_val_vec);
		j_theta(i,j) = 1/(2*m)*sum((h_theta - y).^2);
    end
end
figure;
surf(theta0_vals, theta1_vals,10*log10(j_theta.'));
xlabel('theta_0'); ylabel('theta_1');zlabel('10*log10(Jtheta)');
title('Cost function J(theta)');
figure;
contour(theta0_vals,theta1_vals,10*log10(j_theta.'))
xlabel('theta_0'); ylabel('theta_1')
title('Cost function J(theta)');