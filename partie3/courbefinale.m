function [iter]=courbefinale(t,y,x0,v0,r,n,eps)
plot(t,y,'.');hold on;
v=n*v0+r*grad_erreur(t,y,x0(1),x0(2));
x=x0-v;
l=[x0,x];
tableY=[];              
for i=1:1:102
    tableY(i)=x(1)*(1-exp(x(2)*t(i)));
end
plot(t,tableY,'--');
while(norm(x-x0)>eps)
    x0=x;
    v=n*v+r*grad_erreur(t,y,x(1)-r*v(1),x(2)-r*v(2));
    x=x-v;
    l=[l,x];
   for i=1:1:102
       tableY(i)=x(1)*(1-exp(x(2)*t(i)));
   end
  plot(t,tableY,'--');
end