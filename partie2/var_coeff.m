function var_coeff(X,y)
a0=[1;2;3;4;5;6;7];
i=1;
while(i<= (size(X,2)) )
    v=[];
    lambdas=linspace(1,500);
    for j = 1:length(lambdas)
        [a,n]=newton2(X,y,a0,lambdas(j),10^(-15));
        v=[v,a(i)];
    end
    plot(lambdas,v);
    hold on ;
    i=i+1;
end
end