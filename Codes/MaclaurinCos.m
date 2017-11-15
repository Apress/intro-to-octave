% A program to show usage of Taylor series expansion of cos(x)
% Suppose we wish to calculate cos(15) where argument of cos function is given in degrees

x = 15*pi/180; % converts 15 degrees into radian

format long  % show results in long format having a lot of deimal places for numbers

% Calculating each term of Taylor series

p1 = 1;
p2 = x^(2)/2;
p4 = x^(4)/factorial(4);
p6 = x^(6)/factorial(6);
p8 = x^(8)/factorial(8);
p10 = x^(10)/factorial(10);

approx_1= p1-p2; % approximate values using two terms
approx_2= p1-p2+p4; % approximate values using three terms
approx_3= p1-p2+p4-p6; % approximate values using four terms
approx_4= p1-p2+p4-p6+p8; % approximate values using five terms
approx_5= p1-p2+p4-p6+p8-p10; % approximate values using six terms

real_value = cos(x); % calculating the real value to find errors

% calculation of final errors

error_1 = abs(real_value - approx_1);
error_2 = abs(real_value - approx_2);
error_3 = abs(real_value - approx_3);
error_4 = abs(real_value - approx_4);
error_5 = abs(real_value - approx_5);

% making an error vector for plotting

error = [error_1, error_2, error_3, error_4, error_5];

% plotting error versus number of terms

figure(1)
semilogy(error,'*r-')
title('Variation of error in calculating cos(15^{0}) using Taylor Series')
xlabel('Number of terms on Taylor Series')
ylabel('log(error)')

% plotting cos(x) and its various approximations

t = 0:0.001:20;
%length(t)

figure(2)
y = cos(t);
subplot(2,3,1)
plot(t,y,t,ones(length(t)))
subplot(2,3,2)
plot(t,y,t,(1-t.^2/2))
subplot(2,3,3)
plot(t,y,t,(1-t.^2/2+t.^4/factorial(4)))
subplot(2,3,4)
plot(t,y,t,(1-t.^2/2+t.^4/factorial(4)-t.^6/factorial(6)))
subplot(2,3,5)
plot(t,y,t,(1-t.^2/2+t.^4/factorial(4)-t.^6/factorial(6)+t.^8/factorial(8)))
subplot(2,3,6)
plot(t,y,t,(1-t.^2/2+t.^4/factorial(4)-t.^6/factorial(6)+t.^8/factorial(8)-t.^10/factorial(10)))


