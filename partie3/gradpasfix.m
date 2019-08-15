function [iter]=gradpasfix(t,y,x0,r,eps)
tic;
x=x0-r*grad_erreur(t,y,x0(1),x0(2));
l=[x0,x];
k=1;
tableX=[];              %tableau contenant les valeurs de a à chaque itération
tableY=[];              %tableau contenant les valeurs de b à chaque itération
tableX(1)=x(1);
tableY(2)=x(2);
while (norm(x-x0)>eps)
    x0=x;
    x=x0-r*grad_erreur(t,y,x0(1),x0(2));
    l=[l,x];
    k=k+1;
    tableX(k)=x(1);
    tableY(k)=x(2);
end
iter=k;
x
%visualisation();hold on; % on visualise le contour 
%plot(tableX,tableY,'--b')% visualisation de la trajectoire des itérations
toc;
end
