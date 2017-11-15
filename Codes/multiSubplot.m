clear all;
clf;
x = linspace(1,100,100);
y1 = x.^2.0;
y2 = log(x);
y3 = sin(x);
y4 = log10(x);
subplot(2,2,1), plot(x, y1)
subplot(2,2,2), plot(x, y2) 
subplot(2,2,3), plot(x, y3) 
subplot(2,2,4), plot(x, y4)
%grid on
%legend('x^2','x^{2.1}', 'x^{2.2}','x^{2.3}');
%xlabel('x-axis')
%ylabel('y-axis')
%title('Multiple Graphs')

%plot y with points of type 2 (displayed as `+') 
%and color 1 (red), y2 with lines, y3 with lines 
%of color 4 (magenta) and y4 with points displayed as `+'