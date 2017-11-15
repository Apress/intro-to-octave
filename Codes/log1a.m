% Octave program to illustrate
% usage of semilogx() and 
% semilogy() and loglog() command

%semilogx()
y = 0:2:10;
x = exp(-y/2);
subplot(3,1,1)
semilogx(x,y)
grid on
xlabel('x=e^{y/2}');
ylabel('y');
title('Using semilogx() command');

%semilogy()
x1 = 0:2:10;
y1 = exp(-x1/2);
subplot(3,1,2)
semilogy(x1,y1)
grid on
xlabel('y=e^{x/2}');
ylabel('x');
title('Using semilogy() command');

%loglog()
x2 = 0:2:10;
y1 = exp(x2);
y2 = exp(x2/2);
subplot(3,1,3)
loglog(x1,y1)
grid on
xlabel('y1=e^{x}');
ylabel('y2=e^{x/2}');
title('Using loglog() command');
