x=linspace(-10,10,50);
y=linspace(-10,10,50);
[xx,yy]=meshgrid(x,y);
meshc(xx,yy,2-(xx.^2+yy.^2))