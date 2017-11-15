clear all;
clf;
x = linspace(1,100,100);
y1 = x.^2.0;
y2 = x.^2.1;
y3 = x.^2.2;
y4 = x.^2.3;
plot (x, y1, "@12", x, y2, x, y3, "4", x, y4, "+")
grid on
legend('x^2','x^{2.1}', 'x^{2.2}','x^{2.3}');
xlabel('x-axis')
ylabel('y-axis')
title('Multiple Graphs')

%plot y with points of type 2 (displayed as `+') 
%and color 1 (red), y2 with lines, y3 with lines 
%of color 4 (magenta) and y4 with points displayed as `+'