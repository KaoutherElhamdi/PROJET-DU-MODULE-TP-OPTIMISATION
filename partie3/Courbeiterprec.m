epsilon=[0.001 0.01 0.1];
table1=[]; %tableau contenant les valeurs d'itérations pour la methode de Nesterov
table2=[]; %tableau contenant les valeurs d'itérations pour la methode de gradient à pas fixe
table3=[]; %tableau contenant les valeurs d'itérations pour la methode d'inertie
for i=1:3
    table1(i)=grad_Nesterov(t,y,[1;0],grad_erreur(t,y,1,0),0.00035,0.09,epsilon(i));
    table2(i)=gradpasfix(t,y,[1;0],0.01,epsilon(i));
    table3(i)=inertie(t,y,[1;0],grad_erreur(t,y,1,0),0.00035,0.09,epsilon(i));
end
disp(table1);
disp(table2);                                                                
disp(table3);
plot(-log(epsilon)/log(10),table1,'--*'); %construction de nbre d'itérations de la methode de Nesterov en fonction de log10(epsilon)
hold on;
plot(-log(epsilon)/log(10),table2,'b--o') %construction de nbre d'itérations de la methode de gradient à pas fixe en fonction de log10(epsilon)
plot(-log(epsilon)/log(10),table3,'--*') %construction de nbre d'itérations de la methode d'inertie en fonction de log10(epsilon)
legend('Nesterov','pasfixe','inertie')
    