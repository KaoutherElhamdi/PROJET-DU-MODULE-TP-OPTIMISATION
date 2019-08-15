%L'implémentation de la fonction gradient F
function t=gradF(M,m,x,y)
a=[x;y];   
A=transpose(M)*M;
b=transpose(M)*m;
t=A*a-b;
end 

