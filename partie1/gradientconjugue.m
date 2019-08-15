%La méthode de résolution du gradient conjugué
function [a,nb]= gradientconjugue(epsilon ,x,y) 
H=[0 0;0 0];
xi=0;
yi=0;
xyi=0;                                                        
xi2=0;
i=1;
while(i<102)
    xi=xi+x(i);
    yi=yi+y(i);
    xyi=xyi+x(i)*y(i);
    xi2=xi2+x(i)^2;
    i=i+1;
end
H(1,1)=101*2;
H(1,2)=xi*2;
H(2,1)=xi*2;
H(2,2)=xi2*2;
b=zeros(2,1);
b(1)=2*yi;
b(2)=2*xyi;
a=[70;9];
r=H*a-b;
d=r;
l=H*r;
p=(norm(r,2)^2)/(l(1)*d(1)+l(2)*d(2));
a1=a-p*d;
nb=1;
X=[a,a1];
tableX=[]; 
tableY=[];
tableX(nb)=a(1); 
tableY(nb)=a(2);
while norm(a-a1)>epsilon
    a=a1;
    r1=r;
    r=H*a-b;
    d=r + norm(r)^2/norm(r1)^2 * d;
    l=H*r;
    p=(norm(r,2)^2)/(l(1)*d(1)+l(2)*d(2));
    a1=a-p*d;
    nb=nb+1;
    X=[X,a1];
    tableX(nb)=a(1); tableY(nb)=a(2);
end
%hold on;
%plot(tableX,tableY,'--*'); %affichage de la trajectoire ( convergence vers la solution )
end  