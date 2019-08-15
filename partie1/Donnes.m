load("partie1");
M = [ones(size(x)) x];
m=y;
a0 = -10:0.5:10; %entre -10 et 10 de pas 0.5
a1 = -20:1:20; %entre -20 et 20 de pas 1
[X,Y] = meshgrid(a0,a1);
e = arrayfun(@Erreur, X, Y);
surf(X,Y,e)
hold on;
contour(X,Y,e,25);
hold on;
[gx,gy]=gradient(e);
quiver(X,Y,gx,gy);



 

