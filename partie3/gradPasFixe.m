vecteursIterations=gradPasFixe(X0,roo,epsilon);
    x1=[]; x2=[];
    for i=1:length(vecteursIterations)
        x1(i)=vecteursIterations(1,i);
        x2(i)=vecteursIterations(2,i);
    end
    hold on;
    plot(x1,x2,"-*b");
Fin de la discussion
Écrivez un message...

