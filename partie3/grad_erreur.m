function DE=grad_erreur(t,y,a,b)
S1=0;
S2=0;
S=0;
for i=1:1:length(y)
    S=S+(y(i)-a*(1-exp(b*t(i))))^(2);
    S1=S1+(-2)*(1-exp(b*t(i)))*(y(i)-a*(1-exp(b*t(i))));
    S2=S2+2*a*t(i)*exp(b*t(i))*(y(i)-a*(1-exp(b*t(i))));
end
DE=[(S1/S);(S2/S)];
    
