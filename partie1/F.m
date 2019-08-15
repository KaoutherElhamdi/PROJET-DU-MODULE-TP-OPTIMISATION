%L'implémentation de la fonction F
function t=F(M,m,x,y)
a=[x;y];   
A=transpose(M)*M;
b=transpose(M)*m;
t=0.5*(sum((A*a).*a)-sum((b.*a)));
end

