function nrm=Erreur(u,v)
load("partie1");
M = [ones(size(x)) x];
m=y;
a=[u;v];   
nrm=norm(M*a-m,2)^2;
end


