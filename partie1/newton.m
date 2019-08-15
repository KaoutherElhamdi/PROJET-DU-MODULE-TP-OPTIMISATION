%La méthode de résolution de Newton
function [u,iter]=newton(M,m,x0,tol)
grad=1;
u=x0;
iter=1;
tableX=[]; 
tableY=[];
tableX(iter)=u(1); 
tableY(iter)=u(2);
while (grad>tol && iter<100)
    step=gradCarreF(M)\gradF(M,m,u(1),u(2));
    grad=norm(step);
    u=u-step;
    iter=iter+1;
    tableX(iter)=u(1); tableY(iter)=u(2);

end
%a0 = -1:0.1:3;
%a1 = -1:0.1:3;
%[X,Y] = meshgrid(a0,a1);
%e = arrayfun(@Erreur, X, Y);
%contour(X,Y,e,25);
%hold on;
%plot(tableX,tableY,'--*'); %affichage de la trajectoire ( convergence vers la solution )
end

