v=[0;3];
w=[5;3];
v1=grad_erreur(t,y,v(1),v(2));
w1=grad_erreur(t,y,w(1),w(2));
s=dot((v1-w1),(v-w));
s