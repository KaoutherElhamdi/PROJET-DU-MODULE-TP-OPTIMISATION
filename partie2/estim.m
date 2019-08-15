load('partie2.mat')
lambda=[1,60,80,100,500,1000];
k=linspace(1,100);
plot(k,y);
hold on;
for i = 1:6
    [a,n]=newton2(X,y,[1;2;3;4;5;6;7],lambda(i),10^(-15));
    yopt=X*a;
    plot(k,yopt);
    hold on ;
end
