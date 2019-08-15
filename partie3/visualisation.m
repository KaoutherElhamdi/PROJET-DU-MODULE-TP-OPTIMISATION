function [X,Y,Z]=visualisation()
load partie3;
A=-1:0.05:3;
B=-2:0.0625:3;
[X,Y]=meshgrid(A,B);
Z=zeros(length(A));
for i=1:length(A)
    for j=1:length(A)
        Z(i,j)=erreur(t,y,X(i,j),Y(i,j));
    end
end
contour(X,Y,Z)%%visualisation contour


