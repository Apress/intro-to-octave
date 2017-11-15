theta = 0:0.02:2*pi;
a1 = 0.5 + 1.3 .^ theta;
a2 = 5 * cos(theta);
a3 = 3 * (1 - cos(theta));
a4 = 6*sin(4*theta);
r = [a1; a2; a3; a4];
PolarGraph = polar(theta, r, "*");
set(PolarGraph, "LineWidth", 2);
legend("spiral", "circle", "heart", "Rose");