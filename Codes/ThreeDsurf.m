a = b = linspace (-8, 8, 10)';
[xx, yy] = meshgrid (a, b);
c = sqrt (xx .^ 2 + yy .^ 2) + eps;
d = sin (c) ./ c;
surf (c,d);