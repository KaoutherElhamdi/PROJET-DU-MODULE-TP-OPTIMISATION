%La méthode de résolution du gradient à pas constant                                        
function [A,iter]=gradientpasfixe(M,m,x,y,ro,epsilon)
A=[x;y];
iter=1;
tableX=[]; 
tableY=[];
tableX(iter)=A(1); 
tableY(iter)=A(2);
while (true)
    x0=A(1);
    y0=A(2);
    A=[x0;y0]-ro*gradF(M,m,x0,y0);
    Z=[A(1)-x0;A(2)-y0];
    iter=iter+1;
    tableX(iter)=A(1); tableY(iter)=A(2);
    if norm(Z,1)<epsilon
        break
    end    
end
%hold on;
%plot(tableX,tableY,'--*'); %affichage de la trajectoire ( convergence vers la solution )
end