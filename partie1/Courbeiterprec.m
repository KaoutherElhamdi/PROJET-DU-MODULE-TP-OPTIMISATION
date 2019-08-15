load("partie1");
M = [ones(size(x)) x];
epsilon=[0.000001 0.00001 0.0001 0.001 0.01 0.1];
table1=[];
table2=[];
table3=[];
table4=[];
for i=1:6
    [a,iter1]=newton(M,y,[0;1],epsilon(i));
    table1(i)=iter1;
    [b,iter2]=gradientpasfixe(M,m,0,1,0.01,epsilon(i));
    table2(i)=iter2;
    [c,iter3]=gradientapasoptimal(epsilon(i),x,y);
    table3(i)=iter3;
    [d,iter4]=gradientconjugue(epsilon(i),x,y);
    table4(i)=iter4;
end
plot(-log(epsilon)/log(10),table1,'--o');                                          
hold on;
plot(-log(epsilon)/log(10),table2,'b--o')                                                  
hold on;
plot(-log(epsilon)/log(10),table3,'--*')
hold on ;
plot(-log(epsilon)/log(10),table4)
legend('Newton','gradientapasfixe','gradientapasoptimal','gradientcojugué')
    