% plotting cos(x) and its various approximations

t = -3*pi:pi/10:3*pi; % defining an array of points for x-axis
l=length(t); % to be used for defining pi
y = cos(t); % real values of cosine function

% defining various terms of Maclaurien series
a1 = ones(l);% only first term
a2 =(1-t.^2/2); % first and second term
a3=(a2+t.^4/factorial(4)); % first,second and third term
a4=(a3-t.^6/factorial(6)); % first,second,third and fourth term
a5=(a4+t.^8/factorial(8)); % first,second,third, fourth and fifth term
a6=(a5-t.^10/factorial(10));% first,second,third, fourth,fifth and sixth term

% plotting fitting of cos(x) with increasing number of terms
figure(1)

subplot(3,2,1)
plot(t,y,'*r-',t,a1,'*b-')
axis([-3*pi 3*pi -1.2 1.2])
title('fitting p_{1} to cos(x)')
xlabel('t')
ylabel('cos(t)')

subplot(3,2,2)
plot(t,y,'*r-',t,a2,'*b-')
axis([-3*pi 3*pi -1.2 1.2])
title('fitting p_{2} to cos(x)')
xlabel('t')
ylabel('cos(t)')

subplot(3,2,3)
plot(t,y,'*r-',t,a3,'*b-')
axis([-3*pi 3*pi -1.2 1.2])
title('fitting p_{3} to cos(x)')
xlabel('t')
ylabel('cos(t)')

subplot(3,2,4)
plot(t,y,'*r-',t,a4,'*b-')
axis([-3*pi 3*pi -1.2 1.2])
title('fitting p_{4} to cos(x)')
xlabel('t')
ylabel('cos(t)')

subplot(3,2,5)
plot(t,y,'*r-',t,a5,'*b-')
axis([-3*pi 3*pi -1.2 1.2])
title('fitting p_{5} to cos(x)')
xlabel('t')
ylabel('cos(t)')

subplot(3,2,6)
plot(t,y,'*r-',t,a6,'*b-')
axis([-3*pi 3*pi -1.2 1.2])
title('fitting p_{6} to cos(x)')
xlabel('t')
ylabel('cos(t)')