function [y1,y2,y3] = fn2 (x,y)
    y1 = x^2 - y^2;
    y2 = x^2 + y^2;
    y3 = y2 - y1;
end