function E=erreur(t,y,a,b)
S=0;
for i=1:1:length(y)
    S=S+(y(i)-a*(1-exp(b*t(i))))^(2);
end
E=log(S)
   
    
    

